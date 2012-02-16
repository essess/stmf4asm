/**
 * @public
 *  place an event reference into the back of the queue (FIFO)
 * params:
 *  r0 - event reference
 *  r9 - reference to event queue control block
 * retval:
 *  zero flag set if queue is full
 * note:
 *  is threadsafe
 */
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       evq_put, function
    .global     evq_put
evq_put:
    cpsid       i                   /**<                        start atomic */
    ldr         r2, [r9, #+0x08]    /**< grab current queue count            */
    ldr         r1, [r9, #+0x0C]    /**<                    limit            */
    cmp         r2, r1              /**< current >= limit ?                  */
    bge         1f                  /**<   full                              */
    adds        r2, #1              /**< current count++                     */
    str         r2, [r9, #+0x08]    /*                                       */
    ldr         r1, [r9]            /**< grab head                           */
    str         r0, [r1], #4        /**< store ev ref and postinc            */
    ldr         r0, [r9, #+0x14]    /**< get end of buffer ...               */
    cmp         r1, r0              /**< ... to determine if head >= end ?   */
    it          ge
    ldrge       r1, [r9, #+0x10]    /**< correct to buffer start (wrap)      */
    str         r1, [r9]            /**< write back updated head             */
    movs        r1, r1              /**< ensure zero flag is clear           */
1:  cpsie       i                   /**<                          end atomic */
    bx          lr
# -----------------------------------------------------------------------------