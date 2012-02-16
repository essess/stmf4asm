/**
 * @public
 *  application event destinations
 *  valid range is 0x001 to 0x3ff (10bits)
 *  KEEP CONTINUOUS
 */

    .set        UNKNOWN,        (0x000 << 16)
    .set        SYSTICK,        (0x001 << 16)
    .set        USBFS,          (0x002 << 16)
    .set        MAX_DEST,       USBFS
