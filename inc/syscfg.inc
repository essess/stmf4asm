/**
 * @public
 *  STM32F4 SYSCFG Register Descriptions
 */
    .set    SYSCFG_BASE,            0x40013800

    .set    SYSCFG_MEMRM_OFFSET,    0x00
    .set    SYSCFG_MEMRM,           SYSCFG_BASE + _OFFSET

    .set    SYSCFG_PMC_OFFSET,      0x04
    .set    SYSCFG_PMC,             SYSCFG_BASE + _OFFSET

    .set    SYSCFG_EXTICR1_OFFSET,  0x08
    .set    SYSCFG_EXTICR1,         SYSCFG_BASE + SYSCFG_EXTICR1_OFFSET

    .set    SYSCFG_EXTICR2_OFFSET,  0x0C
    .set    SYSCFG_EXTICR2,         SYSCFG_BASE + SYSCFG_EXTICR2_OFFSET

    .set    SYSCFG_EXTICR3_OFFSET,  0x10
    .set    SYSCFG_EXTICR3,         SYSCFG_BASE + SYSCFG_EXTICR3_OFFSET

    .set    SYSCFG_EXTICR4_OFFSET,  0x14
    .set    SYSCFG_EXTICR4,         SYSCFG_BASE + SYSCFG_EXTICR4_OFFSET

    .set    SYSCFG_CMPCR_OFFSET,    0x20
    .set    SYSCFG_CMPCR,           SYSCFG_BASE + SYSCFG_CMPCR_OFFSET
    .set    READY,                  (0b1<<8)
    .set    CMP_PD,                 (0b1<<0)
