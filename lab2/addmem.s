A: .WORD 1
B: .WORD 2
C: .WORD 0
ADR R0,A
LDR R1,=B
LDR R2,[R0]
LDR R3,[R1]
ADD R4,R3,R2
LDR R5,=C
STR R4,[R5]
SWI 0X11

