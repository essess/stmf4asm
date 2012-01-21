
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       reset, function
    .global     reset
reset:
    ldr         lr, =reset          /**< TODO: something more creative to    */
                                    /*         capture a stack underflow     */

// TODO: wipeout code storage section
//       8 bytes in bitband which gives us 256 different bits to set on failure

    bl          pll_init            /**< fire up pll to 168MHz               */

// TODO: wipe out bss sections
// TODO: copy up init sections


# loadup ram vectors
  ldr r0, =__flash.vectors_load_start__
  ldr r1, =__flash.vectors_load_end__
  ldr r2, =__ram.vectors_start__
1:
  cmp r0, r1
  beq 1f
  ldr r3, [r0], #4
  str r3, [r2], #4
  b 1b
1:
# TODO: setup vtor

# TODO: wipe main stack (if configured to do so)

# TODO: setup process stack if size > 0
#       wipe (if configured to do so)
#       switch

    b           main
/* 
    maybe do a bl here, and upon return
    do a hard reset, bkpt, or wfi
*/
# -----------------------------------------------------------------------------