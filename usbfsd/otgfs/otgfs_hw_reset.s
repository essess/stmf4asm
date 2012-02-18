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
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "otgfs.inc"
    .include    "err.inc"

    .set IDLE_TIMEOUT,  100     /**< ~5us                                    */
    .set CRST_TIMEOUT,  100     /**< ~5us                                    */

# -----------------------------------------------------------------------------
    .type       otgfs_hw_reset, function
    .global     otgfs_hw_reset
otgfs_hw_reset:
    ldr         r3, =OTG_FS_BASE
    ldr         r0, =IDLE_TIMEOUT  /**< soft reset core and wait to complete */
1:  cmp         r0, #0
    it          eq
    beq         usbfs_init_err
    ldr         r1, [r3, #OTG_FS_GRSTCTL_OFFSET]
    tst         r1, #AHBIDL             /**< wait for AHB idle               */
    itt         eq
    subeq       r0, #1
    beq         1b
    ldr         r0, =CRST_TIMEOUT
    movs        r1, #CSRST              /**< core reset                      */
    str         r1, [r3, #OTG_FS_GRSTCTL_OFFSET]
1:  cmp         r0, #0
    it          eq
    beq         usbfs_init_err
    ldr         r1, [r3, #OTG_FS_GRSTCTL_OFFSET]
    tst         r1, #CSRST              /**< CSRST clear?                    */
    itt         ne                      /*     reset incomplete              */
    subne       r0, #1                  /*                                   */
    bne         1b                      /*     try again                     */

// GUSBCFG.TDRT = 13 ... if AHB runs at 84 .. which it does now

/* force to peripheral mode */

// setup (start at pg1020)



/* unmask later */

usbfs_init_err:
    bx          lr
# -----------------------------------------------------------------------------