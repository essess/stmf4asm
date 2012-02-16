/**
 * @public
 * STM32F4 Discovery board LED defines
 *
 * User LED's:
 * LED3 - ORANGE - PD13
 * LED4 - GREEN  - PD12
 * LED5 - RED    - PD14
 * LED6 - BLUE   - PD15
 * 
 * Pin HI == ON
 *
 */

# BSRR Values:
    .set    ORANGE_ON,              (1 << 13)
    .set    ORANGE_OFF,             (ORANGE_ON << 16)
    .set    GREEN_ON,               (1 << 12)
    .set    GREEN_OFF,              (GREEN_ON << 16)
    .set    RED_ON,                 (1 << 14)
    .set    RED_OFF,                (RED_ON << 16)
    .set    BLUE_ON,                (1 << 15)
    .set    BLUE_OFF,               (BLUE_ON << 16)
    .set    ALL_OFF,                (ORANGE_OFF|GREEN_OFF|RED_OFF|BLUE_OFF)
    .set    ALL_ON,                 (ORANGE_ON|GREEN_ON|RED_ON|BLUE_ON)

# inlining macro which assumes GPIOD_BASE is in r12
    .macro  led reg, state
    mov         \reg, #\state
    str         \reg, [r10, #GPIO_BSRR_OFFSET]
    .endm
