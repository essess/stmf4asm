/**
 * @public
 * Cortex (S)ystem (C)ontrol (S)pace Register Descriptions
 */
    .set SCS_BASE,              0xE000E000

    .set ICTR_OFFSET,           0x0004            /**< System Control and ID */
    .set ACTLR_OFFSET,          0x0008

    .set CPUID_OFFSET,          0x0D00
    .set ICSR_OFFSET,           0x0D04
    .set VTOR_OFFSET,           0x0D08
    .set AIRCR_OFFSET,          0x0D0C
    .set SCR_OFFSET,            0x0D10
    .set CCR_OFFSET,            0x0D14
    .set SHPR1_OFFSET,          0x0D18
    .set SHPR2_OFFSET,          0x0D1C
    .set SHPR3_OFFSET,          0x0D20
    .set SHCSR_OFFSET,          0x0D24
    .set CFSR_OFFSET,           0x0D28
    .set HFSR_OFFSET,           0x0D2C
    .set DFSR_OFFSET,           0x0D30
    .set MMFAR_OFFSET,          0x0D34
    .set BFAR_OFFSET,           0x0D38
    .set AFSR_OFFSET,           0x0D3C

    .set ID_AFR0_OFFSET,        0x0D4C
    .set ID_MMFR0_OFFSET,       0x0D50
    .set ID_MMFR1_OFFSET,       0x0D54
    .set ID_MMFR2_OFFSET,       0x0D58
    .set ID_MMFR3_OFFSET,       0x0D5C
    .set ID_ISAR0_OFFSET,       0x0D60
    .set ID_ISAR1_OFFSET,       0x0D64
    .set ID_ISAR2_OFFSET,       0x0D68
    .set ID_ISAR3_OFFSET,       0x0D6C
    .set ID_ISAR4_OFFSET,       0x0D70
    .set ID_ISAR5_OFFSET,       0x0D74

    .set CPACR_OFFSET,          0x0D88

    .set DHCSR_OFFSET,          0x0DF0
    .set DCRSR_OFFSET,          0x0DF4
    .set DCRDR_OFFSET,          0x0DF8
    .set DEMCR_OFFSET,          0x0DFC

    .set STIR_OFFSET,           0x0F00

    .set FPCCR_OFFSET,          0x0F34
    .set FPCAR_OFFSET,          0x0F38
    .set FPDSCR_OFFSET,         0x0F3C
    .set MVFR0_OFFSET,          0x0F40
    .set MVFR1_OFFSET,          0x0F44

    .set PID4_OFFSET,           0x0FD0
    .set PID5_OFFSET,           0x0FD4
    .set PID6_OFFSET,           0x0FD8
    .set PID7_OFFSET,           0x0FDC
    .set PID0_OFFSET,           0x0FE0
    .set PID1_OFFSET,           0x0FE4
    .set PID2_OFFSET,           0x0FE8
    .set PID3_OFFSET,           0x0FEC
    .set CID0_OFFSET,           0x0FF0
    .set CID1_OFFSET,           0x0FF4
    .set CID2_OFFSET,           0x0FF8
    .set CID3_OFFSET,           0x0FFC

    .set SYST_CSR_OFFSET,       0x0010                          /**< SysTick */
    .set SYST_RVR_OFFSET,       0x0014
    .set SYST_CVR_OFFSET,       0x0018
    .set SYST_CALIB_OFFSET,     0x001C

    .set NVIC_ISER0_OFFSET,     0x0100                             /**< NVIC */
    .set NVIC_ISER1_OFFSET,     0x0104
    .set NVIC_ISER2_OFFSET,     0x0108
    .set NVIC_ISER3_OFFSET,     0x010C
    .set NVIC_ISER4_OFFSET,     0x0110
    .set NVIC_ISER5_OFFSET,     0x0114
    .set NVIC_ISER6_OFFSET,     0x0118
    .set NVIC_ISER7_OFFSET,     0x011C
    .set NVIC_ISER8_OFFSET,     0x0120
    .set NVIC_ISER9_OFFSET,     0x0124
    .set NVIC_ISER10_OFFSET,    0x0128
    .set NVIC_ISER11_OFFSET,    0x012C
    .set NVIC_ISER12_OFFSET,    0x0130
    .set NVIC_ISER13_OFFSET,    0x0134
    .set NVIC_ISER14_OFFSET,    0x0138
    .set NVIC_ISER15_OFFSET,    0x013C

    .set NVIC_ICER0_OFFSET,     0x0180
    .set NVIC_ICER1_OFFSET,     0x0184
    .set NVIC_ICER2_OFFSET,     0x0188
    .set NVIC_ICER3_OFFSET,     0x018C
    .set NVIC_ICER4_OFFSET,     0x0190
    .set NVIC_ICER5_OFFSET,     0x0194
    .set NVIC_ICER6_OFFSET,     0x0198
    .set NVIC_ICER7_OFFSET,     0x019C
    .set NVIC_ICER8_OFFSET,     0x01A0
    .set NVIC_ICER9_OFFSET,     0x01A4
    .set NVIC_ICER10_OFFSET,    0x01A8
    .set NVIC_ICER11_OFFSET,    0x01AC
    .set NVIC_ICER12_OFFSET,    0x01B0
    .set NVIC_ICER13_OFFSET,    0x01B4
    .set NVIC_ICER14_OFFSET,    0x01B8
    .set NVIC_ICER15_OFFSET,    0x01BC

    .set NVIC_ISPR0_OFFSET,     0x0200
    .set NVIC_ISPR1_OFFSET,     0x0204
    .set NVIC_ISPR2_OFFSET,     0x0208
    .set NVIC_ISPR3_OFFSET,     0x020C
    .set NVIC_ISPR4_OFFSET,     0x0210
    .set NVIC_ISPR5_OFFSET,     0x0214
    .set NVIC_ISPR6_OFFSET,     0x0218
    .set NVIC_ISPR7_OFFSET,     0x021C
    .set NVIC_ISPR8_OFFSET,     0x0220
    .set NVIC_ISPR9_OFFSET,     0x0224
    .set NVIC_ISPR10_OFFSET,    0x0228
    .set NVIC_ISPR11_OFFSET,    0x022C
    .set NVIC_ISPR12_OFFSET,    0x0230
    .set NVIC_ISPR13_OFFSET,    0x0234
    .set NVIC_ISPR14_OFFSET,    0x0238
    .set NVIC_ISPR15_OFFSET,    0x023C

    .set NVIC_ICPR0_OFFSET,     0x0280
    .set NVIC_ICPR1_OFFSET,     0x0284
    .set NVIC_ICPR2_OFFSET,     0x0288
    .set NVIC_ICPR3_OFFSET,     0x028C
    .set NVIC_ICPR4_OFFSET,     0x0290
    .set NVIC_ICPR5_OFFSET,     0x0294
    .set NVIC_ICPR6_OFFSET,     0x0298
    .set NVIC_ICPR7_OFFSET,     0x029C
    .set NVIC_ICPR8_OFFSET,     0x02A0
    .set NVIC_ICPR9_OFFSET,     0x02A4
    .set NVIC_ICPR10_OFFSET,    0x02A8
    .set NVIC_ICPR11_OFFSET,    0x02AC
    .set NVIC_ICPR12_OFFSET,    0x02B0
    .set NVIC_ICPR13_OFFSET,    0x02B4
    .set NVIC_ICPR14_OFFSET,    0x02B8
    .set NVIC_ICPR15_OFFSET,    0x02BC

    .set NVIC_IABR0_OFFSET,     0x0300
    .set NVIC_IABR1_OFFSET,     0x0304
    .set NVIC_IABR2_OFFSET,     0x0308
    .set NVIC_IABR3_OFFSET,     0x030C
    .set NVIC_IABR4_OFFSET,     0x0310
    .set NVIC_IABR5_OFFSET,     0x0314
    .set NVIC_IABR6_OFFSET,     0x0318
    .set NVIC_IABR7_OFFSET,     0x031C
    .set NVIC_IABR8_OFFSET,     0x0320
    .set NVIC_IABR9_OFFSET,     0x0324
    .set NVIC_IABR10_OFFSET,    0x0328
    .set NVIC_IABR11_OFFSET,    0x032C
    .set NVIC_IABR12_OFFSET,    0x0330
    .set NVIC_IABR13_OFFSET,    0x0334
    .set NVIC_IABR14_OFFSET,    0x0338
    .set NVIC_IABR15_OFFSET,    0x033C

    .set NVIC_IPR0_OFFSET,      0x0400
    .set NVIC_IPR1_OFFSET,      0x0404
    .set NVIC_IPR2_OFFSET,      0x0408
    .set NVIC_IPR3_OFFSET,      0x040C
    .set NVIC_IPR4_OFFSET,      0x0410
    .set NVIC_IPR5_OFFSET,      0x0414
    .set NVIC_IPR6_OFFSET,      0x0418
    .set NVIC_IPR7_OFFSET,      0x041C
    .set NVIC_IPR8_OFFSET,      0x0420
    .set NVIC_IPR9_OFFSET,      0x0424
    .set NVIC_IPR10_OFFSET,     0x0428
    .set NVIC_IPR11_OFFSET,     0x042C
    .set NVIC_IPR12_OFFSET,     0x0430
    .set NVIC_IPR13_OFFSET,     0x0434
    .set NVIC_IPR14_OFFSET,     0x0438
    .set NVIC_IPR15_OFFSET,     0x043C
    .set NVIC_IPR16_OFFSET,     0x0440
    .set NVIC_IPR17_OFFSET,     0x0444
    .set NVIC_IPR18_OFFSET,     0x0448
    .set NVIC_IPR19_OFFSET,     0x044C
    .set NVIC_IPR20_OFFSET,     0x0450
    .set NVIC_IPR21_OFFSET,     0x0454
    .set NVIC_IPR22_OFFSET,     0x0458
    .set NVIC_IPR23_OFFSET,     0x045C
    .set NVIC_IPR24_OFFSET,     0x0460
    .set NVIC_IPR123_OFFSET,    0x07EC

    .set MPU_TYPE_OFFSET,       0x0D90                              /**< MPU */
    .set MPU_CTRL_OFFSET,       0x0D94
    .set MPU_RNR_OFFSET,        0x0D98
    .set MPU_RBAR_OFFSET,       0x0D9C
    .set MPU_RASR_OFFSET,       0x0DA0
    .set MPU_RBAR_A1_OFFSET,    0x0DA4
    .set MPU_RASR_A1_OFFSET,    0x0DA8
    .set MPU_RBAR_A2_OFFSET,    0x0DAC
    .set MPU_RASR_A2_OFFSET,    0x0DB0
    .set MPU_RBAR_A3_OFFSET,    0x0DB4
    .set MPU_RASR_A3_OFFSET,    0x0DB8

# -- System Control and ID ----------------------------------------------------

    .set ICTR,          SCS_BASE + ICTR_OFFSET
    .set ACTLR,         SCS_BASE + ACTLR_OFFSET

    .set CPUID,         SCS_BASE + CPUID_OFFSET
    .set ICSR,          SCS_BASE + ICSR_OFFSET
    .set VTOR,          SCS_BASE + VTOR_OFFSET
    .set AIRCR,         SCS_BASE + AIRCR_OFFSET
    .set SCR,           SCS_BASE + SCR_OFFSET
    .set CCR,           SCS_BASE + CCR_OFFSET   /**< Cfg and Ctrl R          */
    .set SHPR1,         SCS_BASE + SHPR1_OFFSET /**< System Handler Pri R    */
    .set SHP4,          SHPR1 + 0               /**< MemManage               */
    .set SHP5,          SHPR1 + 1               /**< BusFault                */
    .set SHP6,          SHPR1 + 2               /**< UsageFault              */
    .set SHP7,          SHPR1 + 3               /**<                         */
    .set SHPR2,         SCS_BASE + SHPR2_OFFSET
    .set SHP8,          SHPR2 + 0               /**< SVCall                  */
    .set SHP9,          SHPR2 + 1               /**<                         */
    .set SHP10,         SHPR2 + 2               /**<                         */
    .set SHP11,         SHPR2 + 3               /**<                         */
    .set SHPR3,         SCS_BASE + SHPR3_OFFSET
    .set SHP12,         SHPR3 + 0               /**< DebugMonitor            */
    .set SHP13,         SHPR3 + 1               /**<                         */
    .set SHP14,         SHPR3 + 2               /**< PendSV                  */
    .set SHP15,         SHPR3 + 3               /**< SysTick                 */
    .set SHCSR,         SCS_BASE + SHCSR_OFFSET /**< Sys Hnd Cnt and State R */
    .set CFSR,          SCS_BASE + CFSR_OFFSET
    .set HFSR,          SCS_BASE + HFSR_OFFSET
    .set DFSR,          SCS_BASE + DFSR_OFFSET
    .set MMFAR,         SCS_BASE + MMFAR_OFFSET
    .set BFAR,          SCS_BASE + BFAR_OFFSET
    .set AFSR,          SCS_BASE + AFSR_OFFSET

    .set ID_AFR0,       SCS_BASE + ID_AFR0_OFFSET          /**< CPUID scheme */
    .set ID_MMFR0,      SCS_BASE + ID_MMFR0_OFFSET
    .set ID_MMFR1,      SCS_BASE + ID_MMFR1_OFFSET
    .set ID_MMFR2,      SCS_BASE + ID_MMFR2_OFFSET
    .set ID_MMFR3,      SCS_BASE + ID_MMFR3_OFFSET
    .set ID_ISAR0,      SCS_BASE + ID_ISAR0_OFFSET
    .set ID_ISAR1,      SCS_BASE + ID_ISAR1_OFFSET
    .set ID_ISAR2,      SCS_BASE + ID_ISAR2_OFFSET
    .set ID_ISAR3,      SCS_BASE + ID_ISAR3_OFFSET
    .set ID_ISAR4,      SCS_BASE + ID_ISAR4_OFFSET
    .set ID_ISAR5,      SCS_BASE + ID_ISAR5_OFFSET

    .set CPACR,         SCS_BASE + CPACR_OFFSET

    .set DHCSR,         SCS_BASE + DHCSR_OFFSET                   /**< Debug */
    .set DCRSR,         SCS_BASE + DCRSR_OFFSET
    .set DCRDR,         SCS_BASE + DCRDR_OFFSET
    .set DEMCR,         SCS_BASE + DEMCR_OFFSET

    .set STIR,          SCS_BASE + STIR_OFFSET

    .set FPCCR,         SCS_BASE + FPCCR_OFFSET           /**< FP extensions */
    .set FPCAR,         SCS_BASE + FPCAR_OFFSET
    .set FPDSCR,        SCS_BASE + FPDSCR_OFFSET
    .set MVFR0,         SCS_BASE + MVFR0_OFFSET
    .set MVFR1,         SCS_BASE + MVFR1_OFFSET

    .set PID4,          SCS_BASE + PID4_OFFSET             /**< CPUID scheme */
    .set PID5,          SCS_BASE + PID5_OFFSET
    .set PID6,          SCS_BASE + PID6_OFFSET
    .set PID7,          SCS_BASE + PID7_OFFSET
    .set PID0,          SCS_BASE + PID0_OFFSET
    .set PID1,          SCS_BASE + PID1_OFFSET
    .set PID2,          SCS_BASE + PID2_OFFSET
    .set PID3,          SCS_BASE + PID3_OFFSET
    .set CID0,          SCS_BASE + CID0_OFFSET
    .set CID1,          SCS_BASE + CID1_OFFSET
    .set CID2,          SCS_BASE + CID2_OFFSET
    .set CID3,          SCS_BASE + CID3_OFFSET

# -- SysTick ------------------------------------------------------------------

    .set SYST_CSR,      SCS_BASE + SYST_CSR_OFFSET  /**< Control and Status R*/
    .set SYST_RVR,      SCS_BASE + SYST_RVR_OFFSET  /**< Reload Value R      */
    .set SYST_CVR,      SCS_BASE + SYST_CVR_OFFSET  /**< Current Value R     */
    .set SYST_CALIB,    SCS_BASE + SYST_CALIB_OFFSET

# -- NVIC ---------------------------------------------------------------------

    /* Interrupt Set-Enable Registers              */
    .set NVIC_ISER0,    SCS_BASE + NVIC_ISER0_OFFSET
    .set NVIC_ISER1,    SCS_BASE + NVIC_ISER1_OFFSET
    .set NVIC_ISER2,    SCS_BASE + NVIC_ISER2_OFFSET
    .set NVIC_ISER3,    SCS_BASE + NVIC_ISER3_OFFSET
    .set NVIC_ISER4,    SCS_BASE + NVIC_ISER4_OFFSET
    .set NVIC_ISER5,    SCS_BASE + NVIC_ISER5_OFFSET
    .set NVIC_ISER6,    SCS_BASE + NVIC_ISER6_OFFSET
    .set NVIC_ISER7,    SCS_BASE + NVIC_ISER7_OFFSET
    .set NVIC_ISER8,    SCS_BASE + NVIC_ISER8_OFFSET
    .set NVIC_ISER9,    SCS_BASE + NVIC_ISER9_OFFSET
    .set NVIC_ISER10,   SCS_BASE + NVIC_ISER10_OFFSET
    .set NVIC_ISER11,   SCS_BASE + NVIC_ISER11_OFFSET
    .set NVIC_ISER12,   SCS_BASE + NVIC_ISER12_OFFSET
    .set NVIC_ISER13,   SCS_BASE + NVIC_ISER13_OFFSET
    .set NVIC_ISER14,   SCS_BASE + NVIC_ISER14_OFFSET
    .set NVIC_ISER15,   SCS_BASE + NVIC_ISER15_OFFSET

    /* Interrupt Clear-Enable Registers            */
    .set NVIC_ICER0,    SCS_BASE + NVIC_ICER0_OFFSET
    .set NVIC_ICER1,    SCS_BASE + NVIC_ICER1_OFFSET
    .set NVIC_ICER2,    SCS_BASE + NVIC_ICER2_OFFSET
    .set NVIC_ICER3,    SCS_BASE + NVIC_ICER3_OFFSET
    .set NVIC_ICER4,    SCS_BASE + NVIC_ICER4_OFFSET
    .set NVIC_ICER5,    SCS_BASE + NVIC_ICER5_OFFSET
    .set NVIC_ICER6,    SCS_BASE + NVIC_ICER6_OFFSET
    .set NVIC_ICER7,    SCS_BASE + NVIC_ICER7_OFFSET
    .set NVIC_ICER8,    SCS_BASE + NVIC_ICER8_OFFSET
    .set NVIC_ICER9,    SCS_BASE + NVIC_ICER9_OFFSET
    .set NVIC_ICER10,   SCS_BASE + NVIC_ICER10_OFFSET
    .set NVIC_ICER11,   SCS_BASE + NVIC_ICER11_OFFSET
    .set NVIC_ICER12,   SCS_BASE + NVIC_ICER12_OFFSET
    .set NVIC_ICER13,   SCS_BASE + NVIC_ICER13_OFFSET
    .set NVIC_ICER14,   SCS_BASE + NVIC_ICER14_OFFSET
    .set NVIC_ICER15,   SCS_BASE + NVIC_ICER15_OFFSET

    /* Interrupt Set-Pending Registers             */
    .set NVIC_ISPR0,    SCS_BASE + NVIC_ISPR0_OFFSET
    .set NVIC_ISPR1,    SCS_BASE + NVIC_ISPR1_OFFSET
    .set NVIC_ISPR2,    SCS_BASE + NVIC_ISPR2_OFFSET
    .set NVIC_ISPR3,    SCS_BASE + NVIC_ISPR3_OFFSET
    .set NVIC_ISPR4,    SCS_BASE + NVIC_ISPR4_OFFSET
    .set NVIC_ISPR5,    SCS_BASE + NVIC_ISPR5_OFFSET
    .set NVIC_ISPR6,    SCS_BASE + NVIC_ISPR6_OFFSET
    .set NVIC_ISPR7,    SCS_BASE + NVIC_ISPR7_OFFSET
    .set NVIC_ISPR8,    SCS_BASE + NVIC_ISPR8_OFFSET
    .set NVIC_ISPR9,    SCS_BASE + NVIC_ISPR9_OFFSET
    .set NVIC_ISPR10,   SCS_BASE + NVIC_ISPR10_OFFSET
    .set NVIC_ISPR11,   SCS_BASE + NVIC_ISPR11_OFFSET
    .set NVIC_ISPR12,   SCS_BASE + NVIC_ISPR12_OFFSET
    .set NVIC_ISPR13,   SCS_BASE + NVIC_ISPR13_OFFSET
    .set NVIC_ISPR14,   SCS_BASE + NVIC_ISPR14_OFFSET
    .set NVIC_ISPR15,   SCS_BASE + NVIC_ISPR15_OFFSET

    /* Interrupt Clear-Pending Registers           */
    .set NVIC_ICPR0,    SCS_BASE + NVIC_ICPR0_OFFSET
    .set NVIC_ICPR1,    SCS_BASE + NVIC_ICPR1_OFFSET
    .set NVIC_ICPR2,    SCS_BASE + NVIC_ICPR2_OFFSET
    .set NVIC_ICPR3,    SCS_BASE + NVIC_ICPR3_OFFSET
    .set NVIC_ICPR4,    SCS_BASE + NVIC_ICPR4_OFFSET
    .set NVIC_ICPR5,    SCS_BASE + NVIC_ICPR5_OFFSET
    .set NVIC_ICPR6,    SCS_BASE + NVIC_ICPR6_OFFSET
    .set NVIC_ICPR7,    SCS_BASE + NVIC_ICPR7_OFFSET
    .set NVIC_ICPR8,    SCS_BASE + NVIC_ICPR8_OFFSET
    .set NVIC_ICPR9,    SCS_BASE + NVIC_ICPR9_OFFSET
    .set NVIC_ICPR10,   SCS_BASE + NVIC_ICPR10_OFFSET
    .set NVIC_ICPR11,   SCS_BASE + NVIC_ICPR11_OFFSET
    .set NVIC_ICPR12,   SCS_BASE + NVIC_ICPR12_OFFSET
    .set NVIC_ICPR13,   SCS_BASE + NVIC_ICPR13_OFFSET
    .set NVIC_ICPR14,   SCS_BASE + NVIC_ICPR14_OFFSET
    .set NVIC_ICPR15,   SCS_BASE + NVIC_ICPR15_OFFSET

     /* Interrupt Active Bit Registers             */
    .set NVIC_IABR0,    SCS_BASE + NVIC_IABR0_OFFSET
    .set NVIC_IABR1,    SCS_BASE + NVIC_IABR1_OFFSET
    .set NVIC_IABR2,    SCS_BASE + NVIC_IABR2_OFFSET
    .set NVIC_IABR3,    SCS_BASE + NVIC_IABR3_OFFSET
    .set NVIC_IABR4,    SCS_BASE + NVIC_IABR4_OFFSET
    .set NVIC_IABR5,    SCS_BASE + NVIC_IABR5_OFFSET
    .set NVIC_IABR6,    SCS_BASE + NVIC_IABR6_OFFSET
    .set NVIC_IABR7,    SCS_BASE + NVIC_IABR7_OFFSET
    .set NVIC_IABR8,    SCS_BASE + NVIC_IABR8_OFFSET
    .set NVIC_IABR9,    SCS_BASE + NVIC_IABR9_OFFSET
    .set NVIC_IABR10,   SCS_BASE + NVIC_IABR10_OFFSET
    .set NVIC_IABR11,   SCS_BASE + NVIC_IABR11_OFFSET
    .set NVIC_IABR12,   SCS_BASE + NVIC_IABR12_OFFSET
    .set NVIC_IABR13,   SCS_BASE + NVIC_IABR13_OFFSET
    .set NVIC_IABR14,   SCS_BASE + NVIC_IABR14_OFFSET
    .set NVIC_IABR15,   SCS_BASE + NVIC_IABR15_OFFSET

    /* Interrupt Priority Registers                */
    .set NVIC_IPR0,     SCS_BASE + NVIC_IPR0_OFFSET
    .set NVIC_IP0,      NVIC_IPR0 + 0
    .set NVIC_IP1,      NVIC_IPR0 + 1
    .set NVIC_IP2,      NVIC_IPR0 + 2
    .set NVIC_IP3,      NVIC_IPR0 + 3

    .set NVIC_IPR1,     SCS_BASE + NVIC_IPR1_OFFSET
    .set NVIC_IP4,      NVIC_IPR1 + 0
    .set NVIC_IP5,      NVIC_IPR1 + 1
    .set NVIC_IP6,      NVIC_IPR1 + 2
    .set NVIC_IP7,      NVIC_IPR1 + 3

    .set NVIC_IPR2,     SCS_BASE + NVIC_IPR2_OFFSET
    .set NVIC_IP8,      NVIC_IPR2 + 0
    .set NVIC_IP9,      NVIC_IPR2 + 1
    .set NVIC_IP10,     NVIC_IPR2 + 2
    .set NVIC_IP11,     NVIC_IPR2 + 3

    .set NVIC_IPR3,     SCS_BASE + NVIC_IPR3_OFFSET
    .set NVIC_IP12,     NVIC_IPR3 + 0
    .set NVIC_IP13,     NVIC_IPR3 + 1
    .set NVIC_IP14,     NVIC_IPR3 + 2
    .set NVIC_IP15,     NVIC_IPR3 + 3

    .set NVIC_IPR4,     SCS_BASE + NVIC_IPR4_OFFSET
    .set NVIC_IP16,     NVIC_IPR4 + 0
    .set NVIC_IP17,     NVIC_IPR4 + 1
    .set NVIC_IP18,     NVIC_IPR4 + 2
    .set NVIC_IP19,     NVIC_IPR4 + 3

    .set NVIC_IPR5,     SCS_BASE + NVIC_IPR5_OFFSET
    .set NVIC_IP20,     NVIC_IPR5 + 0
    .set NVIC_IP21,     NVIC_IPR5 + 1
    .set NVIC_IP22,     NVIC_IPR5 + 2
    .set NVIC_IP23,     NVIC_IPR5 + 3

    .set NVIC_IPR6,     SCS_BASE + NVIC_IPR6_OFFSET
    .set NVIC_IP24,     NVIC_IPR6 + 0
    .set NVIC_IP25,     NVIC_IPR6 + 1
    .set NVIC_IP26,     NVIC_IPR6 + 2
    .set NVIC_IP27,     NVIC_IPR6 + 3

    .set NVIC_IPR7,     SCS_BASE + NVIC_IPR7_OFFSET
    .set NVIC_IP28,     NVIC_IPR7 + 0
    .set NVIC_IP29,     NVIC_IPR7 + 1
    .set NVIC_IP30,     NVIC_IPR7 + 2
    .set NVIC_IP31,     NVIC_IPR7 + 3

    .set NVIC_IPR8,     SCS_BASE + NVIC_IPR8_OFFSET
    .set NVIC_IP32,     NVIC_IPR8 + 0
    .set NVIC_IP33,     NVIC_IPR8 + 1
    .set NVIC_IP34,     NVIC_IPR8 + 2
    .set NVIC_IP35,     NVIC_IPR8 + 3

    .set NVIC_IPR9,     SCS_BASE + NVIC_IPR9_OFFSET
    .set NVIC_IP36,     NVIC_IPR9 + 0
    .set NVIC_IP37,     NVIC_IPR9 + 1
    .set NVIC_IP38,     NVIC_IPR9 + 2
    .set NVIC_IP39,     NVIC_IPR9 + 3

    .set NVIC_IPR10,    SCS_BASE + NVIC_IPR10_OFFSET
    .set NVIC_IP40,     NVIC_IPR10 + 0
    .set NVIC_IP41,     NVIC_IPR10 + 1
    .set NVIC_IP42,     NVIC_IPR10 + 2
    .set NVIC_IP43,     NVIC_IPR10 + 3

    .set NVIC_IPR11,    SCS_BASE + NVIC_IPR11_OFFSET
    .set NVIC_IP44,     NVIC_IPR11 + 0
    .set NVIC_IP45,     NVIC_IPR11 + 1
    .set NVIC_IP46,     NVIC_IPR11 + 2
    .set NVIC_IP47,     NVIC_IPR11 + 3

    .set NVIC_IPR12,    SCS_BASE + NVIC_IPR12_OFFSET
    .set NVIC_IP48,     NVIC_IPR12 + 0
    .set NVIC_IP49,     NVIC_IPR12 + 1
    .set NVIC_IP50,     NVIC_IPR12 + 2
    .set NVIC_IP51,     NVIC_IPR12 + 3

    .set NVIC_IPR13,    SCS_BASE + NVIC_IPR13_OFFSET
    .set NVIC_IP52,     NVIC_IPR13 + 0
    .set NVIC_IP53,     NVIC_IPR13 + 1
    .set NVIC_IP54,     NVIC_IPR13 + 2
    .set NVIC_IP55,     NVIC_IPR13 + 3

    .set NVIC_IPR14,    SCS_BASE + NVIC_IPR14_OFFSET
    .set NVIC_IP56,     NVIC_IPR14 + 0
    .set NVIC_IP57,     NVIC_IPR14 + 1
    .set NVIC_IP58,     NVIC_IPR14 + 2
    .set NVIC_IP59,     NVIC_IPR14 + 3

    .set NVIC_IPR15,    SCS_BASE + NVIC_IPR15_OFFSET
    .set NVIC_IP60,     NVIC_IPR15 + 0
    .set NVIC_IP61,     NVIC_IPR15 + 1
    .set NVIC_IP62,     NVIC_IPR15 + 2
    .set NVIC_IP63,     NVIC_IPR15 + 3

    .set NVIC_IPR16,    SCS_BASE + NVIC_IPR16_OFFSET
    .set NVIC_IP64,     NVIC_IPR16 + 0
    .set NVIC_IP65,     NVIC_IPR16 + 1
    .set NVIC_IP66,     NVIC_IPR16 + 2
    .set NVIC_IP67,     NVIC_IPR16 + 3
    .set NVIC_IP67_OFF, NVIC_IPR16_OFFSET + 3

    .set NVIC_IPR17,    SCS_BASE + NVIC_IPR17_OFFSET
    .set NVIC_IP68,     NVIC_IPR17 + 0
    .set NVIC_IP69,     NVIC_IPR17 + 1
    .set NVIC_IP70,     NVIC_IPR17 + 2
    .set NVIC_IP71,     NVIC_IPR17 + 3

    .set NVIC_IPR18,    SCS_BASE + NVIC_IPR18_OFFSET
    .set NVIC_IP72,     NVIC_IPR18 + 0
    .set NVIC_IP73,     NVIC_IPR18 + 1
    .set NVIC_IP74,     NVIC_IPR18 + 2
    .set NVIC_IP75,     NVIC_IPR18 + 3

    .set NVIC_IPR19,    SCS_BASE + NVIC_IPR19_OFFSET
    .set NVIC_IP76,     NVIC_IPR19 + 0
    .set NVIC_IP77,     NVIC_IPR19 + 1
    .set NVIC_IP78,     NVIC_IPR19 + 2
    .set NVIC_IP79,     NVIC_IPR19 + 3

    .set NVIC_IPR20,    SCS_BASE + NVIC_IPR20_OFFSET
    .set NVIC_IP80,     NVIC_IPR20 + 0
    .set NVIC_IP81,     NVIC_IPR20 + 1
    .set NVIC_IP82,     NVIC_IPR20 + 2
    .set NVIC_IP83,     NVIC_IPR20 + 3

    .set NVIC_IPR21,    SCS_BASE + NVIC_IPR21_OFFSET
    .set NVIC_IP84,     NVIC_IPR21 + 0
    .set NVIC_IP85,     NVIC_IPR21 + 1
    .set NVIC_IP86,     NVIC_IPR21 + 2
    .set NVIC_IP87,     NVIC_IPR21 + 3

    .set NVIC_IPR22,    SCS_BASE + NVIC_IPR22_OFFSET
    .set NVIC_IP88,     NVIC_IPR22 + 0
    .set NVIC_IP89,     NVIC_IPR22 + 1
    .set NVIC_IP90,     NVIC_IPR22 + 2
    .set NVIC_IP91,     NVIC_IPR22 + 3

    .set NVIC_IPR23,    SCS_BASE + NVIC_IPR23_OFFSET
    .set NVIC_IP92,     NVIC_IPR23 + 0
    .set NVIC_IP93,     NVIC_IPR23 + 1
    .set NVIC_IP94,     NVIC_IPR23 + 2
    .set NVIC_IP95,     NVIC_IPR23 + 3

    .set NVIC_IPR24,    SCS_BASE + NVIC_IPR24_OFFSET
    .set NVIC_IP96,     NVIC_IPR24 + 0
    .set NVIC_IP97,     NVIC_IPR24 + 1
    .set NVIC_IP98,     NVIC_IPR24 + 2
    .set NVIC_IP99,     NVIC_IPR24 + 3

    /*                   ...                       */

    .set NVIC_IPR123,   SCS_BASE + NVIC_IPR123_OFFSET
    .set NVIC_IP492,    NVIC_IPR123 + 0
    .set NVIC_IP493,    NVIC_IPR123 + 1
    .set NVIC_IP494,    NVIC_IPR123 + 2
    .set NVIC_IP495,    NVIC_IPR123 + 3


# -- MPU - PMSAv7 -------------------------------------------------------------

    .set MPU_TYPE,      SCS_BASE + MPU_TYPE_OFFSET
    .set MPU_CTRL,      SCS_BASE + MPU_CTRL_OFFSET
    .set MPU_RNR,       SCS_BASE + MPU_RNR_OFFSET
    .set MPU_RBAR,      SCS_BASE + MPU_RBAR_OFFSET
    .set MPU_RASR,      SCS_BASE + MPU_RASR_OFFSET
    .set MPU_RBAR_A1,   SCS_BASE + MPU_RBAR_A1_OFFSET
    .set MPU_RASR_A1,   SCS_BASE + MPU_RASR_A1_OFFSET
    .set MPU_RBAR_A2,   SCS_BASE + MPU_RBAR_A2_OFFSET
    .set MPU_RASR_A2,   SCS_BASE + MPU_RASR_A2_OFFSET
    .set MPU_RBAR_A3,   SCS_BASE + MPU_RBAR_A3_OFFSET
    .set MPU_RASR_A3,   SCS_BASE + MPU_RASR_A3_OFFSET
