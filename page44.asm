BasicUpstart2(main)
 
// 5 X = 4
// 10 PRINT "HELLO";X
// 15 X=X+ 4
// 20 IF X <> 104 GOTO 10
// 30 END

// In Assembly

* = $c000 "Start Address"   // 49152

main:

    lda #$04
    sta $0400       // plus4 $0c00
L1: lda $0400       // plus4 $0c00
    clc
    adc #$04
    sta $0400       // plus4 $0c00
    lda $0400
    cmp #$80
    bne L1

    rts