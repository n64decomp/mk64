glabel func_80065F0C
/* 066B0C 80065F0C 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 066B10 80065F10 00067400 */  sll   $t6, $a2, 0x10
/* 066B14 80065F14 000E7C03 */  sra   $t7, $t6, 0x10
/* 066B18 80065F18 000F70C0 */  sll   $t6, $t7, 3
/* 066B1C 80065F1C 01CF7021 */  addu  $t6, $t6, $t7
/* 066B20 80065F20 000E70C0 */  sll   $t6, $t6, 3
/* 066B24 80065F24 AFBF0034 */  sw    $ra, 0x34($sp)
/* 066B28 80065F28 AFB30030 */  sw    $s3, 0x30($sp)
/* 066B2C 80065F2C AFB2002C */  sw    $s2, 0x2c($sp)
/* 066B30 80065F30 AFB10028 */  sw    $s1, 0x28($sp)
/* 066B34 80065F34 AFB00024 */  sw    $s0, 0x24($sp)
/* 066B38 80065F38 AFA500EC */  sw    $a1, 0xec($sp)
/* 066B3C 80065F3C AFA600F0 */  sw    $a2, 0xf0($sp)
/* 066B40 80065F40 AFA700F4 */  sw    $a3, 0xf4($sp)
/* 066B44 80065F44 008E1021 */  addu  $v0, $a0, $t6
/* 066B48 80065F48 844F0544 */  lh    $t7, 0x544($v0)
/* 066B4C 80065F4C 0007C600 */  sll   $t8, $a3, 0x18
/* 066B50 80065F50 24010001 */  li    $at, 1
/* 066B54 80065F54 0018CE03 */  sra   $t9, $t8, 0x18
/* 066B58 80065F58 15E1015A */  bne   $t7, $at, .L800664C4
/* 066B5C 80065F5C 00808025 */   move  $s0, $a0
/* 066B60 80065F60 84580546 */  lh    $t8, 0x546($v0)
/* 066B64 80065F64 53000158 */  beql  $t8, $zero, .L800664C8
/* 066B68 80065F68 8FBF0034 */   lw    $ra, 0x34($sp)
/* 066B6C 80065F6C C4440528 */  lwc1  $f4, 0x528($v0)
/* 066B70 80065F70 0019C840 */  sll   $t9, $t9, 1
/* 066B74 80065F74 00997021 */  addu  $t6, $a0, $t9
/* 066B78 80065F78 E7A400DC */  swc1  $f4, 0xdc($sp)
/* 066B7C 80065F7C C446052C */  lwc1  $f6, 0x52c($v0)
/* 066B80 80065F80 27A400DC */  addiu $a0, $sp, 0xdc
/* 066B84 80065F84 27A500D4 */  addiu $a1, $sp, 0xd4
/* 066B88 80065F88 E7A600E0 */  swc1  $f6, 0xe0($sp)
/* 066B8C 80065F8C C4480530 */  lwc1  $f8, 0x530($v0)
/* 066B90 80065F90 A7A000D4 */  sh    $zero, 0xd4($sp)
/* 066B94 80065F94 E7A800E4 */  swc1  $f8, 0xe4($sp)
/* 066B98 80065F98 85CF0048 */  lh    $t7, 0x48($t6)
/* 066B9C 80065F9C A7A000D8 */  sh    $zero, 0xd8($sp)
/* 066BA0 80065FA0 A7AF00D6 */  sh    $t7, 0xd6($sp)
/* 066BA4 80065FA4 C6100224 */  lwc1  $f16, 0x224($s0)
/* 066BA8 80065FA8 C44A0534 */  lwc1  $f10, 0x534($v0)
/* 066BAC 80065FAC AFA20044 */  sw    $v0, 0x44($sp)
/* 066BB0 80065FB0 46105482 */  mul.s $f18, $f10, $f16
/* 066BB4 80065FB4 44069000 */  mfc1  $a2, $f18
/* 066BB8 80065FB8 0C0194B5 */  jal   func_800652D4
/* 066BBC 80065FBC 00000000 */   nop
/* 066BC0 80065FC0 8FA20044 */  lw    $v0, 0x44($sp)
/* 066BC4 80065FC4 24010008 */  li    $at, 8
/* 066BC8 80065FC8 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 066BCC 80065FCC C444053C */  lwc1  $f4, 0x53c($v0)
/* 066BD0 80065FD0 3C0F0D01 */  lui   $t7, %hi(D_0D008C90) # $t7, 0xd01
/* 066BD4 80065FD4 3C03800E */  lui   $v1, %hi(D_800E47DC)
/* 066BD8 80065FD8 4600218D */  trunc.w.s $f6, $f4
/* 066BDC 80065FDC 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 066BE0 80065FE0 25EF8C90 */  addiu $t7, %lo(D_0D008C90) # addiu $t7, $t7, -0x7370
/* 066BE4 80065FE4 3C0E0600 */  lui   $t6, 0x600
/* 066BE8 80065FE8 44193000 */  mfc1  $t9, $f6
/* 066BEC 80065FEC 00000000 */  nop
/* 066BF0 80065FF0 532100D0 */  beql  $t9, $at, .L80066334
/* 066BF4 80065FF4 8E300000 */   lw    $s0, ($s1)
/* 066BF8 80065FF8 84450560 */  lh    $a1, 0x560($v0)
/* 066BFC 80065FFC 84440562 */  lh    $a0, 0x562($v0)
/* 066C00 80066000 3C06800E */  lui   $a2, %hi(D_800E480C)
/* 066C04 80066004 00057080 */  sll   $t6, $a1, 2
/* 066C08 80066008 006E1821 */  addu  $v1, $v1, $t6
/* 066C0C 8006600C 8C6347DC */  lw    $v1, %lo(D_800E47DC)($v1)
/* 066C10 80066010 01C02825 */  move  $a1, $t6
/* 066C14 80066014 00C53021 */  addu  $a2, $a2, $a1
/* 066C18 80066018 00037C03 */  sra   $t7, $v1, 0x10
/* 066C1C 8006601C 31F800FF */  andi  $t8, $t7, 0xff
/* 066C20 80066020 0304F823 */  subu  $ra, $t8, $a0
/* 066C24 80066024 00037A03 */  sra   $t7, $v1, 8
/* 066C28 80066028 31F800FF */  andi  $t8, $t7, 0xff
/* 066C2C 8006602C 8CC6480C */  lw    $a2, %lo(D_800E480C)($a2)
/* 066C30 80066030 306F00FF */  andi  $t7, $v1, 0xff
/* 066C34 80066034 001FCC00 */  sll   $t9, $ra, 0x10
/* 066C38 80066038 03049023 */  subu  $s2, $t8, $a0
/* 066C3C 8006603C 01E49823 */  subu  $s3, $t7, $a0
/* 066C40 80066040 0019FC03 */  sra   $ra, $t9, 0x10
/* 066C44 80066044 0012CC00 */  sll   $t9, $s2, 0x10
/* 066C48 80066048 0013C400 */  sll   $t8, $s3, 0x10
/* 066C4C 8006604C 00067403 */  sra   $t6, $a2, 0x10
/* 066C50 80066050 00199403 */  sra   $s2, $t9, 0x10
/* 066C54 80066054 00189C03 */  sra   $s3, $t8, 0x10
/* 066C58 80066058 31CF00FF */  andi  $t7, $t6, 0xff
/* 066C5C 8006605C 01E4C023 */  subu  $t8, $t7, $a0
/* 066C60 80066060 0006CA03 */  sra   $t9, $a2, 8
/* 066C64 80066064 A7B800CA */  sh    $t8, 0xca($sp)
/* 066C68 80066068 332E00FF */  andi  $t6, $t9, 0xff
/* 066C6C 8006606C 30D800FF */  andi  $t8, $a2, 0xff
/* 066C70 80066070 01C47823 */  subu  $t7, $t6, $a0
/* 066C74 80066074 0304C823 */  subu  $t9, $t8, $a0
/* 066C78 80066078 A7AF00C8 */  sh    $t7, 0xc8($sp)
/* 066C7C 8006607C A7B900C6 */  sh    $t9, 0xc6($sp)
/* 066C80 80066080 844E0566 */  lh    $t6, 0x566($v0)
/* 066C84 80066084 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 066C88 80066088 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 066C8C 8006608C A7AE00CC */  sh    $t6, 0xcc($sp)
/* 066C90 80066090 844F0568 */  lh    $t7, 0x568($v0)
/* 066C94 80066094 3C0E0D01 */  lui   $t6, %hi(D_0D008DB8) # $t6, 0xd01
/* 066C98 80066098 3C190D01 */  lui   $t9, 0xd01
/* 066C9C 8006609C 15E00050 */  bnez  $t7, .L800661E0
/* 066CA0 800660A0 3C180600 */   lui   $t8, 0x600
/* 066CA4 800660A4 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 066CA8 800660A8 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 066CAC 800660AC 8E300000 */  lw    $s0, ($s1)
/* 066CB0 800660B0 3C190600 */  lui   $t9, 0x600
/* 066CB4 800660B4 25CE8DB8 */  addiu $t6, %lo(D_0D008DB8) # addiu $t6, $t6, -0x7248
/* 066CB8 800660B8 26180008 */  addiu $t8, $s0, 8
/* 066CBC 800660BC AE380000 */  sw    $t8, ($s1)
/* 066CC0 800660C0 AE0E0004 */  sw    $t6, 4($s0)
/* 066CC4 800660C4 AE190000 */  sw    $t9, ($s0)
/* 066CC8 800660C8 8E300000 */  lw    $s0, ($s1)
/* 066CCC 800660CC 3C18FD90 */  lui   $t8, 0xfd90
/* 066CD0 800660D0 3C198019 */  lui   $t9, %hi(D_8018D494) # $t9, 0x8019
/* 066CD4 800660D4 260F0008 */  addiu $t7, $s0, 8
/* 066CD8 800660D8 AE2F0000 */  sw    $t7, ($s1)
/* 066CDC 800660DC AE180000 */  sw    $t8, ($s0)
/* 066CE0 800660E0 8F39D494 */  lw    $t9, %lo(D_8018D494)($t9)
/* 066CE4 800660E4 3C180700 */  lui   $t8, 0x700
/* 066CE8 800660E8 3C0FF590 */  lui   $t7, 0xf590
/* 066CEC 800660EC AE190004 */  sw    $t9, 4($s0)
/* 066CF0 800660F0 8E300000 */  lw    $s0, ($s1)
/* 066CF4 800660F4 03E02025 */  move  $a0, $ra
/* 066CF8 800660F8 02402825 */  move  $a1, $s2
/* 066CFC 800660FC 260E0008 */  addiu $t6, $s0, 8
/* 066D00 80066100 AE2E0000 */  sw    $t6, ($s1)
/* 066D04 80066104 AE180004 */  sw    $t8, 4($s0)
/* 066D08 80066108 AE0F0000 */  sw    $t7, ($s0)
/* 066D0C 8006610C 8E300000 */  lw    $s0, ($s1)
/* 066D10 80066110 3C0EE600 */  lui   $t6, 0xe600
/* 066D14 80066114 3C18F300 */  lui   $t8, 0xf300
/* 066D18 80066118 26190008 */  addiu $t9, $s0, 8
/* 066D1C 8006611C AE390000 */  sw    $t9, ($s1)
/* 066D20 80066120 AE000004 */  sw    $zero, 4($s0)
/* 066D24 80066124 AE0E0000 */  sw    $t6, ($s0)
/* 066D28 80066128 8E300000 */  lw    $s0, ($s1)
/* 066D2C 8006612C 3C19071F */  lui   $t9, (0x071FF200 >> 16) # lui $t9, 0x71f
/* 066D30 80066130 3739F200 */  ori   $t9, (0x071FF200 & 0xFFFF) # ori $t9, $t9, 0xf200
/* 066D34 80066134 260F0008 */  addiu $t7, $s0, 8
/* 066D38 80066138 AE2F0000 */  sw    $t7, ($s1)
/* 066D3C 8006613C AE190004 */  sw    $t9, 4($s0)
/* 066D40 80066140 AE180000 */  sw    $t8, ($s0)
/* 066D44 80066144 8E300000 */  lw    $s0, ($s1)
/* 066D48 80066148 3C0FE700 */  lui   $t7, 0xe700
/* 066D4C 8006614C 3C19F588 */  lui   $t9, (0xF5880800 >> 16) # lui $t9, 0xf588
/* 066D50 80066150 260E0008 */  addiu $t6, $s0, 8
/* 066D54 80066154 AE2E0000 */  sw    $t6, ($s1)
/* 066D58 80066158 AE000004 */  sw    $zero, 4($s0)
/* 066D5C 8006615C AE0F0000 */  sw    $t7, ($s0)
/* 066D60 80066160 8E300000 */  lw    $s0, ($s1)
/* 066D64 80066164 37390800 */  ori   $t9, (0xF5880800 & 0xFFFF) # ori $t9, $t9, 0x800
/* 066D68 80066168 3C0FF200 */  lui   $t7, 0xf200
/* 066D6C 8006616C 26180008 */  addiu $t8, $s0, 8
/* 066D70 80066170 AE380000 */  sw    $t8, ($s1)
/* 066D74 80066174 AE000004 */  sw    $zero, 4($s0)
/* 066D78 80066178 AE190000 */  sw    $t9, ($s0)
/* 066D7C 8006617C 8E300000 */  lw    $s0, ($s1)
/* 066D80 80066180 3C180007 */  lui   $t8, (0x0007C07C >> 16) # lui $t8, 7
/* 066D84 80066184 3718C07C */  ori   $t8, (0x0007C07C & 0xFFFF) # ori $t8, $t8, 0xc07c
/* 066D88 80066188 260E0008 */  addiu $t6, $s0, 8
/* 066D8C 8006618C AE2E0000 */  sw    $t6, ($s1)
/* 066D90 80066190 AE180004 */  sw    $t8, 4($s0)
/* 066D94 80066194 AE0F0000 */  sw    $t7, ($s0)
/* 066D98 80066198 87AF00CC */  lh    $t7, 0xcc($sp)
/* 066D9C 8006619C 87AE00C6 */  lh    $t6, 0xc6($sp)
/* 066DA0 800661A0 87B900C8 */  lh    $t9, 0xc8($sp)
/* 066DA4 800661A4 87A700CA */  lh    $a3, 0xca($sp)
/* 066DA8 800661A8 02603025 */  move  $a2, $s3
/* 066DAC 800661AC AFAF0018 */  sw    $t7, 0x18($sp)
/* 066DB0 800661B0 AFAE0014 */  sw    $t6, 0x14($sp)
/* 066DB4 800661B4 0C012DCB */  jal   func_8004B72C
/* 066DB8 800661B8 AFB90010 */   sw    $t9, 0x10($sp)
/* 066DBC 800661BC 8E300000 */  lw    $s0, ($s1)
/* 066DC0 800661C0 3C0E0D01 */  lui   $t6, %hi(D_0D008E48) # $t6, 0xd01
/* 066DC4 800661C4 25CE8E48 */  addiu $t6, %lo(D_0D008E48) # addiu $t6, $t6, -0x71b8
/* 066DC8 800661C8 26180008 */  addiu $t8, $s0, 8
/* 066DCC 800661CC AE380000 */  sw    $t8, ($s1)
/* 066DD0 800661D0 3C190600 */  lui   $t9, %hi(D_05FF8DB8) # $t9, 0x600
/* 066DD4 800661D4 AE190000 */  sw    $t9, ($s0)
/* 066DD8 800661D8 100000B5 */  b     .L800664B0
/* 066DDC 800661DC AE0E0004 */   sw    $t6, 4($s0)
.L800661E0:
/* 066DE0 800661E0 8E300000 */  lw    $s0, ($s1)
/* 066DE4 800661E4 27398DB8 */  addiu $t9, %lo(D_05FF8DB8) # addiu $t9, $t9, -0x7248
/* 066DE8 800661E8 03E02025 */  move  $a0, $ra
/* 066DEC 800661EC 260F0008 */  addiu $t7, $s0, 8
/* 066DF0 800661F0 AE2F0000 */  sw    $t7, ($s1)
/* 066DF4 800661F4 AE190004 */  sw    $t9, 4($s0)
/* 066DF8 800661F8 AE180000 */  sw    $t8, ($s0)
/* 066DFC 800661FC 8E300000 */  lw    $s0, ($s1)
/* 066E00 80066200 3C0FFD90 */  lui   $t7, 0xfd90
/* 066E04 80066204 3C188019 */  lui   $t8, %hi(D_8018D494) # $t8, 0x8019
/* 066E08 80066208 260E0008 */  addiu $t6, $s0, 8
/* 066E0C 8006620C AE2E0000 */  sw    $t6, ($s1)
/* 066E10 80066210 AE0F0000 */  sw    $t7, ($s0)
/* 066E14 80066214 8F18D494 */  lw    $t8, %lo(D_8018D494)($t8)
/* 066E18 80066218 3C0F0700 */  lui   $t7, 0x700
/* 066E1C 8006621C 3C0EF590 */  lui   $t6, 0xf590
/* 066E20 80066220 AE180004 */  sw    $t8, 4($s0)
/* 066E24 80066224 8E300000 */  lw    $s0, ($s1)
/* 066E28 80066228 02402825 */  move  $a1, $s2
/* 066E2C 8006622C 02603025 */  move  $a2, $s3
/* 066E30 80066230 26190008 */  addiu $t9, $s0, 8
/* 066E34 80066234 AE390000 */  sw    $t9, ($s1)
/* 066E38 80066238 AE0F0004 */  sw    $t7, 4($s0)
/* 066E3C 8006623C AE0E0000 */  sw    $t6, ($s0)
/* 066E40 80066240 8E300000 */  lw    $s0, ($s1)
/* 066E44 80066244 3C19E600 */  lui   $t9, 0xe600
/* 066E48 80066248 3C0FF300 */  lui   $t7, 0xf300
/* 066E4C 8006624C 26180008 */  addiu $t8, $s0, 8
/* 066E50 80066250 AE380000 */  sw    $t8, ($s1)
/* 066E54 80066254 AE000004 */  sw    $zero, 4($s0)
/* 066E58 80066258 AE190000 */  sw    $t9, ($s0)
/* 066E5C 8006625C 8E300000 */  lw    $s0, ($s1)
/* 066E60 80066260 3C18071F */  lui   $t8, (0x071FF200 >> 16) # lui $t8, 0x71f
/* 066E64 80066264 3718F200 */  ori   $t8, (0x071FF200 & 0xFFFF) # ori $t8, $t8, 0xf200
/* 066E68 80066268 260E0008 */  addiu $t6, $s0, 8
/* 066E6C 8006626C AE2E0000 */  sw    $t6, ($s1)
/* 066E70 80066270 AE180004 */  sw    $t8, 4($s0)
/* 066E74 80066274 AE0F0000 */  sw    $t7, ($s0)
/* 066E78 80066278 8E300000 */  lw    $s0, ($s1)
/* 066E7C 8006627C 3C0EE700 */  lui   $t6, 0xe700
/* 066E80 80066280 3C18F588 */  lui   $t8, (0xF5880800 >> 16) # lui $t8, 0xf588
/* 066E84 80066284 26190008 */  addiu $t9, $s0, 8
/* 066E88 80066288 AE390000 */  sw    $t9, ($s1)
/* 066E8C 8006628C AE000004 */  sw    $zero, 4($s0)
/* 066E90 80066290 AE0E0000 */  sw    $t6, ($s0)
/* 066E94 80066294 8E300000 */  lw    $s0, ($s1)
/* 066E98 80066298 37180800 */  ori   $t8, (0xF5880800 & 0xFFFF) # ori $t8, $t8, 0x800
/* 066E9C 8006629C 3C0EF200 */  lui   $t6, 0xf200
/* 066EA0 800662A0 260F0008 */  addiu $t7, $s0, 8
/* 066EA4 800662A4 AE2F0000 */  sw    $t7, ($s1)
/* 066EA8 800662A8 AE000004 */  sw    $zero, 4($s0)
/* 066EAC 800662AC AE180000 */  sw    $t8, ($s0)
/* 066EB0 800662B0 8E300000 */  lw    $s0, ($s1)
/* 066EB4 800662B4 3C0F0007 */  lui   $t7, (0x0007C07C >> 16) # lui $t7, 7
/* 066EB8 800662B8 35EFC07C */  ori   $t7, (0x0007C07C & 0xFFFF) # ori $t7, $t7, 0xc07c
/* 066EBC 800662BC 26190008 */  addiu $t9, $s0, 8
/* 066EC0 800662C0 AE390000 */  sw    $t9, ($s1)
/* 066EC4 800662C4 AE0F0004 */  sw    $t7, 4($s0)
/* 066EC8 800662C8 AE0E0000 */  sw    $t6, ($s0)
/* 066ECC 800662CC 87AE00CC */  lh    $t6, 0xcc($sp)
/* 066ED0 800662D0 87B900C6 */  lh    $t9, 0xc6($sp)
/* 066ED4 800662D4 87B800C8 */  lh    $t8, 0xc8($sp)
/* 066ED8 800662D8 87A700CA */  lh    $a3, 0xca($sp)
/* 066EDC 800662DC AFAE0018 */  sw    $t6, 0x18($sp)
/* 066EE0 800662E0 AFB90014 */  sw    $t9, 0x14($sp)
/* 066EE4 800662E4 0C012DCB */  jal   func_8004B72C
/* 066EE8 800662E8 AFB80010 */   sw    $t8, 0x10($sp)
/* 066EEC 800662EC 8E300000 */  lw    $s0, ($s1)
/* 066EF0 800662F0 3C18B900 */  lui   $t8, (0xB9000002 >> 16) # lui $t8, 0xb900
/* 066EF4 800662F4 37180002 */  ori   $t8, (0xB9000002 & 0xFFFF) # ori $t8, $t8, 2
/* 066EF8 800662F8 260F0008 */  addiu $t7, $s0, 8
/* 066EFC 800662FC AE2F0000 */  sw    $t7, ($s1)
/* 066F00 80066300 24190003 */  li    $t9, 3
/* 066F04 80066304 AE190004 */  sw    $t9, 4($s0)
/* 066F08 80066308 AE180000 */  sw    $t8, ($s0)
/* 066F0C 8006630C 8E300000 */  lw    $s0, ($s1)
/* 066F10 80066310 3C180D01 */  lui   $t8, %hi(D_0D008E48) # $t8, 0xd01
/* 066F14 80066314 27188E48 */  addiu $t8, %lo(D_0D008E48) # addiu $t8, $t8, -0x71b8
/* 066F18 80066318 260E0008 */  addiu $t6, $s0, 8
/* 066F1C 8006631C AE2E0000 */  sw    $t6, ($s1)
/* 066F20 80066320 3C0F0600 */  lui   $t7, 0x600
/* 066F24 80066324 AE0F0000 */  sw    $t7, ($s0)
/* 066F28 80066328 10000061 */  b     .L800664B0
/* 066F2C 8006632C AE180004 */   sw    $t8, 4($s0)
/* 066F30 80066330 8E300000 */  lw    $s0, ($s1)
.L80066334:
/* 066F34 80066334 84440560 */  lh    $a0, 0x560($v0)
/* 066F38 80066338 84450562 */  lh    $a1, 0x562($v0)
/* 066F3C 8006633C 84460564 */  lh    $a2, 0x564($v0)
/* 066F40 80066340 26190008 */  addiu $t9, $s0, 8
/* 066F44 80066344 AE390000 */  sw    $t9, ($s1)
/* 066F48 80066348 AE0F0004 */  sw    $t7, 4($s0)
/* 066F4C 8006634C AE0E0000 */  sw    $t6, ($s0)
/* 066F50 80066350 8E300000 */  lw    $s0, ($s1)
/* 066F54 80066354 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 066F58 80066358 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 066F5C 8006635C 26180008 */  addiu $t8, $s0, 8
/* 066F60 80066360 AE380000 */  sw    $t8, ($s1)
/* 066F64 80066364 AE000004 */  sw    $zero, 4($s0)
/* 066F68 80066368 AE190000 */  sw    $t9, ($s0)
/* 066F6C 8006636C 8E300000 */  lw    $s0, ($s1)
/* 066F70 80066370 3C0FFD10 */  lui   $t7, 0xfd10
/* 066F74 80066374 3C188019 */  lui   $t8, %hi(D_8018D498) # $t8, 0x8019
/* 066F78 80066378 260E0008 */  addiu $t6, $s0, 8
/* 066F7C 8006637C AE2E0000 */  sw    $t6, ($s1)
/* 066F80 80066380 AE0F0000 */  sw    $t7, ($s0)
/* 066F84 80066384 8F18D498 */  lw    $t8, %lo(D_8018D498)($t8)
/* 066F88 80066388 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 066F8C 8006638C 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 066F90 80066390 AE180004 */  sw    $t8, 4($s0)
/* 066F94 80066394 8E300000 */  lw    $s0, ($s1)
/* 066F98 80066398 3C0EF510 */  lui   $t6, 0xf510
/* 066F9C 8006639C 240700FF */  li    $a3, 255
/* 066FA0 800663A0 26190008 */  addiu $t9, $s0, 8
/* 066FA4 800663A4 AE390000 */  sw    $t9, ($s1)
/* 066FA8 800663A8 AE0F0004 */  sw    $t7, 4($s0)
/* 066FAC 800663AC AE0E0000 */  sw    $t6, ($s0)
/* 066FB0 800663B0 8E300000 */  lw    $s0, ($s1)
/* 066FB4 800663B4 3C19E600 */  lui   $t9, 0xe600
/* 066FB8 800663B8 3C0FF300 */  lui   $t7, 0xf300
/* 066FBC 800663BC 26180008 */  addiu $t8, $s0, 8
/* 066FC0 800663C0 AE380000 */  sw    $t8, ($s1)
/* 066FC4 800663C4 AE000004 */  sw    $zero, 4($s0)
/* 066FC8 800663C8 AE190000 */  sw    $t9, ($s0)
/* 066FCC 800663CC 8E300000 */  lw    $s0, ($s1)
/* 066FD0 800663D0 3C18077F */  lui   $t8, (0x077FF100 >> 16) # lui $t8, 0x77f
/* 066FD4 800663D4 3718F100 */  ori   $t8, (0x077FF100 & 0xFFFF) # ori $t8, $t8, 0xf100
/* 066FD8 800663D8 260E0008 */  addiu $t6, $s0, 8
/* 066FDC 800663DC AE2E0000 */  sw    $t6, ($s1)
/* 066FE0 800663E0 AE180004 */  sw    $t8, 4($s0)
/* 066FE4 800663E4 AE0F0000 */  sw    $t7, ($s0)
/* 066FE8 800663E8 8E300000 */  lw    $s0, ($s1)
/* 066FEC 800663EC 3C0EE700 */  lui   $t6, 0xe700
/* 066FF0 800663F0 3C18F510 */  lui   $t8, (0xF5101000 >> 16) # lui $t8, 0xf510
/* 066FF4 800663F4 26190008 */  addiu $t9, $s0, 8
/* 066FF8 800663F8 AE390000 */  sw    $t9, ($s1)
/* 066FFC 800663FC AE000004 */  sw    $zero, 4($s0)
/* 067000 80066400 AE0E0000 */  sw    $t6, ($s0)
/* 067004 80066404 8E300000 */  lw    $s0, ($s1)
/* 067008 80066408 3C190008 */  lui   $t9, (0x00080200 >> 16) # lui $t9, 8
/* 06700C 8006640C 37390200 */  ori   $t9, (0x00080200 & 0xFFFF) # ori $t9, $t9, 0x200
/* 067010 80066410 260F0008 */  addiu $t7, $s0, 8
/* 067014 80066414 AE2F0000 */  sw    $t7, ($s1)
/* 067018 80066418 37181000 */  ori   $t8, (0xF5101000 & 0xFFFF) # ori $t8, $t8, 0x1000
/* 06701C 8006641C AE180000 */  sw    $t8, ($s0)
/* 067020 80066420 AE190004 */  sw    $t9, 4($s0)
/* 067024 80066424 8E300000 */  lw    $s0, ($s1)
/* 067028 80066428 3C180007 */  lui   $t8, (0x0007C0FC >> 16) # lui $t8, 7
/* 06702C 8006642C 3718C0FC */  ori   $t8, (0x0007C0FC & 0xFFFF) # ori $t8, $t8, 0xc0fc
/* 067030 80066430 260E0008 */  addiu $t6, $s0, 8
/* 067034 80066434 AE2E0000 */  sw    $t6, ($s1)
/* 067038 80066438 3C0FF200 */  lui   $t7, 0xf200
/* 06703C 8006643C AE0F0000 */  sw    $t7, ($s0)
/* 067040 80066440 0C012CD7 */  jal   func_8004B35C
/* 067044 80066444 AE180004 */   sw    $t8, 4($s0)
/* 067048 80066448 8E300000 */  lw    $s0, ($s1)
/* 06704C 8006644C 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 067050 80066450 3C0F0055 */  lui   $t7, (0x00553078 >> 16) # lui $t7, 0x55
/* 067054 80066454 26190008 */  addiu $t9, $s0, 8
/* 067058 80066458 AE390000 */  sw    $t9, ($s1)
/* 06705C 8006645C 35EF3078 */  ori   $t7, (0x00553078 & 0xFFFF) # ori $t7, $t7, 0x3078
/* 067060 80066460 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 067064 80066464 AE0E0000 */  sw    $t6, ($s0)
/* 067068 80066468 AE0F0004 */  sw    $t7, 4($s0)
/* 06706C 8006646C 8E300000 */  lw    $s0, ($s1)
/* 067070 80066470 3C0E800F */  lui   $t6, %hi(D_800E8C00) # $t6, 0x800f
/* 067074 80066474 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 067078 80066478 26180008 */  addiu $t8, $s0, 8
/* 06707C 8006647C AE380000 */  sw    $t8, ($s1)
/* 067080 80066480 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 067084 80066484 25CE8C00 */  addiu $t6, %lo(D_800E8C00) # addiu $t6, $t6, -0x7400
/* 067088 80066488 AE0E0004 */  sw    $t6, 4($s0)
/* 06708C 8006648C AE190000 */  sw    $t9, ($s0)
/* 067090 80066490 8E300000 */  lw    $s0, ($s1)
/* 067094 80066494 3C190D01 */  lui   $t9, %hi(D_0D008DA0) # $t9, 0xd01
/* 067098 80066498 27398DA0 */  addiu $t9, %lo(D_0D008DA0) # addiu $t9, $t9, -0x7260
/* 06709C 8006649C 260F0008 */  addiu $t7, $s0, 8
/* 0670A0 800664A0 AE2F0000 */  sw    $t7, ($s1)
/* 0670A4 800664A4 3C180600 */  lui   $t8, 0x600
/* 0670A8 800664A8 AE180000 */  sw    $t8, ($s0)
/* 0670AC 800664AC AE190004 */  sw    $t9, 4($s0)
.L800664B0:
/* 0670B0 800664B0 3C028016 */  lui   $v0, %hi(D_80164AF0) # $v0, 0x8016
/* 0670B4 800664B4 24424AF0 */  addiu $v0, %lo(D_80164AF0) # addiu $v0, $v0, 0x4af0
/* 0670B8 800664B8 844E0000 */  lh    $t6, ($v0)
/* 0670BC 800664BC 25CF0001 */  addiu $t7, $t6, 1
/* 0670C0 800664C0 A44F0000 */  sh    $t7, ($v0)
.L800664C4:
/* 0670C4 800664C4 8FBF0034 */  lw    $ra, 0x34($sp)
.L800664C8:
/* 0670C8 800664C8 8FB00024 */  lw    $s0, 0x24($sp)
/* 0670CC 800664CC 8FB10028 */  lw    $s1, 0x28($sp)
/* 0670D0 800664D0 8FB2002C */  lw    $s2, 0x2c($sp)
/* 0670D4 800664D4 8FB30030 */  lw    $s3, 0x30($sp)
/* 0670D8 800664D8 03E00008 */  jr    $ra
/* 0670DC 800664DC 27BD00E8 */   addiu $sp, $sp, 0xe8
