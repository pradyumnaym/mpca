MOV R0,#15
MOV R1,#10
L1:CMP R1,#0
	BEQ L2
	CMP R0,R1
	BGT L3
	SUB R1,R1,R0
	B L1
	L3:SUB R0,R0,R1
	B L1
L2:SWI 0X11
