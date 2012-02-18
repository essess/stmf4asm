/**
 * @public
 *  init STM32F4 Discovery Board LED's to default state of OFF
 * params:
 *  r10 - contains GPIOD_BASE value
 * retval:
 *  void
 * note:
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"
    .include    "led.inc"

    .set    ORANGE_PUPDR,           (PUPD_DOWN << 26)
    .set    GREEN_PUPDR,            (PUPD_DOWN << 24)
    .set    RED_PUPDR,              (PUPD_DOWN << 28)
    .set    BLUE_PUPDR,             (PUPD_DOWN << 30)
    .set    LED_PUPDR_VALUE,        (ORANGE_PUPDR|GREEN_PUPDR|RED_PUPDR|BLUE_PUPDR)

    .set    ORANGE_OSPEED,          (OSPEED_100MHZ << 26)
    .set    GREEN_OSPEED,           (OSPEED_100MHZ << 24)
    .set    RED_OSPEED,             (OSPEED_100MHZ << 28)
    .set    BLUE_OSPEED,            (OSPEED_100MHZ << 30)
    .set    LED_OSPEEDR_VALUE,      (ORANGE_OSPEED|GREEN_OSPEED|RED_OSPEED|BLUE_OSPEED)

    .set    ORANGE_MODE,            (MODE_OUT << 26)
    .set    GREEN_MODE,             (MODE_OUT << 24)
    .set    RED_MODE,               (MODE_OUT << 28)
    .set    BLUE_MODE,              (MODE_OUT << 30)
    .set    LED_MODER_VALUE,        (ORANGE_MODE|GREEN_MODE|RED_MODE|BLUE_MODE)

    .set    INIT_STATE,             (ORANGE_OFF|GREEN_OFF|RED_OFF|BLUE_ON)

# -----------------------------------------------------------------------------
    .type       led_init, function
    .global     led_init
led_init:
    ldr         r0, =INIT_STATE              /**< drive everything to initial*/
    str         r0, [r10, #GPIO_BSRR_OFFSET] /*   state to avoid glitches    */
    ldr         r0, [r10, GPIO_PUPDR_OFFSET]
    orr         r0, #LED_PUPDR_VALUE            /**< set pull defaults       */
    str         r0, [r10, GPIO_PUPDR_OFFSET]
    ldr         r0, [r10, GPIO_OSPEEDR_OFFSET]
    orr         r0, LED_OSPEEDR_VALUE           /**< set speed defaults      */
    str         r0, [r10, GPIO_OSPEEDR_OFFSET]
    ldr         r0, [r10, GPIO_MODER_OFFSET]
    orr         r0, LED_MODER_VALUE             /**< set to outputs          */
    str         r0, [r10, GPIO_MODER_OFFSET]
    bx          lr
# -----------------------------------------------------------------------------