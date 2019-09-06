; generated by Component: ARM Compiler 5.06 update 5 (build 528) Tool: ArmCC [4d3621]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -o.\_build\system_nrf51.o --depend=.\_build\system_nrf51.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\.. -I.\RTE\_nrf51422_xxac -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_DeviceFamilyPack\8.3.1\Device\Include -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_Drivers\4.0.0-2.alpha\delay -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_Drivers\4.0.0-2.alpha\hal -IC:\Keil_v5\ARM\PACK\NordicSemiconductor\nRF_Examples\11.0.0-2.alpha\bsp -D__MICROLIB -D__UVISION_VERSION=524 -D_RTE_ -DNRF51 -DBSP_DEFINES_ONLY -DBOARD_PCA10028 -DNRF51 --omf_browse=.\_build\system_nrf51.crf RTE\Device\nRF51422_xxAC\system_nrf51.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.SystemCoreClockUpdate||, CODE, READONLY, ALIGN=2

SystemCoreClockUpdate PROC
        LDR      r1,|L1.12|
        LDR      r0,|L1.8|
        STR      r0,[r1,#0]  ; SystemCoreClock
        BX       lr
        ENDP

|L1.8|
        DCD      0x00f42400
|L1.12|
        DCD      ||.data||

        AREA ||i.SystemInit||, CODE, READONLY, ALIGN=2

SystemInit PROC
        PUSH     {r4,lr}
        BL       is_manual_peripheral_setup_needed
        CMP      r0,#0
        BEQ      |L2.22|
        LDR      r1,|L2.68|
        LDR      r0,|L2.64|
        STR      r0,[r1,#4]
        ASRS     r0,r1,#15
        LDR      r1,|L2.72|
        STR      r0,[r1,#0x18]
|L2.22|
        LDR      r0,|L2.76|
        LDRH     r1,[r0,#0x20]
        UXTB     r1,r1
        CMP      r1,#1
        BNE      |L2.62|
        LDRH     r1,[r0,#0x24]
        LSLS     r1,r1,#28
        BNE      |L2.62|
        LDRH     r1,[r0,#0x28]
        LSLS     r1,r1,#24
        LSRS     r1,r1,#28
        CMP      r1,#4
        BNE      |L2.62|
        LDRH     r0,[r0,#0x2c]
        LSLS     r0,r0,#24
        LSRS     r0,r0,#28
        BNE      |L2.62|
        LDR      r1,|L2.80|
        MOVS     r0,#1
        STR      r0,[r1,#8]
|L2.62|
        POP      {r4,pc}
        ENDP

|L2.64|
        DCD      0xc007ffdf
|L2.68|
        DCD      0x40000500
|L2.72|
        DCD      0x40006c00
|L2.76|
        DCD      0xf0000fc0
|L2.80|
        DCD      0x40000600

        AREA ||i.is_manual_peripheral_setup_needed||, CODE, READONLY, ALIGN=2

is_manual_peripheral_setup_needed PROC
        LDR      r0,|L3.68|
        LDRH     r1,[r0,#0x20]
        UXTB     r1,r1
        CMP      r1,#1
        BNE      |L3.58|
        LDRH     r1,[r0,#0x24]
        LSLS     r1,r1,#28
        BNE      |L3.58|
        LDRH     r1,[r0,#0x28]
        LSLS     r1,r1,#24
        LSRS     r2,r1,#28
        BNE      |L3.32|
        LDRH     r2,[r0,#0x2c]
        LSLS     r2,r2,#24
        LSRS     r2,r2,#28
        BEQ      |L3.62|
|L3.32|
        LSRS     r1,r1,#28
        CMP      r1,#1
        BNE      |L3.46|
        LDRH     r2,[r0,#0x2c]
        LSLS     r2,r2,#24
        LSRS     r2,r2,#28
        BEQ      |L3.62|
|L3.46|
        CMP      r1,#3
        BNE      |L3.58|
        LDRH     r0,[r0,#0x2c]
        LSLS     r0,r0,#24
        LSRS     r0,r0,#28
        BEQ      |L3.62|
|L3.58|
        MOVS     r0,#0
        BX       lr
|L3.62|
        MOVS     r0,#1
        BX       lr
        ENDP

        DCW      0x0000
|L3.68|
        DCD      0xf0000fc0

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.data||, DATA, ALIGN=2

SystemCoreClock
||__tagsym$$used||
        DCD      0x00f42400

;*** Start embedded assembler ***

#line 1 "RTE\\Device\\nRF51422_xxAC\\system_nrf51.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___14_system_nrf51_c_5d646a67____REV16|
#line 388 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.5.0\\CMSIS\\Include\\cmsis_armcc.h"
|__asm___14_system_nrf51_c_5d646a67____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___14_system_nrf51_c_5d646a67____REVSH|
#line 402
|__asm___14_system_nrf51_c_5d646a67____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT SystemCoreClockUpdate [CODE]
        EXPORT SystemInit [CODE]
        EXPORT SystemCoreClock [DATA,SIZE=4]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]

        KEEP is_manual_peripheral_setup_needed
        KEEP ||__tagsym$$used||

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