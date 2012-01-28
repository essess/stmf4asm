
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       main, function
    .global     main
main:
    /* r4 has the results of the pll lock */

// start setting up fs usb for cdc usage .. using bulk xfers
// then hook up one-wire temp to dump out virtual com
// see what comes out on generic terminal.
// then try to get a HS usb phy going and hit 54 MB/s!


    bkpt        #0                  /**< hang                                */
    .size       main, .-main
# -----------------------------------------------------------------------------