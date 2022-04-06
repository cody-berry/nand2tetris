// A redo of Mult.asm in project 4, from Cody.

@1
D=A
@1
M=D       // R1=1


@i
M=0       // i=0
@0
D=M
@stop
M=D       // stop=R0
@1
D=M
@add
M=D       // add=R1
@sum
M=0       // sum=0

(LOOP)

@i
D=M
@stop
D=D-M
@STOP
D;JGE     // if i > stop goto STOP

@add
D=M
@sum
M=M+D     // sum += add
@i
M=M+1     // i++
@LOOP
0;JMP     // goto LOOP

(STOP)

@sum
D=M
@2
M=D       // R2 = sum

(END)

@END
D;JMP     // goto END
