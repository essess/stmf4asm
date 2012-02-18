/**
 * @public or @internal
 *  <description/usage/assumptions>
 * params:
 *  r0 - use
 *  rn - use
 * retval:
 *  void
 * note:
 *  is threadsafe
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       app_init, function
    .global     app_init
app_init:
    push        { lr }
    bl          usbfsd_sm_start
    pop         { pc }
# -----------------------------------------------------------------------------