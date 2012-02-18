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

    .include    "gpio.inc"
    .include    "led.inc"

# -----------------------------------------------------------------------------
    .type       err_push, function
    .global     err_push
err_push:
    led         r1, RED_ON              /**< physical indication             */
    /* TODO: push on stack */
    bx          lr
# -----------------------------------------------------------------------------