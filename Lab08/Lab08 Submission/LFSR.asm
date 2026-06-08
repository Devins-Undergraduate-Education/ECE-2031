; LFSR Demo

ORG 0
    LOADI  4          ; put 4 in AC

    CALL   LFSR       ; #1
    CALL   LFSR       ; #2
    CALL   LFSR       ; #3
    STORE  result1

    CALL   LFSR       ; #4
    CALL   LFSR       ; #5
    CALL   LFSR       ; #6
    STORE  result2

    CALL   LFSR       ; #7
    CALL   LFSR       ; #8
    CALL   LFSR       ; #9
    STORE  result3

Done:
    JUMP   Done       ; infinite loop


LFSR:
    STORE  LFSR_Orig          ; save input

    LOAD   LFSR_Orig
    AND    LFSR_Mask4
    SHIFT  -4                  ; move orig bit4 to bit0
    STORE  LFSR_Temp

    LOAD   LFSR_Orig
    AND    LFSR_Mask8
    SHIFT  -8                  ; move orig bit8 to bit0
    XOR    LFSR_Temp           ; bit0 = b4 XOR b8
    AND    LFSR_Bit0           ; keep only LSB
    STORE  LFSR_FB

    LOAD   LFSR_Orig
    SHIFT  1
    AND    LFSR_NotBit0        ; clear bit0
    OR     LFSR_FB             ; insert feedback
    RETURN

LFSR_Orig:    DW   0
LFSR_Temp:    DW   0
LFSR_FB:      DW   0

LFSR_Mask4:   DW   &H0010      ; mask for original bit4
LFSR_Mask8:   DW   &H0100      ; mask for original bit8
LFSR_NotBit0: DW   &HFFFE      ; all ones except bit0
LFSR_Bit0:    DW   &B0001      ; bit0 mask

; ----- Result storage -----
result1:      DW   0
result2:      DW   0
result3:      DW   0
