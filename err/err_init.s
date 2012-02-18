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
    .type       err_init, function
    .global     err_init
err_init:
    bx          lr
# -----------------------------------------------------------------------------