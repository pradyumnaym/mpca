A: .WORD 10,20,30,40,50,60,70
B: .ASCIZ "ELEMENT FOUND"
C: .ASCIZ "ELEMENT NOT FOUND"
MOV R1,#50
LDR R2,=A
MOV R3,#7
L1: CMP R3,#0
	BEQ L2
	LDR R4,[R2],#4
	CMP R1,R4
	BNE L1
	LDR R0,=B
	B L2
	LDR R0,=C
L2: SWI 0X02
	SWI 0X11
