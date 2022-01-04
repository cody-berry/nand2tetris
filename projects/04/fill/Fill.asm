// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.



(LOOP)
@KBD
D=M
@ON
D;JNE     // If (RAM[KBD] != 0), goto ON
@OFF
0;JMP     // goto OFF
(OFF)
@SCREEN
D=A
@add
M=D           // add = SCREEN
@KBD
D=A
@n
M=D           // n = KBD
(LOOP3)
@add
D=M
@n
D=D-M
@LOOP
D;JGE         // if (add >= n), goto LOOP

@add
A=M
M=0           // RAM[add]=0
@add
M=M+1         // add += 1
@LOOP3
0;JMP         // goto LOOP3
@LOOP
0;JMP     // goto LOOP
(ON)
@SCREEN
D=A
@add
M=D           // add = SCREEN
@KBD
D=A
@n
M=D           // n = KBD
(LOOP2)
@add
D=M
@n
D=D-M
@LOOP
D;JGE         // if (add >= n), goto LOOP

@add
A=M
M=-1          // RAM[add]=-1
@add
M=M+1         // add += 1
@LOOP2
0;JMP         // goto LOOP2
@LOOP
0;JMP     // goto LOOP



