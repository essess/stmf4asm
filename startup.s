
    .section    .text
    .syntax     unified
    .thumb

# ---------------------------------------------------------------------------
    .type       reset, function
    .global     reset
reset:
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


# double check - stack should be as on reset.
    b           main
/* 
    maybe do a bl here, and upon return
    do a hard reset, bkpt, or wfi
*/
    .pool
# ---------------------------------------------------------------------------