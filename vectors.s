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
    .word       defhnd              @ 4  -+-reserved
    .word       defhnd              @ 5   |
    .word       defhnd              @ 6   |
    .word       defhnd              @ 7   |
    .word       defhnd              @ 8   |
    .word       defhnd              @ 9   |
    .word       defhnd              @ 10 -+
    .word       svccall             @ 11 system service call
    .word       defhnd              @ 12 -+-reserved
    .word       defhnd              @ 13 -+
    .word       pendsvc             @ 14 pend service request
    .word       systick             @ 15 system tick
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