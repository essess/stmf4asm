/**
 * @public
 * <description/usage/assumptions>
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       pool_free, function
    .global     pool_free
pool_free:
    bx          lr
    .size       pool_free, .-pool_free
# -----------------------------------------------------------------------------