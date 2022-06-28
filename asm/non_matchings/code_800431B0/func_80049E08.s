glabel func_80049E08
/* 04AA08 80049E08 44876000 */  mtc1  $a3, $f12
/* 04AA0C 80049E0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AA10 80049E10 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AA14 80049E14 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AA18 80049E18 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AA1C 80049E1C 44076000 */  mfc1  $a3, $f12
/* 04AA20 80049E20 0C0108CC */  jal   func_80042330
/* 04AA24 80049E24 01C03025 */   move  $a2, $t6
/* 04AA28 80049E28 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AA2C 80049E2C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AA30 80049E30 8D030000 */  lw    $v1, ($t0)
/* 04AA34 80049E34 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04AA38 80049E38 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04AA3C 80049E3C 246F0008 */  addiu $t7, $v1, 8
/* 04AA40 80049E40 AD0F0000 */  sw    $t7, ($t0)
/* 04AA44 80049E44 3C180600 */  lui   $t8, 0x600
/* 04AA48 80049E48 AC780000 */  sw    $t8, ($v1)
/* 04AA4C 80049E4C AC790004 */  sw    $t9, 4($v1)
/* 04AA50 80049E50 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AA54 80049E54 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AA58 80049E58 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AA5C 80049E5C 0C012CD7 */  jal   func_8004B35C
/* 04AA60 80049E60 8FA40030 */   lw    $a0, 0x30($sp)
/* 04AA64 80049E64 8FA90050 */  lw    $t1, 0x50($sp)
/* 04AA68 80049E68 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04AA6C 80049E6C 8FA40040 */  lw    $a0, 0x40($sp)
/* 04AA70 80049E70 8FA50044 */  lw    $a1, 0x44($sp)
/* 04AA74 80049E74 8FA60048 */  lw    $a2, 0x48($sp)
/* 04AA78 80049E78 8FA7004C */  lw    $a3, 0x4c($sp)
/* 04AA7C 80049E7C AFA90010 */  sw    $t1, 0x10($sp)
/* 04AA80 80049E80 0C0124B5 */  jal   func_800492D4
/* 04AA84 80049E84 AFAA0014 */   sw    $t2, 0x14($sp)
/* 04AA88 80049E88 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04AA8C 80049E8C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04AA90 80049E90 03E00008 */  jr    $ra
/* 04AA94 80049E94 00000000 */   nop   

/* 04AA98 80049E98 44876000 */  mtc1  $a3, $f12
/* 04AA9C 80049E9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AAA0 80049EA0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AAA4 80049EA4 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AAA8 80049EA8 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AAAC 80049EAC 44076000 */  mfc1  $a3, $f12
/* 04AAB0 80049EB0 0C0108CC */  jal   func_80042330
/* 04AAB4 80049EB4 01C03025 */   move  $a2, $t6
/* 04AAB8 80049EB8 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AABC 80049EBC 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AAC0 80049EC0 8D030000 */  lw    $v1, ($t0)
/* 04AAC4 80049EC4 3C190D00 */  lui   $t9, %hi(D_0D007A60) # $t9, 0xd00
/* 04AAC8 80049EC8 27397A60 */  addiu $t9, %lo(D_0D007A60) # addiu $t9, $t9, 0x7a60
/* 04AACC 80049ECC 246F0008 */  addiu $t7, $v1, 8
/* 04AAD0 80049ED0 AD0F0000 */  sw    $t7, ($t0)
/* 04AAD4 80049ED4 3C180600 */  lui   $t8, 0x600
/* 04AAD8 80049ED8 AC780000 */  sw    $t8, ($v1)
/* 04AADC 80049EDC AC790004 */  sw    $t9, 4($v1)
/* 04AAE0 80049EE0 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AAE4 80049EE4 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AAE8 80049EE8 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AAEC 80049EEC 0C012CD7 */  jal   func_8004B35C
/* 04AAF0 80049EF0 8FA40030 */   lw    $a0, 0x30($sp)
/* 04AAF4 80049EF4 8FA90050 */  lw    $t1, 0x50($sp)
/* 04AAF8 80049EF8 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04AAFC 80049EFC 8FA40040 */  lw    $a0, 0x40($sp)
/* 04AB00 80049F00 8FA50044 */  lw    $a1, 0x44($sp)
/* 04AB04 80049F04 8FA60048 */  lw    $a2, 0x48($sp)
/* 04AB08 80049F08 8FA7004C */  lw    $a3, 0x4c($sp)
/* 04AB0C 80049F0C AFA90010 */  sw    $t1, 0x10($sp)
/* 04AB10 80049F10 0C0124B5 */  jal   func_800492D4
/* 04AB14 80049F14 AFAA0014 */   sw    $t2, 0x14($sp)
/* 04AB18 80049F18 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04AB1C 80049F1C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04AB20 80049F20 03E00008 */  jr    $ra
/* 04AB24 80049F24 00000000 */   nop   

/* 04AB28 80049F28 44876000 */  mtc1  $a3, $f12
/* 04AB2C 80049F2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AB30 80049F30 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AB34 80049F34 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AB38 80049F38 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AB3C 80049F3C 44076000 */  mfc1  $a3, $f12
/* 04AB40 80049F40 0C0108CC */  jal   func_80042330
/* 04AB44 80049F44 01C03025 */   move  $a2, $t6
/* 04AB48 80049F48 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AB4C 80049F4C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AB50 80049F50 8D030000 */  lw    $v1, ($t0)
/* 04AB54 80049F54 3C190D00 */  lui   $t9, %hi(D_0D007B00) # $t9, 0xd00
/* 04AB58 80049F58 27397B00 */  addiu $t9, %lo(D_0D007B00) # addiu $t9, $t9, 0x7b00
/* 04AB5C 80049F5C 246F0008 */  addiu $t7, $v1, 8
/* 04AB60 80049F60 AD0F0000 */  sw    $t7, ($t0)
/* 04AB64 80049F64 3C180600 */  lui   $t8, 0x600
/* 04AB68 80049F68 AC780000 */  sw    $t8, ($v1)
/* 04AB6C 80049F6C AC790004 */  sw    $t9, 4($v1)
/* 04AB70 80049F70 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AB74 80049F74 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AB78 80049F78 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AB7C 80049F7C 0C012CD7 */  jal   func_8004B35C
/* 04AB80 80049F80 8FA40030 */   lw    $a0, 0x30($sp)
/* 04AB84 80049F84 8FA90050 */  lw    $t1, 0x50($sp)
/* 04AB88 80049F88 8FAA0054 */  lw    $t2, 0x54($sp)
/* 04AB8C 80049F8C 8FA40040 */  lw    $a0, 0x40($sp)
/* 04AB90 80049F90 8FA50044 */  lw    $a1, 0x44($sp)
/* 04AB94 80049F94 8FA60048 */  lw    $a2, 0x48($sp)
/* 04AB98 80049F98 8FA7004C */  lw    $a3, 0x4c($sp)
/* 04AB9C 80049F9C AFA90010 */  sw    $t1, 0x10($sp)
/* 04ABA0 80049FA0 0C0124B5 */  jal   func_800492D4
/* 04ABA4 80049FA4 AFAA0014 */   sw    $t2, 0x14($sp)
/* 04ABA8 80049FA8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04ABAC 80049FAC 27BD0020 */  addiu $sp, $sp, 0x20
/* 04ABB0 80049FB0 03E00008 */  jr    $ra
/* 04ABB4 80049FB4 00000000 */   nop   

/* 04ABB8 80049FB8 44876000 */  mtc1  $a3, $f12
/* 04ABBC 80049FBC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04ABC0 80049FC0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04ABC4 80049FC4 AFA60028 */  sw    $a2, 0x28($sp)
/* 04ABC8 80049FC8 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04ABCC 80049FCC 44076000 */  mfc1  $a3, $f12
/* 04ABD0 80049FD0 0C0108CC */  jal   func_80042330
/* 04ABD4 80049FD4 01C03025 */   move  $a2, $t6
/* 04ABD8 80049FD8 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04ABDC 80049FDC 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04ABE0 80049FE0 8D030000 */  lw    $v1, ($t0)
/* 04ABE4 80049FE4 3C190D00 */  lui   $t9, %hi(D_0D007A40) # $t9, 0xd00
/* 04ABE8 80049FE8 27397A40 */  addiu $t9, %lo(D_0D007A40) # addiu $t9, $t9, 0x7a40
/* 04ABEC 80049FEC 246F0008 */  addiu $t7, $v1, 8
/* 04ABF0 80049FF0 AD0F0000 */  sw    $t7, ($t0)
/* 04ABF4 80049FF4 3C180600 */  lui   $t8, 0x600
/* 04ABF8 80049FF8 AC780000 */  sw    $t8, ($v1)
/* 04ABFC 80049FFC AC790004 */  sw    $t9, 4($v1)
/* 04AC00 8004A000 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04AC04 8004A004 8FA90040 */  lw    $t1, 0x40($sp)
/* 04AC08 8004A008 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AC0C 8004A00C 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AC10 8004A010 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AC14 8004A014 8FA40030 */  lw    $a0, 0x30($sp)
/* 04AC18 8004A018 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04AC1C 8004A01C 0C01251E */  jal   func_80049478
/* 04AC20 8004A020 AFA90010 */   sw    $t1, 0x10($sp)
/* 04AC24 8004A024 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04AC28 8004A028 27BD0020 */  addiu $sp, $sp, 0x20
/* 04AC2C 8004A02C 03E00008 */  jr    $ra
/* 04AC30 8004A030 00000000 */   nop   

/* 04AC34 8004A034 44876000 */  mtc1  $a3, $f12
/* 04AC38 8004A038 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04AC3C 8004A03C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04AC40 8004A040 AFA60028 */  sw    $a2, 0x28($sp)
/* 04AC44 8004A044 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04AC48 8004A048 44076000 */  mfc1  $a3, $f12
/* 04AC4C 8004A04C 0C0108CC */  jal   func_80042330
/* 04AC50 8004A050 01C03025 */   move  $a2, $t6
/* 04AC54 8004A054 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04AC58 8004A058 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04AC5C 8004A05C 8D030000 */  lw    $v1, ($t0)
/* 04AC60 8004A060 3C190D00 */  lui   $t9, %hi(D_0D007A60) # $t9, 0xd00
/* 04AC64 8004A064 27397A60 */  addiu $t9, %lo(D_0D007A60) # addiu $t9, $t9, 0x7a60
/* 04AC68 8004A068 246F0008 */  addiu $t7, $v1, 8
/* 04AC6C 8004A06C AD0F0000 */  sw    $t7, ($t0)
/* 04AC70 8004A070 3C180600 */  lui   $t8, 0x600
/* 04AC74 8004A074 AC780000 */  sw    $t8, ($v1)
/* 04AC78 8004A078 AC790004 */  sw    $t9, 4($v1)
/* 04AC7C 8004A07C 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04AC80 8004A080 8FA90040 */  lw    $t1, 0x40($sp)
/* 04AC84 8004A084 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04AC88 8004A088 8FA60038 */  lw    $a2, 0x38($sp)
/* 04AC8C 8004A08C 8FA50034 */  lw    $a1, 0x34($sp)
/* 04AC90 8004A090 8FA40030 */  lw    $a0, 0x30($sp)
/* 04AC94 8004A094 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04AC98 8004A098 0C01251E */  jal   func_80049478
/* 04AC9C 8004A09C AFA90010 */   sw    $t1, 0x10($sp)
/* 04ACA0 8004A0A0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04ACA4 8004A0A4 27BD0020 */  addiu $sp, $sp, 0x20
/* 04ACA8 8004A0A8 03E00008 */  jr    $ra
/* 04ACAC 8004A0AC 00000000 */   nop   
