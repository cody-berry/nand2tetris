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
M=-1      // Set RAM[SCREEN] to -1
@LOOP
0;JMP     // goto LOOP

