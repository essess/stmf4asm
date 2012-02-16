/**
 * @public
 *  get otgfs phy/io into idle state and sourcing events
 * params:
 *  none
 * retval:
 *  none
 * note:
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "otgfs.inc"

# -----------------------------------------------------------------------------
    .type       usbfs_init, function
    .global     usbfs_init
usbfs_init:
    bx          lr
# -----------------------------------------------------------------------------