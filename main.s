
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       main, function
    .global     main
main:
    bl          led_init                /**< init leds                       */
    pop         {r0}                    /**< tos has pll lock result         */

    // do it instruction to show red/fail grn/good

    // user input:
    // pa0 - rising edge

    // next: get systick up and generating ints.
    //  sit here in main WFI'ing and toggle blue
    //  led every 100ms and scope it
    //
    //  int inc's a systime var .. and we ldrex here
    /// - when a clobber is detected (here), inc a local var.
    ///   - systick int ALWAYS has pri and therefore
    ///     will never strex, main simply polls again
    ///     but i want to catch the ldrex failure to
    ///     to make sure it's really working as spec'd

    // next:
    //   grab user pin via int and flip orange
    //   state with it.

//then:

// start setting up fs usb for cdc usage .. using bulk xfers
// then hook up one-wire temp to dump out virtual com
// see what comes out on generic terminal.
// then try to get a HS usb phy going and hit 54 MB/s!


    bkpt        #0                  /**< hang                                */
    .size       main, .-main
# -----------------------------------------------------------------------------