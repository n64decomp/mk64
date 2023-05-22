glabel func_8004F3E4
/* 04FFE4 8004F3E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04FFE8 8004F3E8 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 04FFEC 8004F3EC 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 04FFF0 8004F3F0 AFB40028 */  sw    $s4, 0x28($sp)
/* 04FFF4 8004F3F4 0080A025 */  move  $s4, $a0
/* 04FFF8 8004F3F8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04FFFC 8004F3FC AFB30024 */  sw    $s3, 0x24($sp)
/* 050000 8004F400 AFB20020 */  sw    $s2, 0x20($sp)
/* 050004 8004F404 AFB1001C */  sw    $s1, 0x1c($sp)
/* 050008 8004F408 1040000C */  beqz  $v0, .L8004F43C
/* 05000C 8004F40C AFB00018 */   sw    $s0, 0x18($sp)
/* 050010 8004F410 24010001 */  li    $at, 1
/* 050014 8004F414 10410046 */  beq   $v0, $at, .L8004F530
/* 050018 8004F418 00008825 */   move  $s1, $zero
/* 05001C 8004F41C 24010002 */  li    $at, 2
/* 050020 8004F420 1041005C */  beq   $v0, $at, .L8004F594
/* 050024 8004F424 3C11800E */   lui   $s1, %hi(gPlayerCountSelection1) # 0x800e
/* 050028 8004F428 24010003 */  li    $at, 3
/* 05002C 8004F42C 10410073 */  beq   $v0, $at, .L8004F5FC
/* 050030 8004F430 3C03800E */   lui   $v1, %hi(gPlayerCountSelection1) # $v1, 0x800e
/* 050034 8004F434 10000088 */  b     .L8004F658
/* 050038 8004F438 8FBF002C */   lw    $ra, 0x2c($sp)
.L8004F43C:
/* 05003C 8004F43C 3C118019 */  lui   $s1, %hi(D_8018D158) # $s1, 0x8019
/* 050040 8004F440 8E31D158 */  lw    $s1, %lo(D_8018D158)($s1)
/* 050044 8004F444 3C0F8016 */  lui   $t7, %hi(gGPCurrentRacePlayerIdByRank) # $t7, 0x8016
/* 050048 8004F448 25EF4360 */  addiu $t7, %lo(gGPCurrentRacePlayerIdByRank) # addiu $t7, $t7, 0x4360
/* 05004C 8004F44C 2631FFFF */  addiu $s1, $s1, -1
/* 050050 8004F450 0620001A */  bltz  $s1, .L8004F4BC
/* 050054 8004F454 00117040 */   sll   $t6, $s1, 1
/* 050058 8004F458 3C12800E */  lui   $s2, %hi(gPlayerOne) # $s2, 0x800e
/* 05005C 8004F45C 3C118016 */  lui   $s1, %hi(gGPCurrentRacePlayerIdByRank) # $s1, 0x8016
/* 050060 8004F460 26314360 */  addiu $s1, %lo(gGPCurrentRacePlayerIdByRank) # addiu $s1, $s1, 0x4360
/* 050064 8004F464 2652C4DC */  addiu $s2, %lo(gPlayerOne) # addiu $s2, $s2, -0x3b24
/* 050068 8004F468 01CF8021 */  addu  $s0, $t6, $t7
/* 05006C 8004F46C 24130DD8 */  li    $s3, 3544
/* 050070 8004F470 86050000 */  lh    $a1, ($s0)
.L8004F474:
/* 050074 8004F474 8E590000 */  lw    $t9, ($s2)
/* 050078 8004F478 02802025 */  move  $a0, $s4
/* 05007C 8004F47C 00B30019 */  multu $a1, $s3
/* 050080 8004F480 0000C012 */  mflo  $t8
/* 050084 8004F484 03194021 */  addu  $t0, $t8, $t9
/* 050088 8004F488 95090000 */  lhu   $t1, ($t0)
/* 05008C 8004F48C 312A1000 */  andi  $t2, $t1, 0x1000
/* 050090 8004F490 51400004 */  beql  $t2, $zero, .L8004F4A4
/* 050094 8004F494 2610FFFE */   addiu $s0, $s0, -2
/* 050098 8004F498 0C013C5A */  jal   func_8004F168
/* 05009C 8004F49C 24060008 */   li    $a2, 8
/* 0500A0 8004F4A0 2610FFFE */  addiu $s0, $s0, -2
.L8004F4A4:
/* 0500A4 8004F4A4 0211082B */  sltu  $at, $s0, $s1
/* 0500A8 8004F4A8 5020FFF2 */  beql  $at, $zero, .L8004F474
/* 0500AC 8004F4AC 86050000 */   lh    $a1, ($s0)
/* 0500B0 8004F4B0 3C118019 */  lui   $s1, %hi(D_8018D158) # $s1, 0x8019
/* 0500B4 8004F4B4 8E31D158 */  lw    $s1, %lo(D_8018D158)($s1)
/* 0500B8 8004F4B8 2631FFFF */  addiu $s1, $s1, -1
.L8004F4BC:
/* 0500BC 8004F4BC 3C12800E */  lui   $s2, %hi(gPlayerOne) # $s2, 0x800e
/* 0500C0 8004F4C0 2652C4DC */  addiu $s2, %lo(gPlayerOne) # addiu $s2, $s2, -0x3b24
/* 0500C4 8004F4C4 06200063 */  bltz  $s1, .L8004F654
/* 0500C8 8004F4C8 24130DD8 */   li    $s3, 3544
/* 0500CC 8004F4CC 00115840 */  sll   $t3, $s1, 1
/* 0500D0 8004F4D0 3C0C8016 */  lui   $t4, %hi(gGPCurrentRacePlayerIdByRank) # $t4, 0x8016
/* 0500D4 8004F4D4 258C4360 */  addiu $t4, %lo(gGPCurrentRacePlayerIdByRank) # addiu $t4, $t4, 0x4360
/* 0500D8 8004F4D8 016C8021 */  addu  $s0, $t3, $t4
/* 0500DC 8004F4DC 24111000 */  li    $s1, 4096
/* 0500E0 8004F4E0 86050000 */  lh    $a1, ($s0)
.L8004F4E4:
/* 0500E4 8004F4E4 8E4E0000 */  lw    $t6, ($s2)
/* 0500E8 8004F4E8 02802025 */  move  $a0, $s4
/* 0500EC 8004F4EC 00B30019 */  multu $a1, $s3
/* 0500F0 8004F4F0 00006812 */  mflo  $t5
/* 0500F4 8004F4F4 01AE1021 */  addu  $v0, $t5, $t6
/* 0500F8 8004F4F8 944F0000 */  lhu   $t7, ($v0)
/* 0500FC 8004F4FC 31F81000 */  andi  $t8, $t7, 0x1000
/* 050100 8004F500 12380003 */  beq   $s1, $t8, .L8004F510
/* 050104 8004F504 00000000 */   nop
/* 050108 8004F508 0C013C5A */  jal   func_8004F168
/* 05010C 8004F50C 94460254 */   lhu   $a2, 0x254($v0)
.L8004F510:
/* 050110 8004F510 3C198016 */  lui   $t9, %hi(gGPCurrentRacePlayerIdByRank) # $t9, 0x8016
/* 050114 8004F514 27394360 */  addiu $t9, %lo(gGPCurrentRacePlayerIdByRank) # addiu $t9, $t9, 0x4360
/* 050118 8004F518 2610FFFE */  addiu $s0, $s0, -2
/* 05011C 8004F51C 0219082B */  sltu  $at, $s0, $t9
/* 050120 8004F520 5020FFF0 */  beql  $at, $zero, .L8004F4E4
/* 050124 8004F524 86050000 */   lh    $a1, ($s0)
/* 050128 8004F528 1000004B */  b     .L8004F658
/* 05012C 8004F52C 8FBF002C */   lw    $ra, 0x2c($sp)
.L8004F530:
/* 050130 8004F530 3C02800E */  lui   $v0, %hi(gPlayerOne) # $v0, 0x800e
/* 050134 8004F534 8C42C4DC */  lw    $v0, %lo(gPlayerOne)($v0)
/* 050138 8004F538 00008025 */  move  $s0, $zero
/* 05013C 8004F53C 24130008 */  li    $s3, 8
/* 050140 8004F540 24120100 */  li    $s2, 256
.L8004F544:
/* 050144 8004F544 02024021 */  addu  $t0, $s0, $v0
/* 050148 8004F548 95090000 */  lhu   $t1, ($t0)
/* 05014C 8004F54C 02802025 */  move  $a0, $s4
/* 050150 8004F550 02202825 */  move  $a1, $s1
/* 050154 8004F554 312A0100 */  andi  $t2, $t1, 0x100
/* 050158 8004F558 564A0006 */  bnel  $s2, $t2, .L8004F574
/* 05015C 8004F55C 26310001 */   addiu $s1, $s1, 1
/* 050160 8004F560 0C013C5A */  jal   func_8004F168
/* 050164 8004F564 02603025 */   move  $a2, $s3
/* 050168 8004F568 3C02800E */  lui   $v0, %hi(gPlayerOne) # $v0, 0x800e
/* 05016C 8004F56C 8C42C4DC */  lw    $v0, %lo(gPlayerOne)($v0)
/* 050170 8004F570 26310001 */  addiu $s1, $s1, 1
.L8004F574:
/* 050174 8004F574 1633FFF3 */  bne   $s1, $s3, .L8004F544
/* 050178 8004F578 26100DD8 */   addiu $s0, $s0, 0xdd8
/* 05017C 8004F57C 02802025 */  move  $a0, $s4
/* 050180 8004F580 00002825 */  move  $a1, $zero
/* 050184 8004F584 0C013C5A */  jal   func_8004F168
/* 050188 8004F588 94460254 */   lhu   $a2, 0x254($v0)
/* 05018C 8004F58C 10000032 */  b     .L8004F658
/* 050190 8004F590 8FBF002C */   lw    $ra, 0x2c($sp)
.L8004F594:
/* 050194 8004F594 8E31C538 */  lw    $s1, %lo(gPlayerCountSelection1)($s1) # -0x3ac8($s1)
/* 050198 8004F598 3C0C8016 */  lui   $t4, %hi(gGPCurrentRacePlayerIdByRank) # $t4, 0x8016
/* 05019C 8004F59C 258C4360 */  addiu $t4, %lo(gGPCurrentRacePlayerIdByRank) # addiu $t4, $t4, 0x4360
/* 0501A0 8004F5A0 2631FFFF */  addiu $s1, $s1, -1
/* 0501A4 8004F5A4 0620002B */  bltz  $s1, .L8004F654
/* 0501A8 8004F5A8 00115840 */   sll   $t3, $s1, 1
/* 0501AC 8004F5AC 3C12800E */  lui   $s2, %hi(gPlayerOne) # $s2, 0x800e
/* 0501B0 8004F5B0 3C118016 */  lui   $s1, %hi(gGPCurrentRacePlayerIdByRank) # $s1, 0x8016
/* 0501B4 8004F5B4 26314360 */  addiu $s1, %lo(gGPCurrentRacePlayerIdByRank) # addiu $s1, $s1, 0x4360
/* 0501B8 8004F5B8 2652C4DC */  addiu $s2, %lo(gPlayerOne) # addiu $s2, $s2, -0x3b24
/* 0501BC 8004F5BC 016C8021 */  addu  $s0, $t3, $t4
/* 0501C0 8004F5C0 24130DD8 */  li    $s3, 3544
/* 0501C4 8004F5C4 86050000 */  lh    $a1, ($s0)
.L8004F5C8:
/* 0501C8 8004F5C8 8E4E0000 */  lw    $t6, ($s2)
/* 0501CC 8004F5CC 02802025 */  move  $a0, $s4
/* 0501D0 8004F5D0 00B30019 */  multu $a1, $s3
/* 0501D4 8004F5D4 00006812 */  mflo  $t5
/* 0501D8 8004F5D8 01AE7821 */  addu  $t7, $t5, $t6
/* 0501DC 8004F5DC 0C013C5A */  jal   func_8004F168
/* 0501E0 8004F5E0 95E60254 */   lhu   $a2, 0x254($t7)
/* 0501E4 8004F5E4 2610FFFE */  addiu $s0, $s0, -2
/* 0501E8 8004F5E8 0211082B */  sltu  $at, $s0, $s1
/* 0501EC 8004F5EC 5020FFF6 */  beql  $at, $zero, .L8004F5C8
/* 0501F0 8004F5F0 86050000 */   lh    $a1, ($s0)
/* 0501F4 8004F5F4 10000018 */  b     .L8004F658
/* 0501F8 8004F5F8 8FBF002C */   lw    $ra, 0x2c($sp)
.L8004F5FC:
/* 0501FC 8004F5FC 8C63C538 */  lw    $v1, %lo(gPlayerCountSelection1)($v1)
/* 050200 8004F600 00008825 */  move  $s1, $zero
/* 050204 8004F604 00008025 */  move  $s0, $zero
/* 050208 8004F608 18600012 */  blez  $v1, .L8004F654
/* 05020C 8004F60C 3C12800E */   lui   $s2, %hi(gPlayerOne) # $s2, 0x800e
/* 050210 8004F610 2652C4DC */  addiu $s2, %lo(gPlayerOne) # addiu $s2, $s2, -0x3b24
.L8004F614:
/* 050214 8004F614 8E580000 */  lw    $t8, ($s2)
/* 050218 8004F618 02802025 */  move  $a0, $s4
/* 05021C 8004F61C 02202825 */  move  $a1, $s1
/* 050220 8004F620 02181021 */  addu  $v0, $s0, $t8
/* 050224 8004F624 94590000 */  lhu   $t9, ($v0)
/* 050228 8004F628 33280040 */  andi  $t0, $t9, 0x40
/* 05022C 8004F62C 55000006 */  bnel  $t0, $zero, .L8004F648
/* 050230 8004F630 26310001 */   addiu $s1, $s1, 1
/* 050234 8004F634 0C013C5A */  jal   func_8004F168
/* 050238 8004F638 94460254 */   lhu   $a2, 0x254($v0)
/* 05023C 8004F63C 3C03800E */  lui   $v1, %hi(gPlayerCountSelection1) # $v1, 0x800e
/* 050240 8004F640 8C63C538 */  lw    $v1, %lo(gPlayerCountSelection1)($v1)
/* 050244 8004F644 26310001 */  addiu $s1, $s1, 1
.L8004F648:
/* 050248 8004F648 0223082A */  slt   $at, $s1, $v1
/* 05024C 8004F64C 1420FFF1 */  bnez  $at, .L8004F614
/* 050250 8004F650 26100DD8 */   addiu $s0, $s0, 0xdd8
.L8004F654:
/* 050254 8004F654 8FBF002C */  lw    $ra, 0x2c($sp)
.L8004F658:
/* 050258 8004F658 8FB00018 */  lw    $s0, 0x18($sp)
/* 05025C 8004F65C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 050260 8004F660 8FB20020 */  lw    $s2, 0x20($sp)
/* 050264 8004F664 8FB30024 */  lw    $s3, 0x24($sp)
/* 050268 8004F668 8FB40028 */  lw    $s4, 0x28($sp)
/* 05026C 8004F66C 03E00008 */  jr    $ra
/* 050270 8004F670 27BD0030 */   addiu $sp, $sp, 0x30
