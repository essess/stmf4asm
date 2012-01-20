# -----------------------------------------------------------------------------
    .section    .flash.vectors, "a"
    .global     __flash_vectors_start
    .global     __flash_vectors_end
    .global     __flash_vectors_size

__flash_vectors_start:              /* description                           */
    .word       __stack_end__       /**< inital msp value                    */
    .word       reset               /**< reset                               */
    .word       nmi                 /**< nmi                                 */
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
    .word       pvd                 /**< PVD through EXTI line               */
    .word       tampstamp           /**< tamper and timestamp through EXTI ln*/
    .word       rtcwkup             /**< rtc wakeup through EXTI line        */
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
    .word       rtcalarm            /**< RTC alarms (A/B) through EXTI       */
    .word       otgfswkup           /**< OTG FS wakup through EXTI           */
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
    .word       ethwkup             /**< ethernet wakeup through EXTI line   */
    .word       can2tx              /**< CAN2 TX                             */
    .word       can2rx0             /**< CAN2 RX0                            */
    .word       can2rx1             /**< CAN2 RX1                            */
    .word       can2sce             /**< CAN2 SCE                            */
    .word       otgfs               /**< OTG FS global int                   */
    .word       dma2stream5         /**< DMA2 Stream5 global int             */
    .word       dma2stream6         /**< DMA2 Stream6 global int             */
    .word       dma2stream7         /**< DMA2 Stream7 global int             */
    .word       usart6g             /**< USART6 global int                   */
    .word       i2c3ev              /**< I2C3 event                          */
    .word       i2c3er              /**< I2C3 error                          */
    .word       otghsep1out         /**< OTG HS endpoint 1 OUT               */
    .word       otghsep1in          /**< OTG HS endpoint 1 IN                */
    .word       otghswkup           /**< OTG HS wakeup through EXTI          */
    .word       otghsg              /**< OTG HS global int                   */
    .word       dcmig               /**< DCMI global int                     */
    .word       crypg               /**< CRYP global int                     */
    .word       hashrng             /**< hash and RNG int                    */
    .word       fpug                /**< FPU global int                      */

__flash_vectors_end:
    .set        __flash_vectors_size, . - __flash_vectors_start
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .ram.vectors, "a"
    .global     __ram_vectors_start
    .global     __ram_vectors_end
    .global     __ram_vectors_size

__ram_vectors_start:
    .skip       __flash_vectors_size    /**< reserve space for later copy  */
__ram_vectors_end:
    .set        __ram_vectors_size, . - __ram_vectors_start
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
    .section    .init, "ax"
    .global     defhnd
    .syntax     unified
    .thumb

    .type       nmi, function       /*                                       */
    .weak       nmi                 /**< override as desired                 */
nmi:                                /**< fall through to defhnd              */

    .type       hflt, function      /*                                       */
    .weak       hflt                /**< override as desired                 */
hflt:                               /**< fall through to defhnd              */

    .type       memmng, function    /*                                       */
    .weak       memmng              /**< override as desired                 */
memmng:                             /**< fall through to defhnd              */

    .type       busfault, function  /*                                       */
    .weak       busfault            /**< override as desired                 */
busfault:                           /**< fall through to defhnd              */

    .type       usagefault, function /*                                      */
    .weak       usagefault           /**< override as desired                */
usagefault:                          /**< fall through to defhnd             */

    .type       svccall, function   /*                                       */
    .weak       svccall             /**< override as desired                 */
svccall:                            /**< fall through to defhnd              */

    .type       dbgmon, function    /*                                       */
    .weak       dbgmon              /**< override as desired                 */
dbgmon:                             /**< fall through to defhnd              */

    .type       pendsvc, function   /*                                       */
    .weak       pendsvc             /**< override as desired                 */
pendsvc:                            /**< fall through to defhnd              */

    .type       systick,function    /*                                       */
    .weak       systick             /**< override as desired                 */
systick:                            /**< fall through to defhnd              */

    .type       wwdg, function      /*                                       */
    .weak       wwdg                /**< override as desired                 */
wwdg:                               /**< fall through to defhnd              */

    .type       pvd, function       /*                                       */
    .weak       pvd                 /**< override as desired                 */
pvd:                                /**< fall through to defhnd              */

    .type       tampstamp, function /*                                       */
    .weak       tampstamp           /**< override as desired                 */
tampstamp:                          /**< fall through to defhnd              */

    .type       rtcwkup, function   /*                                       */
    .weak       rtcwkup             /**< override as desired                 */
rtcwkup:                            /**< fall through to defhnd              */

    .type       flashg, function    /*                                       */
    .weak       flashg              /**< override as desired                 */
flashg:                             /**< fall through to defhnd              */

    .type       rccg, function      /*                                       */
    .weak       rccg                /**< override as desired                 */
rccg:                               /**< fall through to defhnd              */

    .type       exti0, function     /*                                       */
    .weak       exti0               /**< override as desired                 */
exti0:                              /**< fall through to defhnd              */

    .type       exti1, function     /*                                       */
    .weak       exti1               /**< override as desired                 */
exti1:                              /**< fall through to defhnd              */

    .type       exti2, function     /*                                       */
    .weak       exti2               /**< override as desired                 */
exti2:                              /**< fall through to defhnd              */

    .type       exti3, function     /*                                       */
    .weak       exti3               /**< override as desired                 */
exti3:                              /**< fall through to defhnd              */

    .type       exti4, function     /*                                       */
    .weak       exti4               /**< override as desired                 */
exti4:                              /**< fall through to defhnd              */

    .type       dma1stream0, function /*                                     */
    .weak       dma1stream0           /**< override as desired               */
dma1stream0:                          /**< fall through to defhnd            */

    .type       dma1stream1, function /*                                     */
    .weak       dma1stream1           /**< override as desired               */
dma1stream1:                          /**< fall through to defhnd            */

    .type       dma1stream2, function /*                                     */
    .weak       dma1stream2           /**< override as desired               */
dma1stream2:                          /**< fall through to defhnd            */

    .type       dma1stream3, function /*                                     */
    .weak       dma1stream3           /**< override as desired               */
dma1stream3:                          /**< fall through to defhnd            */

    .type       dma1stream4, function /*                                     */
    .weak       dma1stream4           /**< override as desired               */
dma1stream4:                          /**< fall through to defhnd            */

    .type       dma1stream5, function /*                                     */
    .weak       dma1stream5           /**< override as desired               */
dma1stream5:                          /**< fall through to defhnd            */

    .type       dma1stream6, function /*                                     */
    .weak       dma1stream6           /**< override as desired               */
dma1stream6:                          /**< fall through to defhnd            */

    .type       adcg, function      /*                                       */
    .weak       adcg                /**< override as desired                 */
adcg:                               /**< fall through to defhnd              */

    .type       can1tx, function    /*                                       */
    .weak       can1tx              /**< override as desired                 */
can1tx:                             /**< fall through to defhnd              */

    .type       can1rx0, function   /*                                       */
    .weak       can1rx0             /**< override as desired                 */
can1rx0:                            /**< fall through to defhnd              */

    .type       can1rx1, function   /*                                       */
    .weak       can1rx1             /**< override as desired                 */
can1rx1:                            /**< fall through to defhnd              */

    .type       can1sce, function   /*                                       */
    .weak       can1sce             /**< override as desired                 */
can1sce:                            /**< fall through to defhnd              */

    .type       exti95, function    /*                                       */
    .weak       exti95              /**< override as desired                 */
exti95:                             /**< fall through to defhnd              */

    .type       tim1brktim9g, function /*                                    */
    .weak       tim1brktim9g           /**< override as desired              */
tim1brktim9g:                          /**< fall through to defhnd           */

    .type       tim1uptim10g, function /*                                    */
    .weak       tim1uptim10g           /**< override as desired              */
tim1uptim10g:                          /**< fall through to defhnd           */

    .type       tim1trgcomtim11g, function /*                                */
    .weak       tim1trgcomtim11g           /**< override as desired          */
tim1trgcomtim11g:                          /**< fall through to defhnd       */

    .type       tim1cc, function    /*                                       */
    .weak       tim1cc              /**< override as desired                 */
tim1cc:                             /**< fall through to defhnd              */

    .type       tim2g, function     /*                                       */
    .weak       tim2g               /**< override as desired                 */
tim2g:                              /**< fall through to defhnd              */

    .type       tim3g, function     /*                                       */
    .weak       tim3g               /**< override as desired                 */
tim3g:                              /**< fall through to defhnd              */

    .type       tim4g, function     /*                                       */
    .weak       tim4g               /**< override as desired                 */
tim4g:                              /**< fall through to defhnd              */

    .type       i2c1ev, function    /*                                       */
    .weak       i2c1ev              /**< override as desired                 */
i2c1ev:                             /**< fall through to defhnd              */

    .type       i2c1er, function    /*                                       */
    .weak       irc1er              /**< override as desired                 */
i2c1er:                             /**< fall through to defhnd              */

    .type       i2c2ev, function    /*                                       */
    .weak       i2c2ev              /**< override as desired                 */
i2c2ev:                             /**< fall through to defhnd              */

    .type       i2c2er, function    /*                                       */
    .weak       i2c2er              /**< override as desired                 */
i2c2er:                             /**< fall through to defhnd              */

    .type       spi1g, function     /*                                       */
    .weak       spi1g               /**< override as desired                 */
spi1g:                              /**< fall through to defhnd              */

    .type       spi2g, function     /*                                       */
    .weak       spi2g               /**< override as desired                 */
spi2g:                              /**< fall through to defhnd              */

    .type       usart1g, function   /*                                       */
    .weak       usart1g             /**< override as desired                 */
usart1g:                            /**< fall through to defhnd              */

    .type       usart2g, function   /*                                       */
    .weak       usart2g             /**< override as desired                 */
usart2g:                            /**< fall through to defhnd              */

    .type       usart3g, function   /*                                       */
    .weak       usart3g             /**< override as desired                 */
usart3g:                            /**< fall through to defhnd              */

    .type       exti1510, function  /*                                       */
    .weak       exti1510            /**< override as desired                 */
exti1510:                           /**< fall through to defhnd              */

    .type       rtcalarm, function  /*                                       */
    .weak       rtcalarm            /**< override as desired                 */
rtcalarm:                           /**< fall through to defhnd              */

    .type       otgfswkup, function /*                                       */
    .weak       otgfswkup           /**< override as desired                 */
otgfswkup:                          /**< fall through to defhnd              */

    .type       tim8brktim12g, function /*                                   */
    .weak       tim8brktim12g           /**< override as desired             */
tim8brktim12g:                          /**< fall through to defhnd          */

    .type       tim8uptim13g, function /*                                    */
    .weak       tim8uptim13g           /**< override as desired              */
tim8uptim13g:                          /**< fall through to defhnd           */

    .type       tim8trgcomtim14g, function /*                                */
    .weak       tim8trgcomtim14g           /**< override as desired          */
tim8trgcomtim14g:                          /**< fall through to defhnd       */

    .type       tim8cc, function    /*                                       */
    .weak       tim8cc              /**< override as desired                 */
tim8cc:                             /**< fall through to defhnd              */

    .type       dma1stream7, function /*                                     */
    .weak       dma1stream7           /**< override as desired               */
dma1stream7:                          /**< fall through to defhnd            */

    .type       fsmcg, function     /*                                       */
    .weak       fsmcg               /**< override as desired                 */
fsmcg:                              /**< fall through to defhnd              */

    .type       sdiog, function     /*                                       */
    .weak       sdiog               /**< override as desired                 */
sdiog:                              /**< fall through to defhnd              */

    .type       tim5g, function     /*                                       */
    .weak       tim5g               /**< override as desired                 */
tim5g:                              /**< fall through to defhnd              */

    .type       spi3g, function     /*                                       */
    .weak       spi3g               /**< override as desired                 */
spi3g:                              /**< fall through to defhnd              */

    .type       uart4g, function    /*                                       */
    .weak       uart4g              /**< override as desired                 */
uart4g:                             /**< fall through to defhnd              */

    .type       uart5g, function    /*                                       */
    .weak       uart5g              /**< override as desired                 */
uart5g:                             /**< fall through to defhnd              */

    .type       tim6dac, function   /*                                       */
    .weak       tim6dac             /**< override as desired                 */
tim6adc:                            /**< fall through to defhnd              */

    .type       tim7g, function     /*                                       */
    .weak       tim7g               /**< override as desired                 */
tim7g:                              /**< fall through to defhnd              */

    .type       dma2stream0, function /*                                     */
    .weak       dma2stream0           /**< override as desired               */
dma2stream0:                          /**< fall through to defhnd            */

    .type       dma2stream1, function /*                                     */
    .weak       dma2stream1           /**< override as desired               */
dma2stream1:                          /**< fall through to defhnd            */

    .type       dma2stream2, function /*                                     */
    .weak       dma2stream2           /**< override as desired               */
dma2stream2:                          /**< fall through to defhnd            */

    .type       dma2stream3, function /*                                     */
    .weak       dma2stream3           /**< override as desired               */
dma2stream3:                          /**< fall through to defhnd            */

    .type       dma2stream4, function /*                                     */
    .weak       dma2stream4           /**< override as desired               */
dma2stream4:                          /**< fall through to defhnd            */

    .type       ethg, function      /*                                       */
    .weak       ethg                /**< override as desired                 */
ethg:                               /**< fall through to defhnd              */

    .type       ethwkup, function   /*                                       */
    .weak       ethwkup             /**< override as desired                 */
ethwkup:                            /**< fall through to defhnd              */

    .type       can2tx, function    /*                                       */
    .weak       can2tx              /**< override as desired                 */
can2tx:                             /**< fall through to defhnd              */

    .type       can2rx0, function   /*                                       */
    .weak       can2rx0             /**< override as desired                 */
can2rx0:                            /**< fall through to defhnd              */

    .type       can2rx1, function   /*                                       */
    .weak       can2rx1             /**< override as desired                 */
can2rx1:                            /**< fall through to defhnd              */

    .type       can2sce, function   /*                                       */
    .weak       can2sce             /**< override as desired                 */
can2sce:                            /**< fall through to defhnd              */

    .type       otgfs, function     /*                                       */
    .weak       otgfs               /**< override as desired                 */
otgfs:                              /**< fall through to defhnd              */

    .type       dma2stream5, function /*                                     */
    .weak       dma2stream5           /**< override as desired               */
dma2stream5:                          /**< fall through to defhnd            */

    .type       dma2stream6, function /*                                     */
    .weak       dma2stream6           /**< override as desired               */
dma2stream6:                          /**< fall through to defhnd            */

    .type       dma2stream7, function /*                                     */
    .weak       dma2stream7           /**< override as desired               */
dma2stream7:                          /**< fall through to defhnd            */

    .type       usart6g, function   /*                                       */
    .weak       usart6g             /**< override as desired                 */
usart6g:                            /**< fall through to defhnd              */

    .type       i2c3ev, function    /*                                       */
    .weak       i2c3ev              /**< override as desired                 */
i2c3ev:                             /**< fall through to defhnd              */

    .type       i2c3er, function    /*                                       */
    .weak       i2c3er              /**< override as desired                 */
i2c3er:                             /**< fall through to defhnd              */

    .type       otghsep1out, function /*                                     */
    .weak       otghsep1out           /**< override as desired               */
otghsep1out:                          /**< fall through to defhnd            */

    .type       otghsep1in, function /*                                      */
    .weak       otghsep1in           /**< override as desired                */
otghsep1in:                          /**< fall through to defhnd             */

    .type       otghswkup, function /*                                       */
    .weak       otghswkup           /**< override as desired                 */
otghswkup:                          /**< fall through to defhnd              */

    .type       otghsg, function    /*                                       */
    .weak       otghsg              /**< override as desired                 */
otghsg:                             /**< fall through to defhnd              */

    .type       dcmig, function     /*                                       */
    .weak       dcmig               /**< override as desired                 */
dcmig:                              /**< fall through to defhnd              */

    .type       crypg, function     /*                                       */
    .weak       crypg               /**< override as desired                 */
crypg:                              /**< fall through to defhnd              */

    .type       hashrng, function   /*                                       */
    .weak       hashrng             /**< override as desired                 */
hashrng:                            /**< fall through to defhnd              */

    .type       fpug, function      /*                                       */
    .weak       fpug                /**< override as desired                 */
fpug:                               /**< fall through to defhnd              */

    .type       defhnd, function    /*                                       */
defhnd:                             /*                                       */
    bkpt        #0                  /*                                       */
    .pool
# -----------------------------------------------------------------------------