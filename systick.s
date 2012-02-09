/**
 * @public
 * systick interrupt handler
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       systick, function
    .global     systick
systick:
    /* TODO: alloc/post systick event */
    bx          lr
    .size       systick, .-systick
# -----------------------------------------------------------------------------