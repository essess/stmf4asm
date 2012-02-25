/**
 * @public
 *  application entry point
 * params:
 *  top of process stack has results of pll lock
 * retval:
 *  never returns
 * note:
 *  r7  - holds reference to current event
 *  r8  - holds the signal field of currently active ev
 *  r9  - holds reference to the evq control block
 *  r10 - =GPIOD_BASE
 *  r11 - tbd
 *  r12 - tbd
 *
 *  dest is not responsible for 'disposal' of ev. we'll do it
 *  here in ev_post_dispatch - thats why the pool id field is
 *  in the signal
 *
 *  destinations can clobber r0-r6 - must preserve r7-r12(+psp/lr/pc)
 *
 *  r7/r8 are NOT set atomically as a pair - doesn't matter much since
 *  NO ONE should be monkeying with those registers from any context
 *  other than this one.
 *
 *  signal field description:
 *    0bpfffffddddddddddssssssssssssssss
 *    p - pool id (1bit)  (small == 0b0 or large == 0b1)
 *    f - free    (5bits)
 *    d - dest    (10bits)
 *    s - signal  (16bits)
 *
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "dest.inc"
    .include    "err.inc"
    .include    "gpio.inc"
    .include    "led.inc"

# -----------------------------------------------------------------------------
    .type       main, function
    .type       ev_post_dispatch, function
    .global     main
main:
    ldr         r9, =evq_cntblk         /**< cache event queue control block */
    ldr         r10, =GPIOD_BASE        /**< cache LED gpio base             */
    pop         { r0 }                  /**< tos has pll lock result         */
    bl          sys_init
    bl          app_init
evq_get:                                /**< ~150ns to iterate               */
    cpsid   i                           /**<                    start atomic */
    ldr         r0, [r9, #+0x08]        /**< grab current evq ev count       */
    cbnz        r0, ev_dispatch         /**<   empty?                        */
    led         r0, BLUE_OFF            /**< yep, work complete              */
    wfi                                 /**< wait ...                        */
    cpsie       i                       /*   ... run int that just woke us   */
    b           evq_get                 /*   ... and try again               */
ev_dispatch:
    subs        r0, #1                  /**< current count--                 */
    str         r0, [r9, #+0x08]        /*                                   */
    ldr         r1, [r9, #+0x04]        /**< grab tail                       */
    ldr         r7, [r1], #4            /**< grab event and postinc          */
    ldr         r0, [r9, #+0x14]        /**< get end of buffer ...           */
    cmp         r1, r0                  /**< ... is tail >= end ?            */
    it          ge
    ldrge       r1, [r9, #+0x10]        /**< correct to buffer start (wrap)  */
    str         r1, [r9, #+0x04]        /**< and write back updated tail     */
    cpsie       i                       /**<                      end atomic */
    ldr         r8, [r7]                /**< fetch signal field from curr ev */
    ubfx        r0, r8, #16, #10        /**< isolate dest field              */
    cmp         r0, #MAX_DEST           /**< range check                     */
    it          gt                      /**< 0 cycle fold advantage          */
    eorgt       r0, r0                  /**< coerce to bad_destination (000) */
    ldr         lr, =ev_post_dispatch   /**< cheaper than lots of push/pop   */
    tbh         [pc, r0, lsl #1]        /**< dispatch ev to appropriate dest */
dest_table:                             /*   about +500ns out from int!      */
    .hword      (dest000-dest_table)>>1
    .hword      (dest001-dest_table)>>1
    .hword      (dest002-dest_table)>>1
dest000: b      bad_destination         /**< unknown/unhandled recipiant     */
dest001: b      systick_sm_proc         /**< systick timer statemachine      */
dest002: b      usbfsd_sm_proc          /**< usb fullspeed dev sm            */
ev_post_dispatch:                       /**< return ev in r7 back to pool    */
    tst         r8, #(1<<31)            /**< AND against pool field          */
    ite         eq                      /**< 0 cycle fold advantage          */
    ldreq       r1, =sm_ev_pool_head    /**< 0b0 - small pool                */
    ldrne       r1, =lrg_ev_pool_head   /**< 0b1 - large pool                */
    movs        r0, r7                  /**< get event ref to expected reg   */
    bl          pool_put                /*   for the _put()                  */
    b           evq_get
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       bad_destination, function
    .global     bad_destination
bad_destination:
    ldr         r0, =BAD_DESTINATION
    bl          err_push
    bx          lr
# -----------------------------------------------------------------------------

// this will be the one-shot sm - simple placeholder until then
# -----------------------------------------------------------------------------
    .type       systick_sm_proc, function
    .global     systick_sm_proc
systick_sm_proc:
    /*
    ev +4 - timestamp
    ev +8 - systime
    ev +C - unused
    */

    // quick modulo test
    // generic modulo alg:
    //      a % b = a-((a/b)*b)

    .macro  modulo  ans, a, b, tmp
    udiv        \tmp, \a, \b
    mls         \ans, \b, \tmp, \a
    .endm


    nop         // load up r0,r1
    modulo      r0, r0, r1, r2
    nop         // check result in r0

    bx          lr
# -----------------------------------------------------------------------------
