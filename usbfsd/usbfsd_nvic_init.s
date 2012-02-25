/**
 * @public
 *  setup/unmask OTG_FS interrupt in NVIC
 * params:
 *  none
 * retval:
 *  none
 * notes:
 *  F4 uses 4 bits of priority
 *  OTG_FS_IRQn = 67
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "scs.inc"

    .set PRI,   (10 << 4)

# -----------------------------------------------------------------------------
    .type       usbfsd_nvic_init, function
    .global     usbfsd_nvic_init
usbfsd_nvic_init:
    ldr         r0, =SCS_BASE
    movs        r1, #PRI                /**< set priority                    */
    strb        r1, [r0, #NVIC_IP67_OFF]
    movs        r1, #(1<<3)             /**< enable bit #67                  */
    str         r1, [r0, #NVIC_ISER2_OFFSET]
    bx          lr
# -----------------------------------------------------------------------------