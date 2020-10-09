A:.WORD 108
LDR R0,=A
LDR R0,[R0]
MOV R10,#10
LOOP: CMP R0,#10
	  BLT EXIT
	  MOV R3,#0
	  MOV R7,#0
	  LOOP2: CMP R3,R0
             BGE LOOPEND
             ADD R3,R3,#10
             ADD R7,R7,#1
             B LOOP2

      LOOPEND:  CMP R3,R0
      			SUBNE R3,R3,#10
      			SUBNE R7,R7,#1
       			SUB R5,R0,R3
      			ADD R9,R9,R5
      			MOV R0,R7
  				B LOOP
EXIT:ADD R9,R9,R0 
     SWI 0X11

