.EQU A,0X80
.EQU B,0X40
.EQU C,0X20
.EQU P,0X10
.EQU D,0X08
.EQU E,0X04
.EQU F,0X02
.EQU G,0X01

TAB: .WORD A|B|C|D|E|G
    .WORD B|C
    .WORD A|B|D|E|F
    .WORD A|B|C|D|F
    .WORD B|C|F|G
    .WORD A|C|D|F|G
    .WORD A|C|D|F|G|E
    .WORD A|B|C
    .WORD A|B|C|D|E|F|G
    .WORD A|B|C|F|G
    .WORD A|B|C|E|F|G
    .WORD A|B|C|D|E|F|G
    .WORD A|D|E|G
    .WORD A|B|C|D|E|G
    .WORD A|D|E|F|G
    .WORD A|E|F|G
MAX:.WORD 100000
MOV R1,#0
LDR R2,=MAX
LDR R4,[R2]
LDR R2,=TAB

LOOP1:  CMP R1,#16
        BEQ LOOP2
        LDR R0,[R2,R1,LSL #2]
        ADD R1,R1,#1
        SWI 0X200
        MOV R3,#0
        LOOP3: CMP R3,R4
                BEQ LOOP1END
                ADD R3,R3,#1
                B LOOP3
        LOOP1END:B LOOP1
LOOP2:CMP R1,#0
    BEQ RESTART
    SUB R1,R1,#1
    LDR R0,[R2,R1,LSL #2]
    SWI 0X200
    MOV R3,#0
    LOOP4: CMP R3,R4
            BEQ LOOP2END
                ADD R3,R3,#1
                B LOOP4
    LOOP2END:B LOOP2


    
    
RESTART:MOV R1,#0
    B LOOP1