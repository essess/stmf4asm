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

    .include    "err.inc"

# -----------------------------------------------------------------------------
    .type       usbfsd_sm_init, function
    .global     usbfsd_sm_init
usbfsd_sm_init:
    push        { lr }

/**< init sm to match newly reset hardware - cannot be .data section because
 this code could be called at anytime to 'start over' in the event of weird failure */

// do that first .. on the end of _hw_reset, its possible that we could go right into
// an interrupt and the sm has to be ready for it!!! 

// initial state here is unpowered .. we need a SRQINT to detect vbus and take us to
// the powered state which then attempts to move us to the default state

    bl          otgfs_hw_reset
    cbnz        r0, 1f                  /**< otg_fs reset fail ?             */
    ldr         r0, =OTGFS_HWRST_FAIL
    bl          err_push
    pop         { pc }

1:  // TODO: more stuff ? if not, move out label up and wipe out the pop below


    pop         { pc }
# -----------------------------------------------------------------------------