// All code from Melbourne House book ML for Beginners
// The code should really be written using Tedmon. Call the monitor up and assemble. 

// Refer to the book to review how the code works. 

// Program Control Chapter 6

BasicUpstart2(enter)

* = $c000 "start of prg"

enter:



    lda #$00        // Load A with 0
    sta $0400       // Store it at address $0c00 for C16 Plus4
J1: lda $0400       // Create label J1. Then load whats in A into address $0c00
    clc             // Clear Carry
    adc #$04        // Add value to Acumulator
    sta $0400       // Store at address
    jmp J1          // Jumping to Label (J1:)address $2005 in the book

// The above progrom is a ML routine for the basic

// 10 PRINT "HELLO";X
// 20 GOTO 10

// to run in Tedmon type G 2000.  