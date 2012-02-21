/**
 * @public
 *  reset otg_fs and phy
 * params:
 *  none
 * retval:
 *  r0 - zero on failure
 * notes:
 *  errors are logged from here, caller does not need to do
 *  anything further
 * TODO: I notice the loops are cmp'ing w/0 - why not convert to cb(n)z ?
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "otgfs.inc"
    .include    "err.inc"

    .set IDLE_TIMEOUT,  100     /**< ~50us                                   */
    .set CRST_TIMEOUT,  100     /**< ~50us                                   */
    .set PHY_SYNC_WAIT, 20      /**< ~?us 3 PHY clk's @ 48MHz minimum (62ns) */

    .set BIC_GUSBCFG_MASK,      0b00000000000000000011110000000111
    .set PHYSEL,                (0b1 <<  7)
    .set FDMOD,                 (0b1 << 30)
    .set TRDT,                  (13  << 10)
    .set TOCAL,                 (4   <<  0)
    .set GUSBCFG_DEFAULT,       ( FDMOD | TRDT | TOCAL )

    .set GINTSTS_CLR,           0b11110000001100001111110000001010

    .set VBUSBEN,               (0b1 << 19)
    .set GCCFG_DEFAULT,         ( VBUSBEN )

    .set SRQIM,                 (0b1 << 30) /**< detect vbus presence        */
    .set USBRSTM,               (0b1 << 12) /**< detect line reset           */
    .set OTGINTM,               (0b1 <<  2) /**< detect vbus absence         */
    /* TODO: endpoint int's when we get that far */
    .set GINTMSK_DEFAULT,       ( SRQIM | USBRSTM | OTGINTM )

# -----------------------------------------------------------------------------
    .type       otgfs_hw_reset, function
    .global     otgfs_hw_reset
otgfs_hw_reset:
    ldr         r3, =OTG_FS_BASE

    movs        r0, #CRST_TIMEOUT       /**< core reset                      */
    movs        r1, #CSRST
    str         r1, [r3, #OTG_FS_GRSTCTL_OFFSET]
1:  cmp         r0, #0                  /**< wait for reset to complete      */
    it          eq
    beq         usbfs_init_err
    ldr         r1, [r3, #OTG_FS_GRSTCTL_OFFSET]
    tst         r1, #CSRST              /**< CSRST clear?                    */
    itt         ne                      /*     reset incomplete              */
    subne       r0, #1                  /*                                   */
    bne         1b                      /*     try again                     */

    movs        r0, #IDLE_TIMEOUT       /**< wait for AHB to idle            */
1:  cmp         r0, #0
    it          eq
    beq         usbfs_init_err
    ldr         r1, [r3, #OTG_FS_GRSTCTL_OFFSET]
    tst         r1, #AHBIDL
    itt         eq
    subeq       r0, #1
    beq         1b

    movs        r0, #PHY_SYNC_WAIT      /**< wait 3+ PHY clocks for sync     */
1:  subs        r0, #1
    bne         1b

    /* set initial default config */

    ldr         r0, [r3, #OTG_FS_GUSBCFG_OFFSET]
    ldr         r1, =BIC_GUSBCFG_MASK
    bics        r0, r1
    ldr         r1, =GUSBCFG_DEFAULT
    orrs        r0, r1
    str         r0, [r3, #OTG_FS_GUSBCFG_OFFSET]

    ldr         r0, [r3, #OTG_FS_DCTL_OFFSET]   /**< soft disconnect, and    */
    orrs        r0, #SDIS                       /*   mask ability of session */
    str         r0, [r3, #OTG_FS_DCTL_OFFSET]   /*   logic to auto enb       */

    ldr         r1, [r3, #OTG_FS_GINTSTS_OFFSET]
    ldr         r0, =GINTSTS_CLR                /**< wipe anything pending   */
    orrs        r1, r0                          /*   since we're stable now  */
    str         r1, [r3, #OTG_FS_GINTSTS_OFFSET]

    ldr         r0, [r3, #OTG_FS_GCCFG_OFFSET]
    ldr         r1, =GCCFG_DEFAULT              /**< enable B-Session detect */
    orrs        r0, r1                          /*   (VBus monitoring)       */
    str         r0, [r3, #OTG_FS_GCCFG_OFFSET]

    ldr         r0, [r3, #OTG_FS_GINTMSK_OFFSET]
    ldr         r1, =GINTMSK_DEFAULT            /**< set int mask            */
    orrs        r0, r1
    str         r0, [r3, #OTG_FS_GINTMSK_OFFSET]

    ldr         r0, [r3, #OTG_FS_GAHBCFG_OFFSET]
    orrs        r0, #GINTMSK                    /**< unmaks ints             */
    str         r0, [r3, #OTG_FS_GAHBCFG_OFFSET]

/* if a cable is plugged in at this point, you will get an interrupt immediately */

    nop

// if we're already connected .. SRQINT should be set in GINTSTS
// if not, it'll be set as soon as someone plugs in .. we are now
// in the powered state when we get that int .. in the int, we want to
// setup for the transition to the default state by attaching the d+ pullup
// to get us recognized by the hub.
//
// a USBRST takes us to the default state. we should be getting endpoint
// interrupts shortly after this point. setup the control endpoint here
// and transition to the default state. BEWARE - sometimes windows does
// a double reset and we should be prepared to handle that .. so .. 
// on entry to reset, tear down ALL fifo's to default state (flush them too)
// and then setup the control endpoint
//
// from here on out, the usb chap 9 spec carries us through the rest of the states
//



// setup (start at pg1020)



/* unmask later */

usbfs_init_err:
    bx          lr
# -----------------------------------------------------------------------------