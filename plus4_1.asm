//  Working with the Plus 4 & TEDMON

//  Once VICE Opens the plus 4 go into TEDMON
//  Enter the Monitor(MONITOR), run the address (G 2000) then review the memory location for our program ( M 0005)

* = $2000"address"

    lda #$00
    sta $05
    lda #$03
    clc
    adc #$05
    sta $05
    brk
 
//  From within the monitor type .G 2000. Now type .M f/JIlJ'lJ5. Location $05 should contain the value of 08.


// You can see further evidence by changing the program to alter the sum we are performing.


// As comment out the above and rune the following.  Again use theinstructions above in TEDMON to utilse the monitor

    // lda #$00
    // sta $05
    // lda #$27
    // clc
    // adc #$f4
    // sta $05
    // brk
 
//  The value stored in $05 will be $1B. Since $F4 + $27 is actually $11 B, and thus the carry flag would have been set.
//  NOTE: we cannot tell the carry has been set from our results. 

//  So for the final test to see this use the following code, again using TEDMON to see the results

    // lda #$03
    // sec
    // adc #$05
    // sta $05
    // brk
 