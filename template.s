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
    .type       func, function
    .global     func
func:
    bkpt        #0                  /**<    comment                          */
# -----------------------------------------------------------------------------