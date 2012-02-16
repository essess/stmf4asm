/**
 * @public
 *  initialize large event block pool
 * params:
 *  none
 * retval:
 *  void
 * note:
 *  is NOT threadsafe
 *  pool head ptr exposed through: lrg_ev_pool_head
 */
    .section    .text
    .syntax     unified
    .thumb

    .set        LRG_EV_BLK_WORDSIZE,  (  8)     /**< 32 bytes    */
    .set        LRG_EV_BLK_CNT,       ( 64)     /**< 64*32 = 2k  */

# -----------------------------------------------------------------------------
    .type       ev_init_lrg, function
    .global     ev_init_lrg
ev_init_lrg:
    push        { lr }
    ldr         r0, =lrg_ev_pool_head
    ldr         r1, =lrg_ev_pool_start
    mov         r2, #LRG_EV_BLK_WORDSIZE
    mov         r3, #LRG_EV_BLK_CNT
    bl          pool_init
    pop         { pc }
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .noinit
    .global     lrg_ev_pool_head

    .align      2
lrg_ev_pool_head:
    .word       0

    .align      2
lrg_ev_pool_start:
    .skip       ((LRG_EV_BLK_WORDSIZE<<2)*LRG_EV_BLK_CNT)

# -----------------------------------------------------------------------------