/**
 * @public
 *  initialize small event block pool
 * params:
 *  none
 * retval:
 *  void
 * note:
 *  is NOT threadsafe
 *  pool head ptr exposed through: sm_ev_pool_head
 */
    .section    .text
    .syntax     unified
    .thumb

    .set        SM_EV_BLK_WORDSIZE,   (  4)     /**< 16 bytes    */
    .set        SM_EV_BLK_CNT,        (256)     /**< 256*16 = 4k */

# -----------------------------------------------------------------------------
    .type       ev_init_sm, function
    .global     ev_init_sm
ev_init_sm:
    push        { lr }
    ldr         r0, =sm_ev_pool_head
    ldr         r1, =sm_ev_pool_start
    mov         r2, #SM_EV_BLK_WORDSIZE
    mov         r3, #SM_EV_BLK_CNT
    bl          pool_init
    pop         { pc }
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .noinit
    .global     sm_ev_pool_head

    .align      2
sm_ev_pool_head:
    .word       0

    .align      2
sm_ev_pool_start:
    .skip       ((SM_EV_BLK_WORDSIZE<<2)*SM_EV_BLK_CNT)

# -----------------------------------------------------------------------------