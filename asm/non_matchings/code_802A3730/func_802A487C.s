glabel func_802A487C
/* 10DE8C 802A487C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 10DE90 802A4880 AFBF0024 */  sw    $ra, 0x24($sp)
/* 10DE94 802A4884 AFA40028 */  sw    $a0, 0x28($sp)
/* 10DE98 802A4888 AFA5002C */  sw    $a1, 0x2c($sp)
/* 10DE9C 802A488C AFA60030 */  sw    $a2, 0x30($sp)
/* 10DEA0 802A4890 0C0A8F8F */  jal   func_802A3E3C
/* 10DEA4 802A4894 AFA70034 */   sw    $a3, 0x34($sp)
/* 10DEA8 802A4898 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 10DEAC 802A489C 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 10DEB0 802A48A0 2401000D */  li    $at, 13
/* 10DEB4 802A48A4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10DEB8 802A48A8 11C10054 */  beq   $t6, $at, .L802A49FC
/* 10DEBC 802A48AC 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10DEC0 802A48B0 8C620000 */  lw    $v0, ($v1)
/* 10DEC4 802A48B4 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 10DEC8 802A48B8 3C190F0A */  lui   $t9, (0x0F0A4000 >> 16) # lui $t9, 0xf0a
/* 10DECC 802A48BC 244F0008 */  addiu $t7, $v0, 8
/* 10DED0 802A48C0 AC6F0000 */  sw    $t7, ($v1)
/* 10DED4 802A48C4 37394000 */  ori   $t9, (0x0F0A4000 & 0xFFFF) # ori $t9, $t9, 0x4000
/* 10DED8 802A48C8 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 10DEDC 802A48CC AC580000 */  sw    $t8, ($v0)
/* 10DEE0 802A48D0 AC590004 */  sw    $t9, 4($v0)
/* 10DEE4 802A48D4 8C620000 */  lw    $v0, ($v1)
/* 10DEE8 802A48D8 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 10DEEC 802A48DC 44812000 */  mtc1  $at, $f4
/* 10DEF0 802A48E0 244A0008 */  addiu $t2, $v0, 8
/* 10DEF4 802A48E4 AC6A0000 */  sw    $t2, ($v1)
/* 10DEF8 802A48E8 3C0C0002 */  lui   $t4, (0x00020001 >> 16) # lui $t4, 2
/* 10DEFC 802A48EC 44800000 */  mtc1  $zero, $f0
/* 10DF00 802A48F0 358C0001 */  ori   $t4, (0x00020001 & 0xFFFF) # ori $t4, $t4, 1
/* 10DF04 802A48F4 3C0BB600 */  lui   $t3, 0xb600
/* 10DF08 802A48F8 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 10DF0C 802A48FC 44813000 */  mtc1  $at, $f6
/* 10DF10 802A4900 AC4B0000 */  sw    $t3, ($v0)
/* 10DF14 802A4904 AC4C0004 */  sw    $t4, 4($v0)
/* 10DF18 802A4908 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10DF1C 802A490C 44814000 */  mtc1  $at, $f8
/* 10DF20 802A4910 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10DF24 802A4914 44050000 */  mfc1  $a1, $f0
/* 10DF28 802A4918 44070000 */  mfc1  $a3, $f0
/* 10DF2C 802A491C 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10DF30 802A4920 3C0643A0 */  lui   $a2, 0x43a0
/* 10DF34 802A4924 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10DF38 802A4928 E7A00014 */  swc1  $f0, 0x14($sp)
/* 10DF3C 802A492C E7A60018 */  swc1  $f6, 0x18($sp)
/* 10DF40 802A4930 0C0338A9 */  jal   guOrtho
/* 10DF44 802A4934 E7A8001C */   swc1  $f8, 0x1c($sp)
/* 10DF48 802A4938 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10DF4C 802A493C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10DF50 802A4940 8C620000 */  lw    $v0, ($v1)
/* 10DF54 802A4944 3C0EB400 */  lui   $t6, 0xb400
/* 10DF58 802A4948 340FFFFF */  li    $t7, 65535
/* 10DF5C 802A494C 244D0008 */  addiu $t5, $v0, 8
/* 10DF60 802A4950 AC6D0000 */  sw    $t5, ($v1)
/* 10DF64 802A4954 AC4F0004 */  sw    $t7, 4($v0)
/* 10DF68 802A4958 AC4E0000 */  sw    $t6, ($v0)
/* 10DF6C 802A495C 8C620000 */  lw    $v0, ($v1)
/* 10DF70 802A4960 3C190103 */  lui   $t9, (0x01030040 >> 16) # lui $t9, 0x103
/* 10DF74 802A4964 37390040 */  ori   $t9, (0x01030040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 10DF78 802A4968 24580008 */  addiu $t8, $v0, 8
/* 10DF7C 802A496C AC780000 */  sw    $t8, ($v1)
/* 10DF80 802A4970 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 10DF84 802A4974 AC590000 */  sw    $t9, ($v0)
/* 10DF88 802A4978 8D4AEF40 */  lw    $t2, %lo(gGfxPool)($t2)
/* 10DF8C 802A497C 3C091FFF */  lui   $t1, (0x1FFFFFFF >> 16) # lui $t1, 0x1fff
/* 10DF90 802A4980 3529FFFF */  ori   $t1, (0x1FFFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* 10DF94 802A4984 01495824 */  and   $t3, $t2, $t1
/* 10DF98 802A4988 AC4B0004 */  sw    $t3, 4($v0)
/* 10DF9C 802A498C 8C620000 */  lw    $v0, ($v1)
/* 10DFA0 802A4990 3C0E0D01 */  lui   $t6, %hi(D_0D008E98) # $t6, 0xd01
/* 10DFA4 802A4994 25CE8E98 */  addiu $t6, %lo(D_0D008E98) # addiu $t6, $t6, -0x7168
/* 10DFA8 802A4998 244C0008 */  addiu $t4, $v0, 8
/* 10DFAC 802A499C AC6C0000 */  sw    $t4, ($v1)
/* 10DFB0 802A49A0 3C0D0102 */  lui   $t5, (0x01020040 >> 16) # lui $t5, 0x102
/* 10DFB4 802A49A4 35AD0040 */  ori   $t5, (0x01020040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 10DFB8 802A49A8 01C97824 */  and   $t7, $t6, $t1
/* 10DFBC 802A49AC AC4F0004 */  sw    $t7, 4($v0)
/* 10DFC0 802A49B0 AC4D0000 */  sw    $t5, ($v0)
/* 10DFC4 802A49B4 8C620000 */  lw    $v0, ($v1)
/* 10DFC8 802A49B8 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 10DFCC 802A49BC 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 10DFD0 802A49C0 24580008 */  addiu $t8, $v0, 8
/* 10DFD4 802A49C4 AC780000 */  sw    $t8, ($v1)
/* 10DFD8 802A49C8 AC590000 */  sw    $t9, ($v0)
/* 10DFDC 802A49CC 8FAA0028 */  lw    $t2, 0x28($sp)
/* 10DFE0 802A49D0 3C0DB100 */  lui   $t5, (0xB1000602 >> 16) # lui $t5, 0xb100
/* 10DFE4 802A49D4 3C0E0002 */  lui   $t6, (0x00020604 >> 16) # lui $t6, 2
/* 10DFE8 802A49D8 254B0040 */  addiu $t3, $t2, 0x40
/* 10DFEC 802A49DC AC4B0004 */  sw    $t3, 4($v0)
/* 10DFF0 802A49E0 8C620000 */  lw    $v0, ($v1)
/* 10DFF4 802A49E4 35CE0604 */  ori   $t6, (0x00020604 & 0xFFFF) # ori $t6, $t6, 0x604
/* 10DFF8 802A49E8 35AD0602 */  ori   $t5, (0xB1000602 & 0xFFFF) # ori $t5, $t5, 0x602
/* 10DFFC 802A49EC 244C0008 */  addiu $t4, $v0, 8
/* 10E000 802A49F0 AC6C0000 */  sw    $t4, ($v1)
/* 10E004 802A49F4 AC4E0004 */  sw    $t6, 4($v0)
/* 10E008 802A49F8 AC4D0000 */  sw    $t5, ($v0)
.L802A49FC:
/* 10E00C 802A49FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 10E010 802A4A00 27BD0028 */  addiu $sp, $sp, 0x28
/* 10E014 802A4A04 03E00008 */  jr    $ra
/* 10E018 802A4A08 00000000 */   nop   
