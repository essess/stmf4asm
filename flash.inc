/**
 * @public
 * STM32F4 FLASH Register Descriptions
 */
    .set    FLASH_BASE              0x40023C00

# -- ACR ----------------------------------------------------------------------
    .set    FLASH_ACR,              0x40023C00
    .set    FLASH_ACR_OFFSET,       FLASH_ACR - FLASH_BASE
    .set    DCRST                   (1<<12)
    .set    ICRST                   (1<<11)
    .set    DCEN                    (1<<10)
    .set    ICEN                    (1<< 9)
    .set    PRFTEN                  (1<< 8)

# TODO: LATENCY macro here ?

# -- KEYR ---------------------------------------------------------------------
    .set    FLASH_KEYR,             0x40023C04
    .set    FLASH_KEYR_OFFSET,      FLASH_KEYR - FLASH_BASE

# -- OPTKEYR ------------------------------------------------------------------
    .set    FLASH_OPTKEYR,          0x40023C08
    .set    FLASH_OPTKEYR_OFFSET,   FLASH_OPTKEYR - FLASH_BASE

# -- SR -----------------------------------------------------------------------
    .set    FLASH_SR,               0x40023C0C
    .set    FLASH_SR_OFFSET,        FLASH_SR - FLASH_BASE

# -- CR -----------------------------------------------------------------------
    .set    FLASH_CR,               0x40023C10
    .set    FLASH_CR_OFFSET,        FLASH_CR - FLASH_BASE

# -- OPTCR --------------------------------------------------------------------
    .set    FLASH_OPTCR             0x40023C14
    .set    FLASH_OPTCR_OFFSET,     FLASH_OPTCR - FLASH_BASE