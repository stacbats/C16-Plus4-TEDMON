// All code from Melbourne House book ML for Beginners
// The code should really be written using Tedmon. Call the monitor up and assemble. 

// Refer to the book to review how the code works. 

// Program Control Chapter 6

BasicUpstart2(enter)

* = $c000 "start of prg"

enter:



    lda #$04                // Loading A with 4
    sta $0400               // STORE it at address (C16 $0c00)
    sta $d800               // I have added this for colour
// so we have set up the program and this will add asci 
L1: lda $0400               // START OF LOOP LABEL. Load whats in A to Screen Ram
    lda $d800               // Again, also colour ram. 
    clc                     // Clear Carry
    adc #$04                // Add carry to A
    sta $0400               // Store new added Value at address
    sta $d800               // Store new added Value at address  
    lda $0400               // Load A with new vala
    lda $d800               // As above
    cmp #$80                // compare value with A
    bne L1                  // Keep branching util same$2005
    
    rts
    

// The above progrom is a ML routine for the basix
// 5 X = 4
// 10 PRINT "HELLO";X
// 15 X=X+4
// 20 GOTO 10
// 30 END

    
// to run in Tedmon type G 2000.  