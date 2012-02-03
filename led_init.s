/**
 * @public
 * <description/usage/assumptions>
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"

    // user leds:
    // led3 - orange - pd13
    // led4 - green  - pd12
    // led5 - red    - pd14
    // led6 - blue   - pd15

# -----------------------------------------------------------------------------
    .type       led_init, function
    .global     led_init
led_init:
    bx          lr
    .size       led_init, .-led_init
# -----------------------------------------------------------------------------