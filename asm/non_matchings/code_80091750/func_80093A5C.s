.section .late_rodata

glabel jpt_800F0F8C
.word L80093AAC, L80093AC4, L80093AC4, L80093AC4
.word L80093AC4, L80093B34, L80093B34, L80093B34
.word L80093B00, L80093B00, L80093B00, L80093B00

glabel jpt_800F0FBC
.word L80093BC4, L80093BE4, L80093BD4, L80093BD4
.word L80093BE4, L80093C0C, L80093C0C, L80093C0C
.word L80093BD4, L80093BE4, L80093BF4, L80093C04

.section .text

glabel func_80093A5C
/* 09465C 80093A5C 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 094660 80093A60 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 094664 80093A64 8C4E0000 */  lw    $t6, ($v0)
/* 094668 80093A68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09466C 80093A6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 094670 80093A70 15C00006 */  bnez  $t6, .L80093A8C
/* 094674 80093A74 00802825 */   move  $a1, $a0
/* 094678 80093A78 0C027246 */  jal   func_8009C918
/* 09467C 80093A7C AFA40018 */   sw    $a0, 0x18($sp)
/* 094680 80093A80 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 094684 80093A84 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 094688 80093A88 8FA50018 */  lw    $a1, 0x18($sp)
.L80093A8C:
/* 09468C 80093A8C 2CA1000C */  sltiu $at, $a1, 0xc
/* 094690 80093A90 10200028 */  beqz  $at, .L80093B34
/* 094694 80093A94 00057880 */   sll   $t7, $a1, 2
/* 094698 80093A98 3C01800F */  lui   $at, %hi(jpt_800F0F8C)
/* 09469C 80093A9C 002F0821 */  addu  $at, $at, $t7
/* 0946A0 80093AA0 8C2F0F8C */  lw    $t7, %lo(jpt_800F0F8C)($at)
/* 0946A4 80093AA4 01E00008 */  jr    $t7
/* 0946A8 80093AA8 00000000 */   nop   
glabel L80093AAC
/* 0946AC 80093AAC 3C04800F */  lui   $a0, %hi(D_800F0B1C)
/* 0946B0 80093AB0 00852021 */  addu  $a0, $a0, $a1
/* 0946B4 80093AB4 0C02503B */  jal   func_800940EC
/* 0946B8 80093AB8 80840B1C */   lb    $a0, %lo(D_800F0B1C)($a0)
/* 0946BC 80093ABC 1000001D */  b     .L80093B34
/* 0946C0 80093AC0 00000000 */   nop   
glabel L80093AC4
/* 0946C4 80093AC4 8C580000 */  lw    $t8, ($v0)
/* 0946C8 80093AC8 3C04800F */  lui   $a0, %hi(D_800F0B1C)
/* 0946CC 80093ACC 00852021 */  addu  $a0, $a0, $a1
/* 0946D0 80093AD0 17000007 */  bnez  $t8, .L80093AF0
/* 0946D4 80093AD4 00000000 */   nop   
/* 0946D8 80093AD8 3C04800F */  lui   $a0, %hi(D_800F0B1C)
/* 0946DC 80093ADC 00852021 */  addu  $a0, $a0, $a1
/* 0946E0 80093AE0 0C024F07 */  jal   func_80093C1C
/* 0946E4 80093AE4 80840B1C */   lb    $a0, %lo(D_800F0B1C)($a0)
/* 0946E8 80093AE8 10000012 */  b     .L80093B34
/* 0946EC 80093AEC 00000000 */   nop   
.L80093AF0:
/* 0946F0 80093AF0 0C02503B */  jal   func_800940EC
/* 0946F4 80093AF4 80840B1C */   lb    $a0, %lo(D_800F0B1C)($a0)
/* 0946F8 80093AF8 1000000E */  b     .L80093B34
/* 0946FC 80093AFC 00000000 */   nop   
glabel L80093B00
/* 094700 80093B00 8C590000 */  lw    $t9, ($v0)
/* 094704 80093B04 24010003 */  li    $at, 3
/* 094708 80093B08 3C04800F */  lui   $a0, %hi(D_800F0B1C)
/* 09470C 80093B0C 17210007 */  bne   $t9, $at, .L80093B2C
/* 094710 80093B10 00852021 */   addu  $a0, $a0, $a1
/* 094714 80093B14 3C04800F */  lui   $a0, %hi(D_800F0B1C)
/* 094718 80093B18 00852021 */  addu  $a0, $a0, $a1
/* 09471C 80093B1C 0C02503B */  jal   func_800940EC
/* 094720 80093B20 80840B1C */   lb    $a0, %lo(D_800F0B1C)($a0)
/* 094724 80093B24 10000003 */  b     .L80093B34
/* 094728 80093B28 00000000 */   nop   
.L80093B2C:
/* 09472C 80093B2C 0C024F07 */  jal   func_80093C1C
/* 094730 80093B30 80840B1C */   lb    $a0, %lo(D_800F0B1C)($a0)
.L80093B34:
glabel L80093B34
/* 094734 80093B34 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 094738 80093B38 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 09473C 80093B3C 8C830000 */  lw    $v1, ($a0)
/* 094740 80093B40 3C09B900 */  lui   $t1, (0xB900031D >> 16) # lui $t1, 0xb900
/* 094744 80093B44 3C0A0F0A */  lui   $t2, (0x0F0A4000 >> 16) # lui $t2, 0xf0a
/* 094748 80093B48 24680008 */  addiu $t0, $v1, 8
/* 09474C 80093B4C AC880000 */  sw    $t0, ($a0)
/* 094750 80093B50 354A4000 */  ori   $t2, (0x0F0A4000 & 0xFFFF) # ori $t2, $t2, 0x4000
/* 094754 80093B54 3529031D */  ori   $t1, (0xB900031D & 0xFFFF) # ori $t1, $t1, 0x31d
/* 094758 80093B58 AC690000 */  sw    $t1, ($v1)
/* 09475C 80093B5C AC6A0004 */  sw    $t2, 4($v1)
/* 094760 80093B60 8FBF0014 */  lw    $ra, 0x14($sp)
/* 094764 80093B64 27BD0018 */  addiu $sp, $sp, 0x18
/* 094768 80093B68 03E00008 */  jr    $ra
/* 09476C 80093B6C 00000000 */   nop   

/* 094770 80093B70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 094774 80093B74 10800008 */  beqz  $a0, .L80093B98
/* 094778 80093B78 AFBF0014 */   sw    $ra, 0x14($sp)
/* 09477C 80093B7C 24010002 */  li    $at, 2
/* 094780 80093B80 10810005 */  beq   $a0, $at, .L80093B98
/* 094784 80093B84 24010003 */   li    $at, 3
/* 094788 80093B88 10810003 */  beq   $a0, $at, .L80093B98
/* 09478C 80093B8C 24010008 */   li    $at, 8
/* 094790 80093B90 54810005 */  bnel  $a0, $at, .L80093BA8
/* 094794 80093B94 2C81000C */   sltiu $at, $a0, 0xc
.L80093B98:
/* 094798 80093B98 0C027246 */  jal   func_8009C918
/* 09479C 80093B9C AFA40018 */   sw    $a0, 0x18($sp)
/* 0947A0 80093BA0 8FA40018 */  lw    $a0, 0x18($sp)
/* 0947A4 80093BA4 2C81000C */  sltiu $at, $a0, 0xc
.L80093BA8:
/* 0947A8 80093BA8 10200018 */  beqz  $at, .L80093C0C
/* 0947AC 80093BAC 00047080 */   sll   $t6, $a0, 2
/* 0947B0 80093BB0 3C01800F */  lui   $at, %hi(jpt_800F0FBC)
/* 0947B4 80093BB4 002E0821 */  addu  $at, $at, $t6
/* 0947B8 80093BB8 8C2E0FBC */  lw    $t6, %lo(jpt_800F0FBC)($at)
/* 0947BC 80093BBC 01C00008 */  jr    $t6
/* 0947C0 80093BC0 00000000 */   nop   
glabel L80093BC4
/* 0947C4 80093BC4 0C02503B */  jal   func_800940EC
/* 0947C8 80093BC8 00002025 */   move  $a0, $zero
/* 0947CC 80093BCC 10000010 */  b     .L80093C10
/* 0947D0 80093BD0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80093BD4
/* 0947D4 80093BD4 0C024F07 */  jal   func_80093C1C
/* 0947D8 80093BD8 00002025 */   move  $a0, $zero
/* 0947DC 80093BDC 1000000C */  b     .L80093C10
/* 0947E0 80093BE0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80093BE4
/* 0947E4 80093BE4 0C02503B */  jal   func_800940EC
/* 0947E8 80093BE8 24040001 */   li    $a0, 1
/* 0947EC 80093BEC 10000008 */  b     .L80093C10
/* 0947F0 80093BF0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80093BF4
/* 0947F4 80093BF4 0C024F07 */  jal   func_80093C1C
/* 0947F8 80093BF8 24040002 */   li    $a0, 2
/* 0947FC 80093BFC 10000004 */  b     .L80093C10
/* 094800 80093C00 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80093C04
/* 094804 80093C04 0C02503B */  jal   func_800940EC
/* 094808 80093C08 24040003 */   li    $a0, 3
.L80093C0C:
glabel L80093C0C
/* 09480C 80093C0C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80093C10:
/* 094810 80093C10 27BD0018 */  addiu $sp, $sp, 0x18
/* 094814 80093C14 03E00008 */  jr    $ra
/* 094818 80093C18 00000000 */   nop   
