glabel func_80081FF4
/* 082BF4 80081FF4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 082BF8 80081FF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 082BFC 80081FFC AFA5003C */  sw    $a1, 0x3c($sp)
/* 082C00 80082000 AFA40038 */  sw    $a0, 0x38($sp)
/* 082C04 80082004 0C01C8E9 */  jal   func_800723A4
/* 082C08 80082008 00002825 */   move  $a1, $zero
/* 082C0C 8008200C 0C0ADF8D */  jal   random_int
/* 082C10 80082010 2404001E */   li    $a0, 30
/* 082C14 80082014 8FAE0038 */  lw    $t6, 0x38($sp)
/* 082C18 80082018 8FA3003C */  lw    $v1, 0x3c($sp)
/* 082C1C 8008201C 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 082C20 80082020 000E78C0 */  sll   $t7, $t6, 3
/* 082C24 80082024 01EE7823 */  subu  $t7, $t7, $t6
/* 082C28 80082028 000F7940 */  sll   $t7, $t7, 5
/* 082C2C 8008202C 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 082C30 80082030 01F83821 */  addu  $a3, $t7, $t8
/* 082C34 80082034 24590005 */  addiu $t9, $v0, 5
/* 082C38 80082038 24010001 */  li    $at, 1
/* 082C3C 8008203C 10610009 */  beq   $v1, $at, .L80082064
/* 082C40 80082040 ACF9004C */   sw    $t9, 0x4c($a3)
/* 082C44 80082044 24010002 */  li    $at, 2
/* 082C48 80082048 1061000D */  beq   $v1, $at, .L80082080
/* 082C4C 8008204C 3C068019 */   lui   $a2, %hi(D_8018D1A8) # 0x8019
/* 082C50 80082050 24010003 */  li    $at, 3
/* 082C54 80082054 10610011 */  beq   $v1, $at, .L8008209C
/* 082C58 80082058 3C068019 */   lui   $a2, %hi(D_8018D1B8) # 0x8019
/* 082C5C 8008205C 10000016 */  b     .L800820B8
/* 082C60 80082060 8FA5002C */   lw    $a1, 0x2c($sp)
.L80082064:
/* 082C64 80082064 3C068019 */  lui   $a2, %hi(D_8018D198) # $a2, 0x8019
/* 082C68 80082068 24C6D198 */  addiu $a2, %lo(D_8018D198) # addiu $a2, $a2, -0x2e68
/* 082C6C 8008206C 24050008 */  li    $a1, 8
/* 082C70 80082070 A7A00028 */  sh    $zero, 0x28($sp)
/* 082C74 80082074 AFA5002C */  sw    $a1, 0x2c($sp)
/* 082C78 80082078 1000000E */  b     .L800820B4
/* 082C7C 8008207C AFA60020 */   sw    $a2, 0x20($sp)
.L80082080:
/* 082C80 80082080 24C6D1A8 */  addiu $a2, $a2, %lo(D_8018D1A8) # -0x2e58
/* 082C84 80082084 2405000B */  li    $a1, 11
/* 082C88 80082088 24080018 */  li    $t0, 24
/* 082C8C 8008208C A7A80028 */  sh    $t0, 0x28($sp)
/* 082C90 80082090 AFA5002C */  sw    $a1, 0x2c($sp)
/* 082C94 80082094 10000007 */  b     .L800820B4
/* 082C98 80082098 AFA60020 */   sw    $a2, 0x20($sp)
.L8008209C:
/* 082C9C 8008209C 24C6D1B8 */  addiu $a2, $a2, %lo(D_8018D1B8) # -0x2e48
/* 082CA0 800820A0 2405000C */  li    $a1, 12
/* 082CA4 800820A4 24090039 */  li    $t1, 57
/* 082CA8 800820A8 A7A90028 */  sh    $t1, 0x28($sp)
/* 082CAC 800820AC AFA5002C */  sw    $a1, 0x2c($sp)
/* 082CB0 800820B0 AFA60020 */  sw    $a2, 0x20($sp)
.L800820B4:
/* 082CB4 800820B4 8FA5002C */  lw    $a1, 0x2c($sp)
.L800820B8:
/* 082CB8 800820B8 AFA70018 */  sw    $a3, 0x18($sp)
/* 082CBC 800820BC 0C0ADF8D */  jal   random_int
/* 082CC0 800820C0 30A4FFFF */   andi  $a0, $a1, 0xffff
/* 082CC4 800820C4 8FA5002C */  lw    $a1, 0x2c($sp)
/* 082CC8 800820C8 00021C00 */  sll   $v1, $v0, 0x10
/* 082CCC 800820CC 00035403 */  sra   $t2, $v1, 0x10
/* 082CD0 800820D0 01401825 */  move  $v1, $t2
/* 082CD4 800820D4 8FA60020 */  lw    $a2, 0x20($sp)
/* 082CD8 800820D8 8FA70018 */  lw    $a3, 0x18($sp)
/* 082CDC 800820DC 18A00013 */  blez  $a1, .L8008212C
/* 082CE0 800820E0 00002025 */   move  $a0, $zero
/* 082CE4 800820E4 00661021 */  addu  $v0, $v1, $a2
.L800820E8:
/* 082CE8 800820E8 804B0000 */  lb    $t3, ($v0)
/* 082CEC 800820EC 24840001 */  addiu $a0, $a0, 1
/* 082CF0 800820F0 51600009 */  beql  $t3, $zero, .L80082118
/* 082CF4 800820F4 240E0001 */   li    $t6, 1
/* 082CF8 800820F8 24630001 */  addiu $v1, $v1, 1
/* 082CFC 800820FC 00036400 */  sll   $t4, $v1, 0x10
/* 082D00 80082100 000C1C03 */  sra   $v1, $t4, 0x10
/* 082D04 80082104 14650007 */  bne   $v1, $a1, .L80082124
/* 082D08 80082108 00000000 */   nop
/* 082D0C 8008210C 10000005 */  b     .L80082124
/* 082D10 80082110 00001825 */   move  $v1, $zero
/* 082D14 80082114 240E0001 */  li    $t6, 1
.L80082118:
/* 082D18 80082118 A04E0000 */  sb    $t6, ($v0)
/* 082D1C 8008211C 10000003 */  b     .L8008212C
/* 082D20 80082120 A4E300A4 */   sh    $v1, 0xa4($a3)
.L80082124:
/* 082D24 80082124 5485FFF0 */  bnel  $a0, $a1, .L800820E8
/* 082D28 80082128 00661021 */   addu  $v0, $v1, $a2
.L8008212C:
/* 082D2C 8008212C 87AF0028 */  lh    $t7, 0x28($sp)
/* 082D30 80082130 0003C880 */  sll   $t9, $v1, 2
/* 082D34 80082134 0323C823 */  subu  $t9, $t9, $v1
/* 082D38 80082138 00194040 */  sll   $t0, $t9, 1
/* 082D3C 8008213C 3C0A800E */  lui   $t2, %hi(D_800E6360) # $t2, 0x800e
/* 082D40 80082140 000FC040 */  sll   $t8, $t7, 1
/* 082D44 80082144 03084821 */  addu  $t1, $t8, $t0
/* 082D48 80082148 254A6360 */  addiu $t2, %lo(D_800E6360) # addiu $t2, $t2, 0x6360
/* 082D4C 8008214C 012A1021 */  addu  $v0, $t1, $t2
/* 082D50 80082150 844B0000 */  lh    $t3, ($v0)
/* 082D54 80082154 3C018019 */  lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 082D58 80082158 C428D01C */  lwc1  $f8, %lo(D_8018D01C)($at)
/* 082D5C 8008215C 448B2000 */  mtc1  $t3, $f4
/* 082D60 80082160 844C0002 */  lh    $t4, 2($v0)
/* 082D64 80082164 844D0004 */  lh    $t5, 4($v0)
/* 082D68 80082168 468021A0 */  cvt.s.w $f6, $f4
/* 082D6C 8008216C 448C8000 */  mtc1  $t4, $f16
/* 082D70 80082170 3C014022 */  li    $at, 0x40220000 # 2.531250
/* 082D74 80082174 44812800 */  mtc1  $at, $f5
/* 082D78 80082178 44802000 */  mtc1  $zero, $f4
/* 082D7C 8008217C 468084A1 */  cvt.d.w $f18, $f16
/* 082D80 80082180 46083282 */  mul.s $f10, $f6, $f8
/* 082D84 80082184 8FBF0014 */  lw    $ra, 0x14($sp)
/* 082D88 80082188 27BD0038 */  addiu $sp, $sp, 0x38
/* 082D8C 8008218C 46249181 */  sub.d $f6, $f18, $f4
/* 082D90 80082190 E4EA0010 */  swc1  $f10, 0x10($a3)
/* 082D94 80082194 448D5000 */  mtc1  $t5, $f10
/* 082D98 80082198 46203220 */  cvt.s.d $f8, $f6
/* 082D9C 8008219C 46805420 */  cvt.s.w $f16, $f10
/* 082DA0 800821A0 E4E80014 */  swc1  $f8, 0x14($a3)
/* 082DA4 800821A4 03E00008 */  jr    $ra
/* 082DA8 800821A8 E4F00018 */   swc1  $f16, 0x18($a3)
