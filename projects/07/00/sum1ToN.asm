// A redo of the example of sum1ToN.asm in project 4, from Cody.

@KBD
D=M
@0
M=D       // R0=KBD

@0
D=M
@stop
M=D       // stop=R0
@i
M=1       // i=1
@sum
M=0       // sum=0

(LOOP)

@stop
D=M+1
@i
D=D-M
@STOP
D;JLE     // if i>stop goto STOP
@i
D=M
@sum
M=D+M     // sum+=i
@i
M=M+1     // i++
@LOOP
0;JMP     // goto LOOP

(STOP)

@sum
D=M
@2
M=D       // R2=sum

(END)

@END
0;JMP     // goto END
