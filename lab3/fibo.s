A:.WORD 0,0,0,0,0,0,0,0
LDR R0,=A
MOV R1,#0
MOV R2,#1
STR R1,[R0],#4
STR R2,[R0],#4
MOV R3,#6
L1: CMP R3,#0
	BEQ L2
	SUB R3,R3,#1
	ADD R4,R2,R1
	STR R4,[R0],#4
	MOV R1,R2
	MOV R2,R4
	B L1
L2:SWI 0X11

