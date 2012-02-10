
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"
    .include    "led.inc"

    .set        MAX_DEST,   001 // test hack

# -----------------------------------------------------------------------------
    .type       main, function
    .global     main
main:
    bl          led_init                /**< init leds                       */
    pop         {r0}                    /**< tos has pll lock result         */
    cmp         r0, #0
    ite         eq
    ldreq       r8, =(GREEN_OFF|RED_ON)
    ldrne       r8, =(GREEN_ON|RED_OFF)
    ldr         r9, =GPIOD_BASE
    str         r8, [r9, #GPIO_BSRR_OFFSET]
    bl          ev_init                 /**< init event pools                */
    bl          systick_init            /**< 1000Hz/1ms                      */

/* 
  odd bits of notes for main chunk of code below:

  signal field:
    0bpfffffddddddddddssssssssssssssss
    p - pool id (1bit)  (small == 0b0 or large == 0b1)
    f - free    (5bits)
    d - dest    (10bits)
    s - signal  (16bits)

  current ev to process is pointed to by r7
    ldr rd,[r7] always pulls the signal field (described above)

  dest is not responsible for 'disposal' of ev. we'll do it
  here in ev_post_dispatch - thats why the pool id field is
  in the signal

  optimise for small pool since it's likely to be the
  common case

  destinations can clobber r0-r6,flags but must preserve r7-r14(lr)
*/

ev_process:                             /**< ~150ns to iterate               */
#    bl          ev_pop
#    cbnz        r7, ev_dispatch         /**< anything available?             */
#    wfi                                 /*     nope, wait for an int         */
#    b           ev_process              /**< and try again                   */
// try it blk above to avoid stalling all the time
    wfi                    //
    movs        r0, #0x001 // systick - test hack

ev_dispatch:
    mov         r8, #BLUE_ON            /**< load indicator on, doing work   */
    str         r8, [r9, #GPIO_BSRR_OFFSET]

    /* TODO: extract dest field to r0 */

    cmp         r0, #MAX_DEST           /**< range check destination         */
    it          gt                      /**< 0 cycle fold advantage          */
    eorgt       r0, r0                  /**< coerce to bad_destination (000) */
    ldr         lr, =ev_post_dispatch   /**< cheaper than lots of push/pop   */
    tbh         [pc, r0, lsl #1]        /**< dispatch ev to appropriate dest */
dest_table:
    .hword      (dest000-dest_table)>>1
    .hword      (dest001-dest_table)>>1
dest000: b      bad_destination         /**< unknown/unhandled recipiant     */
dest001: b      sm_systick              /**< systick timer statemachine      */
    .thumb_func
ev_post_dispatch:
    bl          ev_free                 /**< return ev in r7 back to pool    */
    mov         r8, #BLUE_OFF           /**< work complete                   */
    str         r8, [r9, #GPIO_BSRR_OFFSET]
    b           ev_process
    .size       main, .-main
# -----------------------------------------------------------------------------


// test hacks follow

# -----------------------------------------------------------------------------
    .type       ev_init, function
    .global     ev_init
ev_init:
    push        { r7-r9, lr }
    ldr         r0, =sm_ev_pool_head
    ldr         r1, =sm_ev_pool_start
    mov         r2, #SM_EV_BLK_WORDSIZE
    mov         r3, #SM_EV_BLK_CNT
    bl          pool_init
    ldr         r0, =lrg_ev_pool_head
    ldr         r1, =lrg_ev_pool_start
    mov         r2, #LRG_EV_BLK_WORDSIZE
    mov         r3, #LRG_EV_BLK_CNT
    bl          pool_init


// test

    ldr         r0, =sm_ev_pool_head
    bl          pool_get
    movs        r7, r0

    ldr         r0, =sm_ev_pool_head
    bl          pool_get
    movs        r8, r0

    ldr         r0, =sm_ev_pool_head
    bl          pool_get
    // check r0 - should be 0

    // go back and return blocks to pool
    // in reverse order
    movs        r1, r7
    ldr         r0, =sm_ev_pool_head
    bl          pool_put

    movs        r1, r8
    ldr         r0, =sm_ev_pool_head
    bl          pool_put

    pop         { r7-r9, pc }
    .size       ev_init, .-ev_init
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       sm_systick, function
    .global     sm_systick
sm_systick:
    /* systime++ */
    /* eventually extend out to include a full blown timer system */
    bx          lr
    .size       sm_systick, .-sm_systick
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       ev_pop, function
    .global     ev_pop
ev_pop:             // ev_push_back is opposite
    mov         r0, #000  // test
    mov         r7, #000
    bx          lr                  /**<    comment                          */
    .size       ev_pop, .-ev_pop
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       ev_alloc, function
    .global     ev_alloc
ev_alloc:
    push        { lr }
    // check which pool
    // alloc, return null on empty
    // fillin defaults (pool/sig/dest/)
    pop         { pc }
    .size       ev_alloc, .-ev_alloc
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       ev_free, function
    .global     ev_free
ev_free:
    push        { lr }
    // check which pool
    // free
    pop         { pc }
    .size       ev_free, .-ev_free
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       bad_destination, function
    .global     bad_destination
bad_destination:
    /* TODO: log/count, but try to keep operating as best as possible */
    bx          lr
    .size       bad_destination, .-bad_destination
# -----------------------------------------------------------------------------

    .set        SM_EV_BLK_WORDSIZE,   (  4)
    .set        SM_EV_BLK_CNT,        (  2)

    .set        LRG_EV_BLK_WORDSIZE,  (  8)
    .set        LRG_EV_BLK_CNT,       ( 64)

# -----------------------------------------------------------------------------
    .section    .bss

    .align      2
sm_ev_pool_head:
    .word       0
lrg_ev_pool_head:
    .word       0

    .align      2
sm_ev_pool_start:
    .skip       ((SM_EV_BLK_WORDSIZE<<2)*SM_EV_BLK_CNT)
    
    .align      2
lrg_ev_pool_start:
    .skip       ((LRG_EV_BLK_WORDSIZE<<2)*LRG_EV_BLK_CNT)

# -----------------------------------------------------------------------------