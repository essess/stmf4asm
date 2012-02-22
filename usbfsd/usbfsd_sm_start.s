/**
 * @public
 *  one time statemachine initialization - the
 *  initial transition
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
    bl          usbfsd_nvic_init       /**< interrupts are unmasked on exit! */
    bl          usbfsd_sm_init         /**< GINT unmasked on exit! an int    */
    pop         { pc }                 /*   could occur before returning!    */
# -----------------------------------------------------------------------------