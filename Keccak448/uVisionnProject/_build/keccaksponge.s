; generated by Component: ARM Compiler 5.06 update 5 (build 528) Tool: ArmCC [4d3621]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -o.\_build\keccaksponge.o --depend=.\_build\keccaksponge.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\.. -I.\RTE\_nrf51422_xxac -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_DeviceFamilyPack\8.3.1\Device\Include -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_Drivers\4.0.0-2.alpha\delay -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_Drivers\4.0.0-2.alpha\hal -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_Examples\11.0.0-2.alpha\bsp -D__MICROLIB -D__UVISION_VERSION=524 -D_RTE_ -DNRF51 -DBSP_DEFINES_ONLY -DBOARD_PCA10028 -DNRF51 --omf_browse=.\_build\keccaksponge.crf RTE\_nrf51422_xxac\KeccakSponge.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.Absorb||, CODE, READONLY, ALIGN=1

Absorb PROC
        PUSH     {r4-r7,lr}
        PUSH     {r0-r4}
        SUB      sp,sp,#0x10
        LDR      r4,[sp,#0x10]
        ADDS     r4,r4,#0xff
        ADDS     r4,r4,#0x81
        LDRB     r0,[r4,#0x10]
        LSLS     r0,r0,#29
        BNE      |L1.24|
        LDR      r0,[r4,#0x18]
        CMP      r0,#0
        BEQ      |L1.30|
|L1.24|
        MOVS     r0,#1
|L1.26|
        ADD      sp,sp,#0x24
        POP      {r4-r7,pc}
|L1.30|
        MOVS     r0,#0
        MOV      r1,r0
        B        |L1.494|
|L1.36|
        LDR      r3,[r4,#0x10]
        CMP      r3,#0
        BNE      |L1.268|
        LDR      r1,[r4,#8]
        STR      r1,[sp,#8]
        LDR      r5,[sp,#0x18]
        LDR      r0,[sp,#0x1c]
        MOVS     r2,#0
        SUBS     r1,r5,r1
        SBCS     r0,r0,r2
|L1.56|
        BCC      |L1.268|
        LDR      r0,[sp,#8]
        LDR      r1,[sp,#0x1c]
        SUBS     r6,r5,r0
        LDR      r5,[sp,#0]
        SBCS     r1,r1,r2
        LDR      r0,[sp,#4]
        SUBS     r5,r6,r5
        SBCS     r1,r1,r0
        BCC      |L1.56|
        LDR      r3,[sp,#0]
        LDR      r0,[sp,#0x18]
        LDR      r5,[sp,#4]
        LDR      r1,[sp,#0x1c]
        SUBS     r0,r0,r3
        SBCS     r1,r1,r5
        MOVS     r3,#0
        LDR      r2,[sp,#8]
        BL       __aeabi_uldivmod
        MOV      r5,r0
        MOV      r6,r1
        LDR      r1,[sp,#4]
        LDR      r0,[sp,#0]
        LSLS     r1,r1,#29
        LSRS     r0,r0,#3
        ORRS     r0,r0,r1
        LDR      r1,[sp,#0x14]
        ADDS     r7,r0,r1
        MOVS     r1,#9
        LDR      r0,[sp,#8]
        LSLS     r1,r1,#6
        CMP      r0,r1
        BNE      |L1.166|
        MOVS     r1,#0
        MOV      r0,r1
        STR      r1,[sp,#8]
        STR      r1,[sp,#0xc]
        B        |L1.158|
|L1.134|
        MOV      r1,r7
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb576bits
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        ADDS     r1,r1,#1
        MOVS     r2,#0
        ADCS     r0,r0,r2
        ADDS     r7,r7,#0x48
        STR      r1,[sp,#8]
        STR      r0,[sp,#0xc]
|L1.158|
        SUBS     r1,r1,r5
        SBCS     r0,r0,r6
        BCC      |L1.134|
        B        |L1.474|
|L1.166|
        MOVS     r1,#0xd
        LSLS     r1,r1,#6
        CMP      r0,r1
        BNE      |L1.218|
        MOVS     r1,#0
        STR      r1,[sp,#8]
        STR      r1,[sp,#0xc]
        B        |L1.206|
|L1.182|
        MOV      r1,r7
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb832bits
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        ADDS     r1,r1,#1
        MOVS     r2,#0
        ADCS     r0,r0,r2
        ADDS     r7,r7,#0x68
        STR      r1,[sp,#8]
        STR      r0,[sp,#0xc]
|L1.206|
        MOV      r0,r1
        LDR      r1,[sp,#0xc]
        SUBS     r0,r0,r5
        SBCS     r1,r1,r6
        BCC      |L1.182|
        B        |L1.474|
|L1.218|
        MOVS     r1,#1
        LSLS     r1,r1,#10
        CMP      r0,r1
        BNE      |L1.270|
        MOVS     r1,#0
        MOV      r0,r1
        STR      r1,[sp,#8]
        STR      r1,[sp,#0xc]
        B        |L1.260|
|L1.236|
        MOV      r1,r7
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb1024bits
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        ADDS     r1,r1,#1
        MOVS     r2,#0
        ADCS     r0,r0,r2
        ADDS     r7,r7,#0x80
        STR      r1,[sp,#8]
        STR      r0,[sp,#0xc]
|L1.260|
        SUBS     r1,r1,r5
        SBCS     r0,r0,r6
        BCC      |L1.236|
        B        |L1.474|
|L1.268|
        B        |L1.500|
|L1.270|
        MOVS     r1,#0x11
        LSLS     r1,r1,#6
        CMP      r0,r1
        BNE      |L1.320|
        MOVS     r1,#0
        MOV      r0,r1
        STR      r1,[sp,#8]
        STR      r1,[sp,#0xc]
        B        |L1.312|
|L1.288|
        MOV      r1,r7
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb1088bits
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        ADDS     r1,r1,#1
        MOVS     r2,#0
        ADCS     r0,r0,r2
        ADDS     r7,r7,#0x88
        STR      r1,[sp,#8]
        STR      r0,[sp,#0xc]
|L1.312|
        SUBS     r1,r1,r5
        SBCS     r0,r0,r6
        BCC      |L1.288|
        B        |L1.474|
|L1.320|
        MOVS     r1,#9
        LSLS     r1,r1,#7
        CMP      r0,r1
        BNE      |L1.372|
        MOVS     r0,#0
        STR      r0,[sp,#8]
        STR      r0,[sp,#0xc]
        B        |L1.360|
|L1.336|
        MOV      r1,r7
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb1152bits
        LDR      r0,[sp,#8]
        LDR      r1,[sp,#0xc]
        ADDS     r0,r0,#1
        MOVS     r2,#0
        ADCS     r1,r1,r2
        ADDS     r7,r7,#0x90
        STR      r1,[sp,#0xc]
        STR      r0,[sp,#8]
|L1.360|
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        SUBS     r1,r1,r5
        SBCS     r0,r0,r6
        BCC      |L1.336|
        B        |L1.474|
|L1.372|
        MOVS     r1,#0x15
        LSLS     r1,r1,#6
        CMP      r0,r1
        BNE      |L1.424|
        MOVS     r0,#0
        STR      r0,[sp,#8]
        STR      r0,[sp,#0xc]
        B        |L1.412|
|L1.388|
        MOV      r1,r7
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb1344bits
        LDR      r0,[sp,#8]
        LDR      r1,[sp,#0xc]
        ADDS     r0,r0,#1
        MOVS     r2,#0
        ADCS     r1,r1,r2
        ADDS     r7,r7,#0xa8
        STR      r1,[sp,#0xc]
        STR      r0,[sp,#8]
|L1.412|
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        SUBS     r1,r1,r5
        SBCS     r0,r0,r6
        BCC      |L1.388|
        B        |L1.474|
|L1.424|
        MOVS     r1,#0
        MOV      r0,r1
        STR      r1,[sp,#8]
        STR      r1,[sp,#0xc]
        B        |L1.468|
|L1.434|
        LDR      r0,[r4,#8]
        MOV      r1,r7
        LSRS     r2,r0,#6
        LDR      r0,[sp,#0x10]
        BL       KeccakAbsorb
        LDR      r1,[sp,#8]
        LDR      r0,[sp,#0xc]
        ADDS     r1,r1,#1
        MOVS     r2,#0
        ADCS     r0,r0,r2
        STR      r1,[sp,#8]
        STR      r0,[sp,#0xc]
        LDR      r0,[r4,#8]
        LSRS     r0,r0,#3
        ADDS     r7,r0,r7
        LDR      r0,[sp,#0xc]
|L1.468|
        SUBS     r1,r1,r5
        SBCS     r0,r0,r6
        BCC      |L1.434|
|L1.474|
        MOVS     r1,#0
        MOV      r2,r5
        MOV      r3,r6
        LDR      r0,[r4,#8]
        BL       __aeabi_lmul
        LDR      r2,[sp,#0]
        LDR      r3,[sp,#4]
        ADDS     r0,r0,r2
        ADCS     r1,r1,r3
|L1.494|
        STR      r1,[sp,#4]
        STR      r0,[sp,#0]
        B        |L1.638|
|L1.500|
        LDR      r1,[sp,#0x18]
        LDR      r0,[sp,#0]
        SUBS     r0,r1,r0
        LDR      r1,[r4,#8]
        ADDS     r2,r3,r0
        CMP      r2,r1
        BLS      |L1.516|
        SUBS     r0,r1,r3
|L1.516|
        LSLS     r5,r0,#29
        LSRS     r5,r5,#29
        SUBS     r6,r0,r5
        LDR      r0,[sp,#4]
        LDR      r1,[sp,#0]
        LSLS     r7,r0,#29
        LSRS     r0,r1,#3
        LDR      r1,[sp,#0x14]
        ORRS     r0,r0,r7
        ADDS     r1,r0,r1
        LDR      r0,[sp,#0x10]
        LSRS     r3,r3,#3
        ADDS     r0,r3,r0
        LSRS     r2,r6,#3
        ADDS     r0,r0,#0xc8
        BL       __aeabi_memcpy
        LDR      r0,[r4,#0x10]
        MOVS     r7,#0
        ADDS     r2,r0,r6
        STR      r2,[r4,#0x10]
        LDR      r1,[sp,#0]
        LDR      r0,[sp,#4]
        ADDS     r1,r1,r6
        ADCS     r0,r0,r7
        STR      r1,[sp,#0]
        STR      r0,[sp,#4]
        LDR      r0,[r4,#8]
        CMP      r2,r0
        BNE      |L1.582|
        LDR      r0,[sp,#0x10]
        BL       AbsorbQueue
|L1.582|
        CMP      r5,#0
        BEQ      |L1.638|
        MOVS     r0,#1
        LSLS     r0,r0,r5
        LDR      r2,[sp,#4]
        LDR      r1,[sp,#0]
        LSLS     r2,r2,#29
        LSRS     r1,r1,#3
        ORRS     r1,r1,r2
        LDR      r2,[sp,#0x14]
        SUBS     r0,r0,#1
        LDRB     r1,[r2,r1]
        ANDS     r1,r1,r0
        LDR      r0,[r4,#0x10]
        LSRS     r2,r0,#3
        LDR      r0,[sp,#0x10]
        ADDS     r0,r2,r0
        ADDS     r0,r0,#0xc0
        STRB     r1,[r0,#8]
        LDR      r0,[r4,#0x10]
        ADDS     r0,r0,r5
        STR      r0,[r4,#0x10]
        LDR      r1,[sp,#0]
        LDR      r0,[sp,#4]
        ADDS     r1,r1,r5
        ADCS     r0,r0,r7
        STR      r1,[sp,#0]
        STR      r0,[sp,#4]
|L1.638|
        LDR      r3,[sp,#0]
        LDR      r1,[sp,#0x18]
        LDR      r2,[sp,#0x1c]
        LDR      r0,[sp,#4]
        SUBS     r1,r3,r1
        SBCS     r0,r0,r2
        BCS      |L1.654|
        B        |L1.36|
|L1.654|
        MOVS     r0,#0
        B        |L1.26|
        ENDP


        AREA ||i.AbsorbQueue||, CODE, READONLY, ALIGN=1

AbsorbQueue PROC
        PUSH     {r4,lr}
        MOV      r4,r0
        ADDS     r4,r4,#0xff
        ADDS     r4,r4,#0x81
        MOVS     r3,#9
        MOV      r1,r0
        LDR      r2,[r4,#8]
        LSLS     r3,r3,#6
        ADDS     r1,r1,#0xc8
        CMP      r2,r3
        BNE      |L2.28|
        BL       KeccakAbsorb576bits
        B        |L2.104|
|L2.28|
        MOVS     r3,#0xd
        LSLS     r3,r3,#6
        CMP      r2,r3
        BNE      |L2.42|
        BL       KeccakAbsorb832bits
        B        |L2.104|
|L2.42|
        MOVS     r3,#1
        LSLS     r3,r3,#10
        CMP      r2,r3
        BNE      |L2.56|
        BL       KeccakAbsorb1024bits
        B        |L2.104|
|L2.56|
        MOVS     r3,#0x11
        LSLS     r3,r3,#6
        CMP      r2,r3
        BNE      |L2.70|
        BL       KeccakAbsorb1088bits
        B        |L2.104|
|L2.70|
        MOVS     r3,#9
        LSLS     r3,r3,#7
        CMP      r2,r3
        BNE      |L2.84|
        BL       KeccakAbsorb1152bits
        B        |L2.104|
|L2.84|
        MOVS     r3,#0x15
        LSLS     r3,r3,#6
        CMP      r2,r3
        BNE      |L2.98|
        BL       KeccakAbsorb1344bits
        B        |L2.104|
|L2.98|
        LSRS     r2,r2,#6
        BL       KeccakAbsorb
|L2.104|
        MOVS     r0,#0
        STR      r0,[r4,#0x10]
        POP      {r4,pc}
        ENDP


        AREA ||i.InitSponge||, CODE, READONLY, ALIGN=1

InitSponge PROC
        PUSH     {r3-r7,lr}
        MOV      r6,r0
        MOV      r7,r2
        MOV      r5,r1
        MOVS     r0,#0x19
        ADDS     r1,r1,r7
        LSLS     r0,r0,#6
        CMP      r1,r0
        BNE      |L3.30|
        CMP      r5,#0
        BEQ      |L3.30|
        CMP      r5,r0
        BCS      |L3.30|
        LSLS     r0,r5,#26
        BEQ      |L3.34|
|L3.30|
        MOVS     r0,#1
        POP      {r3-r7,pc}
|L3.34|
        BL       KeccakInitialize
        MOV      r4,r6
        ADDS     r4,r4,#0xff
        ADDS     r4,r4,#0x81
        STR      r7,[r4,#0xc]
        STR      r5,[r4,#8]
        MOVS     r5,#0
        MOV      r0,r6
        STR      r5,[r4,#0x14]
        BL       KeccakInitializeState
        MOV      r0,r6
        MOVS     r1,#0xc0
        ADDS     r0,r0,#0xc8
        BL       __aeabi_memclr4
        STR      r5,[r4,#0x10]
        STR      r5,[r4,#0x18]
        MOVS     r0,#0
        STR      r5,[r4,#0x1c]
        POP      {r3-r7,pc}
        ENDP


        AREA ||i.PadAndSwitchToSqueezingPhase||, CODE, READONLY, ALIGN=1

PadAndSwitchToSqueezingPhase PROC
        PUSH     {r3-r7,lr}
        MOV      r4,r0
        MOV      r5,r0
        ADDS     r4,r4,#0xff
        ADDS     r4,r4,#0x81
        LDR      r0,[r4,#0x10]
        MOV      r1,r5
        ADDS     r1,r1,#0xc8
        LDR      r3,[r4,#8]
        ADDS     r2,r0,#1
        MOVS     r6,#1
        STR      r1,[sp,#0]
        CMP      r2,r3
        BNE      |L4.66|
        LSRS     r1,r0,#3
        ADDS     r1,r1,r5
        ADDS     r1,r1,#0xc0
        LSLS     r3,r0,#29
        LDRB     r2,[r1,#8]
        LSRS     r3,r3,#29
        MOV      r0,r6
        LSLS     r0,r0,r3
        ORRS     r2,r2,r0
        STRB     r2,[r1,#8]
        MOV      r0,r5
        BL       AbsorbQueue
        LDR      r0,[r4,#8]
        LSRS     r1,r0,#3
        LDR      r0,[sp,#0]
        BL       __aeabi_memclr4
        B        |L4.104|
|L4.66|
        ADDS     r0,r0,#7
        LSRS     r1,r3,#3
        LSRS     r0,r0,#3
        SUBS     r1,r1,r0
        ADDS     r0,r0,r5
        ADDS     r0,r0,#0xc8
        BL       __aeabi_memclr
        LDR      r2,[r4,#0x10]
        LSRS     r0,r2,#3
        ADDS     r0,r0,r5
        ADDS     r0,r0,#0xc0
        LSLS     r3,r2,#29
        LDRB     r1,[r0,#8]
        LSRS     r3,r3,#29
        MOV      r2,r6
        LSLS     r2,r2,r3
        ORRS     r1,r1,r2
        STRB     r1,[r0,#8]
|L4.104|
        LDR      r1,[r4,#8]
        MOV      r3,r6
        SUBS     r1,r1,#1
        LSRS     r0,r1,#3
        ADDS     r0,r0,r5
        ADDS     r0,r0,#0xc0
        LSLS     r1,r1,#29
        LDRB     r2,[r0,#8]
        LSRS     r1,r1,#29
        LSLS     r3,r3,r1
        ORRS     r2,r2,r3
        STRB     r2,[r0,#8]
        MOV      r0,r5
        BL       AbsorbQueue
        MOVS     r7,#1
        LDR      r0,[r4,#8]
        LSLS     r7,r7,#10
        CMP      r0,r7
        BNE      |L4.156|
        MOV      r0,r5
        LDR      r1,[sp,#0]
        BL       KeccakExtract1024bits
        STR      r7,[r4,#0x1c]
        B        |L4.170|
|L4.156|
        LSRS     r2,r0,#6
        MOV      r0,r5
        LDR      r1,[sp,#0]
        BL       KeccakExtract
        LDR      r0,[r4,#8]
        STR      r0,[r4,#0x1c]
|L4.170|
        STR      r6,[r4,#0x18]
        POP      {r3-r7,pc}
        ENDP


        AREA ||i.Squeeze||, CODE, READONLY, ALIGN=1

Squeeze PROC
        PUSH     {r4-r7,lr}
        PUSH     {r0-r4}
        SUB      sp,sp,#8
        LDR      r5,[sp,#8]
        ADDS     r5,r5,#0xff
        ADDS     r5,r5,#0x81
        LDR      r0,[r5,#0x18]
        CMP      r0,#0
        BNE      |L5.24|
        LDR      r0,[sp,#8]
        BL       PadAndSwitchToSqueezingPhase
|L5.24|
        LDR      r0,[sp,#0x10]
        LSLS     r0,r0,#29
        BEQ      |L5.36|
        MOVS     r0,#1
|L5.32|
        ADD      sp,sp,#0x1c
        POP      {r4-r7,pc}
|L5.36|
        MOVS     r6,#0
        LDR      r0,[sp,#8]
        MOV      r7,r6
        ADDS     r0,r0,#0xc8
        STR      r0,[sp,#0]
        B        |L5.160|
|L5.48|
        LDR      r0,[r5,#0x1c]
        CMP      r0,#0
        BNE      |L5.96|
        LDR      r0,[sp,#8]
        BL       KeccakPermutation
        MOVS     r4,#1
        LDR      r0,[r5,#8]
        LSLS     r4,r4,#10
        CMP      r0,r4
        BNE      |L5.82|
        LDR      r1,[sp,#0]
        LDR      r0,[sp,#8]
        BL       KeccakExtract1024bits
        STR      r4,[r5,#0x1c]
        B        |L5.96|
|L5.82|
        LSRS     r2,r0,#6
        LDR      r1,[sp,#0]
        LDR      r0,[sp,#8]
        BL       KeccakExtract
        LDR      r0,[r5,#8]
        STR      r0,[r5,#0x1c]
|L5.96|
        LDR      r0,[sp,#0x10]
        LDR      r4,[r5,#0x1c]
        LDR      r1,[sp,#0x14]
        SUBS     r0,r0,r6
        SBCS     r1,r1,r7
        MOV      r12,r0
        MOVS     r2,#0
        SUBS     r0,r0,r4
        MOV      r3,r4
        SBCS     r1,r1,r2
        BCS      |L5.120|
        MOV      r4,r12
|L5.120|
        LDR      r0,[r5,#8]
        LSRS     r2,r4,#3
        SUBS     r0,r0,r3
        LSRS     r1,r0,#3
        LDR      r0,[sp,#8]
        LSLS     r3,r7,#29
        ADDS     r1,r1,r0
        LSRS     r0,r6,#3
        ORRS     r0,r0,r3
        LDR      r3,[sp,#0xc]
        ADDS     r1,r1,#0xc8
        ADDS     r0,r0,r3
        BL       __aeabi_memcpy
        LDR      r0,[r5,#0x1c]
        SUBS     r0,r0,r4
        STR      r0,[r5,#0x1c]
        MOVS     r0,#0
        ADDS     r6,r6,r4
        ADCS     r7,r7,r0
|L5.160|
        LDR      r1,[sp,#0x10]
        LDR      r0,[sp,#0x14]
        MOV      r2,r7
        SUBS     r1,r6,r1
        SBCS     r2,r2,r0
        BCC      |L5.48|
        MOVS     r0,#0
        B        |L5.32|
        ENDP


        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        EXPORT Absorb [CODE]
        EXPORT AbsorbQueue [CODE]
        EXPORT InitSponge [CODE]
        EXPORT PadAndSwitchToSqueezingPhase [CODE]
        EXPORT Squeeze [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT KeccakInitialize [CODE]
        IMPORT KeccakInitializeState [CODE]
        IMPORT __aeabi_memclr4 [CODE]
        IMPORT KeccakAbsorb576bits [CODE]
        IMPORT KeccakAbsorb832bits [CODE]
        IMPORT KeccakAbsorb1024bits [CODE]
        IMPORT KeccakAbsorb1088bits [CODE]
        IMPORT KeccakAbsorb1152bits [CODE]
        IMPORT KeccakAbsorb1344bits [CODE]
        IMPORT KeccakAbsorb [CODE]
        IMPORT __aeabi_uldivmod [CODE]
        IMPORT __aeabi_lmul [CODE]
        IMPORT __aeabi_memcpy [CODE]
        IMPORT __aeabi_memclr [CODE]
        IMPORT KeccakExtract1024bits [CODE]
        IMPORT KeccakExtract [CODE]
        IMPORT KeccakPermutation [CODE]

        ATTR FILESCOPE
        ATTR SETVALUE Tag_ABI_PCS_wchar_t,2
        ATTR SETVALUE Tag_ABI_enum_size,1
        ATTR SETVALUE Tag_ABI_optimization_goals,3
        ATTR SETSTRING Tag_conformance,"2.09"
        ATTR SETVALUE AV,18,1

        ASSERT {ENDIAN} = "little"
        ASSERT {INTER} = {TRUE}
        ASSERT {ROPI} = {FALSE}
        ASSERT {RWPI} = {FALSE}
        ASSERT {IEEE_FULL} = {FALSE}
        ASSERT {IEEE_PART} = {FALSE}
        ASSERT {IEEE_JAVA} = {FALSE}
        END
