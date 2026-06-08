; TriangleArea.asm
; ------------------------------------------------------------------
; Tiny demo that shows how little code is needed to leverage
; the SCOMP_Math peripheral (base I/O 0x090).  We compute the
; area of a triangular garden plot using the formula:
;       area = (base * height) / 2
; HEX1/HEX0 together show the 16-bit result, so only the math
; answer appears on the displays.
; ------------------------------------------------------------------

                ORG     0

Start:
                ; base * height -> TwiceArea (SCOMP handles the multiply)
                LOADI   &H002A
                OUT     MathOpA        ; write operand A into the math block
                LOADI   &H0018
                OUT     MathOpB        ; write operand B into the math block
                LOADI   OP_MUL
                OUT     MathCtrl       ; kick off a MUL with the current operands

                IN      MathResLo
                STORE   TwiceArea      ; grab the low product (fits in 16 bits here)

                ; divide by two to complete (base * height) / 2
                LOAD    TwiceArea
                OUT     MathOpA        ; reuse result as new operand A
                LOADI   2
                OUT     MathOpB        ; constant divisor
                LOADI   OP_DIV
                OUT     MathCtrl       ; start the divide

                IN      MathResLo
                STORE   FinalArea      ; quotient is the triangle area

                ; show only the finished area value on the HEX displays
                LOADI   0
                OUT     Hex1           ; blank upper display
                LOAD    FinalArea
                OUT     Hex0           ; show the area (0x01F8 = 504 sq ft)

HoldResult:     JUMP    HoldResult      ; keep displaying the answer

; ------------------------------------------------------------------
; Data & constants
; ------------------------------------------------------------------

TwiceArea:      DW      0
FinalArea:      DW      0

OP_MUL          EQU     3
OP_DIV          EQU     4

Hex0            EQU     004
Hex1            EQU     005

MathCtrl        EQU     &H090          ; write opcode here to start a math op
MathOpA         EQU     &H091          ; operand A register (write-only)
MathOpB         EQU     &H092          ; operand B register (write-only)
MathResLo       EQU     &H093          ; read low 16 bits of the result
MathResHi       EQU     &H094          ; read high 16 bits of the result (unused here)
