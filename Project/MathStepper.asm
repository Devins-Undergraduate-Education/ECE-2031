; MathStepper.asm
; ------------------------------------------------------------------
; Demo program for the DE10 SCOMP platform that walks through a
; series of hardware-accelerated math operations using the
; SCOMP_Math peripheral (base I/O 0x090).
;
; Usage
;   * KEY0 is wired to the system reset (active-low). Tap KEY0 to
;     restart the demo at step 0.
;   * Toggle SW0 to advance to the next step. Each transition
;     (0->1 or 1->0) moves the sequence forward.
;
; Display conventions
;   * HEX1 shows the upper word of the latest math result.
;   * HEX0 shows the lower word (quotient for DIV, low product for MUL).
;   * LEDs mirror the STATUS register (bit0 READY, bit1 OVERFLOW,
;     bit2 DIV_BY_ZERO) so you can spot exceptional cases quickly.
;
; Step sequence (small operands keep every display within six hex digits)
;   0: ADD  0x0100 + 0x0020  -> 0x0120
;   1: SUB  0x00F0 - 0x0028  -> 0x00C8
;   2: MUL  0x000F * 0x000C  -> 0x00B4 (low word)
;   3: DIV  0x012C / 0x000A  -> HEX1 remainder, HEX0 quotient
;   4: MOD  0x012D % 0x000A  -> HEX1 remainder, HEX0 quotient
;   5: ABS  |-0x0045|        -> 0x0045
;   6: NEG  -(0x0025)        -> 0xFFDB
;   7: MIN  min(0x0042, 0x0019)
;   8: MAX  max(0x0034, 0x005A)
; ------------------------------------------------------------------

                ORG     0

Start:
                ; Capture initial state of the step-control switch (SW0)
                IN      Switches
                STORE   SwitchShadow
                LOAD    SwitchShadow
                AND     StepMask
                STORE   PrevStepBit

                ; Begin at step 0 and immediately show the first result
                LOADI   0
                STORE   StageIndex
                CALL    PerformStage

MainLoop:
                CALL    WaitStepToggle
                CALL    AdvanceStage
                CALL    PerformStage
                JUMP    MainLoop

; ------------------------------------------------------------------
; Subroutines
; ------------------------------------------------------------------

; WaitStepToggle ----------------------------------------------------
; Blocks until the selected switch bit changes state.
WaitStepToggle:
                IN      Switches
                STORE   SwitchShadow
                LOAD    SwitchShadow
                AND     StepMask
                STORE   StepCurrent

                LOAD    StepCurrent
                XOR     PrevStepBit
                JZERO   WaitStepToggle   ; no change yet -> keep waiting

                ; tentative change detected - debounce before accepting
                CALL    DebounceDelay
                IN      Switches
                STORE   SwitchShadow
                LOAD    SwitchShadow
                AND     StepMask
                STORE   StepCurrent

                LOAD    StepCurrent
                XOR     PrevStepBit
                JZERO   WaitStepToggle   ; bounced back -> ignore

                LOAD    StepCurrent
                STORE   PrevStepBit
                RETURN

; DebounceDelay ------------------------------------------------------
; Busy-wait loop to let the switch settle before re-sampling.
DebounceDelay:
                LOAD    DebouncePreset
                STORE   DebounceCounter
DebounceLoop:
                LOAD    DebounceCounter
                ADDI    -1
                STORE   DebounceCounter
                JNEG    DebounceDone
                JUMP    DebounceLoop
DebounceDone:   RETURN

; AdvanceStage ------------------------------------------------------
; Increments StageIndex and wraps back to zero after the final stage.
AdvanceStage:
                LOAD    StageIndex
                ADDI    1
                STORE   StageIndex

                LOAD    StageIndex
                SUB     StageLimit
                JNEG    StageOk          ; still within range

                LOADI   0
                STORE   StageIndex
StageOk:        RETURN

; PerformStage ------------------------------------------------------
; Dispatches to the math operation associated with the current stage.
PerformStage:
                LOAD    StageIndex
                STORE   StageScratch

                LOAD    StageScratch
                JZERO   DoAdd

                LOAD    StageScratch
                ADDI    -1
                JZERO   DoSub

                LOAD    StageScratch
                ADDI    -2
                JZERO   DoMul

                LOAD    StageScratch
                ADDI    -3
                JZERO   DoDiv

                LOAD    StageScratch
                ADDI    -4
                JZERO   DoMod

                LOAD    StageScratch
                ADDI    -5
                JZERO   DoAbs

                LOAD    StageScratch
                ADDI    -6
                JZERO   DoNeg

                LOAD    StageScratch
                ADDI    -7
                JZERO   DoMin

                LOAD    StageScratch
                ADDI    -8
                JZERO   DoMax

                RETURN                  ; default (should not hit)

; Stage handlers ----------------------------------------------------

DoAdd:
                LOAD    AddOpA
                STORE   PendingOpA
                LOAD    AddOpB
                STORE   PendingOpB
                LOAD    OP_ADD
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoSub:
                LOAD    SubOpA
                STORE   PendingOpA
                LOAD    SubOpB
                STORE   PendingOpB
                LOAD    OP_SUB
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoMul:
                LOAD    MulOpA
                STORE   PendingOpA
                LOAD    MulOpB
                STORE   PendingOpB
                LOAD    OP_MUL
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoDiv:
                LOAD    DivOpA
                STORE   PendingOpA
                LOAD    DivOpB
                STORE   PendingOpB
                LOAD    OP_DIV
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoMod:
                LOAD    ModOpA
                STORE   PendingOpA
                LOAD    ModOpB
                STORE   PendingOpB
                LOAD    OP_MOD
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoAbs:
                LOAD    AbsOpA
                STORE   PendingOpA
                LOAD    ZeroWord
                STORE   PendingOpB
                LOAD    OP_ABS
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoNeg:
                LOAD    NegOpA
                STORE   PendingOpA
                LOAD    ZeroWord
                STORE   PendingOpB
                LOAD    OP_NEG
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoMin:
                LOAD    MinOpA
                STORE   PendingOpA
                LOAD    MinOpB
                STORE   PendingOpB
                LOAD    OP_MIN
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

DoMax:
                LOAD    MaxOpA
                STORE   PendingOpA
                LOAD    MaxOpB
                STORE   PendingOpB
                LOAD    OP_MAX
                STORE   PendingOpcode
                CALL    RunMathOp
                CALL    UpdateDisplays
                RETURN

; RunMathOp ---------------------------------------------------------
; Writes operands/opcode to SCOMP_Math, then latches the results.
RunMathOp:
                LOAD    PendingOpA
                OUT     MathOpA
                LOAD    PendingOpB
                OUT     MathOpB
                LOAD    PendingOpcode
                OUT     MathCtrl

                IN      MathResLo
                STORE   ResultLo
                IN      MathResHi
                STORE   ResultHi
                IN      MathStatus
                STORE   StatusWord
                RETURN

; UpdateDisplays ----------------------------------------------------
; Sends the latest math outputs to the HEX displays and LEDs.
UpdateDisplays:
                LOAD    ResultHi
                OUT     Hex1
                LOAD    ResultLo
                OUT     Hex0

                LOAD    StatusWord
                OUT     LEDs
                RETURN

; ------------------------------------------------------------------
; Data & constants
; ------------------------------------------------------------------

StageIndex:     DW      0
PrevStepBit:    DW      0
SwitchShadow:   DW      0
StepCurrent:    DW      0
StageScratch:   DW      0
StageLimit:     DW      NumStages        ; constant NumStages value for comparisons
PendingOpA:     DW      0
PendingOpB:     DW      0
PendingOpcode:  DW      0
ResultLo:       DW      0
ResultHi:       DW      0
StatusWord:     DW      0
ZeroWord:       DW      0
DebounceCounter: DW      0

StepMask:       DW      &H0001          ; use SW0 by default

AddOpA:         DW      &H0100
AddOpB:         DW      &H0020
SubOpA:         DW      &H00F0
SubOpB:         DW      &H0028
MulOpA:         DW      &H000F
MulOpB:         DW      &H000C
DivOpA:         DW      &H012C
DivOpB:         DW      &H000A
ModOpA:         DW      &H012D
ModOpB:         DW      &H000A
AbsOpA:         DW      &HFFBB
NegOpA:         DW      &H0025
MinOpA:         DW      &H0042
MinOpB:         DW      &H0019
MaxOpA:         DW      &H0034
MaxOpB:         DW      &H005A
DebouncePreset: DW      1500

OP_ADD:         DW      1
OP_SUB:         DW      2
OP_MUL:         DW      3
OP_DIV:         DW      4
OP_MOD:         DW      5
OP_ABS:         DW      6
OP_NEG:         DW      7
OP_MIN:         DW      8
OP_MAX:         DW      9

NumStages       EQU     9

; I/O addresses -----------------------------------------------------
Switches        EQU     000
LEDs            EQU     001
Hex0            EQU     004
Hex1            EQU     005

MathCtrl        EQU     &H090
MathOpA         EQU     &H091
MathOpB         EQU     &H092
MathResLo       EQU     &H093
MathResHi       EQU     &H094
MathStatus      EQU     &H095
