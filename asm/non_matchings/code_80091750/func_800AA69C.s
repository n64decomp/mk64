glabel func_800AA69C
/* 0AB29C 800AA69C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0AB2A0 800AA6A0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0AB2A4 800AA6A4 00808025 */  move  $s0, $a0
/* 0AB2A8 800AA6A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AB2AC 800AA6AC 8C840000 */  lw    $a0, ($a0)
/* 0AB2B0 800AA6B0 2484FFD5 */  addiu $a0, $a0, -0x2b
/* 0AB2B4 800AA6B4 0C02ABF3 */  jal   func_800AAFCC
/* 0AB2B8 800AA6B8 AFA40030 */   sw    $a0, 0x30($sp)
/* 0AB2BC 800AA6BC 04400003 */  bltz  $v0, .L800AA6CC
/* 0AB2C0 800AA6C0 8FA50030 */   lw    $a1, 0x30($sp)
/* 0AB2C4 800AA6C4 10000002 */  b     .L800AA6D0
/* 0AB2C8 800AA6C8 24040001 */   li    $a0, 1
.L800AA6CC:
/* 0AB2CC 800AA6CC 00002025 */  move  $a0, $zero
.L800AA6D0:
/* 0AB2D0 800AA6D0 8E030008 */  lw    $v1, 8($s0)
/* 0AB2D4 800AA6D4 2C610006 */  sltiu $at, $v1, 6
/* 0AB2D8 800AA6D8 102000EB */  beqz  $at, .L800AAA88
/* 0AB2DC 800AA6DC 00037080 */   sll   $t6, $v1, 2
/* 0AB2E0 800AA6E0 3C01800F */  lui   $at, %hi(jpt_800F25A0)
/* 0AB2E4 800AA6E4 002E0821 */  addu  $at, $at, $t6
/* 0AB2E8 800AA6E8 8C2E25A0 */  lw    $t6, %lo(jpt_800F25A0)($at)
/* 0AB2EC 800AA6EC 01C00008 */  jr    $t6
/* 0AB2F0 800AA6F0 00000000 */   nop   
glabel L800AA6F4
/* 0AB2F4 800AA6F4 3C0F8019 */  lui   $t7, %hi(D_8018EDE8) # 0x8019
/* 0AB2F8 800AA6F8 01E27821 */  addu  $t7, $t7, $v0
/* 0AB2FC 800AA6FC 81EFEDE8 */  lb    $t7, %lo(D_8018EDE8)($t7) # -0x1218($t7)
/* 0AB300 800AA700 51E00010 */  beql  $t7, $zero, .L800AA744
/* 0AB304 800AA704 240400C8 */   li    $a0, 200
/* 0AB308 800AA708 1080000D */  beqz  $a0, .L800AA740
/* 0AB30C 800AA70C 24180001 */   li    $t8, 1
/* 0AB310 800AA710 0005C880 */  sll   $t9, $a1, 2
/* 0AB314 800AA714 3C04800F */  lui   $a0, %hi(gCharacterCelebrateAnimation) # 0x800f
/* 0AB318 800AA718 AE180008 */  sw    $t8, 8($s0)
/* 0AB31C 800AA71C 00992021 */  addu  $a0, $a0, $t9
/* 0AB320 800AA720 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB324 800AA724 8C848380 */   lw    $a0, %lo(gCharacterCelebrateAnimation)($a0) # -0x7c80($a0)
/* 0AB328 800AA728 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB32C 800AA72C 00002825 */  move  $a1, $zero
/* 0AB330 800AA730 0C026965 */  jal   func_8009A594
/* 0AB334 800AA734 00403025 */   move  $a2, $v0
/* 0AB338 800AA738 100000D4 */  b     .L800AAA8C
/* 0AB33C 800AA73C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800AA740:
/* 0AB340 800AA740 240400C8 */  li    $a0, 200
.L800AA744:
/* 0AB344 800AA744 0C0ADF8D */  jal   random_int
/* 0AB348 800AA748 AFA50030 */   sw    $a1, 0x30($sp)
/* 0AB34C 800AA74C 284100C6 */  slti  $at, $v0, 0xc6
/* 0AB350 800AA750 8FA50030 */  lw    $a1, 0x30($sp)
/* 0AB354 800AA754 1420000E */  bnez  $at, .L800AA790
/* 0AB358 800AA758 00401825 */   move  $v1, $v0
/* 0AB35C 800AA75C 24080004 */  li    $t0, 4
/* 0AB360 800AA760 00054880 */  sll   $t1, $a1, 2
/* 0AB364 800AA764 3C04800F */  lui   $a0, %hi(gCharacterSingleBlinkAnimation) # 0x800f
/* 0AB368 800AA768 AE080008 */  sw    $t0, 8($s0)
/* 0AB36C 800AA76C 00892021 */  addu  $a0, $a0, $t1
/* 0AB370 800AA770 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB374 800AA774 8C8483E0 */   lw    $a0, %lo(gCharacterSingleBlinkAnimation)($a0) # -0x7c20($a0)
/* 0AB378 800AA778 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB37C 800AA77C 00002825 */  move  $a1, $zero
/* 0AB380 800AA780 0C026965 */  jal   func_8009A594
/* 0AB384 800AA784 00403025 */   move  $a2, $v0
/* 0AB388 800AA788 100000C0 */  b     .L800AAA8C
/* 0AB38C 800AA78C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800AA790:
/* 0AB390 800AA790 286100C5 */  slti  $at, $v1, 0xc5
/* 0AB394 800AA794 142000BC */  bnez  $at, .L800AAA88
/* 0AB398 800AA798 240A0005 */   li    $t2, 5
/* 0AB39C 800AA79C 00055880 */  sll   $t3, $a1, 2
/* 0AB3A0 800AA7A0 3C04800F */  lui   $a0, %hi(gCharacterDoubleBlinkAnimation) # 0x800f
/* 0AB3A4 800AA7A4 AE0A0008 */  sw    $t2, 8($s0)
/* 0AB3A8 800AA7A8 008B2021 */  addu  $a0, $a0, $t3
/* 0AB3AC 800AA7AC 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB3B0 800AA7B0 8C848400 */   lw    $a0, %lo(gCharacterDoubleBlinkAnimation)($a0) # -0x7c00($a0)
/* 0AB3B4 800AA7B4 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB3B8 800AA7B8 00002825 */  move  $a1, $zero
/* 0AB3BC 800AA7BC 0C026965 */  jal   func_8009A594
/* 0AB3C0 800AA7C0 00403025 */   move  $a2, $v0
/* 0AB3C4 800AA7C4 100000B1 */  b     .L800AAA8C
/* 0AB3C8 800AA7C8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800AA7CC
/* 0AB3CC 800AA7CC 8E0C0018 */  lw    $t4, 0x18($s0)
/* 0AB3D0 800AA7D0 00051880 */  sll   $v1, $a1, 2
/* 0AB3D4 800AA7D4 3C0E8019 */  lui   $t6, %hi(D_8018DEE4) # 0x8019
/* 0AB3D8 800AA7D8 000C6880 */  sll   $t5, $t4, 2
/* 0AB3DC 800AA7DC 01AC6823 */  subu  $t5, $t5, $t4
/* 0AB3E0 800AA7E0 000D68C0 */  sll   $t5, $t5, 3
/* 0AB3E4 800AA7E4 3C0F800F */  lui   $t7, %hi(D_800E8440)
/* 0AB3E8 800AA7E8 01E37821 */  addu  $t7, $t7, $v1
/* 0AB3EC 800AA7EC 01CD7021 */  addu  $t6, $t6, $t5
/* 0AB3F0 800AA7F0 8DCEDEE4 */  lw    $t6, %lo(D_8018DEE4)($t6) # -0x211c($t6)
/* 0AB3F4 800AA7F4 8DEF8440 */  lw    $t7, %lo(D_800E8440)($t7)
/* 0AB3F8 800AA7F8 3C198019 */  lui   $t9, %hi(D_8018EDE8) # 0x8019
/* 0AB3FC 800AA7FC 24180002 */  li    $t8, 2
/* 0AB400 800AA800 01CF082A */  slt   $at, $t6, $t7
/* 0AB404 800AA804 1420000C */  bnez  $at, .L800AA838
/* 0AB408 800AA808 0322C821 */   addu  $t9, $t9, $v0
/* 0AB40C 800AA80C 3C04800F */  lui   $a0, %hi(D_800E83A0) # 0x800f
/* 0AB410 800AA810 AE180008 */  sw    $t8, 8($s0)
/* 0AB414 800AA814 00832021 */  addu  $a0, $a0, $v1
/* 0AB418 800AA818 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB41C 800AA81C 8C8483A0 */   lw    $a0, %lo(D_800E83A0)($a0) # -0x7c60($a0)
/* 0AB420 800AA820 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB424 800AA824 00002825 */  move  $a1, $zero
/* 0AB428 800AA828 0C026965 */  jal   func_8009A594
/* 0AB42C 800AA82C 00403025 */   move  $a2, $v0
/* 0AB430 800AA830 10000096 */  b     .L800AAA8C
/* 0AB434 800AA834 8FBF001C */   lw    $ra, 0x1c($sp)
.L800AA838:
/* 0AB438 800AA838 8339EDE8 */  lb    $t9, %lo(D_8018EDE8)($t9) # -0x1218($t9)
/* 0AB43C 800AA83C 57200093 */  bnel  $t9, $zero, .L800AAA8C
/* 0AB440 800AA840 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AB444 800AA844 10800090 */  beqz  $a0, .L800AAA88
/* 0AB448 800AA848 24080003 */   li    $t0, 3
/* 0AB44C 800AA84C 3C04800F */  lui   $a0, %hi(gCharacterDeselectAnimation) # 0x800f
/* 0AB450 800AA850 AE080008 */  sw    $t0, 8($s0)
/* 0AB454 800AA854 00832021 */  addu  $a0, $a0, $v1
/* 0AB458 800AA858 8C8483C0 */  lw    $a0, %lo(gCharacterDeselectAnimation)($a0) # -0x7c40($a0)
/* 0AB45C 800AA85C 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB460 800AA860 AFA30024 */   sw    $v1, 0x24($sp)
/* 0AB464 800AA864 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB468 800AA868 8FA30024 */  lw    $v1, 0x24($sp)
/* 0AB46C 800AA86C 3C09800F */  lui   $t1, %hi(D_800E8460) # 0x800f
/* 0AB470 800AA870 00045080 */  sll   $t2, $a0, 2
/* 0AB474 800AA874 01445023 */  subu  $t2, $t2, $a0
/* 0AB478 800AA878 000A50C0 */  sll   $t2, $t2, 3
/* 0AB47C 800AA87C 3C0B8019 */  lui   $t3, %hi(D_8018DEE4) # 0x8019
/* 0AB480 800AA880 016A5821 */  addu  $t3, $t3, $t2
/* 0AB484 800AA884 01234821 */  addu  $t1, $t1, $v1
/* 0AB488 800AA888 8D298460 */  lw    $t1, %lo(D_800E8460)($t1) # -0x7ba0($t1)
/* 0AB48C 800AA88C 8D6BDEE4 */  lw    $t3, %lo(D_8018DEE4)($t3) # -0x211c($t3)
/* 0AB490 800AA890 00403025 */  move  $a2, $v0
/* 0AB494 800AA894 0C026965 */  jal   func_8009A594
/* 0AB498 800AA898 012B2823 */   subu  $a1, $t1, $t3
/* 0AB49C 800AA89C 1000007B */  b     .L800AAA8C
/* 0AB4A0 800AA8A0 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800AA8A4
/* 0AB4A4 800AA8A4 3C0C8019 */  lui   $t4, %hi(D_8018EDE8) # 0x8019
/* 0AB4A8 800AA8A8 01826021 */  addu  $t4, $t4, $v0
/* 0AB4AC 800AA8AC 818CEDE8 */  lb    $t4, %lo(D_8018EDE8)($t4) # -0x1218($t4)
/* 0AB4B0 800AA8B0 55800076 */  bnel  $t4, $zero, .L800AAA8C
/* 0AB4B4 800AA8B4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AB4B8 800AA8B8 10800073 */  beqz  $a0, .L800AAA88
/* 0AB4BC 800AA8BC 240D0003 */   li    $t5, 3
/* 0AB4C0 800AA8C0 00057080 */  sll   $t6, $a1, 2
/* 0AB4C4 800AA8C4 3C04800F */  lui   $a0, %hi(gCharacterDeselectAnimation) # 0x800f
/* 0AB4C8 800AA8C8 AE0D0008 */  sw    $t5, 8($s0)
/* 0AB4CC 800AA8CC 008E2021 */  addu  $a0, $a0, $t6
/* 0AB4D0 800AA8D0 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB4D4 800AA8D4 8C8483C0 */   lw    $a0, %lo(gCharacterDeselectAnimation)($a0) # -0x7c40($a0)
/* 0AB4D8 800AA8D8 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB4DC 800AA8DC 00002825 */  move  $a1, $zero
/* 0AB4E0 800AA8E0 0C026965 */  jal   func_8009A594
/* 0AB4E4 800AA8E4 00403025 */   move  $a2, $v0
/* 0AB4E8 800AA8E8 10000068 */  b     .L800AAA8C
/* 0AB4EC 800AA8EC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800AA8F0
/* 0AB4F0 800AA8F0 8E180018 */  lw    $t8, 0x18($s0)
/* 0AB4F4 800AA8F4 3C0F800F */  lui   $t7, %hi(D_800E8460) # $t7, 0x800f
/* 0AB4F8 800AA8F8 25EF8460 */  addiu $t7, %lo(D_800E8460) # addiu $t7, $t7, -0x7ba0
/* 0AB4FC 800AA8FC 0018C880 */  sll   $t9, $t8, 2
/* 0AB500 800AA900 0338C823 */  subu  $t9, $t9, $t8
/* 0AB504 800AA904 0019C8C0 */  sll   $t9, $t9, 3
/* 0AB508 800AA908 00051880 */  sll   $v1, $a1, 2
/* 0AB50C 800AA90C 3C088019 */  lui   $t0, %hi(D_8018DEE4) # 0x8019
/* 0AB510 800AA910 01194021 */  addu  $t0, $t0, $t9
/* 0AB514 800AA914 006F3821 */  addu  $a3, $v1, $t7
/* 0AB518 800AA918 8CEA0000 */  lw    $t2, ($a3)
/* 0AB51C 800AA91C 8D08DEE4 */  lw    $t0, %lo(D_8018DEE4)($t0) # -0x211c($t0)
/* 0AB520 800AA920 3C098019 */  lui   $t1, %hi(D_8018EDE8) # 0x8019
/* 0AB524 800AA924 01224821 */  addu  $t1, $t1, $v0
/* 0AB528 800AA928 010A082A */  slt   $at, $t0, $t2
/* 0AB52C 800AA92C 1420000C */  bnez  $at, .L800AA960
/* 0AB530 800AA930 00000000 */   nop   
/* 0AB534 800AA934 3C04800F */  lui   $a0, %hi(D_800E8360) # 0x800f
/* 0AB538 800AA938 AE000008 */  sw    $zero, 8($s0)
/* 0AB53C 800AA93C 00832021 */  addu  $a0, $a0, $v1
/* 0AB540 800AA940 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB544 800AA944 8C848360 */   lw    $a0, %lo(D_800E8360)($a0) # -0x7ca0($a0)
/* 0AB548 800AA948 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB54C 800AA94C 00002825 */  move  $a1, $zero
/* 0AB550 800AA950 0C026965 */  jal   func_8009A594
/* 0AB554 800AA954 00403025 */   move  $a2, $v0
/* 0AB558 800AA958 1000004C */  b     .L800AAA8C
/* 0AB55C 800AA95C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800AA960:
/* 0AB560 800AA960 8129EDE8 */  lb    $t1, %lo(D_8018EDE8)($t1) # -0x1218($t1)
/* 0AB564 800AA964 51200049 */  beql  $t1, $zero, .L800AAA8C
/* 0AB568 800AA968 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AB56C 800AA96C 10800046 */  beqz  $a0, .L800AAA88
/* 0AB570 800AA970 240B0001 */   li    $t3, 1
/* 0AB574 800AA974 3C04800F */  lui   $a0, %hi(gCharacterCelebrateAnimation) # 0x800f
/* 0AB578 800AA978 AE0B0008 */  sw    $t3, 8($s0)
/* 0AB57C 800AA97C 00832021 */  addu  $a0, $a0, $v1
/* 0AB580 800AA980 8C848380 */  lw    $a0, %lo(gCharacterCelebrateAnimation)($a0) # -0x7c80($a0)
/* 0AB584 800AA984 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB588 800AA988 AFA70020 */   sw    $a3, 0x20($sp)
/* 0AB58C 800AA98C 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB590 800AA990 8FA70020 */  lw    $a3, 0x20($sp)
/* 0AB594 800AA994 3C0E8019 */  lui   $t6, %hi(D_8018DEE4) # 0x8019
/* 0AB598 800AA998 00046880 */  sll   $t5, $a0, 2
/* 0AB59C 800AA99C 01A46823 */  subu  $t5, $t5, $a0
/* 0AB5A0 800AA9A0 000D68C0 */  sll   $t5, $t5, 3
/* 0AB5A4 800AA9A4 01CD7021 */  addu  $t6, $t6, $t5
/* 0AB5A8 800AA9A8 8DCEDEE4 */  lw    $t6, %lo(D_8018DEE4)($t6) # -0x211c($t6)
/* 0AB5AC 800AA9AC 8CEC0000 */  lw    $t4, ($a3)
/* 0AB5B0 800AA9B0 00403025 */  move  $a2, $v0
/* 0AB5B4 800AA9B4 0C026965 */  jal   func_8009A594
/* 0AB5B8 800AA9B8 018E2823 */   subu  $a1, $t4, $t6
/* 0AB5BC 800AA9BC 10000033 */  b     .L800AAA8C
/* 0AB5C0 800AA9C0 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800AA9C4
/* 0AB5C4 800AA9C4 3C0F8019 */  lui   $t7, %hi(D_8018EDE8) # 0x8019
/* 0AB5C8 800AA9C8 01E27821 */  addu  $t7, $t7, $v0
/* 0AB5CC 800AA9CC 81EFEDE8 */  lb    $t7, %lo(D_8018EDE8)($t7) # -0x1218($t7)
/* 0AB5D0 800AA9D0 24010004 */  li    $at, 4
/* 0AB5D4 800AA9D4 11E0000F */  beqz  $t7, .L800AAA14
/* 0AB5D8 800AA9D8 00000000 */   nop   
/* 0AB5DC 800AA9DC 1080000D */  beqz  $a0, .L800AAA14
/* 0AB5E0 800AA9E0 24180001 */   li    $t8, 1
/* 0AB5E4 800AA9E4 0005C880 */  sll   $t9, $a1, 2
/* 0AB5E8 800AA9E8 3C04800F */  lui   $a0, %hi(gCharacterCelebrateAnimation) # 0x800f
/* 0AB5EC 800AA9EC AE180008 */  sw    $t8, 8($s0)
/* 0AB5F0 800AA9F0 00992021 */  addu  $a0, $a0, $t9
/* 0AB5F4 800AA9F4 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB5F8 800AA9F8 8C848380 */   lw    $a0, %lo(gCharacterCelebrateAnimation)($a0) # -0x7c80($a0)
/* 0AB5FC 800AA9FC 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB600 800AAA00 00002825 */  move  $a1, $zero
/* 0AB604 800AAA04 0C026965 */  jal   func_8009A594
/* 0AB608 800AAA08 00403025 */   move  $a2, $v0
/* 0AB60C 800AAA0C 1000001F */  b     .L800AAA8C
/* 0AB610 800AAA10 8FBF001C */   lw    $ra, 0x1c($sp)
.L800AAA14:
/* 0AB614 800AAA14 14610006 */  bne   $v1, $at, .L800AAA30
/* 0AB618 800AAA18 3C02800F */   lui   $v0, %hi(D_800E84A0) # 0x800f
/* 0AB61C 800AAA1C 00051880 */  sll   $v1, $a1, 2
/* 0AB620 800AAA20 3C02800F */  lui   $v0, %hi(D_800E8480) # 0x800f
/* 0AB624 800AAA24 00431021 */  addu  $v0, $v0, $v1
/* 0AB628 800AAA28 10000004 */  b     .L800AAA3C
/* 0AB62C 800AAA2C 8C428480 */   lw    $v0, %lo(D_800E8480)($v0) # -0x7b80($v0)
.L800AAA30:
/* 0AB630 800AAA30 00051880 */  sll   $v1, $a1, 2
/* 0AB634 800AAA34 00431021 */  addu  $v0, $v0, $v1
/* 0AB638 800AAA38 8C4284A0 */  lw    $v0, %lo(D_800E84A0)($v0) # -0x7b60($v0)
.L800AAA3C:
/* 0AB63C 800AAA3C 8E080018 */  lw    $t0, 0x18($s0)
/* 0AB640 800AAA40 3C098019 */  lui   $t1, %hi(D_8018DEE4) # 0x8019
/* 0AB644 800AAA44 3C04800F */  lui   $a0, %hi(D_800E8360) # 0x800f
/* 0AB648 800AAA48 00085080 */  sll   $t2, $t0, 2
/* 0AB64C 800AAA4C 01485023 */  subu  $t2, $t2, $t0
/* 0AB650 800AAA50 000A50C0 */  sll   $t2, $t2, 3
/* 0AB654 800AAA54 012A4821 */  addu  $t1, $t1, $t2
/* 0AB658 800AAA58 8D29DEE4 */  lw    $t1, %lo(D_8018DEE4)($t1) # -0x211c($t1)
/* 0AB65C 800AAA5C 00832021 */  addu  $a0, $a0, $v1
/* 0AB660 800AAA60 0122082A */  slt   $at, $t1, $v0
/* 0AB664 800AAA64 54200009 */  bnel  $at, $zero, .L800AAA8C
/* 0AB668 800AAA68 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AB66C 800AAA6C AE000008 */  sw    $zero, 8($s0)
/* 0AB670 800AAA70 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AB674 800AAA74 8C848360 */   lw    $a0, %lo(D_800E8360)($a0) # -0x7ca0($a0)
/* 0AB678 800AAA78 8E040018 */  lw    $a0, 0x18($s0)
/* 0AB67C 800AAA7C 00002825 */  move  $a1, $zero
/* 0AB680 800AAA80 0C026965 */  jal   func_8009A594
/* 0AB684 800AAA84 00403025 */   move  $a2, $v0
.L800AAA88:
/* 0AB688 800AAA88 8FBF001C */  lw    $ra, 0x1c($sp)
.L800AAA8C:
/* 0AB68C 800AAA8C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0AB690 800AAA90 27BD0040 */  addiu $sp, $sp, 0x40
/* 0AB694 800AAA94 03E00008 */  jr    $ra
/* 0AB698 800AAA98 00000000 */   nop   
