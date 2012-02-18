/**
 * @public or @internal
 *  <description/usage/assumptions>
 * params:
 *  r0 - use
 *  rn - use
 * retval:
 *  void
 * note:
 *  is threadsafe
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "err.inc"

# -----------------------------------------------------------------------------
    .type       sys_init, function
    .global     sys_init
sys_init:
    push        { lr }
    bl          clk_cfg                 /**< route clocks to peripherals     */
    bl          led_init                /**< init leds                       */
    bl          err_init                /**< get error logger up asap        */
    cbnz        r0, 1f                  /**< lock fail?                      */
    ldr         r0, =PLL_LOCK_FAIL
    bl          err_push                /*     log it                        */
1:  bl          comp_cell_init          /**< use compensation cell           */
    cbnz        r0, 1f                  /**< not ready?                      */
    ldr         r0, =COMP_CELL_NOT_RDY
    bl          err_push                /*     log it                        */
1:  bl          ev_init_sm              /**< init global use event pools     */
    bl          ev_init_lrg
    bl          systick_init            /**< 1000Hz/1ms                      */
    pop         { pc }
# -----------------------------------------------------------------------------