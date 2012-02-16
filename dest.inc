/**
 * @public
 *  application event destinations
 *  valid range is 1 -> 1023 (<= 10bits)
 *  KEEP CONTINUOUS
 */

    .set        RESERVED,       (0000 <<16)
    .set        SYSTICK,        (0001 <<16)
    .set        MAX_DEST,       SYSTICK
