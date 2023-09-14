.section .late_rodata

glabel D_800F1CCC
.float 0.6

glabel jpt_800F1CD0
.word L800A3FA4, L800A4478, L800A4478, L800A4478
.word L800A3FA4, L800A3FA4, L800A3FA4, L800A3FA4
.word L800A3FA4, L800A3FA4, L800A40C4, L800A40C4
.word L800A40C4, L800A40C4, L800A40C4, L800A40C4
.word L800A412C, L800A412C, L800A42A8, L800A4308
.word L800A4308, L800A4478, L800A4478, L800A4478
.word L800A43C4, L800A4424, L800A4478, L800A4478
.word L800A4478, L800A3FA4

glabel D_800F1D48
.float 0.7

glabel D_800F1D4C
.float 0.45

glabel D_800F1D50
.float 0.8

glabel D_800F1D54
.float 0.67

glabel D_800F1D58
.float 0.67

glabel jpt_800F1D5C
.word L800A449C, L800A449C, L800A449C, L800A449C
.word L800A449C, L800A449C, L800A4528, L800A4528
.word L800A4528, L800A4528, L800A4528, L800A4528
.word L800A44B4, L800A44B4, L800A4528, L800A44CC
.word L800A44CC, L800A4528, L800A4528, L800A4528
.word L800A4528, L800A4528, L800A4528, L800A4528
.word L800A4528, L800A44E4

.section .text

glabel func_800A3E60
/* 0A4A60 800A3E60 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0A4A64 800A3E64 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0A4A68 800A3E68 AFB30040 */  sw    $s3, 0x40($sp)
/* 0A4A6C 800A3E6C AFB2003C */  sw    $s2, 0x3c($sp)
/* 0A4A70 800A3E70 AFB10038 */  sw    $s1, 0x38($sp)
/* 0A4A74 800A3E74 AFB00034 */  sw    $s0, 0x34($sp)
/* 0A4A78 800A3E78 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 0A4A7C 800A3E7C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0A4A80 800A3E80 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A4A84 800A3E84 8C820004 */  lw    $v0, 4($a0)
/* 0A4A88 800A3E88 00809825 */  move  $s3, $a0
/* 0A4A8C 800A3E8C 2401001F */  li    $at, 31
/* 0A4A90 800A3E90 504001A6 */  beql  $v0, $zero, .L800A452C
/* 0A4A94 800A3E94 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0A4A98 800A3E98 504101A4 */  beql  $v0, $at, .L800A452C
/* 0A4A9C 800A3E9C 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0A4AA0 800A3EA0 0C024C36 */  jal   set_text_color
/* 0A4AA4 800A3EA4 24040004 */   li    $a0, 4
/* 0A4AA8 800A3EA8 3C188019 */  lui   $t8, %hi(gCupSelection) # $t8, 0x8019
/* 0A4AAC 800A3EAC 3C098019 */  lui   $t1, %hi(gCupCourseSelection) # $t1, 0x8019
/* 0A4AB0 800A3EB0 8129EE0B */  lb    $t1, %lo(gCupCourseSelection)($t1)
/* 0A4AB4 800A3EB4 8318EE09 */  lb    $t8, %lo(gCupSelection)($t8)
/* 0A4AB8 800A3EB8 3C0C800F */  lui   $t4, %hi(gCupCourseOrder)
/* 0A4ABC 800A3EBC 00095040 */  sll   $t2, $t1, 1
/* 0A4AC0 800A3EC0 0018C8C0 */  sll   $t9, $t8, 3
/* 0A4AC4 800A3EC4 032A5821 */  addu  $t3, $t9, $t2
/* 0A4AC8 800A3EC8 018B6021 */  addu  $t4, $t4, $t3
/* 0A4ACC 800A3ECC 858C2BB4 */  lh    $t4, %lo(gCupCourseOrder)($t4)
/* 0A4AD0 800A3ED0 3C01800F */  lui   $at, %hi(D_800F1CCC) # $at, 0x800f
/* 0A4AD4 800A3ED4 C4381CCC */  lwc1  $f24, %lo(D_800F1CCC)($at)
/* 0A4AD8 800A3ED8 8E64000C */  lw    $a0, 0xc($s3)
/* 0A4ADC 800A3EDC 8E6E0010 */  lw    $t6, 0x10($s3)
/* 0A4AE0 800A3EE0 3C06800E */  lui   $a2, %hi(D_800E7574)
/* 0A4AE4 800A3EE4 000C6880 */  sll   $t5, $t4, 2
/* 0A4AE8 800A3EE8 00CD3021 */  addu  $a2, $a2, $t5
/* 0A4AEC 800A3EEC 240F0019 */  li    $t7, 25
/* 0A4AF0 800A3EF0 8CC67574 */  lw    $a2, %lo(D_800E7574)($a2)
/* 0A4AF4 800A3EF4 00003825 */  move  $a3, $zero
/* 0A4AF8 800A3EF8 E7B80014 */  swc1  $f24, 0x14($sp)
/* 0A4AFC 800A3EFC E7B80010 */  swc1  $f24, 0x10($sp)
/* 0A4B00 800A3F00 24840055 */  addiu $a0, $a0, 0x55
/* 0A4B04 800A3F04 0C024DBB */  jal   draw_text
/* 0A4B08 800A3F08 01EE2823 */   subu  $a1, $t7, $t6
/* 0A4B0C 800A3F0C 0C024C36 */  jal   set_text_color
/* 0A4B10 800A3F10 24040003 */   li    $a0, 3
/* 0A4B14 800A3F14 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A4B18 800A3F18 4481B000 */  mtc1  $at, $f22
/* 0A4B1C 800A3F1C 8E64000C */  lw    $a0, 0xc($s3)
/* 0A4B20 800A3F20 8E6F0010 */  lw    $t7, 0x10($s3)
/* 0A4B24 800A3F24 240E0028 */  li    $t6, 40
/* 0A4B28 800A3F28 3C06800E */  lui   $a2, %hi(D_800E7730) # $a2, 0x800e
/* 0A4B2C 800A3F2C 8CC67730 */  lw    $a2, %lo(D_800E7730)($a2)
/* 0A4B30 800A3F30 00003825 */  move  $a3, $zero
/* 0A4B34 800A3F34 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A4B38 800A3F38 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0A4B3C 800A3F3C 24840055 */  addiu $a0, $a0, 0x55
/* 0A4B40 800A3F40 0C024DBB */  jal   draw_text
/* 0A4B44 800A3F44 01CF2823 */   subu  $a1, $t6, $t7
/* 0A4B48 800A3F48 00008825 */  move  $s1, $zero
/* 0A4B4C 800A3F4C 00008025 */  move  $s0, $zero
.L800A3F50:
/* 0A4B50 800A3F50 8E780010 */  lw    $t8, 0x10($s3)
/* 0A4B54 800A3F54 8E65000C */  lw    $a1, 0xc($s3)
/* 0A4B58 800A3F58 02202025 */  move  $a0, $s1
/* 0A4B5C 800A3F5C 02183023 */  subu  $a2, $s0, $t8
/* 0A4B60 800A3F60 24C60037 */  addiu $a2, $a2, 0x37
/* 0A4B64 800A3F64 0C029154 */  jal   func_800A4550
/* 0A4B68 800A3F68 24A50026 */   addiu $a1, $a1, 0x26
/* 0A4B6C 800A3F6C 26310001 */  addiu $s1, $s1, 1
/* 0A4B70 800A3F70 2A210004 */  slti  $at, $s1, 4
/* 0A4B74 800A3F74 1420FFF6 */  bnez  $at, .L800A3F50
/* 0A4B78 800A3F78 2610000F */   addiu $s0, $s0, 0xf
/* 0A4B7C 800A3F7C 8E630004 */  lw    $v1, 4($s3)
/* 0A4B80 800A3F80 2469FFFF */  addiu $t1, $v1, -1
/* 0A4B84 800A3F84 2D21001E */  sltiu $at, $t1, 0x1e
/* 0A4B88 800A3F88 1020013B */  beqz  $at, .L800A4478
/* 0A4B8C 800A3F8C 00094880 */   sll   $t1, $t1, 2
/* 0A4B90 800A3F90 3C01800F */  lui   $at, %hi(jpt_800F1CD0)
/* 0A4B94 800A3F94 00290821 */  addu  $at, $at, $t1
/* 0A4B98 800A3F98 8C291CD0 */  lw    $t1, %lo(jpt_800F1CD0)($at)
/* 0A4B9C 800A3F9C 01200008 */  jr    $t1
/* 0A4BA0 800A3FA0 00000000 */   nop
glabel L800A3FA4
/* 0A4BA4 800A3FA4 3C10800E */  lui   $s0, %hi(D_800E775C) # $s0, 0x800e
/* 0A4BA8 800A3FA8 2610775C */  addiu $s0, %lo(D_800E775C) # addiu $s0, $s0, 0x775c
/* 0A4BAC 800A3FAC 00008825 */  move  $s1, $zero
/* 0A4BB0 800A3FB0 00009025 */  move  $s2, $zero
.L800A3FB4:
/* 0A4BB4 800A3FB4 8E640004 */  lw    $a0, 4($s3)
/* 0A4BB8 800A3FB8 AFA0006C */  sw    $zero, 0x6c($sp)
/* 0A4BBC 800A3FBC 02202825 */  move  $a1, $s1
/* 0A4BC0 800A3FC0 24060001 */  li    $a2, 1
/* 0A4BC4 800A3FC4 0C024870 */  jal   func_800921C0
/* 0A4BC8 800A3FC8 2484FFFB */   addiu $a0, $a0, -5
/* 0A4BCC 800A3FCC 24010004 */  li    $at, 4
/* 0A4BD0 800A3FD0 12210006 */  beq   $s1, $at, .L800A3FEC
/* 0A4BD4 800A3FD4 8FA3006C */   lw    $v1, 0x6c($sp)
/* 0A4BD8 800A3FD8 24010005 */  li    $at, 5
/* 0A4BDC 800A3FDC 1221000A */  beq   $s1, $at, .L800A4008
/* 0A4BE0 800A3FE0 3C0A8016 */   lui   $t2, %hi(D_80162DD4) # $t2, 0x8016
/* 0A4BE4 800A3FE4 1000000C */  b     .L800A4018
/* 0A4BE8 800A3FE8 00000000 */   nop
.L800A3FEC:
/* 0A4BEC 800A3FEC 3C198016 */  lui   $t9, %hi(D_80162DF8) # $t9, 0x8016
/* 0A4BF0 800A3FF0 8F392DF8 */  lw    $t9, %lo(D_80162DF8)($t9)
/* 0A4BF4 800A3FF4 24010001 */  li    $at, 1
/* 0A4BF8 800A3FF8 17210007 */  bne   $t9, $at, .L800A4018
/* 0A4BFC 800A3FFC 00000000 */   nop
/* 0A4C00 800A4000 10000005 */  b     .L800A4018
/* 0A4C04 800A4004 24030001 */   li    $v1, 1
.L800A4008:
/* 0A4C08 800A4008 954A2DD4 */  lhu   $t2, %lo(D_80162DD4)($t2)
/* 0A4C0C 800A400C 11400002 */  beqz  $t2, .L800A4018
/* 0A4C10 800A4010 00000000 */   nop
/* 0A4C14 800A4014 24030002 */  li    $v1, 2
.L800A4018:
/* 0A4C18 800A4018 10600019 */  beqz  $v1, .L800A4080
/* 0A4C1C 800A401C 241900B2 */   li    $t9, 178
/* 0A4C20 800A4020 0C024C36 */  jal   set_text_color
/* 0A4C24 800A4024 00002025 */   move  $a0, $zero
/* 0A4C28 800A4028 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0A4C2C 800A402C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0A4C30 800A4030 8D030000 */  lw    $v1, ($t0)
/* 0A4C34 800A4034 3C0CFA00 */  lui   $t4, 0xfa00
/* 0A4C38 800A4038 240D0096 */  li    $t5, 150
/* 0A4C3C 800A403C 246B0008 */  addiu $t3, $v1, 8
/* 0A4C40 800A4040 AD0B0000 */  sw    $t3, ($t0)
/* 0A4C44 800A4044 AC6D0004 */  sw    $t5, 4($v1)
/* 0A4C48 800A4048 AC6C0000 */  sw    $t4, ($v1)
/* 0A4C4C 800A404C 8E780010 */  lw    $t8, 0x10($s3)
/* 0A4C50 800A4050 8E6E000C */  lw    $t6, 0xc($s3)
/* 0A4C54 800A4054 240F00B2 */  li    $t7, 178
/* 0A4C58 800A4058 03122821 */  addu  $a1, $t8, $s2
/* 0A4C5C 800A405C 24A50093 */  addiu $a1, $a1, 0x93
/* 0A4C60 800A4060 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A4C64 800A4064 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0A4C68 800A4068 8E060004 */  lw    $a2, 4($s0)
/* 0A4C6C 800A406C 00003825 */  move  $a3, $zero
/* 0A4C70 800A4070 0C024CD6 */  jal   func_80093358
/* 0A4C74 800A4074 01EE2023 */   subu  $a0, $t7, $t6
/* 0A4C78 800A4078 1000000C */  b     .L800A40AC
/* 0A4C7C 800A407C 26310001 */   addiu $s1, $s1, 1
.L800A4080:
/* 0A4C80 800A4080 8E6A0010 */  lw    $t2, 0x10($s3)
/* 0A4C84 800A4084 8E69000C */  lw    $t1, 0xc($s3)
/* 0A4C88 800A4088 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A4C8C 800A408C 01522821 */  addu  $a1, $t2, $s2
/* 0A4C90 800A4090 24A50093 */  addiu $a1, $a1, 0x93
/* 0A4C94 800A4094 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0A4C98 800A4098 8E060004 */  lw    $a2, 4($s0)
/* 0A4C9C 800A409C 00003825 */  move  $a3, $zero
/* 0A4CA0 800A40A0 0C024CC9 */  jal   func_80093324
/* 0A4CA4 800A40A4 03292023 */   subu  $a0, $t9, $t1
/* 0A4CA8 800A40A8 26310001 */  addiu $s1, $s1, 1
.L800A40AC:
/* 0A4CAC 800A40AC 24010006 */  li    $at, 6
/* 0A4CB0 800A40B0 2652000D */  addiu $s2, $s2, 0xd
/* 0A4CB4 800A40B4 1621FFBF */  bne   $s1, $at, .L800A3FB4
/* 0A4CB8 800A40B8 26100004 */   addiu $s0, $s0, 4
/* 0A4CBC 800A40BC 100000EE */  b     .L800A4478
/* 0A4CC0 800A40C0 8E630004 */   lw    $v1, 4($s3)
glabel L800A40C4
/* 0A4CC4 800A40C4 0C024C36 */  jal   set_text_color
/* 0A4CC8 800A40C8 24040003 */   li    $a0, 3
/* 0A4CCC 800A40CC 8E630004 */  lw    $v1, 4($s3)
/* 0A4CD0 800A40D0 3C0D800E */  lui   $t5, %hi(D_800E798C) # $t5, 0x800e
/* 0A4CD4 800A40D4 25AD798C */  addiu $t5, %lo(D_800E798C) # addiu $t5, $t5, 0x798c
/* 0A4CD8 800A40D8 2463FFF5 */  addiu $v1, $v1, -0xb
/* 0A4CDC 800A40DC 000358C0 */  sll   $t3, $v1, 3
/* 0A4CE0 800A40E0 01635823 */  subu  $t3, $t3, $v1
/* 0A4CE4 800A40E4 000B6080 */  sll   $t4, $t3, 2
/* 0A4CE8 800A40E8 018D1021 */  addu  $v0, $t4, $t5
/* 0A4CEC 800A40EC 2410008C */  li    $s0, 140
/* 0A4CF0 800A40F0 241100E7 */  li    $s1, 231
.L800A40F4:
/* 0A4CF4 800A40F4 240400A2 */  li    $a0, 162
/* 0A4CF8 800A40F8 02002825 */  move  $a1, $s0
/* 0A4CFC 800A40FC 8C460000 */  lw    $a2, ($v0)
/* 0A4D00 800A4100 00003825 */  move  $a3, $zero
/* 0A4D04 800A4104 E7B80010 */  swc1  $f24, 0x10($sp)
/* 0A4D08 800A4108 E7B80014 */  swc1  $f24, 0x14($sp)
/* 0A4D0C 800A410C 0C024CC9 */  jal   func_80093324
/* 0A4D10 800A4110 AFA20050 */   sw    $v0, 0x50($sp)
/* 0A4D14 800A4114 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A4D18 800A4118 2610000D */  addiu $s0, $s0, 0xd
/* 0A4D1C 800A411C 1611FFF5 */  bne   $s0, $s1, .L800A40F4
/* 0A4D20 800A4120 24420004 */   addiu $v0, $v0, 4
/* 0A4D24 800A4124 100000D4 */  b     .L800A4478
/* 0A4D28 800A4128 8E630004 */   lw    $v1, 4($s3)
glabel L800A412C
/* 0A4D2C 800A412C 0C024C36 */  jal   set_text_color
/* 0A4D30 800A4130 24040001 */   li    $a0, 1
/* 0A4D34 800A4134 3C10800E */  lui   $s0, %hi(D_800E7A3C) # $s0, 0x800e
/* 0A4D38 800A4138 3C01800F */  lui   $at, %hi(D_800F1D48) # $at, 0x800f
/* 0A4D3C 800A413C 3C11800E */  lui   $s1, %hi(D_800E7A44) # $s1, 0x800e
/* 0A4D40 800A4140 26317A44 */  addiu $s1, %lo(D_800E7A44) # addiu $s1, $s1, 0x7a44
/* 0A4D44 800A4144 C4341D48 */  lwc1  $f20, %lo(D_800F1D48)($at)
/* 0A4D48 800A4148 26107A3C */  addiu $s0, %lo(D_800E7A3C) # addiu $s0, $s0, 0x7a3c
/* 0A4D4C 800A414C 00009025 */  move  $s2, $zero
.L800A4150:
/* 0A4D50 800A4150 8E6F0010 */  lw    $t7, 0x10($s3)
/* 0A4D54 800A4154 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4D58 800A4158 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4D5C 800A415C 01F22821 */  addu  $a1, $t7, $s2
/* 0A4D60 800A4160 24A5008C */  addiu $a1, $a1, 0x8c
/* 0A4D64 800A4164 240400A5 */  li    $a0, 165
/* 0A4D68 800A4168 8E060000 */  lw    $a2, ($s0)
/* 0A4D6C 800A416C 0C024CC9 */  jal   func_80093324
/* 0A4D70 800A4170 00003825 */   move  $a3, $zero
/* 0A4D74 800A4174 26100004 */  addiu $s0, $s0, 4
/* 0A4D78 800A4178 0211082B */  sltu  $at, $s0, $s1
/* 0A4D7C 800A417C 1420FFF4 */  bnez  $at, .L800A4150
/* 0A4D80 800A4180 2652000D */   addiu $s2, $s2, 0xd
/* 0A4D84 800A4184 3C128019 */  lui   $s2, %hi(D_8018EE10) # $s2, 0x8019
/* 0A4D88 800A4188 3C01800F */  lui   $at, %hi(D_800F1D4C) # $at, 0x800f
/* 0A4D8C 800A418C C4341D4C */  lwc1  $f20, %lo(D_800F1D4C)($at)
/* 0A4D90 800A4190 2652EE10 */  addiu $s2, %lo(D_8018EE10) # addiu $s2, $s2, -0x11f0
/* 0A4D94 800A4194 00008825 */  move  $s1, $zero
/* 0A4D98 800A4198 241000AA */  li    $s0, 170
.L800A419C:
/* 0A4D9C 800A419C 8E640004 */  lw    $a0, 4($s3)
/* 0A4DA0 800A41A0 02202825 */  move  $a1, $s1
/* 0A4DA4 800A41A4 24060001 */  li    $a2, 1
/* 0A4DA8 800A41A8 0C024870 */  jal   func_800921C0
/* 0A4DAC 800A41AC 2484FFEF */   addiu $a0, $a0, -0x11
/* 0A4DB0 800A41B0 26240001 */  addiu $a0, $s1, 1
/* 0A4DB4 800A41B4 AFA40054 */  sw    $a0, 0x54($sp)
/* 0A4DB8 800A41B8 0C029E25 */  jal   convert_number_to_ascii
/* 0A4DBC 800A41BC 27A50060 */   addiu $a1, $sp, 0x60
/* 0A4DC0 800A41C0 8E6E000C */  lw    $t6, 0xc($s3)
/* 0A4DC4 800A41C4 241800B1 */  li    $t8, 177
/* 0A4DC8 800A41C8 E7B80014 */  swc1  $f24, 0x14($sp)
/* 0A4DCC 800A41CC E7B80010 */  swc1  $f24, 0x10($sp)
/* 0A4DD0 800A41D0 02002825 */  move  $a1, $s0
/* 0A4DD4 800A41D4 27A60061 */  addiu $a2, $sp, 0x61
/* 0A4DD8 800A41D8 00003825 */  move  $a3, $zero
/* 0A4DDC 800A41DC 0C024CC9 */  jal   func_80093324
/* 0A4DE0 800A41E0 030E2023 */   subu  $a0, $t8, $t6
/* 0A4DE4 800A41E4 92590004 */  lbu   $t9, 4($s2)
/* 0A4DE8 800A41E8 240C00BB */  li    $t4, 187
/* 0A4DEC 800A41EC 02002825 */  move  $a1, $s0
/* 0A4DF0 800A41F0 1720000D */  bnez  $t9, .L800A4228
/* 0A4DF4 800A41F4 3C0A800F */   lui   $t2, %hi(gCupCourseOrder)
/* 0A4DF8 800A41F8 8E69000C */  lw    $t1, 0xc($s3)
/* 0A4DFC 800A41FC 240A00BB */  li    $t2, 187
/* 0A4E00 800A4200 3C06800E */  lui   $a2, %hi(D_800E7A44) # $a2, 0x800e
/* 0A4E04 800A4204 8CC67A44 */  lw    $a2, %lo(D_800E7A44)($a2)
/* 0A4E08 800A4208 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4E0C 800A420C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4E10 800A4210 02002825 */  move  $a1, $s0
/* 0A4E14 800A4214 00003825 */  move  $a3, $zero
/* 0A4E18 800A4218 0C024CC9 */  jal   func_80093324
/* 0A4E1C 800A421C 01492023 */   subu  $a0, $t2, $t1
/* 0A4E20 800A4220 1000001B */  b     .L800A4290
/* 0A4E24 800A4224 8FB10054 */   lw    $s1, 0x54($sp)
.L800A4228:
/* 0A4E28 800A4228 82420005 */  lb    $v0, 5($s2)
/* 0A4E2C 800A422C 8E6B000C */  lw    $t3, 0xc($s3)
/* 0A4E30 800A4230 3C06800E */  lui   $a2, %hi(D_800E75C4)
/* 0A4E34 800A4234 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4E38 800A4238 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4E3C 800A423C 00003825 */  move  $a3, $zero
/* 0A4E40 800A4240 018B2023 */  subu  $a0, $t4, $t3
/* 0A4E44 800A4244 04410003 */  bgez  $v0, .L800A4254
/* 0A4E48 800A4248 00026883 */   sra   $t5, $v0, 2
/* 0A4E4C 800A424C 24410003 */  addiu $at, $v0, 3
/* 0A4E50 800A4250 00016883 */  sra   $t5, $at, 2
.L800A4254:
/* 0A4E54 800A4254 000D78C0 */  sll   $t7, $t5, 3
/* 0A4E58 800A4258 04410004 */  bgez  $v0, .L800A426C
/* 0A4E5C 800A425C 30580003 */   andi  $t8, $v0, 3
/* 0A4E60 800A4260 13000002 */  beqz  $t8, .L800A426C
/* 0A4E64 800A4264 00000000 */   nop
/* 0A4E68 800A4268 2718FFFC */  addiu $t8, $t8, -4
.L800A426C:
/* 0A4E6C 800A426C 00187040 */  sll   $t6, $t8, 1
/* 0A4E70 800A4270 01EEC821 */  addu  $t9, $t7, $t6
/* 0A4E74 800A4274 01595021 */  addu  $t2, $t2, $t9
/* 0A4E78 800A4278 854A2BB4 */  lh    $t2, %lo(gCupCourseOrder)($t2)
/* 0A4E7C 800A427C 000A4880 */  sll   $t1, $t2, 2
/* 0A4E80 800A4280 00C93021 */  addu  $a2, $a2, $t1
/* 0A4E84 800A4284 0C024CC9 */  jal   func_80093324
/* 0A4E88 800A4288 8CC675C4 */   lw    $a2, %lo(D_800E75C4)($a2)
/* 0A4E8C 800A428C 8FB10054 */  lw    $s1, 0x54($sp)
.L800A4290:
/* 0A4E90 800A4290 24010002 */  li    $at, 2
/* 0A4E94 800A4294 2610001E */  addiu $s0, $s0, 0x1e
/* 0A4E98 800A4298 1621FFC0 */  bne   $s1, $at, .L800A419C
/* 0A4E9C 800A429C 26520080 */   addiu $s2, $s2, 0x80
/* 0A4EA0 800A42A0 10000075 */  b     .L800A4478
/* 0A4EA4 800A42A4 8E630004 */   lw    $v1, 4($s3)
glabel L800A42A8
/* 0A4EA8 800A42A8 0C024C36 */  jal   set_text_color
/* 0A4EAC 800A42AC 24040003 */   li    $a0, 3
/* 0A4EB0 800A42B0 3C02800E */  lui   $v0, %hi(D_800E7A48) # $v0, 0x800e
/* 0A4EB4 800A42B4 3C01800F */  lui   $at, %hi(D_800F1D50) # $at, 0x800f
/* 0A4EB8 800A42B8 3C11800E */  lui   $s1, %hi(D_800E7A54) # $s1, 0x800e
/* 0A4EBC 800A42BC 26317A54 */  addiu $s1, %lo(D_800E7A54) # addiu $s1, $s1, 0x7a54
/* 0A4EC0 800A42C0 C4341D50 */  lwc1  $f20, %lo(D_800F1D50)($at)
/* 0A4EC4 800A42C4 24427A48 */  addiu $v0, %lo(D_800E7A48) # addiu $v0, $v0, 0x7a48
/* 0A4EC8 800A42C8 24100093 */  li    $s0, 147
/* 0A4ECC 800A42CC 240400AA */  li    $a0, 170
.L800A42D0:
/* 0A4ED0 800A42D0 02002825 */  move  $a1, $s0
/* 0A4ED4 800A42D4 8C460000 */  lw    $a2, ($v0)
/* 0A4ED8 800A42D8 00003825 */  move  $a3, $zero
/* 0A4EDC 800A42DC E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4EE0 800A42E0 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4EE4 800A42E4 0C024CC9 */  jal   func_80093324
/* 0A4EE8 800A42E8 AFA20050 */   sw    $v0, 0x50($sp)
/* 0A4EEC 800A42EC 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A4EF0 800A42F0 2610000D */  addiu $s0, $s0, 0xd
/* 0A4EF4 800A42F4 24420004 */  addiu $v0, $v0, 4
/* 0A4EF8 800A42F8 5451FFF5 */  bnel  $v0, $s1, .L800A42D0
/* 0A4EFC 800A42FC 240400AA */   li    $a0, 170
/* 0A4F00 800A4300 1000005D */  b     .L800A4478
/* 0A4F04 800A4304 8E630004 */   lw    $v1, 4($s3)
glabel L800A4308
/* 0A4F08 800A4308 0C024C36 */  jal   set_text_color
/* 0A4F0C 800A430C 24040003 */   li    $a0, 3
/* 0A4F10 800A4310 3C10800E */  lui   $s0, %hi(D_800E7A60) # $s0, 0x800e
/* 0A4F14 800A4314 3C01800F */  lui   $at, %hi(D_800F1D54) # $at, 0x800f
/* 0A4F18 800A4318 3C11800E */  lui   $s1, %hi(D_800E7A6C) # $s1, 0x800e
/* 0A4F1C 800A431C 26317A6C */  addiu $s1, %lo(D_800E7A6C) # addiu $s1, $s1, 0x7a6c
/* 0A4F20 800A4320 C4341D54 */  lwc1  $f20, %lo(D_800F1D54)($at)
/* 0A4F24 800A4324 26107A60 */  addiu $s0, %lo(D_800E7A60) # addiu $s0, $s0, 0x7a60
/* 0A4F28 800A4328 00009025 */  move  $s2, $zero
.L800A432C:
/* 0A4F2C 800A432C 8E6C0010 */  lw    $t4, 0x10($s3)
/* 0A4F30 800A4330 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4F34 800A4334 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4F38 800A4338 01922821 */  addu  $a1, $t4, $s2
/* 0A4F3C 800A433C 24A5008C */  addiu $a1, $a1, 0x8c
/* 0A4F40 800A4340 240400A3 */  li    $a0, 163
/* 0A4F44 800A4344 8E060000 */  lw    $a2, ($s0)
/* 0A4F48 800A4348 0C024CC9 */  jal   func_80093324
/* 0A4F4C 800A434C 00003825 */   move  $a3, $zero
/* 0A4F50 800A4350 26100004 */  addiu $s0, $s0, 4
/* 0A4F54 800A4354 0211082B */  sltu  $at, $s0, $s1
/* 0A4F58 800A4358 1420FFF4 */  bnez  $at, .L800A432C
/* 0A4F5C 800A435C 2652000D */   addiu $s2, $s2, 0xd
/* 0A4F60 800A4360 3C12800E */  lui   $s2, %hi(D_800E7A6C) # $s2, 0x800e
/* 0A4F64 800A4364 26527A6C */  addiu $s2, %lo(D_800E7A6C) # addiu $s2, $s2, 0x7a6c
/* 0A4F68 800A4368 00008825 */  move  $s1, $zero
/* 0A4F6C 800A436C 241000B9 */  li    $s0, 185
.L800A4370:
/* 0A4F70 800A4370 8E640004 */  lw    $a0, 4($s3)
/* 0A4F74 800A4374 02202825 */  move  $a1, $s1
/* 0A4F78 800A4378 24060001 */  li    $a2, 1
/* 0A4F7C 800A437C 0C024870 */  jal   func_800921C0
/* 0A4F80 800A4380 2484FFEC */   addiu $a0, $a0, -0x14
/* 0A4F84 800A4384 8E6B000C */  lw    $t3, 0xc($s3)
/* 0A4F88 800A4388 240D00C8 */  li    $t5, 200
/* 0A4F8C 800A438C E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A4F90 800A4390 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0A4F94 800A4394 02002825 */  move  $a1, $s0
/* 0A4F98 800A4398 8E460000 */  lw    $a2, ($s2)
/* 0A4F9C 800A439C 00003825 */  move  $a3, $zero
/* 0A4FA0 800A43A0 0C024CC9 */  jal   func_80093324
/* 0A4FA4 800A43A4 01AB2023 */   subu  $a0, $t5, $t3
/* 0A4FA8 800A43A8 26310001 */  addiu $s1, $s1, 1
/* 0A4FAC 800A43AC 24010002 */  li    $at, 2
/* 0A4FB0 800A43B0 2610000F */  addiu $s0, $s0, 0xf
/* 0A4FB4 800A43B4 1621FFEE */  bne   $s1, $at, .L800A4370
/* 0A4FB8 800A43B8 26520004 */   addiu $s2, $s2, 4
/* 0A4FBC 800A43BC 1000002E */  b     .L800A4478
/* 0A4FC0 800A43C0 8E630004 */   lw    $v1, 4($s3)
glabel L800A43C4
/* 0A4FC4 800A43C4 0C024C36 */  jal   set_text_color
/* 0A4FC8 800A43C8 24040003 */   li    $a0, 3
/* 0A4FCC 800A43CC 3C02800E */  lui   $v0, %hi(D_800E7A74) # $v0, 0x800e
/* 0A4FD0 800A43D0 3C01800F */  lui   $at, %hi(D_800F1D58) # $at, 0x800f
/* 0A4FD4 800A43D4 3C11800E */  lui   $s1, %hi(D_800E7A80) # $s1, 0x800e
/* 0A4FD8 800A43D8 26317A80 */  addiu $s1, %lo(D_800E7A80) # addiu $s1, $s1, 0x7a80
/* 0A4FDC 800A43DC C4341D58 */  lwc1  $f20, %lo(D_800F1D58)($at)
/* 0A4FE0 800A43E0 24427A74 */  addiu $v0, %lo(D_800E7A74) # addiu $v0, $v0, 0x7a74
/* 0A4FE4 800A43E4 24100093 */  li    $s0, 147
/* 0A4FE8 800A43E8 240400A3 */  li    $a0, 163
.L800A43EC:
/* 0A4FEC 800A43EC 02002825 */  move  $a1, $s0
/* 0A4FF0 800A43F0 8C460000 */  lw    $a2, ($v0)
/* 0A4FF4 800A43F4 00003825 */  move  $a3, $zero
/* 0A4FF8 800A43F8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4FFC 800A43FC E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A5000 800A4400 0C024CC9 */  jal   func_80093324
/* 0A5004 800A4404 AFA20050 */   sw    $v0, 0x50($sp)
/* 0A5008 800A4408 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A500C 800A440C 2610000D */  addiu $s0, $s0, 0xd
/* 0A5010 800A4410 24420004 */  addiu $v0, $v0, 4
/* 0A5014 800A4414 5451FFF5 */  bnel  $v0, $s1, .L800A43EC
/* 0A5018 800A4418 240400A3 */   li    $a0, 163
/* 0A501C 800A441C 10000016 */  b     .L800A4478
/* 0A5020 800A4420 8E630004 */   lw    $v1, 4($s3)
glabel L800A4424
/* 0A5024 800A4424 0C024C36 */  jal   set_text_color
/* 0A5028 800A4428 24040003 */   li    $a0, 3
/* 0A502C 800A442C 3C02800E */  lui   $v0, %hi(D_800E7A80) # $v0, 0x800e
/* 0A5030 800A4430 3C11800E */  lui   $s1, %hi(D_800E7A88) # $s1, 0x800e
/* 0A5034 800A4434 26317A88 */  addiu $s1, %lo(D_800E7A88) # addiu $s1, $s1, 0x7a88
/* 0A5038 800A4438 24427A80 */  addiu $v0, %lo(D_800E7A80) # addiu $v0, $v0, 0x7a80
/* 0A503C 800A443C 24100093 */  li    $s0, 147
/* 0A5040 800A4440 240400AA */  li    $a0, 170
.L800A4444:
/* 0A5044 800A4444 02002825 */  move  $a1, $s0
/* 0A5048 800A4448 8C460000 */  lw    $a2, ($v0)
/* 0A504C 800A444C 00003825 */  move  $a3, $zero
/* 0A5050 800A4450 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0A5054 800A4454 E7B60014 */  swc1  $f22, 0x14($sp)
/* 0A5058 800A4458 0C024CC9 */  jal   func_80093324
/* 0A505C 800A445C AFA20050 */   sw    $v0, 0x50($sp)
/* 0A5060 800A4460 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A5064 800A4464 2610000D */  addiu $s0, $s0, 0xd
/* 0A5068 800A4468 24420004 */  addiu $v0, $v0, 4
/* 0A506C 800A446C 5451FFF5 */  bnel  $v0, $s1, .L800A4444
/* 0A5070 800A4470 240400AA */   li    $a0, 170
/* 0A5074 800A4474 8E630004 */  lw    $v1, 4($s3)
.L800A4478:
glabel L800A4478
/* 0A5078 800A4478 2478FFFB */  addiu $t8, $v1, -5
/* 0A507C 800A447C 2F01001A */  sltiu $at, $t8, 0x1a
/* 0A5080 800A4480 10200029 */  beqz  $at, .L800A4528
/* 0A5084 800A4484 0018C080 */   sll   $t8, $t8, 2
/* 0A5088 800A4488 3C01800F */  lui   $at, %hi(jpt_800F1D5C)
/* 0A508C 800A448C 00380821 */  addu  $at, $at, $t8
/* 0A5090 800A4490 8C381D5C */  lw    $t8, %lo(jpt_800F1D5C)($at)
/* 0A5094 800A4494 03000008 */  jr    $t8
/* 0A5098 800A4498 00000000 */   nop
glabel L800A449C
/* 0A509C 800A449C 000378C0 */  sll   $t7, $v1, 3
/* 0A50A0 800A44A0 3C19800E */  lui   $t9, %hi(D_800E7390) # $t9, 0x800e
/* 0A50A4 800A44A4 27397390 */  addiu $t9, %lo(D_800E7390) # addiu $t9, $t9, 0x7390
/* 0A50A8 800A44A8 25EEFFD8 */  addiu $t6, $t7, -0x28
/* 0A50AC 800A44AC 10000013 */  b     .L800A44FC
/* 0A50B0 800A44B0 01D91021 */   addu  $v0, $t6, $t9
glabel L800A44B4
/* 0A50B4 800A44B4 000350C0 */  sll   $t2, $v1, 3
/* 0A50B8 800A44B8 3C0C800E */  lui   $t4, %hi(D_800E73C0) # $t4, 0x800e
/* 0A50BC 800A44BC 258C73C0 */  addiu $t4, %lo(D_800E73C0) # addiu $t4, $t4, 0x73c0
/* 0A50C0 800A44C0 2549FF78 */  addiu $t1, $t2, -0x88
/* 0A50C4 800A44C4 1000000D */  b     .L800A44FC
/* 0A50C8 800A44C8 012C1021 */   addu  $v0, $t1, $t4
glabel L800A44CC
/* 0A50CC 800A44CC 000368C0 */  sll   $t5, $v1, 3
/* 0A50D0 800A44D0 3C18800E */  lui   $t8, %hi(D_800E73D0) # $t8, 0x800e
/* 0A50D4 800A44D4 271873D0 */  addiu $t8, %lo(D_800E73D0) # addiu $t8, $t8, 0x73d0
/* 0A50D8 800A44D8 25ABFF60 */  addiu $t3, $t5, -0xa0
/* 0A50DC 800A44DC 10000007 */  b     .L800A44FC
/* 0A50E0 800A44E0 01781021 */   addu  $v0, $t3, $t8
glabel L800A44E4
/* 0A50E4 800A44E4 8E6F001C */  lw    $t7, 0x1c($s3)
/* 0A50E8 800A44E8 3C0A800E */  lui   $t2, %hi(D_800E7390) # $t2, 0x800e
/* 0A50EC 800A44EC 254A7390 */  addiu $t2, %lo(D_800E7390) # addiu $t2, $t2, 0x7390
/* 0A50F0 800A44F0 000F70C0 */  sll   $t6, $t7, 3
/* 0A50F4 800A44F4 25D9FFD8 */  addiu $t9, $t6, -0x28
/* 0A50F8 800A44F8 032A1021 */  addu  $v0, $t9, $t2
.L800A44FC:
/* 0A50FC 800A44FC 84490000 */  lh    $t1, ($v0)
/* 0A5100 800A4500 8E6C000C */  lw    $t4, 0xc($s3)
/* 0A5104 800A4504 02602025 */  move  $a0, $s3
/* 0A5108 800A4508 27A50084 */  addiu $a1, $sp, 0x84
/* 0A510C 800A450C 012C6823 */  subu  $t5, $t1, $t4
/* 0A5110 800A4510 A7AD0084 */  sh    $t5, 0x84($sp)
/* 0A5114 800A4514 8E780010 */  lw    $t8, 0x10($s3)
/* 0A5118 800A4518 844B0002 */  lh    $t3, 2($v0)
/* 0A511C 800A451C 01787821 */  addu  $t7, $t3, $t8
/* 0A5120 800A4520 0C0299AA */  jal   func_800A66A8
/* 0A5124 800A4524 A7AF0086 */   sh    $t7, 0x86($sp)
.L800A4528:
glabel L800A4528
/* 0A5128 800A4528 8FBF0044 */  lw    $ra, 0x44($sp)
.L800A452C:
/* 0A512C 800A452C D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A5130 800A4530 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0A5134 800A4534 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 0A5138 800A4538 8FB00034 */  lw    $s0, 0x34($sp)
/* 0A513C 800A453C 8FB10038 */  lw    $s1, 0x38($sp)
/* 0A5140 800A4540 8FB2003C */  lw    $s2, 0x3c($sp)
/* 0A5144 800A4544 8FB30040 */  lw    $s3, 0x40($sp)
/* 0A5148 800A4548 03E00008 */  jr    $ra
/* 0A514C 800A454C 27BD0090 */   addiu $sp, $sp, 0x90
