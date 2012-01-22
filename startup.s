
    .section    .init, "ax"
    .syntax     unified
    .thumb

    .set        MAIN_STACK_FILL,    0xaaaaaaaa
    .set        PROCESS_STACK_FILL, 0xbbbbbbbb
    .set        VTOR,               0xE000ED08

# -----------------------------------------------------------------------------
    .type       reset, function
    .global     reset
reset:
    ldr         lr, =reset
    bl          pll_init            /**< fire up pll to 168MHz               */
    movs        r4, r0              /**< save retval for later               */

    movs        r2, #0              /**< fill byte                           */

    ldr         r0, =__bss_start__
    ldr         r1, =__bss_end__
    bl          byte_blk_fill                   /**< wipe out .bss           */

    ldr         r0, =__bitband_bss_start__
    ldr         r1, =__bitband_bss_end__
    bl          byte_blk_fill                   /**< wipe out .bitband.bss   */

    ldr         r0, =__data_load_start__
    ldr         r1, =__data_load_end__
    ldr         r2, =__data_run_start__         /**< load .data              */
    bl          byte_blk_copy

    ldr         r0, =__bitband_data_load_start__
    ldr         r1, =__bitband_data_load_end__
    ldr         r2, =__bitband_data_run_start__ /**< load .bitband.data      */
    bl          byte_blk_copy

    ldr         r0, =__sram1_data_load_start__
    ldr         r1, =__sram1_data_load_end__
    ldr         r2, =__sram1_data_run_start__   /**< load .sram1.data        */
    bl          byte_blk_copy

    ldr         r0, =__sram2_data_load_start__
    ldr         r1, =__sram2_data_load_end__
    ldr         r2, =__sram2_data_run_start__   /**< load .sram2.data        */
    bl          byte_blk_copy

    ldr         r0, =__fast_load_start__
    ldr         r1, =__fast_load_end__
    ldr         r2, =__fast_run_start__         /**< load .fast              */
    bl          byte_blk_copy

#ifdef RAM_VECTORS
    ldr         r0, =__flash_vectors_start /**< loadup ram vectors           */
    ldr         r1, =__flash_vectors_end   /*   ~495ns                       */
    ldr         r2, =__ram_vectors_start
    bl          word_blk_copy
    ldr         r0, =__ram_vectors_start   /**< loadup VTOR to point to      */
    ldr         r1, =VTOR                  /*   copied vectors in ram        */
    str         r0, [r1]
#endif

#ifdef STACK_FILL
    ldr         r0, =__stack_start__
    ldr         r1, =__stack_end__
    ldr         r2, =MAIN_STACK_FILL
    bl          word_blk_fill               /**< ~775ns per 1k               */

    ldr         r0, =__stack_process_start__
    ldr         r1, =__stack_process_end__
    ldr         r2, =PROCESS_STACK_FILL
    bl          word_blk_fill
#endif

    ldr         r0, =__stack_process_end__  /**< set top of process stack    */
    msr         psp, r0
    mov         r0, #0b010                  /**< switch to the process stack */
    msr         control, r0

    b           main
# -----------------------------------------------------------------------------

/**
 * @internal
 * fill a block of words
 * r0 - block start
 * r1 - block end
 * r2 - fill word
 */
    .section    .init, "ax"
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       word_blk_fill, function
word_blk_fill:
1:  cmp         r0, r1
    beq         1f
    str         r2, [r0], #4
    b           1b
1:  bx          lr
# -----------------------------------------------------------------------------

/**
 * @internal
 * copy a block of words
 * r0 - src block start
 * r1 - src block end
 * r2 - dest block start
 * r3 - destroyed
 */
    .section    .init, "ax"
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       word_blk_copy, function
word_blk_copy:
1:  cmp         r0, r1
    beq         1f
    ldr         r3, [r0], #4
    str         r3, [r2], #4
    b           1b
1:  bx          lr
# -----------------------------------------------------------------------------

/**
 * @internal
 * fill a block of bytes
 * r0 - block start
 * r1 - block end
 * r2 - fill byte
 */
    .section    .init, "ax"
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       byte_blk_fill, function
byte_blk_fill:
1:  cmp         r0, r1
    beq         1f
    strb        r2, [r0], #1
    b           1b
1:  bx          lr
# -----------------------------------------------------------------------------

/**
 * @internal
 * copy a block of bytes
 * r0 - src block start
 * r1 - src block end
 * r2 - dest block start
 * r3 - destroyed
 */
    .section    .init, "ax"
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
    .type       byte_blk_copy, function
byte_blk_copy:
1:  cmp         r0, r1
    beq         1f
    ldrb        r3, [r0], #1
    strb        r3, [r2], #1
    b           1b
1:  bx          lr
# -----------------------------------------------------------------------------