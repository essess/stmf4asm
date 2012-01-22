
    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       main, function
    .global     main
main:
    /*

    r4 has the results of the pll lock

    TODO: pipe out sysclk through mco and verify that it is 168/4 = 42MHZ

    */
    bkpt        #0                  /**< hang                                */
# -----------------------------------------------------------------------------