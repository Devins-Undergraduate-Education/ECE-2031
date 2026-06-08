; Guess10.asm

ORG 0

; On reset: clear score to 0 and display it 
    LOADI  0
    STORE  Score
    OUT    Hex1           ; show 00 on the left display 

; =============================
; ======== Round Loop =========
; =============================

; 1) Wait until ALL switches are down (value == 0), continuously update LEDs & score
WaitUntilZero:
    IN     Switches
    STORE  Sw
    OUT    LEDs
    LOAD   Score
    OUT    Hex1
    LOAD   Sw
    JNZ    WaitUntilZero   ; keep waiting until user lowers all switches

; 2) With all switches down: keep randomizing until the user raises any switch
RandomizeWhileZero:
    IN     Switches
    STORE  Sw
    OUT    LEDs
    LOAD   Score
    OUT    Hex1
    LOAD   Sw
    JNZ    RoundStart      ; user raised a switch -> begin round

    ; Call LFSR with random in AC; keep only low 10 bits
    LOAD   random
    CALL   LFSR
    AND    TenBits
    STORE  random
    JUMP   RandomizeWhileZero

; 3) Round start: reset timer and display target on Hex0
RoundStart:
    OUT    Timer           ; write anything -> reset 10 Hz timer to 0
    LOAD   random
    OUT    Hex0            ; show the target value during the round

; 4) Wait until the switch value matches the target; LEDs/score keep updating
WaitCorrect:
    IN     Switches
    STORE  Sw
    OUT    LEDs
    LOAD   Score
    OUT    Hex1
    LOAD   random
    OUT    Hex0

    ; Compare low 10 bits of switches against random
    LOAD   Sw
    AND    TenBits
    SUB    random
    JZERO  CheckTime       ; matched! evaluate time for scoring
    JUMP   WaitCorrect     ; not matched yet; keep waiting

; 5) If matched in under 5 seconds (50 ticks), add a point
CheckTime:
    IN     Timer   
    ADDI   -50         
    JNEG   GotPoint
    JUMP   NewRound        ; 5s or more: no point

GotPoint:
    LOAD   Score
    ADDI   1
    STORE  Score
    ; Hex1 will be updated in the next loop iteration automatically

; 6) Begin next round (go require “all down” again)
NewRound:
    JUMP   WaitUntilZero


LFSR:
    STORE  LFSR_Orig

    LOAD   LFSR_Orig
    AND    LFSR_Mask4
    SHIFT  -4
    STORE  LFSR_Temp

    LOAD   LFSR_Orig
    AND    LFSR_Mask8
    SHIFT  -8
    XOR    LFSR_Temp
    AND    LFSR_Bit0
    STORE  LFSR_FB

    LOAD   LFSR_Orig
    SHIFT  1
    AND    LFSR_NotBit0
    OR     LFSR_FB
    RETURN


; game state
Score:       DW   0                 ; score is cleared at reset/start
random:      DW   &H0001            ; non-zero seed for LFSR (change if desired)
Sw:          DW   0                 ; last-read switches
Ticks:       DW   0                 ; (optional scratch)

; masks
TenBits:     DW   &H03FF            ; keep only bits 9..0

; LFSR locals & constants (from your prelab demo)
LFSR_Orig:    DW   0
LFSR_Temp:    DW   0
LFSR_FB:      DW   0
LFSR_Mask4:   DW   &H0010
LFSR_Mask8:   DW   &H0100
LFSR_NotBit0: DW   &HFFFE
LFSR_Bit0:    DW   &B0001

; I/O addresses
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005
