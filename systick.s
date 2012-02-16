/**
 * @public
 * systick interrupt handler
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "dest.inc"
    .include    "gpio.inc"
    .include    "led.inc"

    .set        DEST,       SYSTICK
    .set        SIG,        (0x0000 << 0)
    .set        TICK,       (DEST|SIG)

# -----------------------------------------------------------------------------
    .type       systick, function
    .global     systick
systick:
    led         r0, BLUE_ON             /**< load indicator on, doing work   */
    movs        r12, lr
    bl          ev_alloc_sm
    cbz         r0, 1f                  /**< event pool empty ?              */
    ldr         r1, =TICK               /**< set dest/sig                    */
    ldr         r2, [r0]                /*   preserving pool id            R */
    orrs        r2, r1                  /*                                 M */
    str         r2, [r0]                /*                                 W */
    bl          evq_put                 /**< handoff to event processor      */
    bne         2f                      /**< queue full ?  (zero flag set)   */
    bl          ev_destroy              /**< avoid ev leak                   */
1:  led         r0, ORANGE_ON           /**< err TODO: log it                */
2:  movs        lr, r12
    bx          lr
# -----------------------------------------------------------------------------