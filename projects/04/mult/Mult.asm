// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// i = 0
@i
M=0 
// sum = 0
@sum
M=0
// n = R1
@R1
D=M
@n
M=D

(LOOP)
// if (i >= n), goto END
@n
D=M
@i
D=M-D
@END
D; JGE

// sum += R0
@R0
D=M
@sum
M=M+D
// i = i + 1
@i
M=M+1
// goto LOOP
@LOOP
0; JMP


(END)
// R2 = sum
@sum
D=M
@R2
M=D
// goto END
@END
0;JMP











