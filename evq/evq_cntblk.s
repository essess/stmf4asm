/**
 * @public
 *  have the startup code automatically init the event queue
 *  control block automatically for us from a .data section
 */

    .set        EVQ_DEPTH,      (256+64)    /**< word sized elements         */
                                            /*   ideally, set this to your   */
                                            /*   small + large event count   */

# -----------------------------------------------------------------------------
    .section    .data
    .global     evq_cntblk  
evq_cntblk:
    .word       evq_start       /**< +0  head                                */
    .word       evq_start       /**< +4  tail                                */
    .word       0               /**< +8  current depth                       */
    .word       EVQ_DEPTH       /**< +C  depth limit                         */
    .word       evq_start       /**< +10 buffer start                        */
    .word       evq_end         /**< +14 buffer end                          */
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .noinit
evq_start:
    .skip       (EVQ_DEPTH<<2)  /**< word width                              */
evq_end:
# -----------------------------------------------------------------------------