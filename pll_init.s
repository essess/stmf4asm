/**
 * @public
 * move from the 16Mhz IRC to the PLL at 168MHz
 * assume:
 *   -external xtal at 8MHz
 *   -callers responsiblity to save { r0,r1,r2 }
 */

    .section    .init
    .syntax     unified
    .thumb

    .include    "flash.inc"
    .include    "rcc.inc"

    .set        FLUSH_ID_LINES,         (DCRST|ICRST)
    .set        DEFAULT_ACR_VALUE,      (DCEN|ICEN|PRFTEN|WS5)

    .set        PLLQ,                   (7  <<24)
    .set        PLLSRC,                 (1  <<22)
    .set        PLLP,                   (0  <<16)
    .set        PLLN,                   (168<< 6)
    .set        PLLM,                   (4  << 0)
    .set        DEFAULT_PLLCFGR_VALUE,  (PLLQ|PLLSRC|PLLP|PLLN|PLLM)

# -----------------------------------------------------------------------------
    .type       pll_init, function
    .global     pll_init
pll_init:
    ldr         r0, =RCC_CR         /**< enable hse, r-m-w                   */
    ldr         r1, [r0]
    orr         r1, r1, #HSEON      /**< keep rolling don't wait for RDY     */
    str         r1, [r0]            /*   we'll catch on pll lock failure     */


    ldr         r1, [r0, #RCC_PLLCFGR_OFFSET]   /**< r-m-w PLLCFGR           */
    ldr         r2, =DEFAULT_PLLCFGR_VALUE

    // browse bitfield instructions for what is most efficient here,
    // i know there are some slick instructions that are useful in an
    // instance like this.

    // better yet, just orr in the reserved fields to pick up the bits we need

    // orr what needs to be set
    // bic what needs to be cleared

    str         r1, [r0, #RCC_PLLCFGR_OFFSET]






    // turn on pll
// wait for pll lock - if it never happens set a code and bail

// otherwise - insert waitstates on flash array and switch pll to systemo clock

    ldr         r2, =FLASH_ACR      /**< setup flash array for 5ws and       */
    ldr         r1, =FLUSH_ID_LINES /*   enable cache/prefetch after         */
    str         r1, [r2]            /*   I/D line flush                      */
    ldr         r1, =DEFAULT_ACR_VALUE
    str         r1, [r2]

// ... now go switch (_CFGR)

    bx          lr                  /**<    comment                          */
# -----------------------------------------------------------------------------