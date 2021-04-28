# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel __osContRamRead
/* 0D68B0 800D5CB0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0D68B4 800D5CB4 3C0E8019 */  lui   $t6, %hi(__osPfsPifRam) # $t6, 0x8019
/* 0D68B8 800D5CB8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D68BC 800D5CBC 25CE6590 */  addiu $t6, %lo(__osPfsPifRam) # addiu $t6, $t6, 0x6590
/* 0D68C0 800D5CC0 240F0002 */  li    $t7, 2
/* 0D68C4 800D5CC4 AFA40060 */  sw    $a0, 0x60($sp)
/* 0D68C8 800D5CC8 AFA50064 */  sw    $a1, 0x64($sp)
/* 0D68CC 800D5CCC AFA60068 */  sw    $a2, 0x68($sp)
/* 0D68D0 800D5CD0 AFA7006C */  sw    $a3, 0x6c($sp)
/* 0D68D4 800D5CD4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0D68D8 800D5CD8 AFA0005C */  sw    $zero, 0x5c($sp)
/* 0D68DC 800D5CDC AFAE0054 */  sw    $t6, 0x54($sp)
/* 0D68E0 800D5CE0 0C034EE8 */  jal   __osSiGetAccess
/* 0D68E4 800D5CE4 AFAF0028 */   sw    $t7, 0x28($sp)
/* 0D68E8 800D5CE8 24180002 */  li    $t8, 2
/* 0D68EC 800D5CEC 3C018019 */  lui   $at, %hi(_osLastSentSiCmd) # $at, 0x8019
/* 0D68F0 800D5CF0 A0386540 */  sb    $t8, %lo(_osLastSentSiCmd)($at)
/* 0D68F4 800D5CF4 8FA40064 */  lw    $a0, 0x64($sp)
/* 0D68F8 800D5CF8 0C0357BD */  jal   __osPackRamReadData
/* 0D68FC 800D5CFC 97A5006A */   lhu   $a1, 0x6a($sp)
/* 0D6900 800D5D00 3C058019 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8019
/* 0D6904 800D5D04 24A56590 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, 0x6590
/* 0D6908 800D5D08 0C034EA8 */  jal   __osSiRawStartDma
/* 0D690C 800D5D0C 24040001 */   li    $a0, 1
/* 0D6910 800D5D10 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0D6914 800D5D14 8FA40060 */  lw    $a0, 0x60($sp)
/* 0D6918 800D5D18 00002825 */  move  $a1, $zero
/* 0D691C 800D5D1C 0C0335D4 */  jal   osRecvMesg
/* 0D6920 800D5D20 24060001 */   li    $a2, 1
.L800D5D24:
/* 0D6924 800D5D24 AFA00058 */  sw    $zero, 0x58($sp)
.L800D5D28:
/* 0D6928 800D5D28 8FA80058 */  lw    $t0, 0x58($sp)
/* 0D692C 800D5D2C 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0D6930 800D5D30 3C018019 */  lui   $at, %hi(__osPfsPifRam) # 0x8019
/* 0D6934 800D5D34 00084880 */  sll   $t1, $t0, 2
/* 0D6938 800D5D38 00290821 */  addu  $at, $at, $t1
/* 0D693C 800D5D3C 241900FF */  li    $t9, 255
/* 0D6940 800D5D40 AC396590 */  sw    $t9, %lo(__osPfsPifRam)($at) # 0x6590($at)
/* 0D6944 800D5D44 254B0001 */  addiu $t3, $t2, 1
/* 0D6948 800D5D48 29610010 */  slti  $at, $t3, 0x10
/* 0D694C 800D5D4C 1420FFF6 */  bnez  $at, .L800D5D28
/* 0D6950 800D5D50 AFAB0058 */   sw    $t3, 0x58($sp)
/* 0D6954 800D5D54 3C018019 */  lui   $at, %hi(D_801965CC) # $at, 0x8019
/* 0D6958 800D5D58 3C058019 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8019
/* 0D695C 800D5D5C AC2065CC */  sw    $zero, %lo(D_801965CC)($at)
/* 0D6960 800D5D60 24A56590 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, 0x6590
/* 0D6964 800D5D64 0C034EA8 */  jal   __osSiRawStartDma
/* 0D6968 800D5D68 00002025 */   move  $a0, $zero
/* 0D696C 800D5D6C AFA2005C */  sw    $v0, 0x5c($sp)
/* 0D6970 800D5D70 8FA40060 */  lw    $a0, 0x60($sp)
/* 0D6974 800D5D74 00002825 */  move  $a1, $zero
/* 0D6978 800D5D78 0C0335D4 */  jal   osRecvMesg
/* 0D697C 800D5D7C 24060001 */   li    $a2, 1
/* 0D6980 800D5D80 8FAD0064 */  lw    $t5, 0x64($sp)
/* 0D6984 800D5D84 3C0C8019 */  lui   $t4, %hi(__osPfsPifRam) # $t4, 0x8019
/* 0D6988 800D5D88 258C6590 */  addiu $t4, %lo(__osPfsPifRam) # addiu $t4, $t4, 0x6590
/* 0D698C 800D5D8C 11A0000C */  beqz  $t5, .L800D5DC0
/* 0D6990 800D5D90 AFAC0054 */   sw    $t4, 0x54($sp)
/* 0D6994 800D5D94 19A0000A */  blez  $t5, .L800D5DC0
/* 0D6998 800D5D98 AFA00058 */   sw    $zero, 0x58($sp)
.L800D5D9C:
/* 0D699C 800D5D9C 8FB80058 */  lw    $t8, 0x58($sp)
/* 0D69A0 800D5DA0 8FB90064 */  lw    $t9, 0x64($sp)
/* 0D69A4 800D5DA4 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0D69A8 800D5DA8 27080001 */  addiu $t0, $t8, 1
/* 0D69AC 800D5DAC 0119082A */  slt   $at, $t0, $t9
/* 0D69B0 800D5DB0 25CF0001 */  addiu $t7, $t6, 1
/* 0D69B4 800D5DB4 AFA80058 */  sw    $t0, 0x58($sp)
/* 0D69B8 800D5DB8 1420FFF8 */  bnez  $at, .L800D5D9C
/* 0D69BC 800D5DBC AFAF0054 */   sw    $t7, 0x54($sp)
.L800D5DC0:
/* 0D69C0 800D5DC0 8FAA0054 */  lw    $t2, 0x54($sp)
/* 0D69C4 800D5DC4 27A9002C */  addiu $t1, $sp, 0x2c
/* 0D69C8 800D5DC8 254C0024 */  addiu $t4, $t2, 0x24
.L800D5DCC:
/* 0D69CC 800D5DCC 89410000 */  lwl   $at, ($t2)
/* 0D69D0 800D5DD0 99410003 */  lwr   $at, 3($t2)
/* 0D69D4 800D5DD4 254A000C */  addiu $t2, $t2, 0xc
/* 0D69D8 800D5DD8 2529000C */  addiu $t1, $t1, 0xc
/* 0D69DC 800D5DDC AD21FFF4 */  sw    $at, -0xc($t1)
/* 0D69E0 800D5DE0 8941FFF8 */  lwl   $at, -8($t2)
/* 0D69E4 800D5DE4 9941FFFB */  lwr   $at, -5($t2)
/* 0D69E8 800D5DE8 AD21FFF8 */  sw    $at, -8($t1)
/* 0D69EC 800D5DEC 8941FFFC */  lwl   $at, -4($t2)
/* 0D69F0 800D5DF0 9941FFFF */  lwr   $at, -1($t2)
/* 0D69F4 800D5DF4 154CFFF5 */  bne   $t2, $t4, .L800D5DCC
/* 0D69F8 800D5DF8 AD21FFFC */   sw    $at, -4($t1)
/* 0D69FC 800D5DFC 89410000 */  lwl   $at, ($t2)
/* 0D6A00 800D5E00 99410003 */  lwr   $at, 3($t2)
/* 0D6A04 800D5E04 AD210000 */  sw    $at, ($t1)
/* 0D6A08 800D5E08 93AD002E */  lbu   $t5, 0x2e($sp)
/* 0D6A0C 800D5E0C 31AE00C0 */  andi  $t6, $t5, 0xc0
/* 0D6A10 800D5E10 000E7903 */  sra   $t7, $t6, 4
/* 0D6A14 800D5E14 15E00025 */  bnez  $t7, .L800D5EAC
/* 0D6A18 800D5E18 AFAF005C */   sw    $t7, 0x5c($sp)
/* 0D6A1C 800D5E1C 27A4002C */  addiu $a0, $sp, 0x2c
/* 0D6A20 800D5E20 0C035FC4 */  jal   __osContDataCrc
/* 0D6A24 800D5E24 24840006 */   addiu $a0, $a0, 6
/* 0D6A28 800D5E28 A3A20027 */  sb    $v0, 0x27($sp)
/* 0D6A2C 800D5E2C 93B80027 */  lbu   $t8, 0x27($sp)
/* 0D6A30 800D5E30 93A80052 */  lbu   $t0, 0x52($sp)
/* 0D6A34 800D5E34 1308000F */  beq   $t8, $t0, .L800D5E74
/* 0D6A38 800D5E38 00000000 */   nop   
/* 0D6A3C 800D5E3C 8FA40060 */  lw    $a0, 0x60($sp)
/* 0D6A40 800D5E40 0C0339F5 */  jal   func_800CE7D4
/* 0D6A44 800D5E44 8FA50064 */   lw    $a1, 0x64($sp)
/* 0D6A48 800D5E48 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0D6A4C 800D5E4C 8FB9005C */  lw    $t9, 0x5c($sp)
/* 0D6A50 800D5E50 13200005 */  beqz  $t9, .L800D5E68
/* 0D6A54 800D5E54 00000000 */   nop   
/* 0D6A58 800D5E58 0C034EF9 */  jal   __osSiRelAccess
/* 0D6A5C 800D5E5C 00000000 */   nop   
/* 0D6A60 800D5E60 1000001F */  b     .L800D5EE0
/* 0D6A64 800D5E64 8FA2005C */   lw    $v0, 0x5c($sp)
.L800D5E68:
/* 0D6A68 800D5E68 240B0004 */  li    $t3, 4
/* 0D6A6C 800D5E6C 1000000F */  b     .L800D5EAC
/* 0D6A70 800D5E70 AFAB005C */   sw    $t3, 0x5c($sp)
.L800D5E74:
/* 0D6A74 800D5E74 AFA00058 */  sw    $zero, 0x58($sp)
.L800D5E78:
/* 0D6A78 800D5E78 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0D6A7C 800D5E7C 8FA9006C */  lw    $t1, 0x6c($sp)
/* 0D6A80 800D5E80 03AC5021 */  addu  $t2, $sp, $t4
/* 0D6A84 800D5E84 914A0032 */  lbu   $t2, 0x32($t2)
/* 0D6A88 800D5E88 A12A0000 */  sb    $t2, ($t1)
/* 0D6A8C 800D5E8C 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0D6A90 800D5E90 8FAD006C */  lw    $t5, 0x6c($sp)
/* 0D6A94 800D5E94 25F80001 */  addiu $t8, $t7, 1
/* 0D6A98 800D5E98 2B010020 */  slti  $at, $t8, 0x20
/* 0D6A9C 800D5E9C 25AE0001 */  addiu $t6, $t5, 1
/* 0D6AA0 800D5EA0 AFB80058 */  sw    $t8, 0x58($sp)
/* 0D6AA4 800D5EA4 1420FFF4 */  bnez  $at, .L800D5E78
/* 0D6AA8 800D5EA8 AFAE006C */   sw    $t6, 0x6c($sp)
.L800D5EAC:
/* 0D6AAC 800D5EAC 8FA8005C */  lw    $t0, 0x5c($sp)
/* 0D6AB0 800D5EB0 24010004 */  li    $at, 4
/* 0D6AB4 800D5EB4 15010007 */  bne   $t0, $at, .L800D5ED4
/* 0D6AB8 800D5EB8 00000000 */   nop   
/* 0D6ABC 800D5EBC 8FB90028 */  lw    $t9, 0x28($sp)
/* 0D6AC0 800D5EC0 2B300000 */  slti  $s0, $t9, 0
/* 0D6AC4 800D5EC4 3A100001 */  xori  $s0, $s0, 1
/* 0D6AC8 800D5EC8 272BFFFF */  addiu $t3, $t9, -1
/* 0D6ACC 800D5ECC 1600FF95 */  bnez  $s0, .L800D5D24
/* 0D6AD0 800D5ED0 AFAB0028 */   sw    $t3, 0x28($sp)
.L800D5ED4:
/* 0D6AD4 800D5ED4 0C034EF9 */  jal   __osSiRelAccess
/* 0D6AD8 800D5ED8 00000000 */   nop   
/* 0D6ADC 800D5EDC 8FA2005C */  lw    $v0, 0x5c($sp)
.L800D5EE0:
/* 0D6AE0 800D5EE0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D6AE4 800D5EE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D6AE8 800D5EE8 27BD0060 */  addiu $sp, $sp, 0x60
/* 0D6AEC 800D5EEC 03E00008 */  jr    $ra
/* 0D6AF0 800D5EF0 00000000 */   nop   

glabel __osPackRamReadData
/* 0D6AF4 800D5EF4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0D6AF8 800D5EF8 3C0E8019 */  lui   $t6, %hi(__osPfsPifRam) # $t6, 0x8019
/* 0D6AFC 800D5EFC 25CE6590 */  addiu $t6, %lo(__osPfsPifRam) # addiu $t6, $t6, 0x6590
/* 0D6B00 800D5F00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D6B04 800D5F04 AFA40048 */  sw    $a0, 0x48($sp)
/* 0D6B08 800D5F08 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0D6B0C 800D5F0C AFAE0044 */  sw    $t6, 0x44($sp)
/* 0D6B10 800D5F10 AFA00018 */  sw    $zero, 0x18($sp)
.L800D5F14:
/* 0D6B14 800D5F14 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0D6B18 800D5F18 8FB90018 */  lw    $t9, 0x18($sp)
/* 0D6B1C 800D5F1C 3C018019 */  lui   $at, %hi(__osPfsPifRam) # 0x8019
/* 0D6B20 800D5F20 000FC080 */  sll   $t8, $t7, 2
/* 0D6B24 800D5F24 00380821 */  addu  $at, $at, $t8
/* 0D6B28 800D5F28 AC206590 */  sw    $zero, %lo(__osPfsPifRam)($at) # 0x6590($at)
/* 0D6B2C 800D5F2C 27280001 */  addiu $t0, $t9, 1
/* 0D6B30 800D5F30 29010010 */  slti  $at, $t0, 0x10
/* 0D6B34 800D5F34 1420FFF7 */  bnez  $at, .L800D5F14
/* 0D6B38 800D5F38 AFA80018 */   sw    $t0, 0x18($sp)
/* 0D6B3C 800D5F3C 24090001 */  li    $t1, 1
/* 0D6B40 800D5F40 3C018019 */  lui   $at, %hi(D_801965CC) # $at, 0x8019
/* 0D6B44 800D5F44 240A00FF */  li    $t2, 255
/* 0D6B48 800D5F48 240B0003 */  li    $t3, 3
/* 0D6B4C 800D5F4C 240C0021 */  li    $t4, 33
/* 0D6B50 800D5F50 240D0002 */  li    $t5, 2
/* 0D6B54 800D5F54 AC2965CC */  sw    $t1, %lo(D_801965CC)($at)
/* 0D6B58 800D5F58 A3AA001C */  sb    $t2, 0x1c($sp)
/* 0D6B5C 800D5F5C A3AB001D */  sb    $t3, 0x1d($sp)
/* 0D6B60 800D5F60 A3AC001E */  sb    $t4, 0x1e($sp)
/* 0D6B64 800D5F64 A3AD001F */  sb    $t5, 0x1f($sp)
/* 0D6B68 800D5F68 0C035F98 */  jal   __osContAddressCrc
/* 0D6B6C 800D5F6C 97A4004E */   lhu   $a0, 0x4e($sp)
/* 0D6B70 800D5F70 97AE004E */  lhu   $t6, 0x4e($sp)
/* 0D6B74 800D5F74 241900FF */  li    $t9, 255
/* 0D6B78 800D5F78 A3B90042 */  sb    $t9, 0x42($sp)
/* 0D6B7C 800D5F7C 000E7940 */  sll   $t7, $t6, 5
/* 0D6B80 800D5F80 004FC025 */  or    $t8, $v0, $t7
/* 0D6B84 800D5F84 A7B80020 */  sh    $t8, 0x20($sp)
/* 0D6B88 800D5F88 AFA00018 */  sw    $zero, 0x18($sp)
.L800D5F8C:
/* 0D6B8C 800D5F8C 8FA90018 */  lw    $t1, 0x18($sp)
/* 0D6B90 800D5F90 240800FF */  li    $t0, 255
/* 0D6B94 800D5F94 03A95021 */  addu  $t2, $sp, $t1
/* 0D6B98 800D5F98 A1480022 */  sb    $t0, 0x22($t2)
/* 0D6B9C 800D5F9C 8FAB0018 */  lw    $t3, 0x18($sp)
/* 0D6BA0 800D5FA0 256C0001 */  addiu $t4, $t3, 1
/* 0D6BA4 800D5FA4 29810020 */  slti  $at, $t4, 0x20
/* 0D6BA8 800D5FA8 1420FFF8 */  bnez  $at, .L800D5F8C
/* 0D6BAC 800D5FAC AFAC0018 */   sw    $t4, 0x18($sp)
/* 0D6BB0 800D5FB0 8FAD0048 */  lw    $t5, 0x48($sp)
/* 0D6BB4 800D5FB4 11A0000E */  beqz  $t5, .L800D5FF0
/* 0D6BB8 800D5FB8 00000000 */   nop   
/* 0D6BBC 800D5FBC 19A0000C */  blez  $t5, .L800D5FF0
/* 0D6BC0 800D5FC0 AFA00018 */   sw    $zero, 0x18($sp)
.L800D5FC4:
/* 0D6BC4 800D5FC4 8FAE0044 */  lw    $t6, 0x44($sp)
/* 0D6BC8 800D5FC8 A1C00000 */  sb    $zero, ($t6)
/* 0D6BCC 800D5FCC 8FB90018 */  lw    $t9, 0x18($sp)
/* 0D6BD0 800D5FD0 8FA90048 */  lw    $t1, 0x48($sp)
/* 0D6BD4 800D5FD4 8FAF0044 */  lw    $t7, 0x44($sp)
/* 0D6BD8 800D5FD8 27280001 */  addiu $t0, $t9, 1
/* 0D6BDC 800D5FDC 0109082A */  slt   $at, $t0, $t1
/* 0D6BE0 800D5FE0 25F80001 */  addiu $t8, $t7, 1
/* 0D6BE4 800D5FE4 AFA80018 */  sw    $t0, 0x18($sp)
/* 0D6BE8 800D5FE8 1420FFF6 */  bnez  $at, .L800D5FC4
/* 0D6BEC 800D5FEC AFB80044 */   sw    $t8, 0x44($sp)
.L800D5FF0:
/* 0D6BF0 800D5FF0 27AB001C */  addiu $t3, $sp, 0x1c
/* 0D6BF4 800D5FF4 256D0024 */  addiu $t5, $t3, 0x24
/* 0D6BF8 800D5FF8 8FAA0044 */  lw    $t2, 0x44($sp)
.L800D5FFC:
/* 0D6BFC 800D5FFC 8D610000 */  lw    $at, ($t3)
/* 0D6C00 800D6000 256B000C */  addiu $t3, $t3, 0xc
/* 0D6C04 800D6004 254A000C */  addiu $t2, $t2, 0xc
/* 0D6C08 800D6008 A941FFF4 */  swl   $at, -0xc($t2)
/* 0D6C0C 800D600C B941FFF7 */  swr   $at, -9($t2)
/* 0D6C10 800D6010 8D61FFF8 */  lw    $at, -8($t3)
/* 0D6C14 800D6014 A941FFF8 */  swl   $at, -8($t2)
/* 0D6C18 800D6018 B941FFFB */  swr   $at, -5($t2)
/* 0D6C1C 800D601C 8D61FFFC */  lw    $at, -4($t3)
/* 0D6C20 800D6020 A941FFFC */  swl   $at, -4($t2)
/* 0D6C24 800D6024 156DFFF5 */  bne   $t3, $t5, .L800D5FFC
/* 0D6C28 800D6028 B941FFFF */   swr   $at, -1($t2)
/* 0D6C2C 800D602C 8D610000 */  lw    $at, ($t3)
/* 0D6C30 800D6030 241800FE */  li    $t8, 254
/* 0D6C34 800D6034 A9410000 */  swl   $at, ($t2)
/* 0D6C38 800D6038 B9410003 */  swr   $at, 3($t2)
/* 0D6C3C 800D603C 8FAE0044 */  lw    $t6, 0x44($sp)
/* 0D6C40 800D6040 25CF0028 */  addiu $t7, $t6, 0x28
/* 0D6C44 800D6044 AFAF0044 */  sw    $t7, 0x44($sp)
/* 0D6C48 800D6048 A1F80000 */  sb    $t8, ($t7)
/* 0D6C4C 800D604C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D6C50 800D6050 27BD0048 */  addiu $sp, $sp, 0x48
/* 0D6C54 800D6054 03E00008 */  jr    $ra
/* 0D6C58 800D6058 00000000 */   nop   

/* 0D6C5C 800D605C 00000000 */  nop   
