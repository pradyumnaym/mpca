MOV R0,#0  ; 1-0,2-NEG,3-POS
MOV R1,#0
MOV R3,#0X80000000
CMP R0,R1
BNE L2
MOV R5,#1
B L4
L2:AND R2,R0,R3
	CMP R2,R3
	BNE L3
	MOV R5,#2
	B L4
L3:MOV R5,#3
L4:SWI 0X11
