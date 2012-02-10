/**
 * @public
 * <description/usage/assumptions>
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       pool_alloc, function
    .global     pool_alloc
pool_alloc:
    bx          lr
    .size       pool_alloc, .-pool_alloc
# -----------------------------------------------------------------------------