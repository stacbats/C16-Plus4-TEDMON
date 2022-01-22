BasicUpstart2(main)
 


* = $c000 "Start Address"   // 49152

main:

    lda #$00        // Load 0 into accumulator (# immediate)
    sta $0400       // Store it at $0400plus4 $0c00
    sta $d800       // ALso putting 0 into address $d800
L1: lda $0400       // plus4 $0c00
    lda $d800
    clc
    adc #$09
    sta $0400       // plus4 $0c00
    sta $d800
    jmp L1

    rts 
// lda $0c00
// lda 2048