A:.ASCIZ "HELLO WORLD"
MOV R1,#0
LDR R2,=A
L1: LDRB R3,[R2],#1
	CMP R3,#0
	BEQ L2
	ADD R1,R1,#1
	B L1
L2:SWI 0X11
