glabel func_800098FC
/* 00A4FC 800098FC 3C0F8016 */  lui   $t7, %hi(D_80163398) # $t7, 0x8016
/* 00A500 80009900 25EF3398 */  addiu $t7, %lo(D_80163398) # addiu $t7, $t7, 0x3398
/* 00A504 80009904 00041840 */  sll   $v1, $a0, 1
/* 00A508 80009908 006F3021 */  addu  $a2, $v1, $t7
/* 00A50C 8000990C 84D80000 */  lh    $t8, ($a2)
/* 00A510 80009910 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00A514 80009914 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A518 80009918 2B01000B */  slti  $at, $t8, 0xb
/* 00A51C 8000991C AFA40020 */  sw    $a0, 0x20($sp)
/* 00A520 80009920 14200013 */  bnez  $at, .L80009970
/* 00A524 80009924 00A03825 */   move  $a3, $a1
/* 00A528 80009928 8CA200BC */  lw    $v0, 0xbc($a1)
/* 00A52C 8000992C 3C052900 */  lui   $a1, (0x2900800A >> 16) # lui $a1, 0x2900
/* 00A530 80009930 93A40023 */  lbu   $a0, 0x23($sp)
/* 00A534 80009934 30590080 */  andi  $t9, $v0, 0x80
/* 00A538 80009938 17200004 */  bnez  $t9, .L8000994C
/* 00A53C 8000993C 30480040 */   andi  $t0, $v0, 0x40
/* 00A540 80009940 15000002 */  bnez  $t0, .L8000994C
/* 00A544 80009944 00024B80 */   sll   $t1, $v0, 0xe
/* 00A548 80009948 05210009 */  bgez  $t1, .L80009970
.L8000994C:
/* 00A54C 8000994C 34A5800A */   ori   $a1, (0x2900800A & 0xFFFF) # ori $a1, $a1, 0x800a
/* 00A550 80009950 AFA3001C */  sw    $v1, 0x1c($sp)
/* 00A554 80009954 AFA60018 */  sw    $a2, 0x18($sp)
/* 00A558 80009958 0C0324B3 */  jal   func_800C92CC
/* 00A55C 8000995C AFA70024 */   sw    $a3, 0x24($sp)
/* 00A560 80009960 8FA60018 */  lw    $a2, 0x18($sp)
/* 00A564 80009964 8FA3001C */  lw    $v1, 0x1c($sp)
/* 00A568 80009968 8FA70024 */  lw    $a3, 0x24($sp)
/* 00A56C 8000996C A4C00000 */  sh    $zero, ($a2)
.L80009970:
/* 00A570 80009970 3C0A8016 */  lui   $t2, %hi(D_801633B0) # $t2, 0x8016
/* 00A574 80009974 254A33B0 */  addiu $t2, %lo(D_801633B0) # addiu $t2, $t2, 0x33b0
/* 00A578 80009978 006A3021 */  addu  $a2, $v1, $t2
/* 00A57C 8000997C 84CB0000 */  lh    $t3, ($a2)
/* 00A580 80009980 2961000B */  slti  $at, $t3, 0xb
/* 00A584 80009984 54200016 */  bnel  $at, $zero, .L800099E0
/* 00A588 80009988 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00A58C 8000998C 8CE2000C */  lw    $v0, 0xc($a3)
/* 00A590 80009990 93A40023 */  lbu   $a0, 0x23($sp)
/* 00A594 80009994 3C052900 */  lui   $a1, (0x2900800B >> 16) # lui $a1, 0x2900
/* 00A598 80009998 00026240 */  sll   $t4, $v0, 9
/* 00A59C 8000999C 0580000A */  bltz  $t4, .L800099C8
/* 00A5A0 800099A0 000269C0 */   sll   $t5, $v0, 7
/* 00A5A4 800099A4 05A00008 */  bltz  $t5, .L800099C8
/* 00A5A8 800099A8 304E0002 */   andi  $t6, $v0, 2
/* 00A5AC 800099AC 15C00006 */  bnez  $t6, .L800099C8
/* 00A5B0 800099B0 304F0004 */   andi  $t7, $v0, 4
/* 00A5B4 800099B4 55E00005 */  bnel  $t7, $zero, .L800099CC
/* 00A5B8 800099B8 34A5800B */   ori   $a1, (0x2900800B & 0xFFFF) # ori $a1, $a1, 0x800b
/* 00A5BC 800099BC 8CF800BC */  lw    $t8, 0xbc($a3)
/* 00A5C0 800099C0 0018C940 */  sll   $t9, $t8, 5
/* 00A5C4 800099C4 07210005 */  bgez  $t9, .L800099DC
.L800099C8:
/* 00A5C8 800099C8 34A5800B */   ori   $a1, (0x2900800B & 0xFFFF) # ori $a1, $a1, 0x800b
.L800099CC:
/* 00A5CC 800099CC 0C0324B3 */  jal   func_800C92CC
/* 00A5D0 800099D0 AFA60018 */   sw    $a2, 0x18($sp)
/* 00A5D4 800099D4 8FA60018 */  lw    $a2, 0x18($sp)
/* 00A5D8 800099D8 A4C00000 */  sh    $zero, ($a2)
.L800099DC:
/* 00A5DC 800099DC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800099E0:
/* 00A5E0 800099E0 27BD0020 */  addiu $sp, $sp, 0x20
/* 00A5E4 800099E4 03E00008 */  jr    $ra
/* 00A5E8 800099E8 00000000 */   nop
