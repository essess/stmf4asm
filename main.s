
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"
    .include    "led.inc"

    .set        MAX_DEST,   006 // test hack - dest+1

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
    bl          ev_init                 /**< init event FIFO                 */
    bl          systick_init            /**< 1000Hz/1ms                      */

/* 
  odd bits of notes for main chunk of code below:

  signal field:
    dest is 12 bits
    ev size is 4 bits (not counting signal field)
    ev is 16 bits

  current ev pointed to by r7
    ldr rd,[r7] always pulls the signal field (described above)

  dest is not responsible for 'disposal' of ev. we'll do it
  here in ev_post operations - thats why the size field is
  in the signal

  destinations can clobber r0-r6,flags but must preserve r7-r14(lr)
*/

ev_process:                             /**< ~150ns to iterate               */
#    bl          ev_pop
#    cbnz        r7, ev_dispatch         /**< anything available?             */
#    wfi                                 /*     nope, wait for an int         */
#    b           ev_process              /**< and try again                   */
    wfi
    movs        r0, #0x001 // systick
ev_dispatch:
    mov         r8, #BLUE_ON            /**< load indicator on, doing work   */
    str         r8, [r9, #GPIO_BSRR_OFFSET]

    /* TODO: extract dest field to r0 */

    cmp         r0, #MAX_DEST           /**< range check destination         */
    it          ge
    eorge       r0, r0                  /**< coerce to bad_destination (000) */
    ldr         lr, =ev_post_dispatch   /**< cheaper than lots of push/pop   */
    tbh         [pc, r0, lsl #1]        /**< dispatch ev to appropriate dest */
dest_table:
    .hword      (dest000-dest_table)>>1
    .hword      (dest001-dest_table)>>1
    .hword      (dest002-dest_table)>>1
    .hword      (dest003-dest_table)>>1
    .hword      (dest004-dest_table)>>1
    .hword      (dest005-dest_table)>>1
dest000: b      bad_destination         /**< unknown/unhandled recipiant     */
dest001: b      sm_systick              /**< systick timer statemachine      */
dest002: b      bad_destination         /**< unknown/unhandled recipiant     */
dest003: b      bad_destination         /**< unknown/unhandled recipiant     */
dest004: b      bad_destination         /**< unknown/unhandled recipiant     */
dest005: b      bad_destination         /**< unknown/unhandled recipiant     */
    .thumb_func
ev_post_dispatch:
    bl          ev_destroy              /**< return ev in r7 back to pool    */
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
    bx          lr                  /**<    comment                          */
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
    .type       ev_destroy, function
    .global     ev_destroy
ev_destroy:
    bx          lr                  /**<    comment                          */
    .size       ev_destroy, .-ev_destroy
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       bad_destination, function
    .global     bad_destination
bad_destination:
    /* TODO: log/count, but try to keep operating as best as possible */
    bx          lr
    .size       bad_destination, .-bad_destination
# -----------------------------------------------------------------------------
