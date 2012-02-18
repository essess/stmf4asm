/**
 * @public
 *  application error codes
 */

# -- APP ----------------------------------------------------------------------
    .set    APP_BASE,               0x0000
    .set    BAD_DESTINATION,        APP_BASE << 16 | 0x0000

# -- PLL ----------------------------------------------------------------------
    .set    PLL_BASE,               0x0001
    .set    PLL_LOCK_FAIL,          PLL_BASE << 16 | 0x0000

# -- COMP_CELL ----------------------------------------------------------------
    .set    COMP_CELL_BASE,         0x0002
    .set    COMP_CELL_NOT_RDY,      COMP_CELL_BASE << 16 | 0x0000

# -- USB ----------------------------------------------------------------------
    .set    USB_BASE,               0x0003
    .set    OTGFS_AHBIDLE_TO,       USB_BASE << 16 | 0x0000
    .set    OTGFS_CSRST_TO,         USB_BASE << 16 | 0x0001
    .set    OTGFS_HWRST_FAIL,       USB_BASE << 16 | 0x0002
