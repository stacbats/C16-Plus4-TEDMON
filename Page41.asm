// All code from Melbourne House book ML for Beginners
// The code should really be written using Tedmon. Call the monitor up and assemble. 

// Refer to the book to review how the code works. 

// Program Control Chapter 6

BasicUpstart($2000)


    lda #$00        // Load A with 0
    sta $0c00       // Store it at address
J1: lda $0c00       // Create label J1. Then load whats in A into address $0c00
    clc             // Clear Carry
    adc #$04        // Add value to Acumulator
    sta $0c00       // Store at address
    jmp J1          // address $2005

// The above progrom is a ML routine for the basix
// 100 X = X + 4
// 110 GOTO 100
    
// to run in Tedmon type G 2000.  