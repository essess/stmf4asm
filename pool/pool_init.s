/**
 * @public
 * makes an event pool
 * params:
 *  r0 - ptr to pool head ptr (**head)
 *  r1 - ptr to pool block
 *  r2 - block size in words
 *  r3 - block count
 * returns:
 *  void
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       pool_init, function
    .global     pool_init
pool_init:
    cbz         r2, 1f                  /**< blk wordsize must be >= 1       */
    cbz         r3, 1f                  /**< blk cnt must be >= 1            */
    str         r1, [r0]                /**< point head to block start       */
next:
    subs        r3, #1
    itt         eq                      /**< last one?                       */
    streq       r3, [r1]                /**< yes, terminate curr             */
1:  bxeq        lr                      /**<      and done                   */
    adds        r0, r1, r2, lsl #2      /**< calc start of next block        */
    str         r0, [r1]                /**< point curr to next              */
    movs        r1, r0                  /**< next is now curr                */
    b           next
    .size       pool_init, .-pool_init
# -----------------------------------------------------------------------------