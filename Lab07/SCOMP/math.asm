; ============================================================
; SCOMP Math Peripheral Test (DE10/SCOMP)
; Exercises: ADD, SUB, MUL, DIV, MOD, ABS, NEG, overflow, DBZ
; Results written to memory at labels R_* (see DATA section).
; End: loops forever at DONE.
; ============================================================

            JUMP    START

; -----------------------
; CONSTANTS (ROM / const)
; -----------------------
A_ADDR      DW      0x0091
B_ADDR      DW      0x0092      ; I/O: OPERAND_B
CTRL_ADDR   DW      0x0090      ; I/O: CONTROL
RLO_ADDR    DW      0x0093      ; I/O: RESULT_LO
RHI_ADDR    DW      0x0094      ; I/O: RESULT_HI
STS_ADDR    DW      0x0095      ; I/O: STATUS

OP_ADD      DW      0x0001
OP_SUB      DW      0x0002
OP_MUL      DW      0x0003
OP_DIV      DW      0x0004
OP_MOD      DW      0x0005
OP_ABS      DW      0x0006
OP_NEG      DW      0x0007

; Handy signed constants
K_M1        DW      0xFFFF      ; -1
K_M2        DW      0xFFFE      ; -2
K_2         DW      0x0002
K_3         DW      0x0003
K_10        DW      0x000A
K_100       DW      0x0064
K_200       DW      0x00C8
K_400       DW      0x0190
K_1234      DW      0x04D2
K_N1234     DW      0xFB2E      ; -1234 (two's comp)
K_30000     DW      0x7530
K_10000     DW      0x2710
K_ZERO      DW      0x0000

; --------------------------------------------
; CODE
; --------------------------------------------
START:
; (Optional) clear a few result slots to 0
            LOADI   0
            STORE   R_TMP
            STORE   R_TMP2

; ========= Test 1: ADD  1234 + (-1234) = 0, no ovf =========
            LOADI   K_1234
            LOAD    @
            OUT     0x0091          ; A = 1234
            LOADI   K_N1234
            LOAD    @
            OUT     0x0092          ; B = -1234
            LOADI   OP_ADD
            LOAD    @
            OUT     0x0090          ; CONTROL = ADD

            IN      0x0093
            STORE   R_ADD1_LO
            IN      0x0094
            STORE   R_ADD1_HI
            IN      0x0095
            STORE   R_ADD1_STS      ; Expect: LO=0x0000, HI=0x0000, STS: no flags

; ========= Test 2: SUB  2 - 3 = -1, no ovf =================
            LOADI   K_2
            LOAD    @
            OUT     0x0091          ; A = 2
            LOADI   K_3
            LOAD    @
            OUT     0x0092          ; B = 3
            LOADI   OP_SUB
            LOAD    @
            OUT     0x0090          ; CONTROL = SUB

            IN      0x0093
            STORE   R_SUB1_LO       ; Expect: 0xFFFF (-1)
            IN      0x0094
            STORE   R_SUB1_HI       ; 0x0000
            IN      0x0095
            STORE   R_SUB1_STS      ; no flags

; ========= Test 3: MUL  400 * 200 = 80000 -> overflow ======
; Signed 16-bit range is -32768..32767; 80000 exceeds -> OVF=1.
            LOADI   K_400
            LOAD    @
            OUT     0x0091          ; A = 400
            LOADI   K_200
            LOAD    @
            OUT     0x0092          ; B = 200
            LOADI   OP_MUL
            LOAD    @
            OUT     0x0090          ; CONTROL = MUL

            IN      0x0093
            STORE   R_MUL1_LO       ; low 16 of 80000 = 0x38A0
            IN      0x0094
            STORE   R_MUL1_HI       ; high 16 of 80000 = 0x0001
            IN      0x0095
            STORE   R_MUL1_STS      ; Expect: OVF bit set

; ========= Test 4: DIV  100 / 3 => QUOT=33, REM=1 ==========
            LOADI   K_100
            LOAD    @
            OUT     0x0091          ; A = 100
            LOADI   K_3
            LOAD    @
            OUT     0x0092          ; B = 3
            LOADI   OP_DIV
            LOAD    @
            OUT     0x0090          ; CONTROL = DIV

            IN      0x0093
            STORE   R_DIV1_Q        ; Expect: 33 (0x0021)
            IN      0x0094
            STORE   R_DIV1_R        ; Expect: 1  (0x0001)
            IN      0x0095
            STORE   R_DIV1_STS      ; no flags

; ========= Test 5: MOD  100 mod 3 => QUOT=33, REM=1 ========
; (Peripheral writes quot to LO and rem to HI for DIV/MOD path)
            LOADI   K_100
            LOAD    @
            OUT     0x0091
            LOADI   K_3
            LOAD    @
            OUT     0x0092
            LOADI   OP_MOD
            LOAD    @
            OUT     0x0090          ; CONTROL = MOD

            IN      0x0093
            STORE   R_MOD1_Q        ; 33
            IN      0x0094
            STORE   R_MOD1_R        ; 1
            IN      0x0095
            STORE   R_MOD1_STS      ; no flags

; ========= Test 6: DIV by zero: 10 / 0  ====================
            LOADI   K_10
            LOAD    @
            OUT     0x0091          ; A = 10
            LOADI   K_ZERO
            LOAD    @
            OUT     0x0092          ; B = 0
            LOADI   OP_DIV
            LOAD    @
            OUT     0x0090

            IN      0x0093
            STORE   R_DBZ_Q         ; undefined/unchanged per your RTL; record it
            IN      0x0094
            STORE   R_DBZ_R
            IN      0x0095
            STORE   R_DBZ_STS       ; Expect: DIV_BY_ZERO bit set

; ========= Test 7: ABS(-1234) ===============================
            LOADI   K_N1234
            LOAD    @
            OUT     0x0091          ; A = -1234
            LOADI   OP_ABS
            LOAD    @
            OUT     0x0090          ; CONTROL = ABS (B ignored)

            IN      0x0093
            STORE   R_ABS1_LO       ; Expect: 1234 (0x04D2)
            IN      0x0094
            STORE   R_ABS1_HI       ; 0x0000
            IN      0x0095
            STORE   R_ABS1_STS      ; no flags

; ========= Test 8: NEG(2) = -2 ==============================
            LOADI   K_2
            LOAD    @
            OUT     0x0091          ; A = 2
            LOADI   OP_NEG
            LOAD    @
            OUT     0x0090          ; CONTROL = NEG

            IN      0x0093
            STORE   R_NEG1_LO       ; Expect: 0xFFFE (-2)
            IN      0x0094
            STORE   R_NEG1_HI       ; 0x0000
            IN      0x0095
            STORE   R_NEG1_STS      ; no flags

; ========= Test 9: ADD overflow: 30000 + 10000 = 40000 =====
; Signed overflow expected, LO = 40000 mod 65536 = 0x9C40
            LOADI   K_30000
            LOAD    @
            OUT     0x0091          ; A = 30000
            LOADI   K_10000
            LOAD    @
            OUT     0x0092          ; B = 10000
            LOADI   OP_ADD
            LOAD    @
            OUT     0x0090

            IN      0x0093
            STORE   R_ADD_OV_LO     ; 0x9C40
            IN      0x0094
            STORE   R_ADD_OV_HI     ; 0x0000
            IN      0x0095
            STORE   R_ADD_OV_STS    ; Expect: OVERFLOW bit set

; ========= Done: spin here =================================
DONE:       JUMP    DONE


; --------------------------------------------
; DATA / RESULT SLOTS (RAM)
; --------------------------------------------
R_TMP       DW      0
R_TMP2      DW      0

; Test 1: ADD 1234 + (-1234)
R_ADD1_LO   DW      0
R_ADD1_HI   DW      0
R_ADD1_STS  DW      0

; Test 2: SUB 2 - 3
R_SUB1_LO   DW      0
R_SUB1_HI   DW      0
R_SUB1_STS  DW      0

; Test 3: MUL 400 * 200
R_MUL1_LO   DW      0
R_MUL1_HI   DW      0
R_MUL1_STS  DW      0

; Test 4: DIV 100 / 3
R_DIV1_Q    DW      0
R_DIV1_R    DW      0
R_DIV1_STS  DW      0

; Test 5: MOD 100 mod 3
R_MOD1_Q    DW      0
R_MOD1_R    DW      0
R_MOD1_STS  DW      0

; Test 6: DIV by zero
R_DBZ_Q     DW      0
R_DBZ_R     DW      0
R_DBZ_STS   DW      0

; Test 7: ABS(-1234)
R_ABS1_LO   DW      0
R_ABS1_HI   DW      0
R_ABS1_STS  DW      0

; Test 8: NEG(2)
R_NEG1_LO   DW      0
R_NEG1_HI   DW      0
R_NEG1_STS  DW      0

; Test 9: ADD overflow
R_ADD_OV_LO DW      0
R_ADD_OV_HI DW      0
R_ADD_OV_STS DW     0

