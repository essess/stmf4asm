/**
 * @public
 *  fetch ev block from the large pool and init the signal
 *  field to default values
 * params:
 *  none
 * retval:
 *  r0 - ptr to ev block with correct pool id
 *       and blank sig/dest, or null if pool is empty
 * note:
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       ev_alloc_lrg, function
    .global     ev_alloc_lrg
ev_alloc_lrg:
    push        { lr }
    ldr         r0, =lrg_ev_pool_head
    bl          pool_get
    cbz         r0, 1f              /**< null chk, pass on if empty          */
    movs        r1, #(1<<31)        /**< 0b1 is large pool id                */
    str         r1, [r0]
1:  pop         { pc }
# -----------------------------------------------------------------------------