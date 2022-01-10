BasicUpstart2(main)
 


// In Assembly

* = $c000 "Start Address"   // 49152

main:
    lda #$03
    sta $04
    lda #$00
L1: clc
    adc #$07
    dec $04
    bne L1
    sta $05

    rts