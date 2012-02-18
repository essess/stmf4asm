/**
 * @public
 *  enable compensation cell
 * params:
 *  none
 * retval:
 *  r0 - zero on failure
 * note:
 *  do this whenever using high speed io (50MHz+) to
 *  reduce switching noise on rails
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "syscfg.inc"

    .set TIMEOUT,   (110*3)             /**< 110 loops ~7.8us                */

# -----------------------------------------------------------------------------
    .type       comp_cell_init, function
    .global     comp_cell_init
comp_cell_init:
    movs        r0, #CMP_PD
    ldr         r1, =SYSCFG_CMPCR
    ldr         r2, [r1]
    orrs        r2, r0
    str         r2, [r1]
    ldr         r0, =TIMEOUT            /**< block until ready, or timeout   */
1:  cbz         r0, 1f
    sub         r0, #1
    ldr         r2, [r1]
    tst         r2, #READY              /**< ready?                          */
    beq         1b                      /*     not yet                       */
1:  bx          lr
# -----------------------------------------------------------------------------