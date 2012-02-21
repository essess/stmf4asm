/**
 * @public
 *  one time statemachine initialization
 * params:
 *  none
 * retval:
 *  none
 * notes:
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       usbfsd_sm_start, function
    .global     usbfsd_sm_start
usbfsd_sm_start:
    push        { lr }
    bl          otgfs_hw_pin_init
/* TODO: setup nvic */
    bl          usbfsd_sm_init
    pop         { pc }
# -----------------------------------------------------------------------------