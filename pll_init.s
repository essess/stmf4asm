/**
 * @public
 * move from the 16Mhz IRC to the PLL at 168MHz
 * assume:
 *   -external xtal at 8MHz
 *   -caller needs to save {} as desired.
 */

    .section    .init
    .syntax     unified
    .thumb

    .include    "flash.inc"

# -----------------------------------------------------------------------------
    .type       pll_init, function
    .global     pll_init
pll_init:

// setup as much as we can while still at a 0 waitstate

// change flash waitstates (5WS - 6 cpu cycles) in FLASH_ACR
    ldr         r0, =FLASH_ACR
    ldr
// read
// reset caches
//  enable them all and set latency
// then go switch to new freq




    bx          lr                  /**<    comment                          */
# -----------------------------------------------------------------------------