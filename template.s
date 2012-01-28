/**
 * @public or @internal
 * <description/usage/assumptions>
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       func, function
    .global     func
func:
    bkpt        #0                  /**<    comment                          */
    .size       func,.-func
# -----------------------------------------------------------------------------