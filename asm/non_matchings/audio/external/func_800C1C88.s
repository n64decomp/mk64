glabel func_800C1C88
/* 0C2888 800C1C88 3C098019 */  lui   $t1, %hi(D_8018FB90) # $t1, 0x8019
/* 0C288C 800C1C8C 2529FB90 */  addiu $t1, %lo(D_8018FB90) # addiu $t1, $t1, -0x470
/* 0C2890 800C1C90 91220000 */  lbu   $v0, ($t1)
/* 0C2894 800C1C94 240A003C */  li    $t2, 60
/* 0C2898 800C1C98 3C088019 */  lui   $t0, %hi(D_8018EFD8) # $t0, 0x8019
/* 0C289C 800C1C9C 004A0019 */  multu $v0, $t2
/* 0C28A0 800C1CA0 2508EFD8 */  addiu $t0, %lo(D_8018EFD8) # addiu $t0, $t0, -0x1028
/* 0C28A4 800C1CA4 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0C28A8 800C1CA8 AFA40010 */  sw    $a0, 0x10($sp)
/* 0C28AC 800C1CAC 240100FF */  li    $at, 255
/* 0C28B0 800C1CB0 03A06825 */  move  $t5, $sp
/* 0C28B4 800C1CB4 AFA50014 */  sw    $a1, 0x14($sp)
/* 0C28B8 800C1CB8 AFA60018 */  sw    $a2, 0x18($sp)
/* 0C28BC 800C1CBC 304400FF */  andi  $a0, $v0, 0xff
/* 0C28C0 800C1CC0 00007012 */  mflo  $t6
/* 0C28C4 800C1CC4 010E1821 */  addu  $v1, $t0, $t6
/* 0C28C8 800C1CC8 906F002A */  lbu   $t7, 0x2a($v1)
/* 0C28CC 800C1CCC 51E10032 */  beql  $t7, $at, .L800C1D98
/* 0C28D0 800C1CD0 00001025 */   move  $v0, $zero
/* 0C28D4 800C1CD4 008A0019 */  multu $a0, $t2
/* 0C28D8 800C1CD8 3C0B8019 */  lui   $t3, %hi(D_8018FB91) # $t3, 0x8019
/* 0C28DC 800C1CDC 256BFB91 */  addiu $t3, %lo(D_8018FB91) # addiu $t3, $t3, -0x46f
/* 0C28E0 800C1CE0 91660000 */  lbu   $a2, ($t3)
/* 0C28E4 800C1CE4 240C00FF */  li    $t4, 255
/* 0C28E8 800C1CE8 44802000 */  mtc1  $zero, $f4
/* 0C28EC 800C1CEC 0000C012 */  mflo  $t8
/* 0C28F0 800C1CF0 01182821 */  addu  $a1, $t0, $t8
/* 0C28F4 800C1CF4 A0A60029 */  sb    $a2, 0x29($a1)
/* 0C28F8 800C1CF8 00CA0019 */  multu $a2, $t2
/* 0C28FC 800C1CFC 0000C812 */  mflo  $t9
/* 0C2900 800C1D00 01197021 */  addu  $t6, $t0, $t9
/* 0C2904 800C1D04 A1C2002A */  sb    $v0, 0x2a($t6)
/* 0C2908 800C1D08 906F002A */  lbu   $t7, 0x2a($v1)
/* 0C290C 800C1D0C A1620000 */  sb    $v0, ($t3)
/* 0C2910 800C1D10 00A01025 */  move  $v0, $a1
/* 0C2914 800C1D14 31F800FF */  andi  $t8, $t7, 0xff
/* 0C2918 800C1D18 030A0019 */  multu $t8, $t2
/* 0C291C 800C1D1C A12F0000 */  sb    $t7, ($t1)
/* 0C2920 800C1D20 0000C812 */  mflo  $t9
/* 0C2924 800C1D24 01197021 */  addu  $t6, $t0, $t9
/* 0C2928 800C1D28 A1CC0029 */  sb    $t4, 0x29($t6)
/* 0C292C 800C1D2C 8FB80014 */  lw    $t8, 0x14($sp)
/* 0C2930 800C1D30 8FAF0014 */  lw    $t7, 0x14($sp)
/* 0C2934 800C1D34 8FAE0014 */  lw    $t6, 0x14($sp)
/* 0C2938 800C1D38 27190004 */  addiu $t9, $t8, 4
/* 0C293C 800C1D3C ACB90004 */  sw    $t9, 4($a1)
/* 0C2940 800C1D40 ACAF0000 */  sw    $t7, ($a1)
/* 0C2944 800C1D44 8FB90018 */  lw    $t9, 0x18($sp)
/* 0C2948 800C1D48 25CF0008 */  addiu $t7, $t6, 8
/* 0C294C 800C1D4C 8FB80018 */  lw    $t8, 0x18($sp)
/* 0C2950 800C1D50 ACAF0008 */  sw    $t7, 8($a1)
/* 0C2954 800C1D54 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0C2958 800C1D58 272E0004 */  addiu $t6, $t9, 4
/* 0C295C 800C1D5C ACB8000C */  sw    $t8, 0xc($a1)
/* 0C2960 800C1D60 ACAE0010 */  sw    $t6, 0x10($a1)
/* 0C2964 800C1D64 25F80008 */  addiu $t8, $t7, 8
/* 0C2968 800C1D68 93B90023 */  lbu   $t9, 0x23($sp)
/* 0C296C 800C1D6C 93AE0013 */  lbu   $t6, 0x13($sp)
/* 0C2970 800C1D70 8FAF0024 */  lw    $t7, 0x24($sp)
/* 0C2974 800C1D74 A0AC002A */  sb    $t4, 0x2a($a1)
/* 0C2978 800C1D78 ACB80014 */  sw    $t8, 0x14($a1)
/* 0C297C 800C1D7C ACA70024 */  sw    $a3, 0x24($a1)
/* 0C2980 800C1D80 E4A4001C */  swc1  $f4, 0x1c($a1)
/* 0C2984 800C1D84 A0B90028 */  sb    $t9, 0x28($a1)
/* 0C2988 800C1D88 A0AE0030 */  sb    $t6, 0x30($a1)
/* 0C298C 800C1D8C 10000002 */  b     .L800C1D98
/* 0C2990 800C1D90 ACAF0038 */   sw    $t7, 0x38($a1)
/* 0C2994 800C1D94 00001025 */  move  $v0, $zero
.L800C1D98:
/* 0C2998 800C1D98 01A0E825 */  move  $sp, $t5
/* 0C299C 800C1D9C 03E00008 */  jr    $ra
/* 0C29A0 800C1DA0 25BD0010 */   addiu $sp, $t5, 0x10
