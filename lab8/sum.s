;SUM OF SQUARES UPTO N
MOV R0,#10
ADD R0,R0,#1
MOV R1,#1
LOOP: CMP R1,R0
	  BEQ EXIT
	  MLA R2,R1,R1,R2
	  add r1,r1,#1
	  B LOOP 
EXIT: SWI 0X11