# ---------------------------------------------------------------------------    
    .section    .flash.vectors, "a"
    .global     __flash_vectors_start
    .global     __flash_vectors_end
    .global     __flash_vectors_size

__flash_vectors_start:              @ E# description
    .word       __stack_end__       @    inital msp value
    .word       reset               @ 1  reset
    .word       nmi                 @ 2  nmi
    .word       hflt                @ 3  hard fault
    .word       memmng              @ 4  mem manager
    .word       busfault            @ 5  bus fault
    .word       usagefault          @ 6  usage fault
    .word       defhnd              @ 7  -+- reserved
    .word       defhnd              @ 8   |
    .word       defhnd              @ 9   |
    .word       defhnd              @ 10 -+
    .word       svccall             @ 11 system service call
    .word       dbgmon              @ 12 debug monitor
    .word       defhnd              @ 13 reserved
    .word       pendsvc             @ 14 pend service request
    .word       systick             @ 15 system tick
    .word       wwdg                @ 16 windowed watchdog
    .word       pvd                 @ 17 PVD through EXTI line
    .word       tampstamp           @ 18 tamper and timestamp through EXTI line
    .word       rtcwkup             @ 19 rtc wakeup through EXTI line
    .word       flashg              @ 20 flash global int
    .word       rccg                @ 21 RCC global int
    .word       exti0               @ 22 EXTI line 0
    .word       exti1               @ 23 EXTI line 1
    .word       exti2               @ 24 EXTI line 2
    .word       exti3               @ 25 EXTI line 3
    .word       exti4               @ 26 EXTI line 4
    .word       dma1stream0         @    DMA1 Stream0 global int
    .word       dma1stream1         @    DMA1 Stream1 global int
    .word       dma1stream2         @    DMA1 Stream2 global int
    .word       dma1stream3         @    DMA1 Stream3 global int
    .word       dma1stream4         @    DMA1 Stream4 global int
    .word       dma1stream5         @    DMA1 Stream5 global int
    .word       dma1stream6         @    DMA1 Stream6 global int
    .word       adcg                @    ADC1/2/3 global int
    .word       can1tx              @    CAN1 TX int
    .word       can1rx0             @    CAN1 RX0 int
    .word       can1rx1             @    CAN1 RX1 int
    .word       can1sce             @    CAN1 SCE int
    .word       exti95              @    EXTI line[9:5] int

__flash_vectors_end:
    .set        __flash_vectors_size, . - __flash_vectors_start
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
    .section    .ram.vectors, "a"
    .global     __ram_vectors_start
    .global     __ram_vectors_end
    .global     __ram_vectors_size

__ram_vectors_start:
    .skip       __flash_vectors_size
__ram_vectors_end:
    .set        __ram_vectors_size, . - __ram_vectors_start
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
    .section    .init, "ax"
    .global     defhnd
    .syntax     unified
    .thumb

    .type       nmi, function       @ ---------------------------------------
    .weak       nmi                 @ override as desired
nmi:                                @ fall through to defhnd ----------------

    .type       hflt, function      @ ---------------------------------------
    .weak       hflt                @ override as desired
hflt:                               @ fall thourgh to defhnd ----------------

    .type       svccall, function   @ ---------------------------------------
    .weak       svccall             @ override as desired
svccall:                            @ fall through to defhnd ----------------

    .type       pendsvc, function   @ ---------------------------------------
    .weak       pendsvc             @ override as desired
pendsvc:                            @ fall through to defhnd ----------------

    .type       systick,function    @ ---------------------------------------
    .weak       systick             @ override as desired
systick:                            @ fall through to defhnd ----------------

    .type       defhnd, function    @ ---------------------------------------
defhnd:                             @
    bkpt        #0                  @ ---------------------------------------
    .pool
# ---------------------------------------------------------------------------