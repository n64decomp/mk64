# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel osEepromLongWrite
/* 0D0C50 800D0050 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0D0C54 800D0054 AFA50044 */  sw    $a1, 0x44($sp)
/* 0D0C58 800D0058 93AE0047 */  lbu   $t6, 0x47($sp)
/* 0D0C5C 800D005C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0D0C60 800D0060 AFA40040 */  sw    $a0, 0x40($sp)
/* 0D0C64 800D0064 29C10041 */  slti  $at, $t6, 0x41
/* 0D0C68 800D0068 AFA60048 */  sw    $a2, 0x48($sp)
/* 0D0C6C 800D006C AFA7004C */  sw    $a3, 0x4c($sp)
/* 0D0C70 800D0070 14200003 */  bnez  $at, .L800D0080
/* 0D0C74 800D0074 AFA0003C */   sw    $zero, 0x3c($sp)
/* 0D0C78 800D0078 10000040 */  b     .L800D017C
/* 0D0C7C 800D007C 2402FFFF */   li    $v0, -1
.L800D0080:
/* 0D0C80 800D0080 8FAF004C */  lw    $t7, 0x4c($sp)
/* 0D0C84 800D0084 19E0003C */  blez  $t7, .L800D0178
/* 0D0C88 800D0088 00000000 */   nop   
.L800D008C:
/* 0D0C8C 800D008C 8FA40040 */  lw    $a0, 0x40($sp)
/* 0D0C90 800D0090 93A50047 */  lbu   $a1, 0x47($sp)
/* 0D0C94 800D0094 0C035004 */  jal   osEepromWrite
/* 0D0C98 800D0098 8FA60048 */   lw    $a2, 0x48($sp)
/* 0D0C9C 800D009C AFA2003C */  sw    $v0, 0x3c($sp)
/* 0D0CA0 800D00A0 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0D0CA4 800D00A4 13000003 */  beqz  $t8, .L800D00B4
/* 0D0CA8 800D00A8 00000000 */   nop   
/* 0D0CAC 800D00AC 10000033 */  b     .L800D017C
/* 0D0CB0 800D00B0 03001025 */   move  $v0, $t8
.L800D00B4:
/* 0D0CB4 800D00B4 8FB9004C */  lw    $t9, 0x4c($sp)
/* 0D0CB8 800D00B8 93A90047 */  lbu   $t1, 0x47($sp)
/* 0D0CBC 800D00BC 8FAB0048 */  lw    $t3, 0x48($sp)
/* 0D0CC0 800D00C0 3C06800F */  lui   $a2, %hi(osClockRate) # $a2, 0x800f
/* 0D0CC4 800D00C4 3C07800F */  lui   $a3, %hi(osClockRate + 4) # $a3, 0x800f
/* 0D0CC8 800D00C8 2728FFF8 */  addiu $t0, $t9, -8
/* 0D0CCC 800D00CC 252A0001 */  addiu $t2, $t1, 1
/* 0D0CD0 800D00D0 256C0008 */  addiu $t4, $t3, 8
/* 0D0CD4 800D00D4 AFA8004C */  sw    $t0, 0x4c($sp)
/* 0D0CD8 800D00D8 A3AA0047 */  sb    $t2, 0x47($sp)
/* 0D0CDC 800D00DC AFAC0048 */  sw    $t4, 0x48($sp)
/* 0D0CE0 800D00E0 8CE7A5E4 */  lw    $a3, %lo(osClockRate + 4)($a3)
/* 0D0CE4 800D00E4 8CC6A5E0 */  lw    $a2, %lo(osClockRate)($a2)
/* 0D0CE8 800D00E8 24040000 */  li    $a0, 0
/* 0D0CEC 800D00EC 0C0337F6 */  jal   __ll_mul
/* 0D0CF0 800D00F0 24052EE0 */   li    $a1, 12000
/* 0D0CF4 800D00F4 AFA20028 */  sw    $v0, 0x28($sp)
/* 0D0CF8 800D00F8 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0D0CFC 800D00FC 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 0D0D00 800D0100 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 0D0D04 800D0104 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0D0D08 800D0108 8FA40028 */  lw    $a0, 0x28($sp)
/* 0D0D0C 800D010C 0C0337B6 */  jal   __ull_div
/* 0D0D10 800D0110 24060000 */   li    $a2, 0
/* 0D0D14 800D0114 3C0D8019 */  lui   $t5, %hi(D_80196568) # $t5, 0x8019
/* 0D0D18 800D0118 3C188019 */  lui   $t8, %hi(D_80196580) # $t8, 0x8019
/* 0D0D1C 800D011C 27186580 */  addiu $t8, %lo(D_80196580) # addiu $t8, $t8, 0x6580
/* 0D0D20 800D0120 25AD6568 */  addiu $t5, %lo(D_80196568) # addiu $t5, $t5, 0x6568
/* 0D0D24 800D0124 AFA20030 */  sw    $v0, 0x30($sp)
/* 0D0D28 800D0128 AFA30034 */  sw    $v1, 0x34($sp)
/* 0D0D2C 800D012C 3C048019 */  lui   $a0, %hi(D_80196548) # $a0, 0x8019
/* 0D0D30 800D0130 240E0000 */  li    $t6, 0
/* 0D0D34 800D0134 240F0000 */  li    $t7, 0
/* 0D0D38 800D0138 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0D0D3C 800D013C AFAE0010 */  sw    $t6, 0x10($sp)
/* 0D0D40 800D0140 24846548 */  addiu $a0, %lo(D_80196548) # addiu $a0, $a0, 0x6548
/* 0D0D44 800D0144 8FA70034 */  lw    $a3, 0x34($sp)
/* 0D0D48 800D0148 8FA60030 */  lw    $a2, 0x30($sp)
/* 0D0D4C 800D014C AFAD0018 */  sw    $t5, 0x18($sp)
/* 0D0D50 800D0150 0C034E70 */  jal   osSetTimer
/* 0D0D54 800D0154 AFB8001C */   sw    $t8, 0x1c($sp)
/* 0D0D58 800D0158 3C048019 */  lui   $a0, %hi(D_80196568) # $a0, 0x8019
/* 0D0D5C 800D015C 24846568 */  addiu $a0, %lo(D_80196568) # addiu $a0, $a0, 0x6568
/* 0D0D60 800D0160 00002825 */  move  $a1, $zero
/* 0D0D64 800D0164 0C0335D4 */  jal   osRecvMesg
/* 0D0D68 800D0168 24060001 */   li    $a2, 1
/* 0D0D6C 800D016C 8FB9004C */  lw    $t9, 0x4c($sp)
/* 0D0D70 800D0170 1F20FFC6 */  bgtz  $t9, .L800D008C
/* 0D0D74 800D0174 00000000 */   nop   
.L800D0178:
/* 0D0D78 800D0178 8FA2003C */  lw    $v0, 0x3c($sp)
.L800D017C:
/* 0D0D7C 800D017C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0D0D80 800D0180 27BD0040 */  addiu $sp, $sp, 0x40
/* 0D0D84 800D0184 03E00008 */  jr    $ra
/* 0D0D88 800D0188 00000000 */   nop   

/* 0D0D8C 800D018C 00000000 */  nop   
glabel osEepromLongRead
/* 0D0D90 800D0190 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0D0D94 800D0194 AFA50044 */  sw    $a1, 0x44($sp)
/* 0D0D98 800D0198 93AE0047 */  lbu   $t6, 0x47($sp)
/* 0D0D9C 800D019C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0D0DA0 800D01A0 AFA40040 */  sw    $a0, 0x40($sp)
/* 0D0DA4 800D01A4 29C10041 */  slti  $at, $t6, 0x41
/* 0D0DA8 800D01A8 AFA60048 */  sw    $a2, 0x48($sp)
/* 0D0DAC 800D01AC AFA7004C */  sw    $a3, 0x4c($sp)
/* 0D0DB0 800D01B0 14200003 */  bnez  $at, .L800D01C0
/* 0D0DB4 800D01B4 AFA0003C */   sw    $zero, 0x3c($sp)
/* 0D0DB8 800D01B8 10000040 */  b     .L800D02BC
/* 0D0DBC 800D01BC 2402FFFF */   li    $v0, -1
.L800D01C0:
/* 0D0DC0 800D01C0 8FAF004C */  lw    $t7, 0x4c($sp)
/* 0D0DC4 800D01C4 19E0003C */  blez  $t7, .L800D02B8
/* 0D0DC8 800D01C8 00000000 */   nop   
.L800D01CC:
/* 0D0DCC 800D01CC 8FA40040 */  lw    $a0, 0x40($sp)
/* 0D0DD0 800D01D0 93A50047 */  lbu   $a1, 0x47($sp)
/* 0D0DD4 800D01D4 0C035DA8 */  jal   osEepromRead
/* 0D0DD8 800D01D8 8FA60048 */   lw    $a2, 0x48($sp)
/* 0D0DDC 800D01DC AFA2003C */  sw    $v0, 0x3c($sp)
/* 0D0DE0 800D01E0 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0D0DE4 800D01E4 13000003 */  beqz  $t8, .L800D01F4
/* 0D0DE8 800D01E8 00000000 */   nop   
/* 0D0DEC 800D01EC 10000033 */  b     .L800D02BC
/* 0D0DF0 800D01F0 03001025 */   move  $v0, $t8
.L800D01F4:
/* 0D0DF4 800D01F4 8FB9004C */  lw    $t9, 0x4c($sp)
/* 0D0DF8 800D01F8 93A90047 */  lbu   $t1, 0x47($sp)
/* 0D0DFC 800D01FC 8FAB0048 */  lw    $t3, 0x48($sp)
/* 0D0E00 800D0200 3C06800F */  lui   $a2, %hi(osClockRate) # $a2, 0x800f
/* 0D0E04 800D0204 3C07800F */  lui   $a3, %hi(osClockRate + 4) # $a3, 0x800f
/* 0D0E08 800D0208 2728FFF8 */  addiu $t0, $t9, -8
/* 0D0E0C 800D020C 252A0001 */  addiu $t2, $t1, 1
/* 0D0E10 800D0210 256C0008 */  addiu $t4, $t3, 8
/* 0D0E14 800D0214 AFA8004C */  sw    $t0, 0x4c($sp)
/* 0D0E18 800D0218 A3AA0047 */  sb    $t2, 0x47($sp)
/* 0D0E1C 800D021C AFAC0048 */  sw    $t4, 0x48($sp)
/* 0D0E20 800D0220 8CE7A5E4 */  lw    $a3, %lo(osClockRate + 4)($a3)
/* 0D0E24 800D0224 8CC6A5E0 */  lw    $a2, %lo(osClockRate)($a2)
/* 0D0E28 800D0228 24040000 */  li    $a0, 0
/* 0D0E2C 800D022C 0C0337F6 */  jal   __ll_mul
/* 0D0E30 800D0230 24052EE0 */   li    $a1, 12000
/* 0D0E34 800D0234 AFA20028 */  sw    $v0, 0x28($sp)
/* 0D0E38 800D0238 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0D0E3C 800D023C 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 0D0E40 800D0240 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 0D0E44 800D0244 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0D0E48 800D0248 8FA40028 */  lw    $a0, 0x28($sp)
/* 0D0E4C 800D024C 0C0337B6 */  jal   __ull_div
/* 0D0E50 800D0250 24060000 */   li    $a2, 0
/* 0D0E54 800D0254 3C0D8019 */  lui   $t5, %hi(D_80196568) # $t5, 0x8019
/* 0D0E58 800D0258 3C188019 */  lui   $t8, %hi(D_80196580) # $t8, 0x8019
/* 0D0E5C 800D025C 27186580 */  addiu $t8, %lo(D_80196580) # addiu $t8, $t8, 0x6580
/* 0D0E60 800D0260 25AD6568 */  addiu $t5, %lo(D_80196568) # addiu $t5, $t5, 0x6568
/* 0D0E64 800D0264 AFA20030 */  sw    $v0, 0x30($sp)
/* 0D0E68 800D0268 AFA30034 */  sw    $v1, 0x34($sp)
/* 0D0E6C 800D026C 3C048019 */  lui   $a0, %hi(D_80196548) # $a0, 0x8019
/* 0D0E70 800D0270 240E0000 */  li    $t6, 0
/* 0D0E74 800D0274 240F0000 */  li    $t7, 0
/* 0D0E78 800D0278 AFAF0014 */  sw    $t7, 0x14($sp)
/* 0D0E7C 800D027C AFAE0010 */  sw    $t6, 0x10($sp)
/* 0D0E80 800D0280 24846548 */  addiu $a0, %lo(D_80196548) # addiu $a0, $a0, 0x6548
/* 0D0E84 800D0284 8FA70034 */  lw    $a3, 0x34($sp)
/* 0D0E88 800D0288 8FA60030 */  lw    $a2, 0x30($sp)
/* 0D0E8C 800D028C AFAD0018 */  sw    $t5, 0x18($sp)
/* 0D0E90 800D0290 0C034E70 */  jal   osSetTimer
/* 0D0E94 800D0294 AFB8001C */   sw    $t8, 0x1c($sp)
/* 0D0E98 800D0298 3C048019 */  lui   $a0, %hi(D_80196568) # $a0, 0x8019
/* 0D0E9C 800D029C 24846568 */  addiu $a0, %lo(D_80196568) # addiu $a0, $a0, 0x6568
/* 0D0EA0 800D02A0 00002825 */  move  $a1, $zero
/* 0D0EA4 800D02A4 0C0335D4 */  jal   osRecvMesg
/* 0D0EA8 800D02A8 24060001 */   li    $a2, 1
/* 0D0EAC 800D02AC 8FB9004C */  lw    $t9, 0x4c($sp)
/* 0D0EB0 800D02B0 1F20FFC6 */  bgtz  $t9, .L800D01CC
/* 0D0EB4 800D02B4 00000000 */   nop   
.L800D02B8:
/* 0D0EB8 800D02B8 8FA2003C */  lw    $v0, 0x3c($sp)
.L800D02BC:
/* 0D0EBC 800D02BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0D0EC0 800D02C0 27BD0040 */  addiu $sp, $sp, 0x40
/* 0D0EC4 800D02C4 03E00008 */  jr    $ra
/* 0D0EC8 800D02C8 00000000 */   nop   

/* 0D0ECC 800D02CC 00000000 */  nop   
