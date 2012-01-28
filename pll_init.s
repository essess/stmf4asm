/**
 * @public
 * move from the 16Mhz IRC to the HSE/PLL at 168MHz
 *
 * assume:
 *   -external xtal at 8MHz
 *   -callers responsiblity to save { r0,r1,r2,r3 }
 *   -should be c callable with an int retval
 *
 * r0 returns 0 in the case that the pll fails to
 *    lock. assume that you're still on the IRC.
 *
 */

    .section    .init, "ax"
    .syntax     unified
    .thumb

    .include    "flash.inc"
    .include    "rcc.inc"

    .set        PLLQ,                   (7   << 24)
    .set        PLLSRC,                 (1   << 22)
    .set        PLLP,                   (0b0 << 16)
    .set        PLLN,                   (168 <<  6)
    .set        PLLM,                   (4   <<  0)
    .set        DEFAULT_PLLCFGR_VALUE,  (PLLQ|PLLSRC|PLLP|PLLN|PLLM)
    .set        PLLCFGR_RESV_MASK,      0b11110000101111001000000000000000
    .set        PLLCFGR_BIC_MASK,       ~PLLCFGR_RESV_MASK

    .set        LOCK_TIMEOUT,           (350*3)

    .set        FLUSH_ID_LINES,         (DCRST|ICRST)
    .set        DEFAULT_ACR_VALUE,      (DCEN|ICEN|PRFTEN|WS5)

    .set        MCO2,                   (0b11   << 30)
    .set        MCO2PRE,                (0b110  << 27)
    .set        MCO1PRE,                (0b110  << 24)
    .set        I2SSRC,                 (0b0    << 23)
    .set        MCO1,                   (0b00   << 21)
    .set        RTCPRE,                 (8      << 16)
    .set        PPRE2,                  (0b100  << 13)
    .set        PPRE1,                  (0b101  << 10)
    .set        HPRE,                   (0b0000 <<  4)
    .set        SWS,                    (0b10   <<  2)
    .set        SW,                     (0b10   <<  0)
    .set        DEFAULT_CFGR_VALUE,     (MCO2|MCO2PRE|MCO1PRE|I2SSRC|MCO1| \
                                         RTCPRE|PPRE2|PPRE1|HPRE|SWS|SW)
    .set        CFGR_RESV_MASK,         0b00000000000000000000001100000000
    .set        CFGR_BIC_MASK,          ~CFGR_RESV_MASK

# -----------------------------------------------------------------------------
    .type       pll_init, function
    .global     pll_init

pll_init:
    ldr         r3, =RCC_BASE

    ldr         r1, [r3, #RCC_PLLCFGR_OFFSET]   /**< r-m-w PLLCFGR while     */
    ldr         r2, =DEFAULT_PLLCFGR_VALUE      /*   preserving resv'd bits  */
    ldr         r0, =PLLCFGR_BIC_MASK           /*   per RM                  */
    bic         r1, r0
    orrs        r1, r2
    str         r1, [r3, #RCC_PLLCFGR_OFFSET]

    ldr         r1, [r3, #RCC_CR_OFFSET] /**< enable hse/mainpll and wait    */
    ldr         r2, =(HSEON|PLLON)       /*   for lock within a reasonable   */
    orrs        r1, r2                   /*   timeframe                      */
    str         r1, [r3, #RCC_CR_OFFSET]

    movw        r0, #LOCK_TIMEOUT
lock_wait:
    cbz         r0, lock_fail
    subs        r0, #1
    ldr         r1, [r3, #RCC_CR_OFFSET]
    tst         r1, #PLLRDY              /**< ~350 loops to lockup (~175us)  */
    beq         lock_wait

lock_ok:
    ldr         r2, =FLASH_ACR      /**< setup flash array for 5ws and       */
    ldr         r1, =FLUSH_ID_LINES /*   enable cache/prefetch after         */
    str         r1, [r2]            /*   I/D line flush                      */
    ldr         r1, =DEFAULT_ACR_VALUE
    str         r1, [r2]

    ldr         r0, [r3, #RCC_CFGR_OFFSET] /**< r-m-w CFGR while preserving  */
    ldr         r1, =CFGR_BIC_MASK         /*   resv'd bits per RM           */
    ldr         r2, =DEFAULT_CFGR_VALUE
    bic         r0, r1
    orrs        r0, r2
    str         r0, [r3, #RCC_CFGR_OFFSET] /**< now on main pll @ 168MHz     */

lock_fail:
    bx          lr
    .size       pll_init, .-pll_init
# -----------------------------------------------------------------------------