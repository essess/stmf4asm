/**
 * @public
 *  global enb/dis of peripheral clocks
 * params:
 *  none
 * retval:
 *  void
 * note:
 *
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "rcc.inc"

    .set DEFAULT_AHB1ENR,   ( CCMDATARAMEN | BKPSRAMEN | GPIOAEN | GPIODEN )

    .set DEFAULT_AHB2ENR,   ( OTGFSEN )

    .set DEFAULT_AHB3ENR,   ( 0 )

    .set DEFAULT_APB1ENR,   ( PWREN )

    .set DEFAULT_APB2ENR,   ( SYSCFGEN )

# -----------------------------------------------------------------------------
    .type       clk_cfg, function
    .global     clk_cfg
clk_cfg:
    ldr         r3, =RCC_BASE

    ldr         r1, [r3, #RCC_AHB1ENR_OFFSET]   /**< r-m-w AHB1ENR while     */
    ldr         r2, =DEFAULT_AHB1ENR            /*   preserving resv'd bits  */
    ldr         r0, =AHB1ENR_BIC_MASK           /*   per RM                  */
    bic         r1, r0
    orrs        r1, r2
    str         r1, [r3, #RCC_AHB1ENR_OFFSET]

    ldr         r1, [r3, #RCC_AHB2ENR_OFFSET]   /**< r-m-w AHB2ENR while     */
    ldr         r2, =DEFAULT_AHB2ENR            /*   preserving resv'd bits  */
    ldr         r0, =AHB2ENR_BIC_MASK           /*   per RM                  */
    bic         r1, r0
    orrs        r1, r2
    str         r1, [r3, #RCC_AHB2ENR_OFFSET]

    ldr         r1, [r3, #RCC_AHB3ENR_OFFSET]   /**< r-m-w AHB3ENR while     */
    ldr         r2, =DEFAULT_AHB3ENR            /*   preserving resv'd bits  */
    ldr         r0, =AHB3ENR_BIC_MASK           /*   per RM                  */
    bic         r1, r0
    orrs        r1, r2
    str         r1, [r3, #RCC_AHB3ENR_OFFSET]

    ldr         r1, [r3, #RCC_APB1ENR_OFFSET]   /**< r-m-w APB1ENR while     */
    ldr         r2, =DEFAULT_APB1ENR            /*   preserving resv'd bits  */
    ldr         r0, =APB1ENR_BIC_MASK           /*   per RM                  */
    bic         r1, r0
    orrs        r1, r2
    str         r1, [r3, #RCC_APB1ENR_OFFSET]

    ldr         r1, [r3, #RCC_APB2ENR_OFFSET]   /**< r-m-w APB2ENR while     */
    ldr         r2, =DEFAULT_APB2ENR            /*   preserving resv'd bits  */
    ldr         r0, =APB2ENR_BIC_MASK           /*   per RM                  */
    bic         r1, r0
    orrs        r1, r2
    str         r1, [r3, #RCC_APB2ENR_OFFSET]

    bx          lr
# -----------------------------------------------------------------------------