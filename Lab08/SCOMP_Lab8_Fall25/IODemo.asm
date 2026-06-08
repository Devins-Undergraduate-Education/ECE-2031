; IODemo.asm
; Produces a "bouncing" animation on the LEDs.
; The LED pattern is initialized with the switch state,
; but only after the user has at most two switches raised.

ORG 0

; allow at most two switches raised
WaitForTwoOrLess:
    IN     Switches       ; V = current switch state
    STORE  SwVal

    ; Quick accept if V == 0
    LOAD   SwVal
    JNZ    CheckMoreThanOne
    JUMP   AcceptSwitches

CheckMoreThanOne:
    ; First clear: V1 = V & (V-1)
    LOAD   SwVal
    STORE  TmpA           ; TmpA = V (preserve V)
    LOAD   SwVal
    ADDI   -1
    AND    TmpA           ; ACC = (V-1) & V
    STORE  V1

    ; If V1 == 0 -> had 1 bit set (or V was 0, already handled) => accept
    LOAD   V1
    JNZ    CheckMoreThanTwo
    JUMP   AcceptSwitches

CheckMoreThanTwo:
    ; Second clear: V2 = V1 & (V1-1)
    LOAD   V1
    STORE  TmpA           ; TmpA = V1
    LOAD   V1
    ADDI   -1
    AND    TmpA           ; ACC = (V1-1) & V1
    STORE  V2

    ; If V2 != 0, then there were 3+ bits set -> keep waiting
    LOAD   V2
    JNZ    WaitForTwoOrLess

; Otherwise (V2 == 0) exactly two bits set -> accept
AcceptSwitches:
    ; Initialize pattern from (current) switch state
    IN     Switches
    OUT    LEDs
    STORE  Pattern
; END STARTUP GUARD

Left:
    ; Slow down the loop so humans can watch it.
    CALL   Delay

    ; Check if the left place is 1 and if so, switch direction
    LOAD   Pattern
    AND    Bit9         ; bit mask
    JNZ    Right        ; bit9 is 1; go right

    LOAD   Pattern
    SHIFT  1
    STORE  Pattern
    OUT    LEDs

    JUMP   Left

Right:
    ; Slow down the loop so humans can watch it.
    CALL   Delay

    ; Check if the right place is 1 and if so, switch direction
    LOAD   Pattern
    AND    Bit0         ; bit mask
    JNZ    Left         ; bit0 is 1; go left

    LOAD   Pattern
    SHIFT  -1
    STORE  Pattern
    OUT    LEDs

    JUMP   Right

; To make things happen on a human timescale, the timer is
; used to delay for half a second.
Delay:
    OUT    Timer
WaitingLoop:
    IN     Timer
    ADDI   -5
    JNEG   WaitingLoop
    RETURN

; Variables
Pattern:   DW 0
SwVal:     DW 0
TmpA:      DW 0
V1:        DW 0
V2:        DW 0

; Useful values
Bit0:      DW &B0000000001
Bit9:      DW &B1000000000

; IO address constants
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005