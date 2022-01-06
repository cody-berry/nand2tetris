// A file made by Cody Tian. It fills the screen with a 16-bit pattern.






@R0
D=M
@pattern
M=D           // pattern = R0
@SCREEN
D=A
@add
M=D           // add = SCREEN
@KBD
D=A
@n
M=D

(LOOP)
@add
D=M
@n
D=D-M
@END
D;JGE         // if (add >= n), goto END
@pattern
D=M
@add
A=M
M=D           // RAM[add] = pattern
@add
M=M+1         // add += 1
@LOOP
0;JMP         // goto LOOP
(END)
@END
0;JMP         // goto END



