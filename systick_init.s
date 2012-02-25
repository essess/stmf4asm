/**
 * @public
 * initialize and unmask systick to 1000Hz
 * assumes clk freq is sysclk/8, 
 * assume:
 *   -FCLK is 168MHz
 *   -{ r0, r1 } clobbered
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "scs.inc"

    .set PRI,       (0 << 4)

    .set FCLK,      (168000000)
    .set HZ,        (200)
    .set RVR,       (((FCLK/8)/HZ)-1)

    .set CLKSOURCE, (0b0<<2)    /**< FCLK/8 */
    .set TICKINT,   (0b1<<1)
    .set ENABLE,    (0b1<<0)
    .set CSR,       (CLKSOURCE|TICKINT|ENABLE)

# -----------------------------------------------------------------------------
    .type       systick_init, function
    .global     systick_init
systick_init:
    ldr         r1, =SCS_BASE
    movs        r0, #PRI
    strb        r0, [r1, #(SHP15-SCS_BASE)]                     /**< set pri */
    ldr         r0, =RVR
    str         r0, [r1, #SYST_RVR_OFFSET]
    eors        r0, r0
    str         r0, [r1, #SYST_CVR_OFFSET]
    movs        r0, #CSR
    str         r0, [r1, #SYST_CSR_OFFSET]
    bx          lr
# -----------------------------------------------------------------------------