MOV R0,#7
MOV R1,#0
MOV R5,#1
MOV R3,#0
L1:	CMP R1,#32
	BEQ EXIT
	AND R4,R0,R5,LSL R1
	ADD R1,R1,#1
	CMP R4,#0
	ADDNE R3,R3,#1
	B L1
EXIT:   AND R4,R3,#1
		CMP R4,#0
		LDREQ R0,=A
		LDRNE R0,=B
		SWI 0X02
		SWI 0X11
A: .ASCIZ "EVEN"
B: .ASCIZ "ODD"
