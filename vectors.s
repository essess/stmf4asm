# -----------------------------------------------------------------------------
    .section    .flash_vectors, "a"
    .global     __flash_vectors
    .type       __flash_vectors, object
    .global     __flash_vectors_start
    .global     __flash_vectors_end
    .global     __flash_vectors_size
    .global     __flash_vectors_word_size
__flash_vectors:
__flash_vectors_start:              /* description                           */
    .word       __stack_end__       /**< inital msp value                    */
    .word       reset               /**< reset                               */
    .word       nmi                 /**< nmi, css                            */
    .word       hflt                /**< hard fault                          */
    .word       memmng              /**< mem manager                         */
    .word       busfault            /**< bus fault                           */
    .word       usagefault          /**< usage fault                         */
    .word       defhnd              /**< -+- reserved                        */
    .word       defhnd              /**<  |                                  */
    .word       defhnd              /**<  |                                  */
    .word       defhnd              /**< -+                                  */
    .word       svccall             /**< system service call                 */
    .word       dbgmon              /**< debug monitor                       */
    .word       defhnd              /**< reserved                            */
    .word       pendsvc             /**< pend service request                */
    .word       systick             /**< system tick                         */
    .word       wwdg                /**< windowed watchdog                   */
    .word       pvd                 /**< PVD [EXTI16]                        */
    .word       tampstamp           /**< tamper and timestamp [EXTI21]       */
    .word       rtcwkup             /**< rtc wakeup [EXTI22]                 */
    .word       flashg              /**< flash global int                    */
    .word       rccg                /**< RCC global int                      */
    .word       exti0               /**< EXTI line 0                         */
    .word       exti1               /**< EXTI line 1                         */
    .word       exti2               /**< EXTI line 2                         */
    .word       exti3               /**< EXTI line 3                         */
    .word       exti4               /**< EXTI line 4                         */
    .word       dma1stream0         /**< DMA1 Stream0 global int             */
    .word       dma1stream1         /**< DMA1 Stream1 global int             */
    .word       dma1stream2         /**< DMA1 Stream2 global int             */
    .word       dma1stream3         /**< DMA1 Stream3 global int             */
    .word       dma1stream4         /**< DMA1 Stream4 global int             */
    .word       dma1stream5         /**< DMA1 Stream5 global int             */
    .word       dma1stream6         /**< DMA1 Stream6 global int             */
    .word       adcg                /**< ADC1/2/3 global int                 */
    .word       can1tx              /**< CAN1 TX int                         */
    .word       can1rx0             /**< CAN1 RX0 int                        */
    .word       can1rx1             /**< CAN1 RX1 int                        */
    .word       can1sce             /**< CAN1 SCE int                        */
    .word       exti95              /**< EXTI line[9:5] int                  */
    .word       tim1brktim9g        /**< TIM1 break, TIM9 global int         */
    .word       tim1uptim10g        /**< TIM1 update, TIM10 global int       */
    .word       tim1trgcomtim11g    /**< TIM1 trig/commutation, TIM11 global */
    .word       tim1cc              /**< TIM1 capture compare                */
    .word       tim2g               /**< TIM2 global int                     */
    .word       tim3g               /**< TIM3 global int                     */
    .word       tim4g               /**< TIM4 global int                     */
    .word       i2c1ev              /**< I2C1 event                          */
    .word       i2c1er              /**< I2C1 error                          */
    .word       i2c2ev              /**< I2C2 event                          */
    .word       i2c2er              /**< I2C2 error                          */
    .word       spi1g               /**< SPI1 global int                     */
    .word       spi2g               /**< SPI2 global int                     */
    .word       usart1g             /**< USART1 global int                   */
    .word       usart2g             /**< USART2 global int                   */
    .word       usart3g             /**< USART3 global int                   */
    .word       exti1510            /**< EXTI line[15:10]                    */
    .word       rtcalarm            /**< RTC alarms (A/B) through [EXTI17]   */
    .word       otgfswkup           /**< OTG FS wakup through [EXTI18]       */
    .word       tim8brktim12g       /**< TIM8 break, TIM12 global int        */
    .word       tim8uptim13g        /**< TIM8 update, TIM13 global int       */
    .word       tim8trgcomtim14g    /**< TIM8 trig/commutation, TIM14 global */
    .word       tim8cc              /**< TIM8 capture compare                */
    .word       dma1stream7         /**< DMA1 Stream7 global int             */
    .word       fsmcg               /**< FSMC global int                     */
    .word       sdiog               /**< SDIO global int                     */
    .word       tim5g               /**< TIM5 global int                     */
    .word       spi3g               /**< SPI3 global int                     */
    .word       uart4g              /**< UART4 global int                    */
    .word       uart5g              /**< UART5 global int                    */
    .word       tim6dac             /**< TIM6 global, DAC1/2 underrun err    */
    .word       tim7g               /**< TIM7 global int                     */
    .word       dma2stream0         /**< DMA2 Stream0 global int             */
    .word       dma2stream1         /**< DMA2 Stream1 global int             */
    .word       dma2stream2         /**< DMA2 Stream2 global int             */
    .word       dma2stream3         /**< DMA2 Stream3 global int             */
    .word       dma2stream4         /**< DMA2 Stream4 global int             */
    .word       ethg                /**< ethernet global int                 */
    .word       ethwkup             /**< ethernet wakeup through [EXTI19]    */
    .word       can2tx              /**< CAN2 TX                             */
    .word       can2rx0             /**< CAN2 RX0                            */
    .word       can2rx1             /**< CAN2 RX1                            */
    .word       can2sce             /**< CAN2 SCE                            */
    .word       otgfsg              /**< OTG FS global int                   */
    .word       dma2stream5         /**< DMA2 Stream5 global int             */
    .word       dma2stream6         /**< DMA2 Stream6 global int             */
    .word       dma2stream7         /**< DMA2 Stream7 global int             */
    .word       usart6g             /**< USART6 global int                   */
    .word       i2c3ev              /**< I2C3 event                          */
    .word       i2c3er              /**< I2C3 error                          */
    .word       otghsep1out         /**< OTG HS endpoint 1 OUT               */
    .word       otghsep1in          /**< OTG HS endpoint 1 IN                */
    .word       otghswkup           /**< OTG HS wakeup through [EXTI20]      */
    .word       otghsg              /**< OTG HS global int                   */
    .word       dcmig               /**< DCMI global int                     */
    .word       crypg               /**< CRYP global int                     */
    .word       hashrng             /**< hash and RNG int                    */
    .word       fpug                /**< FPU global int                      */
__flash_vectors_end:
    .set        __flash_vectors_size, . - __flash_vectors_start
    .set        __flash_vectors_word_size, __flash_vectors_size/4
    .size       __flash_vectors, __flash_vectors_size
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
#ifdef RAM_VECTORS
    .section    .ram_vectors, "a"
    .global     __ram_vectors
    .type       __ram_vectors, object
    .global     __ram_vectors_start
    .global     __ram_vectors_end
    .global     __ram_vectors_size
    .global     __ram_vectors_word_size
__ram_vectors:
__ram_vectors_start:
    .skip       __flash_vectors_size    /**< reserve space for later copy  */
__ram_vectors_end:                      /*   via load_ram_vectors          */
    .set        __ram_vectors_size, . - __ram_vectors_start
    .set        __ram_vectors_word_size, __ram_vectors_size/4
    .size       __ram_vectors, __ram_vectors_size
#endif
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .init, "ax"
    .syntax     unified
    .thumb

    .weak       nmi
    .thumb_set  nmi, defhnd

    .weak       hflt
    .thumb_set  hflt, defhnd

    .weak       memmng
    .thumb_set  memmng, defhnd

    .weak       busfault
    .thumb_set  busfault, defhnd

    .weak       usagefault
    .thumb_set  usagefault, defhnd

    .weak       svccall
    .thumb_set  svccall, defhnd

    .weak       dbgmon
    .thumb_set  dbgmon, defhnd

    .weak       pendsvc
    .thumb_set  pendsvc, defhnd

    .weak       systick
    .thumb_set  systick, defhnd

    .weak       wwdg
    .thumb_set  wwdg, defhnd

    .weak       pvd
    .thumb_set  pvd, defhnd

    .weak       tampstamp
    .thumb_set  tampstamp, defhnd

    .weak       rtcwkup
    .thumb_set  rtcwkup, defhnd

    .weak       flashg
    .thumb_set  flashg, defhnd

    .weak       rccg
    .thumb_set  rccg, defhnd

    .weak       exti0
    .thumb_set  exti0, defhnd

    .weak       exti1
    .thumb_set  exti1, defhnd

    .weak       exti2
    .thumb_set  exti2, defhnd

    .weak       exti3
    .thumb_set  exti3, defhnd

    .weak       exti4
    .thumb_set  exti4, defhnd

    .weak       dma1stream0
    .thumb_set  dma1stream0, defhnd

    .weak       dma1stream1
    .thumb_set  dma1stream1, defhnd

    .weak       dma1stream2
    .thumb_set  dma1stream2, defhnd

    .weak       dma1stream3
    .thumb_set  dma1stream3, defhnd

    .weak       dma1stream4
    .thumb_set  dma1stream4, defhnd

    .weak       dma1stream5
    .thumb_set  dma1stream5, defhnd

    .weak       dma1stream6
    .thumb_set  dma1stream6, defhnd

    .weak       adcg
    .thumb_set  adcg, defhnd

    .weak       can1tx
    .thumb_set  can1tx, defhnd

    .weak       can1rx0
    .thumb_set  can1rx0, defhnd

    .weak       can1rx1
    .thumb_set  can1rx1, defhnd

    .weak       can1sce
    .thumb_set  can1sce, defhnd

    .weak       exti95
    .thumb_set  exti95, defhnd

    .weak       tim1brktim9g
    .thumb_set  tim1brktim9g, defhnd

    .weak       tim1uptim10g
    .thumb_set  tim1uptim10g, defhnd

    .weak       tim1trgcomtim11g
    .thumb_set  tim1trgcomtim11g, defhnd

    .weak       tim1cc
    .thumb_set  tim1cc, defhnd

    .weak       tim2g
    .thumb_set  tim2g, defhnd

    .weak       tim3g
    .thumb_set  tim3g, defhnd

    .weak       tim4g
    .thumb_set  tim4g, defhnd

    .weak       i2c1ev
    .thumb_set  i2c1ev, defhnd

    .weak       i2c1er
    .thumb_set  i2c1er, defhnd

    .weak       i2c2ev
    .thumb_set  i2c2ev, defhnd

    .weak       i2c2er
    .thumb_set  i2c2er, defhnd

    .weak       spi1g
    .thumb_set  spi1g, defhnd

    .weak       spi2g
    .thumb_set  spi2g, defhnd

    .weak       usart1g
    .thumb_set  usart1g, defhnd

    .weak       usart2g
    .thumb_set  usart2g, defhnd

    .weak       usart3g
    .thumb_set  usart3g, defhnd

    .weak       exti1510
    .thumb_set  exti1510, defhnd

    .weak       rtcalarm
    .thumb_set  rtcalarm, defhnd

    .weak       otgfswkup
    .thumb_set  otgfswkup, defhnd

    .weak       tim8brktim12g
    .thumb_set  tim8brktim12g, defhnd

    .weak       tim8uptim13g
    .thumb_set  tim8uptim13g, defhnd

    .weak       tim8trgcomtim14g
    .thumb_set  tim8trgcomtim14g, defhnd

    .weak       tim8cc
    .thumb_set  tim8cc, defhnd

    .weak       dma1stream7
    .thumb_set  dma1stream7, defhnd

    .weak       fsmcg
    .thumb_set  fsmcg, defhnd

    .weak       sdiog
    .thumb_set  sdiog, defhnd

    .weak       tim5g
    .thumb_set  tim5g, defhnd

    .weak       spi3g
    .thumb_set  spi3g, defhnd

    .weak       uart4g
    .thumb_set  uart4g, defhnd

    .weak       uart5g
    .thumb_set  uart5g, defhnd

    .weak       tim6dac
    .thumb_set  tim6dac, defhnd

    .weak       tim7g
    .thumb_set  tim7g, defhnd

    .weak       dma2stream0
    .thumb_set  dma2stream0, defhnd

    .weak       dma2stream1
    .thumb_set  dma2stream1, defhnd

    .weak       dma2stream2
    .thumb_set  dma2stream2, defhnd

    .weak       dma2stream3
    .thumb_set  dma2stream3, defhnd

    .weak       dma2stream4
    .thumb_set  dma2stream4, defhnd

    .weak       ethg
    .thumb_set  ethg, defhnd

    .weak       ethwkup
    .thumb_set  ethwkup, defhnd

    .weak       can2tx
    .thumb_set  can2tx, defhnd

    .weak       can2rx0
    .thumb_set  can2rx0, defhnd

    .weak       can2rx1
    .thumb_set  can2rx1, defhnd

    .weak       can2sce
    .thumb_set  can2sce, defhnd

    .weak       otgfsg
    .thumb_set  otgfsg, defhnd

    .weak       dma2stream5
    .thumb_set  dma2stream5, defhnd

    .weak       dma2stream6
    .thumb_set  dma2stream6, defhnd

    .weak       dma2stream7
    .thumb_set  dma2stream7, defhnd

    .weak       usart6g
    .thumb_set  usart6g, defhnd

    .weak       i2c3ev
    .thumb_set  i2c3ev, defhnd

    .weak       i2c3er
    .thumb_set  i2c3er, defhnd

    .weak       otghsep1out
    .thumb_set  otghsep1out, defhnd

    .weak       otghsep1in
    .thumb_set  otghsep1in, defhnd

    .weak       otghswkup
    .thumb_set  otghswkup, defhnd

    .weak       otghsg
    .thumb_set  otghsg, defhnd

    .weak       dcmig
    .thumb_set  dcmig, defhnd

    .weak       crypg
    .thumb_set  crypg, defhnd

    .weak       hashrng
    .thumb_set  hashrng, defhnd

    .weak       fpug
    .thumb_set  fpug, defhnd

    .global     defhnd
    .type       defhnd, function
defhnd:
    bkpt        #0
    .size       defhnd, .-defhnd
# -----------------------------------------------------------------------------
