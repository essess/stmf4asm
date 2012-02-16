/**
 * @public
 * init STM32F4 Discovery Board LED state
 * takes state via r0, clobbers r1
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"
    .include    "led.inc"

# -----------------------------------------------------------------------------
    .type       led_set_state, function
    .global     led_set_state
led_set_state:
    ldr         r1, =GPIOD_BASE
    str         r0, [r1, #GPIO_BSRR_OFFSET]
    bx          lr
# -----------------------------------------------------------------------------