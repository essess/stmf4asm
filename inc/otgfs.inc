/**
 * @public
 * STM32F4 OTG_FS Register Descriptions - CSR
 *  (C)ontrol and (S)tatus (R)egisters
 */
    .set    OTG_FS_BASE,                0x50000000

# -- GLOBAL CSR's -------------------------------------------------------------
# -- OTG_FS_GOTGCTL -----------------------------------------------------------
    .set    OTG_FS_GOTGCTL_OFFSET,      0x000
    .set    OTG_FS_GOTGCTL,             OTG_FS_BASE + OTG_FS_GOTGCTL_OFFSET

# -- OTG_FS_GOTGINT -----------------------------------------------------------
    .set    OTG_FS_GOTGINT_OFFSET,      0x004
    .set    OTG_FS_GOTGINT,             OTG_FS_BASE + OTG_FS_GOTGINT_OFFSET

# -- OTG_FS_GAHBCFG -----------------------------------------------------------
    .set    OTG_FS_GAHBCFG_OFFSET,      0x008
    .set    OTG_FS_GAHBCFG,             OTG_FS_BASE + OTG_FS_GAHBCFG_OFFSET
    .set    GINTMSK,                    (0b1<<0)

# -- OTG_FS_GUSBCFG -----------------------------------------------------------
    .set    OTG_FS_GUSBCFG_OFFSET,      0x00C
    .set    OTG_FS_GUSBCFG,             OTG_FS_BASE + OTG_FS_GUSBCFG_OFFSET

# -- OTG_FS_GRSTCTL -----------------------------------------------------------
    .set    OTG_FS_GRSTCTL_OFFSET,      0x010
    .set    OTG_FS_GRSTCTL,             OTG_FS_BASE + OTG_FS_GRSTCTL_OFFSET
    .set    AHBIDL,     (0b1<<31)
    .set    CSRST,      (0b1<< 0)

# -- OTG_FS_GINTSTS -----------------------------------------------------------
    .set    OTG_FS_GINTSTS_OFFSET,      0x014
    .set    OTG_FS_GINTSTS,             OTG_FS_BASE + OTG_FS_GINTSTS_OFFSET

# -- OTG_FS_GINTMSK -----------------------------------------------------------
    .set    OTG_FS_GINTMSK_OFFSET,      0x018
    .set    OTG_FS_GINTMSK,             OTG_FS_BASE + OTG_FS_GINTMSK_OFFSET

# -- OTG_FS_GRXSTSR -----------------------------------------------------------
    .set    OTG_FS_GRXSTSR_OFFSET,      0x01C
    .set    OTG_FS_GRXSTSR,             OTG_FS_BASE + OTG_FS_GRXSTSR_OFFSET

# -- OTG_FS_GRXSTSP -----------------------------------------------------------
    .set    OTG_FS_GRXSTSP_OFFSET,      0x020
    .set    OTG_FS_GRXSTSP,             OTG_FS_BASE + OTG_FS_GRXSTSP_OFFSET

# -- OTG_FS_GRXFSIZ -----------------------------------------------------------
    .set    OTG_FS_GRXFSIZ_OFFSET,      0x024
    .set    OTG_FS_GRXFSIZ,             OTG_FS_BASE + OTG_FS_GRXFSIZ_OFFSET

# -- OTG_FS_HNPTXFSIZ ---------------------------------------------------------
# -- OTG_FS_DIEPTXF0 ----------------------------------------------------------
    .set    OTG_FS_HNPTXFSIZ_OFFSET,    0x028
    .set    OTG_FS_HNPTXFSIZ,           OTG_FS_BASE + OTG_FS_HNPTXFSIZ_OFFSET
    .set    OTG_FS_DIEPTXF0_OFFSET,     OTG_FS_HNPTXFSIZ_OFFSET
    .set    OTG_FS_DIEPTXF0,            OTG_FS_HNPTXFSIZ

# -- OTG_FS_HNPTXSTS ----------------------------------------------------------
    .set    OTG_FS_HNPTXSTS_OFFSET,     0x02C
    .set    OTG_FS_HNPTXSTS,            OTG_FS_BASE + OTG_FS_HNPTXSTS_OFFSET

# -- OTG_FS_GCCFG -------------------------------------------------------------
    .set    OTG_FS_GCCFG_OFFSET,        0x038
    .set    OTG_FS_GCCFG,               OTG_FS_BASE + OTG_FS_GCCFG_OFFSET

# -- OTG_FS_CID ---------------------------------------------------------------
    .set    OTG_FS_CID_OFFSET,          0x03C
    .set    OTG_FS_CID,                 OTG_FS_BASE + OTG_FS_CID_OFFSET

# -- OTG_FS_HPTXFSIZ ----------------------------------------------------------
    .set    OTG_FS_HPTXFSIZ_OFFSET,     0x100
    .set    OTG_FS_HPTXFSIZ,            OTG_FS_BASE + OTG_FS_HPTXFSIZ_OFFSET

# -- OTG_FS_DIEPTXF1 ----------------------------------------------------------
    .set    OTG_FS_DIEPTXF1_OFFSET,     0x104
    .set    OTG_FS_DIEPTXF1,            OTG_FS_BASE + OTG_FS_DIEPTXF1_OFFSET

# -- OTG_FS_DIEPTXF2 ----------------------------------------------------------
    .set    OTG_FS_DIEPTXF2_OFFSET,     0x108
    .set    OTG_FS_DIEPTXF2,            OTG_FS_BASE + OTG_FS_DIEPTXF2_OFFSET

# -- OTG_FS_DIEPTXF3 ----------------------------------------------------------
    .set    OTG_FS_DIEPTXF3_OFFSET,     0x10C
    .set    OTG_FS_DIEPTXF3,            OTG_FS_BASE + OTG_FS_DIEPTXF3_OFFSET

# -- HOST CSR's ---------------------------------------------------------------
# -- OTG_FS_HCFG --------------------------------------------------------------
    .set    OTG_FS_HCFG_OFFSET,         0x400
    .set    OTG_FS_HCFG,                OTG_FS_BASE + OTG_FS_HCFG_OFFSET

# -- OTG_FS_HFIR --------------------------------------------------------------
    .set    OTG_FS_HFIR_OFFSET,         0x404
    .set    OTG_FS_HFIR,                OTG_FS_BASE + OTG_FS_HFIR_OFFSET

# -- OTG_FS_HFNUM -------------------------------------------------------------
    .set    OTG_FS_HFNUM_OFFSET,        0x408
    .set    OTG_FS_HFNUM,               OTG_FS_BASE + OTG_FS_HFNUM_OFFSET

# -- OTG_FS_HPTXSTS -----------------------------------------------------------
    .set    OTG_FS_HPTXSTS_OFFSET,      0x410
    .set    OTG_FS_HPTXSTS,             OTG_FS_BASE + OTG_FS_HPTXSTS_OFFSET

# -- OTG_FS_HAINT -------------------------------------------------------------
    .set    OTG_FS_HAINT_OFFSET,        0x414
    .set    OTG_FS_HAINT,               OTG_FS_BASE + OTG_FS_HAINT_OFFSET

# -- OTG_FS_HAINTMSK ----------------------------------------------------------
    .set    OTG_FS_HAINTMSK_OFFSET,     0x418
    .set    OTG_FS_HAINTMSK,            OTG_FS_BASE + OTG_FS_HAINTMSK_OFFSET

# -- OTG_FS_HPRT --------------------------------------------------------------
    .set    OTG_FS_HPRT_OFFSET,         0x440
    .set    OTG_FS_HPRT,                OTG_FS_BASE + OTG_FS_HPRT_OFFSET

# -- OTG_FS_HCCHAR0 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR0_OFFSET,      0x500
    .set    OTG_FS_HCCHAR0,             OTG_FS_BASE + OTG_FS_HCCHAR0_OFFSET

# -- OTG_FS_HCINT0 ------------------------------------------------------------
    .set    OTG_FS_HCINT0_OFFSET,       0x508
    .set    OTG_FS_HCINT0,              OTG_FS_BASE + OTG_FS_HCINT0_OFFSET

# -- OTG_FS_HCINTMSK0 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK0_OFFSET,    0x50C
    .set    OTG_FS_HCINTMSK0,           OTG_FS_BASE + OTG_FS_HCINTMSK0_OFFSET

# -- OTG_FS_HCTSIZ0 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ0_OFFSET,      0x510
    .set    OTG_FS_HCTSIZ0,             OTG_FS_BASE + OTG_FS_HCTSIZ0_OFFSET

# -- OTG_FS_HCCHAR1 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR1_OFFSET,      0x520
    .set    OTG_FS_HCCHAR1,             OTG_FS_BASE + OTG_FS_HCCHAR1_OFFSET

# -- OTG_FS_HCINT1 ------------------------------------------------------------
    .set    OTG_FS_HCINT1_OFFSET,       0x528
    .set    OTG_FS_HCINT1,              OTG_FS_BASE + OTG_FS_HCINT1_OFFSET

# -- OTG_FS_HCINTMSK1 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK1_OFFSET,    0x52C
    .set    OTG_FS_HCINTMSK1,           OTG_FS_BASE + OTG_FS_HCINTMSK1_OFFSET

# -- OTG_FS_HCTSIZ1 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ1_OFFSET,      0x530
    .set    OTG_FS_HCTSIZ1,             OTG_FS_BASE + OTG_FS_HCTSIZ1_OFFSET

# -- OTG_FS_HCCHAR2 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR2_OFFSET,      0x540
    .set    OTG_FS_HCCHAR2,             OTG_FS_BASE + OTG_FS_HCCHAR2_OFFSET

# -- OTG_FS_HCINT2 ------------------------------------------------------------
    .set    OTG_FS_HCINT2_OFFSET,       0x548
    .set    OTG_FS_HCINT2,              OTG_FS_BASE + OTG_FS_HCINT2_OFFSET

# -- OTG_FS_HCINTMSK2 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK2_OFFSET,    0x54C
    .set    OTG_FS_HCINTMSK2,           OTG_FS_BASE + OTG_FS_HCINTMSK2_OFFSET

# -- OTG_FS_HCTSIZ2 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ2_OFFSET,      0x550
    .set    OTG_FS_HCTSIZ2,             OTG_FS_BASE + OTG_FS_HCTSIZ2_OFFSET

# -- OTG_FS_HCCHAR3 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR3_OFFSET,      0x560
    .set    OTG_FS_HCCHAR3,             OTG_FS_BASE + OTG_FS_HCCHAR3_OFFSET

# -- OTG_FS_HCINT3 ------------------------------------------------------------
    .set    OTG_FS_HCINT3_OFFSET,       0x568
    .set    OTG_FS_HCINT3,              OTG_FS_BASE + OTG_FS_HCINT3_OFFSET

# -- OTG_FS_HCINTMSK3 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK3_OFFSET,    0x56C
    .set    OTG_FS_HCINTMSK3,           OTG_FS_BASE + OTG_FS_HCINTMSK3_OFFSET

# -- OTG_FS_HCTSIZ3 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ3_OFFSET,      0x570
    .set    OTG_FS_HCTSIZ3,             OTG_FS_BASE + OTG_FS_HCTSIZ3_OFFSET

# -- OTG_FS_HCCHAR4 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR4_OFFSET,      0x580
    .set    OTG_FS_HCCHAR4,             OTG_FS_BASE + OTG_FS_HCCHAR4_OFFSET

# -- OTG_FS_HCINT4 ------------------------------------------------------------
    .set    OTG_FS_HCINT4_OFFSET,       0x588
    .set    OTG_FS_HCINT4,              OTG_FS_BASE + OTG_FS_HCINT4_OFFSET

# -- OTG_FS_HCINTMSK4 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK4_OFFSET,    0x58C
    .set    OTG_FS_HCINTMSK4,           OTG_FS_BASE + OTG_FS_HCINTMSK4_OFFSET

# -- OTG_FS_HCTSIZ4 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ4_OFFSET,      0x590
    .set    OTG_FS_HCTSIZ4,             OTG_FS_BASE + OTG_FS_HCTSIZ4_OFFSET

# -- OTG_FS_HCCHAR5 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR5_OFFSET,      0x5A0
    .set    OTG_FS_HCCHAR5,             OTG_FS_BASE + OTG_FS_HCCHAR5_OFFSET

# -- OTG_FS_HCINT5 ------------------------------------------------------------
    .set    OTG_FS_HCINT5_OFFSET,       0x5A8
    .set    OTG_FS_HCINT5,              OTG_FS_BASE + OTG_FS_HCINT5_OFFSET

# -- OTG_FS_HCINTMSK5 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK5_OFFSET,    0x5AC
    .set    OTG_FS_HCINTMSK5,           OTG_FS_BASE + OTG_FS_HCINTMSK5_OFFSET

# -- OTG_FS_HCTSIZ5 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ5_OFFSET,      0x5B0
    .set    OTG_FS_HCTSIZ5,             OTG_FS_BASE + OTG_FS_HCTSIZ5_OFFSET

# -- OTG_FS_HCCHAR6 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR6_OFFSET,      0x5C0
    .set    OTG_FS_HCCHAR6,             OTG_FS_BASE + OTG_FS_HCCHAR6_OFFSET

# -- OTG_FS_HCINT6 ------------------------------------------------------------
    .set    OTG_FS_HCINT6_OFFSET,       0x5C8
    .set    OTG_FS_HCINT6,              OTG_FS_BASE + OTG_FS_HCINT6_OFFSET

# -- OTG_FS_HCINTMSK6 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK6_OFFSET,    0x5CC
    .set    OTG_FS_HCINTMSK6,           OTG_FS_BASE + OTG_FS_HCINTMSK6_OFFSET

# -- OTG_FS_HCTSIZ6 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ6_OFFSET,      0x5D0
    .set    OTG_FS_HCTSIZ6,             OTG_FS_BASE + OTG_FS_HCTSIZ6_OFFSET

# -- OTG_FS_HCCHAR7 -----------------------------------------------------------
    .set    OTG_FS_HCCHAR7_OFFSET,      0x5E0
    .set    OTG_FS_HCCHAR7,             OTG_FS_BASE + OTG_FS_HCCHAR7_OFFSET

# -- OTG_FS_HCINT7 ------------------------------------------------------------
    .set    OTG_FS_HCINT7_OFFSET,       0x5E8
    .set    OTG_FS_HCINT7,              OTG_FS_BASE + OTG_FS_HCINT7_OFFSET

# -- OTG_FS_HCINTMSK7 ---------------------------------------------------------
    .set    OTG_FS_HCINTMSK7_OFFSET,    0x5EC
    .set    OTG_FS_HCINTMSK7,           OTG_FS_BASE + OTG_FS_HCINTMSK7_OFFSET

# -- OTG_FS_HCTSIZ7 -----------------------------------------------------------
    .set    OTG_FS_HCTSIZ7_OFFSET,      0x5F0
    .set    OTG_FS_HCTSIZ7,             OTG_FS_BASE + OTG_FS_HCTSIZ7_OFFSET

# -- DEVICE CSR's -------------------------------------------------------------
# -- OTG_FS_DCFG --------------------------------------------------------------
    .set    OTG_FS_DCFG_OFFSET,         0x800
    .set    OTG_FS_DCFG,                OTG_FS_BASE + OTG_FS_DCFG_OFFSET

# -- OTG_FS_DCTL --------------------------------------------------------------
    .set    OTG_FS_DCTL_OFFSET,         0x804
    .set    OTG_FS_DCTL,                OTG_FS_BASE + OTG_FS_DCTL_OFFSET
    .set    SDIS,                       (0b1<<1)

# -- OTG_FS_DSTS --------------------------------------------------------------
    .set    OTG_FS_DSTS_OFFSET,         0x808
    .set    OTG_FS_DSTS,                OTG_FS_BASE + OTG_FS_DSTS_OFFSET

# -- OTG_FS_DIEPMSK -----------------------------------------------------------
    .set    OTG_FS_DIEPMSK_OFFSET,      0x810
    .set    OTG_FS_DIEPMSK,             OTG_FS_BASE + OTG_FS_DIEPMSK_OFFSET

# -- OTG_FS_DOEPMSK -----------------------------------------------------------
    .set    OTG_FS_DOEPMSK_OFFSET,      0x814
    .set    OTG_FS_DOEPMSK,             OTG_FS_BASE + OTG_FS_DOEPMSK_OFFSET

# -- OTG_FS_DAINT -------------------------------------------------------------
    .set    OTG_FS_DAINT_OFFSET,        0x818
    .set    OTG_FS_DAINT,               OTG_FS_BASE + OTG_FS_DAINT_OFFSET

# -- OTG_FS_DAINTMSK ----------------------------------------------------------
    .set    OTG_FS_DAINTMSK_OFFSET,     0x81C
    .set    OTG_FS_DAINTMSK,            OTG_FS_BASE + OTG_FS_DAINTMSK_OFFSET

# -- OTG_FS_DVBUSDIS ----------------------------------------------------------
    .set    OTG_FS_DVBUSDIS_OFFSET,     0x828
    .set    OTG_FS_DVBUSDIS,            OTG_FS_BASE + OTG_FS_DVBUSDIS_OFFSET

# -- OTG_FS_DVBUSPULSE --------------------------------------------------------
    .set    OTG_FS_DVBUSPULSE_OFFSET,   0x82C
    .set    OTG_FS_DVBUSPULSE,          OTG_FS_BASE + OTG_FS_DVBUSPULSE_OFFSET

# -- OTG_FS_DIEPEMPMSK --------------------------------------------------------
    .set    OTG_FS_DIEPEMPMSK_OFFSET,   0x834
    .set    OTG_FS_DIEPEMPMSK,          OTG_FS_BASE + OTG_FS_DIEPEMPMSK_OFFSET

# -- OTG_FS_DIEPCTL0 ----------------------------------------------------------
    .set    OTG_FS_DIEPCTL0_OFFSET,     0x900
    .set    OTG_FS_DIEPCTL0,            OTG_FS_BASE + OTG_FS_DIEPCTL0_OFFSET

# -- OTG_FS_DIEPINT0 ----------------------------------------------------------
    .set    OTG_FS_DIEPINT0_OFFSET,     0x908
    .set    OTG_FS_DIEPINT0,            OTG_FS_BASE + OTG_FS_DIEPINT0_OFFSET

# -- OTG_FS_DIEPTSIZ0 ---------------------------------------------------------
    .set    OTG_FS_DIEPTSIZ0_OFFSET,    0x910
    .set    OTG_FS_DIEPTSIZ0,           OTG_FS_BASE + OTG_FS_DIEPTSIZ0_OFFSET

# -- OTG_FS_DTXFSTS0 ----------------------------------------------------------
    .set    OTG_FS_DTXFSTS0_OFFSET,     0x918
    .set    OTG_FS_DTXFSTS0,            OTG_FS_BASE + OTG_FS_DTXFSTS0_OFFSET

# -- OTG_FS_DIEPCTL1 ----------------------------------------------------------
    .set    OTG_FS_DIEPCTL1_OFFSET,     0x920
    .set    OTG_FS_DIEPCTL1,            OTG_FS_BASE + OTG_FS_DIEPCTL1_OFFSET

# -- OTG_FS_DIEPINT1 ----------------------------------------------------------
    .set    OTG_FS_DIEPINT1_OFFSET,     0x928
    .set    OTG_FS_DIEPINT1,            OTG_FS_BASE + OTG_FS_DIEPINT1_OFFSET

# -- OTG_FS_DIEPTSIZ1 ---------------------------------------------------------
    .set    OTG_FS_DIEPTSIZ1_OFFSET,    0x930
    .set    OTG_FS_DIEPTSIZ1,           OTG_FS_BASE + OTG_FS_DIEPTSIZ1_OFFSET

# -- OTG_FS_DTXFSTS1 ----------------------------------------------------------
    .set    OTG_FS_DTXFSTS1_OFFSET,     0x938
    .set    OTG_FS_DTXFSTS1,            OTG_FS_BASE + OTG_FS_DTXFSTS1_OFFSET

# -- OTG_FS_DIEPCTL2 ----------------------------------------------------------
    .set    OTG_FS_DIEPCTL2_OFFSET,     0x940
    .set    OTG_FS_DIEPCTL2,            OTG_FS_BASE + OTG_FS_DIEPCTL2_OFFSET

# -- OTG_FS_DIEPINT2 ----------------------------------------------------------
    .set    OTG_FS_DIEPINT2_OFFSET,     0x948
    .set    OTG_FS_DIEPINT2,            OTG_FS_BASE + OTG_FS_DIEPINT2_OFFSET

# -- OTG_FS_DIEPTSIZ2 ---------------------------------------------------------
    .set    OTG_FS_DIEPTSIZ2_OFFSET,    0x950
    .set    OTG_FS_DIEPTSIZ2,           OTG_FS_BASE + OTG_FS_DIEPTSIZ2_OFFSET

# -- OTG_FS_DTXFSTS2 ----------------------------------------------------------
    .set    OTG_FS_DTXFSTS2_OFFSET,     0x958
    .set    OTG_FS_DTXFSTS2,            OTG_FS_BASE + OTG_FS_DTXFSTS2_OFFSET

# -- OTG_FS_DIEPCTL3 ----------------------------------------------------------
    .set    OTG_FS_DIEPCTL3_OFFSET,     0x960
    .set    OTG_FS_DIEPCTL3,            OTG_FS_BASE + OTG_FS_DIEPCTL3_OFFSET

# -- OTG_FS_DIEPINT3 ----------------------------------------------------------
    .set    OTG_FS_DIEPINT3_OFFSET,     0x968
    .set    OTG_FS_DIEPINT3,            OTG_FS_BASE + OTG_FS_DIEPINT3_OFFSET

# -- OTG_FS_DIEPTSIZ3 ---------------------------------------------------------
    .set    OTG_FS_DIEPTSIZ3_OFFSET,    0x970
    .set    OTG_FS_DIEPTSIZ3,           OTG_FS_BASE + OTG_FS_DIEPTSIZ3_OFFSET

# -- OTG_FS_DTXFSTS3 ----------------------------------------------------------
    .set    OTG_FS_DTXFSTS3_OFFSET,     0x978
    .set    OTG_FS_DTXFSTS3,            OTG_FS_BASE + OTG_FS_DTXFSTS3_OFFSET

# -- OTG_FS_DOEPCTL0 ----------------------------------------------------------
    .set    OTG_FS_DOEPCTL0_OFFSET,     0xB00
    .set    OTG_FS_DOEPCTL0,            OTG_FS_BASE + OTG_FS_DOEPCTL0_OFFSET

# -- OTG_FS_DOEPINT0 ----------------------------------------------------------
    .set    OTG_FS_DOEPINT0_OFFSET,     0xB08
    .set    OTG_FS_DOEPINT0,            OTG_FS_BASE + OTG_FS_DOEPINT0_OFFSET

# -- OTG_FS_DOEPTSIZ0 ---------------------------------------------------------
    .set    OTG_FS_DOEPTSIZ0_OFFSET,    0xB10
    .set    OTG_FS_DOEPTSIZ0,           OTG_FS_BASE + OTG_FS_DOEPTSIZ0_OFFSET

# -- OTG_FS_DOEPCTL1 ----------------------------------------------------------
    .set    OTG_FS_DOEPCTL1_OFFSET,     0xB20
    .set    OTG_FS_DOEPCTL1,            OTG_FS_BASE + OTG_FS_DOEPCTL1_OFFSET

# -- OTG_FS_DOEPINT1 ----------------------------------------------------------
    .set    OTG_FS_DOEPINT1_OFFSET,     0xB28
    .set    OTG_FS_DOEPINT1,            OTG_FS_BASE + OTG_FS_DOEPINT1_OFFSET

# -- OTG_FS_DOEPTSIZ1 ---------------------------------------------------------
    .set    OTG_FS_DOEPTSIZ1_OFFSET,    0xB30
    .set    OTG_FS_DOEPTSIZ1,           OTG_FS_BASE + OTG_FS_DOEPTSIZ1_OFFSET

# -- OTG_FS_DOEPCTL2 ----------------------------------------------------------
    .set    OTG_FS_DOEPCTL2_OFFSET,     0xB40
    .set    OTG_FS_DOEPCTL2,            OTG_FS_BASE + OTG_FS_DOEPCTL2_OFFSET

# -- OTG_FS_DOEPINT2 ----------------------------------------------------------
    .set    OTG_FS_DOEPINT2_OFFSET,     0xB48
    .set    OTG_FS_DOEPINT2,            OTG_FS_BASE + OTG_FS_DOEPINT2_OFFSET

# -- OTG_FS_DOEPTSIZ2 ---------------------------------------------------------
    .set    OTG_FS_DOEPTSIZ2_OFFSET,    0xB50
    .set    OTG_FS_DOEPTSIZ2,           OTG_FS_BASE + OTG_FS_DOEPTSIZ2_OFFSET

# -- OTG_FS_DOEPCTL3 ----------------------------------------------------------
    .set    OTG_FS_DOEPCTL3_OFFSET,     0xB60
    .set    OTG_FS_DOEPCTL3,            OTG_FS_BASE + OTG_FS_DOEPCTL3_OFFSET

# -- OTG_FS_DOEPINT3 ----------------------------------------------------------
    .set    OTG_FS_DOEPINT3_OFFSET,     0xB68
    .set    OTG_FS_DOEPINT3,            OTG_FS_BASE + OTG_FS_DOEPINT3_OFFSET

# -- OTG_FS_DOEPTSIZ3 ---------------------------------------------------------
    .set    OTG_FS_DOEPTSIZ3_OFFSET,    0xB70
    .set    OTG_FS_DOEPTSIZ3,           OTG_FS_BASE + OTG_FS_DOEPTSIZ3_OFFSET

# -- OTG_FS_PCGCCTL -----------------------------------------------------------
    .set    OTG_FS_PCGCCTL_OFFSET,      0xE00
    .set    OTG_FS_PCGCCTL,             OTG_FS_BASE + OTG_FS_PCGCCTL_OFFSET

# -- DFIFO Region -------------------------------------------------------------
# -- END0_DFIFO ---------------------------------------------------------------
    .set    END0_DFIFO_OFFSET,          0x1000
    .set    END0_DFIFO,                 OTG_FS_BASE + END0_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END1_DFIFO_OFFSET,          0x2000
    .set    END1_DFIFO,                 OTG_FS_BASE + END1_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END2_DFIFO_OFFSET,          0x3000
    .set    END2_DFIFO,                 OTG_FS_BASE + END2_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END3_DFIFO_OFFSET,          0x4000
    .set    END3_DFIFO,                 OTG_FS_BASE + END3_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END4_DFIFO_OFFSET,          0x5000
    .set    END4_DFIFO,                 OTG_FS_BASE + END4_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END5_DFIFO_OFFSET,          0x6000
    .set    END5_DFIFO,                 OTG_FS_BASE + END5_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END6_DFIFO_OFFSET,          0x7000
    .set    END6_DFIFO,                 OTG_FS_BASE + END6_DFIFO_OFFSET

# -- END0_DFIFO ---------------------------------------------------------------
    .set    END7_DFIFO_OFFSET,          0x8000
    .set    END7_DFIFO,                 OTG_FS_BASE + END7_DFIFO_OFFSET
