/**
 * @public
 *  statemachine event processor
 * params:
 *  r7  - holds reference to current event
 *  r8  - holds the signal field of currently active ev
 * retval:
 *  none
 * notes:
 */

    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       usbfsd_sm_proc, function
    .global     usbfsd_sm_proc
usbfsd_sm_proc:
    bx          lr
# -----------------------------------------------------------------------------