// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

// Clear out R2
@R2
M=0;

// Set the ctr to the multiply count
@R1
D=M
@ctr
M=D

(LOOP)
// Bail if ctr == 0
@ctr
D=M
@END
D; JEQ

// Add R0 to Result (R2)
@R0
D=M
@R2
M=M+D

//Decrement ctr
@ctr
M=M-1
@LOOP
0; JMP

// Program Termination Loop
(END)
@END
0;JMP
