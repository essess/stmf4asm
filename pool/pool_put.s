/**
 * @public
 * params:
 *  r0 - ptr to head ptr
 *  r1 - ptr to block
 * retval:
 *  void
 * note:
 *  is threadsafe
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       pool_put, function
    .global     pool_put
pool_put:
    cpsid       i                   /**<                        start atomic */
    ldr         r2, [r0]            /**< get addr of head block              */
    str         r2, [r1]            /**< insert ...                          */
    str         r1, [r0]            /**< ... free block is new head          */
    cpsie       i                   /**<                          end atomic */
    bx          lr
    .size       pool_put, .-pool_put
# -----------------------------------------------------------------------------