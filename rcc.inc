/**
 * @public
 * STM32F4 RCC (Reset & Clock Control) Register Descriptions
 */
    .set    RCC_BASE,               0x40023800

# -- CR -----------------------------------------------------------------------
    .set    RCC_CR,                 0x40023800
    .set    RCC_CR_OFFSET,          RCC_CR - RCC_BASE
    .set    HSEON,                  (1<<16)
    .set    PLLON,                  (1<<24)
    .set    PLLRDY,                 (1<<25)

# -- PLLCFGR ------------------------------------------------------------------
    .set    RCC_PLLCFGR,            0x40023804
    .set    RCC_PLLCFGR_OFFSET,     RCC_PLLCFGR - RCC_BASE
    .set    PLLCFGR_RESV_MASK,      0b11110000101111001000000000000000
    .set    PLLCFGR_BIC_MASK,       ~PLLCFGR_RESV_MASK

# -- CFGR ---------------------------------------------------------------------
    .set    RCC_CFGR,               0x40023808
    .set    RCC_CFGR_OFFSET,        RCC_CFGR - RCC_BASE
    .set    CFGR_RESV_MASK,         0b00000000000000000000001100000000
    .set    CFGR_BIC_MASK,          ~CFGR_RESV_MASK

# -- CIR ----------------------------------------------------------------------
    .set    RCC_CIR,                0x4002380C
    .set    RCC_CIR_OFFSET,         RCC_CIR - RCC_BASE


# -- RSTR ---------------------------------------------------------------------
# -- AHB1RSTR -----------------------------------------------------------------
    .set    RCC_AHB1RSTR,           0x40023810
    .set    RCC_AHB1RSTR_OFFSET,    RCC_AHB1RSTR - RCC_BASE

# -- AHB2RSTR -----------------------------------------------------------------
    .set    RCC_AHB2RSTR,           0x40023814
    .set    RCC_AHB2RSTR_OFFSET,    RCC_AHB2RSTR - RCC_BASE

# -- AHB3RSTR -----------------------------------------------------------------
    .set    RCC_AHB3RSTR,           0x40023818
    .set    RCC_AHB3RSTR_OFFSET,    RCC_AHB3RSTR - RCC_BASE

# -- APB1RSTR -----------------------------------------------------------------
    .set    RCC_APB1RSTR,           0x40023820
    .set    RCC_APB1RSTR_OFFSET,    RCC_APB1RSTR - RCC_BASE

# -- APB2RSTR -----------------------------------------------------------------
    .set    RCC_APB2RSTR,           0x40023824
    .set    RCC_APB2RSTR_OFFSET,    RCC_APB2RSTR - RCC_BASE


# -- ENR ----------------------------------------------------------------------
# -- AHB1ENR ------------------------------------------------------------------
    .set    RCC_AHB1ENR,            0x40023830
    .set    RCC_AHB1ENR_OFFSET,     RCC_AHB1ENR - RCC_BASE
    .set    AHB1ENR_RESV_MASK,      0b10000001100010111110111000000000
    .set    AHB1ENR_BIC_MASK,       ~AHB1ENR_RESV_MASK

# -- AHB2ENR ------------------------------------------------------------------
    .set    RCC_AHB2ENR,            0x40023834
    .set    RCC_AHB2ENR_OFFSET,     RCC_AHB2ENR - RCC_BASE

# -- AHB3ENR ------------------------------------------------------------------
    .set    RCC_AHB3ENR,            0x40023838
    .set    RCC_AHB3ENR_OFFSET,     RCC_AHB3ENR - RCC_BASE

# -- APB1ENR ------------------------------------------------------------------
    .set    RCC_APB1ENR,            0x40023840
    .set    RCC_APB1ENR_OFFSET,     RCC_APB1ENR - RCC_BASE

# -- APB2ENR ------------------------------------------------------------------
    .set    RCC_APB2ENR,            0x40023844
    .set    RCC_APB2ENR_OFFSET,     RCC_APB2ENR - RCC_BASE


# -- LPENR --------------------------------------------------------------------
# -- AHB1LPENR ----------------------------------------------------------------
    .set    RCC_AHB1LPENR,          0x40023850
    .set    RCC_AHB1LPENR_OFFSET,   RCC_AHB1LPENR - RCC_BASE

# -- AHB2LPENR ----------------------------------------------------------------
    .set    RCC_AHB2LPENR,          0x40023854
    .set    RCC_AHB2LPENR_OFFSET,   RCC_AHB2LPENR - RCC_BASE

# -- AHB3LPENR ----------------------------------------------------------------
    .set    RCC_AHB3LPENR,          0x40023858
    .set    RCC_AHB3LPENR_OFFSET,   RCC_AHB3LPENR - RCC_BASE

# -- APB1LPENR ----------------------------------------------------------------
    .set    RCC_APB1LPENR,          0x40023860
    .set    RCC_APB1LPENR_OFFSET,   RCC_APB1LPENR - RCC_BASE

# -- APB2LPENR ----------------------------------------------------------------
    .set    RCC_APB2LPENR,          0x40023864
    .set    RCC_APB2LPENR_OFFSET,   RCC_APB2LPENR - RCC_BASE


# -- BDCR ---------------------------------------------------------------------
    .set    RCC_BDCR,               0x40023870
    .set    RCC_BDCR_OFFSET,        RCC_BDCR - RCC_BASE

# -- CSR ----------------------------------------------------------------------
    .set    RCC_CSR,                0x40023874
    .set    RCC_CSR_OFFSET,         RCC_CSR - RCC_BASE

# -- SSCGR --------------------------------------------------------------------
    .set    RCC_SSCGR,              0x40023880
    .set    RCC_SSCGR_OFFSET,       RCC_SSCGR - RCC_BASE

# -- PLLI2SCFGR ---------------------------------------------------------------
    .set    RCC_PLLI2SCFGR,         0x40023884
    .set    RCC_PLLI2SCFGR_OFFSET,  RCC_PLLI2SCFGR - RCC_BASE
