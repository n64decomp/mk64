glabel func_802972B8
/* 1008C8 802972B8 3C0E800E */  lui   $t6, %hi(D_800DDB40) # $t6, 0x800e
/* 1008CC 802972BC 8DCEDB40 */  lw    $t6, %lo(D_800DDB40)($t6)
/* 1008D0 802972C0 240100B8 */  li    $at, 184
/* 1008D4 802972C4 008E1023 */  subu  $v0, $a0, $t6
/* 1008D8 802972C8 0041001A */  div   $zero, $v0, $at
/* 1008DC 802972CC 00007812 */  mflo  $t7
/* 1008E0 802972D0 24010001 */  li    $at, 1
/* 1008E4 802972D4 51E0000A */  beql  $t7, $zero, .L80297300
/* 1008E8 802972D8 84B80002 */   lh    $t8, 2($a1)
/* 1008EC 802972DC 11E1000B */  beq   $t7, $at, .L8029730C
/* 1008F0 802972E0 24010002 */   li    $at, 2
/* 1008F4 802972E4 11E1000D */  beq   $t7, $at, .L8029731C
/* 1008F8 802972E8 24010003 */   li    $at, 3
/* 1008FC 802972EC 51E10010 */  beql  $t7, $at, .L80297330
/* 100900 802972F0 84AC0002 */   lh    $t4, 2($a1)
/* 100904 802972F4 03E00008 */  jr    $ra
/* 100908 802972F8 00000000 */   nop   

/* 10090C 802972FC 84B80002 */  lh    $t8, 2($a1)
.L80297300:
/* 100910 80297300 37190001 */  ori   $t9, $t8, 1
/* 100914 80297304 03E00008 */  jr    $ra
/* 100918 80297308 A4B90002 */   sh    $t9, 2($a1)

.L8029730C:
/* 10091C 8029730C 84A80002 */  lh    $t0, 2($a1)
/* 100920 80297310 35090002 */  ori   $t1, $t0, 2
/* 100924 80297314 03E00008 */  jr    $ra
/* 100928 80297318 A4A90002 */   sh    $t1, 2($a1)

.L8029731C:
/* 10092C 8029731C 84AA0002 */  lh    $t2, 2($a1)
/* 100930 80297320 354B0004 */  ori   $t3, $t2, 4
/* 100934 80297324 03E00008 */  jr    $ra
/* 100938 80297328 A4AB0002 */   sh    $t3, 2($a1)

/* 10093C 8029732C 84AC0002 */  lh    $t4, 2($a1)
.L80297330:
/* 100940 80297330 358D0008 */  ori   $t5, $t4, 8
/* 100944 80297334 A4AD0002 */  sh    $t5, 2($a1)
/* 100948 80297338 03E00008 */  jr    $ra
/* 10094C 8029733C 00000000 */   nop   