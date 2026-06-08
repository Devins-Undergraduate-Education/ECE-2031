; SimpleDemo.asm
; Tests basic instructions in SCOMP

ORG 0
	; Some basic math
	LOAD   Two
	ADD    One
	ADD    NegFive
	ADDI   3
	ADDI   -1
	SUB    Three
	SUB    NegFive
    
    ; Some basic memory operations
    STORE  Temp         ; What value gets stored?
    ADD    Temp         ; What value is in AC now?
    LOAD   Temp         ; What value is in AC now?
	
	; Some basic logic
	LOADI  0
	OR     LowByte
	AND    Bit2
	XOR    LowByte
	SHIFT  4
	SHIFT  -4
	
	; Conditional jumps
	LOADI  0
	JNEG   WrongJump    ; 0 is not negative
	JZERO  CheckJPOS
	; If JZERO didn't jump, fall through to error indication
	
WrongJump:
	LOAD   ErrCode      ; 0xEEEE in AC indicates an error
	JUMP   WrongJump    ; Infinite loop

CheckJPOS: ; Specific tests for JPOS
	LOADI  -8
	JPOS   WrongJump    ; -8 is not positive
	LOADI  1
	SHIFT  15
	JPOS   WrongJump    ; -0 is not positive
	SHIFT  1
	JPOS   WrongJump    ; 0 is not positive
	LOADI  8
	JPOS   CheckJNZ     ; 8 IS positive, so...
	JUMP   WrongJump    ; if that jump fails, something is wrong

CheckJNZ: ; Specific tests for JNZ
	LOADI  0
	JNZ    WrongJump    ; 0 is not not zero
	LOADI  -1
	JNZ    Questions    ; -1 IS not zero, so...
	JUMP   WrongJump    ; if that jump fails, something is wrong

Questions:
	LOADI  &H0003       ; Why doesn't this operand work?
	OR     255          ; Why doesn't AC get OR'd with 255 (0xFF)?
	ADDI   Temp         ; Why doesn't 2 (the value in Temp) get added?
	
	LOAD   Buzz
Finish:
	JUMP   Finish       ; Infinite loop
	
; Useful values
One:       DW   1
Two:       DW   2
Three:     DW   3
Four:      DW   4
Five:      DW   5
NegOne:    DW  -1
NegTwo:    DW  -2
NegThree:  DW  -3
NegFour:   DW  -4
NegFive:   DW  -5
Bit0:      DW  &B0001
Bit1:      DW  &B0010
Bit2:      DW  &B0100
Bit3:      DW  &B1000
LowByte:   DW  &H00FF
Buzz:      DW  &HABEE
ErrCode:   DW  &HEEEE
Temp:      DW  0
