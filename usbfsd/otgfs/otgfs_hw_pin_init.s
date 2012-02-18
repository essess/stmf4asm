/**
 * @public
 *  get otg_fs connected to the outside world
 * params:
 *  none
 * retval:
 *  none
 * notes:
 *  only concerned with setting up as a B-side peripheral only, therefore
 *  the ID line is ignored/unused and the SOF output feature is also unneeded
 *
 *      PA9  - VBus sense
 *      PA11 - D-
 *      PA12 = D+
 *
 *  soft connect and other common extra electronics are contained within the
 *  PHY and therefore no need to use any other external pins
 */
    .section    .text
    .syntax     unified
    .thumb

    .include    "gpio.inc"
    .include    "otgfs.inc"

                        /*    VBus                  D-                    D+        */
                        /*    PA9                   PA11                  PA12      */
    .set USBD_OTYPER,   ( (OTYPE_PP<< 9)      | (OTYPE_PP<<11)      | (OTYPE_PP<<12) )
    .set USBD_OSPEEDR,  ( (OSPEED_100MHZ<<18) | (OSPEED_100MHZ<<22) | (OSPEED_100MHZ<<24) )
    .set USBD_PUPDR,    ( (PUPD_NONE<<18)     | (PUPD_NONE<<22)     | (PUPD_NONE<<24) )
    .set USBD_AFRH,     ( (AFR_AF10<<4)       | (AFR_AF10<<12)      | (AFR_AF10<<16) )
    .set USBD_MODER,    ( (MODE_ALT<<18)      | (MODE_ALT<<22)      | (MODE_ALT<<24) )

# -----------------------------------------------------------------------------
    .type       otgfs_hw_pin_init, function
    .global     otgfs_hw_pin_init
otgfs_hw_pin_init:
    ldr         r3, =GPIOA_BASE         /**< setup pin functions             */
    ldr         r0, [r3, #GPIO_OTYPER_OFFSET]   /**< type                    */
    ldr         r1, =USBD_OTYPER
    orrs        r0, r1
    str         r0, [r3, #GPIO_OTYPER_OFFSET]
    ldr         r0, [r3, #GPIO_OSPEEDR_OFFSET]  /**< speed                   */
    ldr         r1, =USBD_OSPEEDR
    orrs        r0, r1
    str         r0, [r3, #GPIO_OSPEEDR_OFFSET]
    ldr         r0, [r3, #GPIO_PUPDR_OFFSET]    /**< pull up/down            */
    ldr         r1, =USBD_PUPDR
    orrs        r0, r1
    str         r0, [r3, #GPIO_PUPDR_OFFSET]
    ldr         r0, [r3, #GPIO_AFRH_OFFSET]     /**< select alternate func   */
    ldr         r1, =USBD_AFRH
    orrs        r0, r1
    str         r0, [r3, #GPIO_AFRH_OFFSET]
    ldr         r0, [r3, #GPIO_MODER_OFFSET]    /**< handover to otg_fs phy  */
    ldr         r1, =USBD_MODER
    orrs        r0, r1
    str         r0, [r3, #GPIO_MODER_OFFSET]
    bx          lr
# -----------------------------------------------------------------------------