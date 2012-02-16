/**
 * @public
 * params:
 *  r0 - ptr to block
 *  r1 - ptr to head ptr
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
    ldr         r2, [r1]            /**< get addr of head block              */
    str         r2, [r0]            /**< insert ...                          */
    str         r0, [r1]            /**< ... free block is new head          */
    cpsie       i                   /**<                          end atomic */
    bx          lr
# -----------------------------------------------------------------------------