/**
 * @public
 * params:
 *  r0 - ptr to head ptr
 * retval:
 *  r0 - ptr to unlinked pool block
 * note:
 *  is threadsafe
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       pool_get, function
    .global     pool_get
pool_get:
    cpsid       i                   /**<                        start atomic */
    ldr         r1, [r0]            /**< grab value of head                R */
    cbz         r1, 1f              /**< is pool empty? (null head)          */
    ldr         r2, [r1]            /**< no, get loc of next block in list M */
    str         r2, [r0]            /**<     make it the new head          W */
1:  cpsie       i                   /**<                          end atomic */
    movs        r0, r1              /**< ref to unlinked block is retval     */
    bx          lr
    .size       pool_get, .-pool_get
# -----------------------------------------------------------------------------