BasicUpstart2(main)
 


* = $c000 "Start Address"   // 49152

main:

    lda #$00
    sta $0400       // plus4 $0c00
L1: lda $0400       // plus4 $0c00
    clc
    adc #$04
    sta $0400       // plus4 $0c00
    jmp L1

    rts
