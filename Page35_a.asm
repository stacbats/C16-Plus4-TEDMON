// All code from Melbourne House book ML for Beginners
// The code should really be written using Tedmon. Call the monitor up and assemble. 

// Refer to the book to review how the code works. 

BasicUpstart($2000)


    lda #$00
    sta $05
    lda #$03
    clc
    adc #$05
    sta $05
    brk
    
// to run in Tedmon type G 2000. See changes vie M 0005
