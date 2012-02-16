/**
 * @public
 * Cortex (D)ata (W)atchpoint and (T)race Register Descriptions
 */
    .set DWT_BASE,              0xE0001000

    .set CTRL_OFFSET,           0x0000
    .set CYCCNT_OFFSET,         0x0004
    .set CPICNT_OFFSET,         0x0008
    .set EXCCNT_OFFSET,         0x000C
    .set SLEEPCNT_OFFSET,       0x0010
    .set LSUCNT_OFFSET,         0x0014

    .set CTRL,      DWT_BASE + CTRL_OFFSET      /**< control                 */
    .set CYCCNT,    DWT_BASE + CYCCNT_OFFSET    /**< cycle count             */
    .set CPICNT,    DWT_BASE + CPICNT_OFFSET    /**< CPI count               */
    .set EXCCNT,    DWT_BASE + EXCCNT_OFFSET    /**< excep overhead count    */
    .set SLEEPCNT,  DWT_BASE + SLEEPCNT_OFFSET  /**< sleep count reg         */
    .set LSUCNT,    DWT_BASE + LSUCNT_OFFSET    /**< LSU count reg           */
