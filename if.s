MOV R0,#5
MOV R1,#12
CMP R0,R1
BEQ L1
SUB R2,R1,R0
B L2
L1:
ADD R2,R1,R0
L2:SWI 0X11
