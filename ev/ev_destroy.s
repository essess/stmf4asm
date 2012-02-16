/**
 * @public
 *  de-allocate an event by returning it to the proper pool
 * params:
 *  r0 - reference to valid event (dependent on pool_id bit)
 * retval:
 *  void
 * note:
 *  -is threadsafe
 *  -most of the time, interrupts will use this to place their
 *   allocated event back into the pool on error in order to
 *   avoid a leak
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       ev_destroy, function
    .global     ev_destroy
ev_destroy:
    push        {lr}
    ldr         r1, [r0]                /**< grab signal field               */
    tst         r1, #(1<<31)            /**< AND against pool field          */
    ite         eq                      /**< 0 cycle fold advantage          */
    ldreq       r1, =sm_ev_pool_head    /**< 0b0 - small pool                */
    ldrne       r1, =lrg_ev_pool_head   /**< 0b1 - large pool                */
    bl          pool_put
    pop         {pc}
# -----------------------------------------------------------------------------