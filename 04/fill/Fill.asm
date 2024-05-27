// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(MAIN)
// Initialize the Counter 
@8192
D=A
@ctr
M=D

@KBD
D=M
@COLORW
D; JEQ

//Color Black
(COLORB)
@ctr
D=M
@SCREEN
A=D+A
M=-1
D=D-1
@ctr
M=D
@COLORB
D;JGE

@MAIN
0; JMP

// Color White
(COLORW)
@ctr
D=M
@SCREEN
A=D+A
M=0
D=D-1
@ctr
M=D
@COLORW
D;JGE

@MAIN
0; JMP
