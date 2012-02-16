/**
 * @public
 * init STM32F4 Discovery Board LED's to default state of OFF
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "rcc.inc"
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

# -----------------------------------------------------------------------------
    .type       led_init, function
    .global     led_init
led_init:
    ldr         r0, =RCC_AHB1ENR            /**< enable GPIOD clocking       */
    ldr         r1, [r0]
    orr         r1, #(1<<3)
    str         r1, [r0]
    ldr         r0, =GPIOD_BASE
    ldr         r1, =ALL_OFF                /**< drive everything to initial */
    str         r1, [r0, #GPIO_BSRR_OFFSET] /*   state to avoid glitches     */
    ldr         r1, [r0, GPIO_PUPDR_OFFSET]
    orr         r1, #LED_PUPDR_VALUE            /**< set pull defaults       */
    str         r1, [r0, GPIO_PUPDR_OFFSET]
    ldr         r1, [r0, GPIO_OSPEEDR_OFFSET]
    orr         r1, LED_OSPEEDR_VALUE           /**< set speed defaults      */
    str         r1, [r0, GPIO_OSPEEDR_OFFSET]
    ldr         r1, [r0, GPIO_MODER_OFFSET]
    orr         r1, LED_MODER_VALUE             /**< set to outputs          */
    str         r1, [r0, GPIO_MODER_OFFSET]
    bx          lr
# -----------------------------------------------------------------------------