; SimpleSubAndStore.asm
; Load 20, subtract contents of 0x1F, store to 0x20, then loop forever.

ORG     0
Start:      LOADI   20          ; AC = 20
            SUB     Subtrahend  ; AC = 20 - [0x001F]
            STORE   Result      ; [0x0020] = AC

Loop:       JUMP    Loop        ; Infinite loop

ORG     &H001F
Subtrahend: DW      30          ; Initialize [0x001F] with a value > 25

            ORG     &H0020
Result:     DW      0           ; Storage at [0x0020]
