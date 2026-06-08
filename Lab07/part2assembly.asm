; ByteDiff.asm
; Compute |high_byte(Value) - low_byte(Value)| and store in Result

ORG 0
Start:
    ; --- Grab HIGH BYTE into High 
    LOAD   Value          ; AC = 0xHHLL
    AND    HiMask         ; AC = 0xHH00
    SHIFT  -8             ; arithmetic >>8 may sign-extend...
    AND    LowMask        ; ...so force logical result: AC = 0x00HH
    STORE  High

    ; --- Grab LOW BYTE into Low
    LOAD   Value          ; AC = 0xHHLL
    AND    LowMask        ; AC = 0x00LL
    STORE  Low

    ; --- Compute (High - Low)
    LOAD   High           ; AC = High
    SUB    Low            ; AC = High - Low
    JNEG   MakePos        ; if negative, negate it
    STORE  Result         ; already positive
    JUMP   Finish

MakePos:
    STORE  Diff           ; Diff = (High - Low) < 0
    LOADI  0
    SUB    Diff           ; AC = -Diff = |High - Low|
    STORE  Result

Finish:
    JUMP   Finish         ; Infinite loop


Value:     DW   &H89F1    ; Start with 0x89F1 (expected 0x68 = 104)
                          ; Test Case: HF000  (expected 240)
                          ; Test Case: HFFFF  (expected 0)
                          ; Test Case: H1248  (expected 54)
Result:    DW   0
High:      DW   0
Low:       DW   0
Diff:      DW   0

LowMask:   DW   &H00FF
HiMask:    DW   &HFF00
