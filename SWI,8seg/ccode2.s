A: .WORD 10
B: .WORD 20
Z: .WORD 0
LDR R0,=A
LDR R1,=B
LDR R2,=Z
LDR R3,[R0]
LDR R4,[R1]
ADD R5,R5,R3,LSL #2
AND R6,R4,#15
ORR R7,R6,R5
STR R7,[R2]
SWI 0X11
