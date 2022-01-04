// An assembly file created by Cody. If a key is pressed, make the first 16 pixels black. Remember to turn "No Animation" on.


(LOOP)
@KBD
D=M
@ON
D;JNE     // If (RAM[KBD] != 0), goto ON
@OFF
0;JMP     // goto OFF
(OFF)
@SCREEN
M=0       // Set RAM[SCREEN] to 0
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

