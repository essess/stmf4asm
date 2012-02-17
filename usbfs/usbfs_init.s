/**
 * @public
 *  get otgfs phy/io into idle state and sourcing events
 * params:
 *  none
 * retval:
 *  none
 * note:
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"
    .include    "otgfs.inc"

# -----------------------------------------------------------------------------
    .type       usbfs_init, function
    .global     usbfs_init
usbfs_init:
/*
-   enable GPIOA clk - done

-   pa8 - OTG_FS_SOF (probably not needed)
    pa9 - OTG_FS_VBUS
    pa10 - OTG_FS_ID (probably not needed)
    pa11 - DM
    pa12 - DP

    set ID to AF/OD/PullU/100MHz

    set the rest to AF/PP/NoPull/100MHz

    af is 0x0a (af10)

    I think VBUS should be an input. not sure why they drive it.
    ID and SOF should be left alone and set as input too - they're not needed
    for device operations

-   enable OTG_FS clk - done earlier clk_cfg() - could be a problem ? i wouldn't think so

-   
*/
    bx          lr
# -----------------------------------------------------------------------------