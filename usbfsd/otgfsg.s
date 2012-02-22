/**
 * @public or @internal
 *  <description/usage/assumptions>
 * params:
 *  r0 - use
 *  rn - use
 * retval:
 *  void
 * note:
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "otgfs.inc"

# -----------------------------------------------------------------------------
    .type       otgfsg, function
    .global     otgfsg
otgfsg:
    ldr         r3, =OTG_FS_BASE
    ldr         r0, [r3, #OTG_FS_GINTSTS_OFFSET]    /**< fetch source        */
try_srqint:
    tst         r0, #SRQINT
    bne         usbfs_srqint
try_enumdne:
    tst         r0, #ENUMDNE
    bne         usbfs_enumdne
try_usbrst:
    tst         r0, #USBRST
    bne         usbfs_usbrst
try_otgint:
    tst         r0, #OTGINT
    bne         usbfs_otgint
otgfsg_done:
    str         r0, [r3, #OTG_FS_GINTSTS_OFFSET]    /**< clr w1c bits        */
    dsb                                             /**< block until store   */
    bx          lr                                  /*   completes           */
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       usbfs_srqint, function
    .type       try_enumdne, function
usbfs_srqint:
    // handle
    b           try_enumdne
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       usbfs_enumdne, function
    .type       try_usbrst, function
usbfs_enumdne:
    // handle
    b           try_usbrst
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       usbfs_usbrst, function
    .type       try_otgint, function
usbfs_usbrst:
    // handle
    b           try_otgint
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .type       usbfs_otgint, function
    .type       otgfsg_done, function
usbfs_otgint:
    ldr         r1, [r3, #OTG_FS_GOTGINT_OFFSET]    /**< fetch otgint source */
    /* assert SEDET is set - disconnect just happened */
    str         r1, [r3, #OTG_FS_GOTGINT_OFFSET]    /**< w1c otgint source   */
    b           otgfsg_done
# -----------------------------------------------------------------------------