// An assembly file created by Cody. Fills the screen with black pixels. Remember to turn "No Animation" on.



@SCREEN
D=A
@add
M=D           // add = SCREEN
@KBD
D=A
@n
M=D           // n = KBD
(LOOP)
@add
D=M
@n
D=D-M
@END
D;JGE         // if (add >= n), goto END

@add
A=M
M=-1          // RAM[add]=-1
@add
M=M+1         // add += 1
@LOOP
0;JMP         // goto LOOP             

(END)
@END
0;JMP         // goto END



