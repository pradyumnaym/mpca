A:.WORD 0XF0000002
B:.WORD 0X00000002
ADR R0,A
ADR R1,B
LDR R0,[R1],R3,LSL#4
LDR R5,[R10,R2,LSR #21]
SMULL R2,R3,R1,R0
SWI 0X11