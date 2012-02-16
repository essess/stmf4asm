/**
 * @public
 * systick interrupt handler
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "dwt.inc"
    .include    "gpio.inc"
    .include    "led.inc"
    .include    "dest.inc"

    .set        DEST,       SYSTICK
    .set        SIG,        (0x0000 << 0)
    .set        TICK,       (DEST|SIG)

# -----------------------------------------------------------------------------
    .type       systick, function
    .global     systick
systick:
    led         r0, BLUE_ON             /**< load indicator on, doing work   */
    ldr         r3, =CYCCNT             /**< grab timestamp                  */
    ldr         r3, [r3]                /*                                   */
    movs        r12, lr
    bl          ev_alloc_sm
    cbz         r0, 1f                  /**< event pool empty ?              */
    ldr         r1, =TICK               /**< set dest/sig                    */
    ldr         r2, [r0]                /*   preserving pool id            R */
    orrs        r2, r1                  /*                                 M */
    str         r2, [r0]                /*                                 W */
    str         r3, [r0, #4]            /**< store timestamp in ev +4        */
    ldr         r3, =systime            /**< systime++                       */
    ldr         r2, [r3]                /*                                 R */
    adds        r2, #1                  /*                                 M */
    str         r2, [r3]                /*                                 W */
    str         r2, [r0, #8]            /**< store systime in ev +8          */
    bl          evq_put                 /**< handoff to event processor      */
    bne         2f                      /**< queue full ?  (zero flag set)   */
    bl          ev_destroy              /**<   avoid ev leak                 */
1:  led         r0, ORANGE_ON           /**<   err TODO: log it              */
2:  movs        lr, r12
    bx          lr
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .bss
    .align      2
    .global     systime
systime:                                /**< do not modify anywhere else but */
    .word       0                       /*   from the systick handler        */
# -----------------------------------------------------------------------------