/**
 * @public
 * STM32F4 GPIO Register Descriptions
 */
    .set    GPIO_BASE,              0x40020000

    .set    GPIOA_BASE_OFFSET,      0x0000
    .set    GPIOA_BASE,             GPIO_BASE + GPIOA_BASE_OFFSET

    .set    GPIOB_BASE_OFFSET,      0x0400
    .set    GPIOB_BASE,             GPIO_BASE + GPIOB_BASE_OFFSET

    .set    GPIOC_BASE_OFFSET,      0x0800
    .set    GPIOC_BASE,             GPIO_BASE + GPIOC_BASE_OFFSET

    .set    GPIOD_BASE_OFFSET,      0x0C00
    .set    GPIOD_BASE,             GPIO_BASE + GPIOD_BASE_OFFSET

    .set    GPIOE_BASE_OFFSET,      0x1000
    .set    GPIOE_BASE,             GPIO_BASE + GPIOE_BASE_OFFSET

    .set    GPIOF_BASE_OFFSET,      0x1400
    .set    GPIOF_BASE,             GPIO_BASE + GPIOF_BASE_OFFSET

    .set    GPIOG_BASE_OFFSET,      0x1800
    .set    GPIOG_BASE,             GPIO_BASE + GPIOG_BASE_OFFSET

    .set    GPIOH_BASE_OFFSET,      0x1C00
    .set    GPIOH_BASE,             GPIO_BASE + GPIOH_BASE_OFFSET

    .set    GPIOI_BASE_OFFSET,      0x2000
    .set    GPIOI_BASE,             GPIO_BASE + GPIOI_BASE_OFFSET

# -- GPIO Bits ----------------------------------------------------------------

    .set    GPIO_MODER_OFFSET,      0x00
    .set    MODE_IN,                0b00    /**< Input (reset)               */
    .set    MODE_OUT,               0b01    /**< General purpose output mode */
    .set    MODE_ALT,               0b10    /**< Alternate function mode     */
    .set    MODE_ANA,               0b11    /**< Analog mode                 */

    .set    GPIO_OTYPER_OFFSET,     0x04
    .set    OTYPE_PP,               0b0     /**< Output push-pull (reset)    */
    .set    OTYPE_OD,               0b1     /**< Output open drain           */

    .set    GPIO_OSPEEDR_OFFSET,    0x08
    .set    OSPEED_2MHZ,            0b00    /**< Low speed                   */
    .set    OSPEED_25MHZ,           0b01    /**< Medium speed                */
    .set    OSPEED_50MHZ,           0b10    /**< Fast speed                  */
    .set    OSPEED_100MHZ,          0b11    /**< High speed @ 30pf           */

    .set    GPIO_PUPDR_OFFSET,      0x0C
    .set    PUPD_NONE,              0b00    /**< No pull-up, pull-down       */
    .set    PUPD_UP,                0b01    /**< Pull-up                     */
    .set    PUPD_DOWN,              0b10    /**< Pull-down                   */

    .set    GPIO_IDR_OFFSET,        0x10
    .set    GPIO_ODR_OFFSET,        0x14
    .set    GPIO_BSRR_OFFSET,       0x18
    .set    GPIO_LCKR_OFFSET,       0x1C

    .set    GPIO_AFRL_OFFSET,       0x20
    .set    GPIO_AFRH_OFFSET,       0x24
    .set    AFR_AF0,                0b0000
    .set    AFR_AF1,                0b0001
    .set    AFR_AF2,                0b0010
    .set    AFR_AF3,                0b0011
    .set    AFR_AF4,                0b0100
    .set    AFR_AF5,                0b0101
    .set    AFR_AF6,                0b0110
    .set    AFR_AF7,                0b0111
    .set    AFR_AF8,                0b1000
    .set    AFR_AF9,                0b1001
    .set    AFR_AF10,               0b1010
    .set    AFR_AF11,               0b1011
    .set    AFR_AF12,               0b1100
    .set    AFR_AF13,               0b1101
    .set    AFR_AF14,               0b1110
    .set    AFR_AF15,               0b1111

# -- GPIOA --------------------------------------------------------------------
    .set    GPIOA_MODER,            GPIOA_BASE + GPIO_MODER_OFFSET
    .set    GPIOA_OTYPER,           GPIOA_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOA_OSPEEDR,          GPIOA_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOA_PUPDR,            GPIOA_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOA_IDR,              GPIOA_BASE + GPIO_IDR_OFFSET
    .set    GPIOA_ODR,              GPIOA_BASE + GPIO_ODR_OFFSET
    .set    GPIOA_BSRR,             GPIOA_BASE + GPIO_BSRR_OFFSET
    .set    GPIOA_LCKR,             GPIOA_BASE + GPIO_LCKR_OFFSET
    .set    GPIOA_AFRL,             GPIOA_BASE + GPIO_AFRL_OFFSET
    .set    GPIOA_AFRH,             GPIOA_BASE + GPIO_AFRH_OFFSET

# -- GPIOB --------------------------------------------------------------------
    .set    GPIOB_MODER,            GPIOB_BASE + GPIO_MODER_OFFSET
    .set    GPIOB_OTYPER,           GPIOB_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOB_OSPEEDR,          GPIOB_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOB_PUPDR,            GPIOB_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOB_IDR,              GPIOB_BASE + GPIO_IDR_OFFSET
    .set    GPIOB_ODR,              GPIOB_BASE + GPIO_ODR_OFFSET
    .set    GPIOB_BSRR,             GPIOB_BASE + GPIO_BSRR_OFFSET
    .set    GPIOB_LCKR,             GPIOB_BASE + GPIO_LCKR_OFFSET
    .set    GPIOB_AFRL,             GPIOB_BASE + GPIO_AFRL_OFFSET
    .set    GPIOB_AFRH,             GPIOB_BASE + GPIO_AFRH_OFFSET

# -- GPIOC --------------------------------------------------------------------
    .set    GPIOC_MODER,            GPIOC_BASE + GPIO_MODER_OFFSET
    .set    GPIOC_OTYPER,           GPIOC_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOC_OSPEEDR,          GPIOC_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOC_PUPDR,            GPIOC_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOC_IDR,              GPIOC_BASE + GPIO_IDR_OFFSET
    .set    GPIOC_ODR,              GPIOC_BASE + GPIO_ODR_OFFSET
    .set    GPIOC_BSRR,             GPIOC_BASE + GPIO_BSRR_OFFSET
    .set    GPIOC_LCKR,             GPIOC_BASE + GPIO_LCKR_OFFSET
    .set    GPIOC_AFRL,             GPIOC_BASE + GPIO_AFRL_OFFSET
    .set    GPIOC_AFRH,             GPIOC_BASE + GPIO_AFRH_OFFSET

# -- GPIOD --------------------------------------------------------------------
    .set    GPIOD_MODER,            GPIOD_BASE + GPIO_MODER_OFFSET
    .set    GPIOD_OTYPER,           GPIOD_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOD_OSPEEDR,          GPIOD_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOD_PUPDR,            GPIOD_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOD_IDR,              GPIOD_BASE + GPIO_IDR_OFFSET
    .set    GPIOD_ODR,              GPIOD_BASE + GPIO_ODR_OFFSET
    .set    GPIOD_BSRR,             GPIOD_BASE + GPIO_BSRR_OFFSET
    .set    GPIOD_LCKR,             GPIOD_BASE + GPIO_LCKR_OFFSET
    .set    GPIOD_AFRL,             GPIOD_BASE + GPIO_AFRL_OFFSET
    .set    GPIOD_AFRH,             GPIOD_BASE + GPIO_AFRH_OFFSET

# -- GPIOE --------------------------------------------------------------------
    .set    GPIOE_MODER,            GPIOE_BASE + GPIO_MODER_OFFSET
    .set    GPIOE_OTYPER,           GPIOE_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOE_OSPEEDR,          GPIOE_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOE_PUPDR,            GPIOE_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOE_IDR,              GPIOE_BASE + GPIO_IDR_OFFSET
    .set    GPIOE_ODR,              GPIOE_BASE + GPIO_ODR_OFFSET
    .set    GPIOE_BSRR,             GPIOE_BASE + GPIO_BSRR_OFFSET
    .set    GPIOE_LCKR,             GPIOE_BASE + GPIO_LCKR_OFFSET
    .set    GPIOE_AFRL,             GPIOE_BASE + GPIO_AFRL_OFFSET
    .set    GPIOE_AFRH,             GPIOE_BASE + GPIO_AFRH_OFFSET

# -- GPIOF --------------------------------------------------------------------
    .set    GPIOF_MODER,            GPIOF_BASE + GPIO_MODER_OFFSET
    .set    GPIOF_OTYPER,           GPIOF_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOF_OSPEEDR,          GPIOF_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOF_PUPDR,            GPIOF_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOF_IDR,              GPIOF_BASE + GPIO_IDR_OFFSET
    .set    GPIOF_ODR,              GPIOF_BASE + GPIO_ODR_OFFSET
    .set    GPIOF_BSRR,             GPIOF_BASE + GPIO_BSRR_OFFSET
    .set    GPIOF_LCKR,             GPIOF_BASE + GPIO_LCKR_OFFSET
    .set    GPIOF_AFRL,             GPIOF_BASE + GPIO_AFRL_OFFSET
    .set    GPIOF_AFRH,             GPIOF_BASE + GPIO_AFRH_OFFSET

# -- GPIOG --------------------------------------------------------------------
    .set    GPIOG_MODER,            GPIOG_BASE + GPIO_MODER_OFFSET
    .set    GPIOG_OTYPER,           GPIOG_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOG_OSPEEDR,          GPIOG_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOG_PUPDR,            GPIOG_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOG_IDR,              GPIOG_BASE + GPIO_IDR_OFFSET
    .set    GPIOG_ODR,              GPIOG_BASE + GPIO_ODR_OFFSET
    .set    GPIOG_BSRR,             GPIOG_BASE + GPIO_BSRR_OFFSET
    .set    GPIOG_LCKR,             GPIOG_BASE + GPIO_LCKR_OFFSET
    .set    GPIOG_AFRL,             GPIOG_BASE + GPIO_AFRL_OFFSET
    .set    GPIOG_AFRH,             GPIOG_BASE + GPIO_AFRH_OFFSET

# -- GPIOH --------------------------------------------------------------------
    .set    GPIOH_MODER,            GPIOH_BASE + GPIO_MODER_OFFSET
    .set    GPIOH_OTYPER,           GPIOH_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOH_OSPEEDR,          GPIOH_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOH_PUPDR,            GPIOH_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOH_IDR,              GPIOH_BASE + GPIO_IDR_OFFSET
    .set    GPIOH_ODR,              GPIOH_BASE + GPIO_ODR_OFFSET
    .set    GPIOH_BSRR,             GPIOH_BASE + GPIO_BSRR_OFFSET
    .set    GPIOH_LCKR,             GPIOH_BASE + GPIO_LCKR_OFFSET
    .set    GPIOH_AFRL,             GPIOH_BASE + GPIO_AFRL_OFFSET
    .set    GPIOH_AFRH,             GPIOH_BASE + GPIO_AFRH_OFFSET

# -- GPIOI --------------------------------------------------------------------
    .set    GPIOI_MODER,            GPIOI_BASE + GPIO_MODER_OFFSET
    .set    GPIOI_OTYPER,           GPIOI_BASE + GPIO_OTYPER_OFFSET
    .set    GPIOI_OSPEEDR,          GPIOI_BASE + GPIO_OSPEEDR_OFFSET
    .set    GPIOI_PUPDR,            GPIOI_BASE + GPIO_PUPDR_OFFSET
    .set    GPIOI_IDR,              GPIOI_BASE + GPIO_IDR_OFFSET
    .set    GPIOI_ODR,              GPIOI_BASE + GPIO_ODR_OFFSET
    .set    GPIOI_BSRR,             GPIOI_BASE + GPIO_BSRR_OFFSET
    .set    GPIOI_LCKR,             GPIOI_BASE + GPIO_LCKR_OFFSET
    .set    GPIOI_AFRL,             GPIOI_BASE + GPIO_AFRL_OFFSET
    .set    GPIOI_AFRH,             GPIOI_BASE + GPIO_AFRH_OFFSET
