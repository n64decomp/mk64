.section .late_rodata

glabel jpt_800F2688
.word L800AC488, L800AC4EC, L800AC580, L800AC5D0
.word L800AC5D0, L800AC5D0, L800AC5D0, L800AC738
.word L800AC78C, L800AC7CC, L800AC878, L800AC8A0
.word L800AC8E0, L800AC968

.section .text

glabel func_800AC458
/* 0AD058 800AC458 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AD05C 800AC45C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AD060 800AC460 8C820004 */  lw    $v0, 4($a0)
/* 0AD064 800AC464 00803825 */  move  $a3, $a0
/* 0AD068 800AC468 2C41000E */  sltiu $at, $v0, 0xe
/* 0AD06C 800AC46C 1020013E */  beqz  $at, .L800AC968
/* 0AD070 800AC470 00027080 */   sll   $t6, $v0, 2
/* 0AD074 800AC474 3C01800F */  lui   $at, %hi(jpt_800F2688)
/* 0AD078 800AC478 002E0821 */  addu  $at, $at, $t6
/* 0AD07C 800AC47C 8C2E2688 */  lw    $t6, %lo(jpt_800F2688)($at)
/* 0AD080 800AC480 01C00008 */  jr    $t6
/* 0AD084 800AC484 00000000 */   nop   
glabel L800AC488
/* 0AD088 800AC488 240FFF60 */  li    $t7, -160
/* 0AD08C 800AC48C 24180001 */  li    $t8, 1
/* 0AD090 800AC490 ACEF000C */  sw    $t7, 0xc($a3)
/* 0AD094 800AC494 ACF80004 */  sw    $t8, 4($a3)
/* 0AD098 800AC498 3C028019 */  lui   $v0, %hi(D_8018D9BC) # $v0, 0x8019
/* 0AD09C 800AC49C 2442D9BC */  addiu $v0, %lo(D_8018D9BC) # addiu $v0, $v0, -0x2644
/* 0AD0A0 800AC4A0 3C19800F */  lui   $t9, %hi(gGPPointRewards) # $t9, 0x800f
/* 0AD0A4 800AC4A4 83390B18 */  lb    $t9, %lo(gGPPointRewards)($t9)
/* 0AD0A8 800AC4A8 8C4A0000 */  lw    $t2, ($v0)
/* 0AD0AC 800AC4AC 3C0B800F */  lui   $t3, %hi(gGPPointRewards + 1) # $t3, 0x800f
/* 0AD0B0 800AC4B0 3C0D800F */  lui   $t5, %hi(gGPPointRewards + 2) # $t5, 0x800f
/* 0AD0B4 800AC4B4 A1590000 */  sb    $t9, ($t2)
/* 0AD0B8 800AC4B8 8C4C0000 */  lw    $t4, ($v0)
/* 0AD0BC 800AC4BC 816B0B19 */  lb    $t3, %lo(gGPPointRewards + 1)($t3)
/* 0AD0C0 800AC4C0 3C0F800F */  lui   $t7, %hi(gGPPointRewards + 3) # $t7, 0x800f
/* 0AD0C4 800AC4C4 A18B0001 */  sb    $t3, 1($t4)
/* 0AD0C8 800AC4C8 8C4E0000 */  lw    $t6, ($v0)
/* 0AD0CC 800AC4CC 81AD0B1A */  lb    $t5, %lo(gGPPointRewards + 2)($t5)
/* 0AD0D0 800AC4D0 A1CD0002 */  sb    $t5, 2($t6)
/* 0AD0D4 800AC4D4 8C580000 */  lw    $t8, ($v0)
/* 0AD0D8 800AC4D8 81EF0B1B */  lb    $t7, %lo(gGPPointRewards + 3)($t7)
/* 0AD0DC 800AC4DC A30F0003 */  sb    $t7, 3($t8)
/* 0AD0E0 800AC4E0 8CF9000C */  lw    $t9, 0xc($a3)
/* 0AD0E4 800AC4E4 10000120 */  b     .L800AC968
/* 0AD0E8 800AC4E8 ACF90020 */   sw    $t9, 0x20($a3)
glabel L800AC4EC
/* 0AD0EC 800AC4EC 8CE50020 */  lw    $a1, 0x20($a3)
/* 0AD0F0 800AC4F0 3C0A8019 */  lui   $t2, %hi(D_8018D9D8) # $t2, 0x8019
/* 0AD0F4 800AC4F4 24040010 */  li    $a0, 16
/* 0AD0F8 800AC4F8 ACE5000C */  sw    $a1, 0xc($a3)
/* 0AD0FC 800AC4FC 814AD9D8 */  lb    $t2, %lo(D_8018D9D8)($t2)
/* 0AD100 800AC500 3C02800E */  lui   $v0, %hi(D_800DC5EC) # $v0, 0x800e
/* 0AD104 800AC504 240F0002 */  li    $t7, 2
/* 0AD108 800AC508 11400003 */  beqz  $t2, .L800AC518
/* 0AD10C 800AC50C 3C19800E */   lui   $t9, %hi(D_800DC5EC) # $t9, 0x800e
/* 0AD110 800AC510 10000001 */  b     .L800AC518
/* 0AD114 800AC514 24040020 */   li    $a0, 32
.L800AC518:
/* 0AD118 800AC518 00A43021 */  addu  $a2, $a1, $a0
/* 0AD11C 800AC51C 04C3000D */  bgezl $a2, .L800AC554
/* 0AD120 800AC520 ACE00020 */   sw    $zero, 0x20($a3)
/* 0AD124 800AC524 ACE60020 */  sw    $a2, 0x20($a3)
/* 0AD128 800AC528 8C42C5EC */  lw    $v0, %lo(D_800DC5EC)($v0)
/* 0AD12C 800AC52C 3C03800E */  lui   $v1, %hi(D_800DC5F0) # $v1, 0x800e
/* 0AD130 800AC530 844B0030 */  lh    $t3, 0x30($v0)
/* 0AD134 800AC534 01646021 */  addu  $t4, $t3, $a0
/* 0AD138 800AC538 A44C0030 */  sh    $t4, 0x30($v0)
/* 0AD13C 800AC53C 8C63C5F0 */  lw    $v1, %lo(D_800DC5F0)($v1)
/* 0AD140 800AC540 846D0030 */  lh    $t5, 0x30($v1)
/* 0AD144 800AC544 01A47023 */  subu  $t6, $t5, $a0
/* 0AD148 800AC548 10000107 */  b     .L800AC968
/* 0AD14C 800AC54C A46E0030 */   sh    $t6, 0x30($v1)
/* 0AD150 800AC550 ACE00020 */  sw    $zero, 0x20($a3)
.L800AC554:
/* 0AD154 800AC554 ACE0000C */  sw    $zero, 0xc($a3)
/* 0AD158 800AC558 ACEF0004 */  sw    $t7, 4($a3)
/* 0AD15C 800AC55C ACE0001C */  sw    $zero, 0x1c($a3)
/* 0AD160 800AC560 8F39C5EC */  lw    $t9, %lo(D_800DC5EC)($t9)
/* 0AD164 800AC564 241800F0 */  li    $t8, 240
/* 0AD168 800AC568 3C0B800E */  lui   $t3, %hi(D_800DC5F0) # $t3, 0x800e
/* 0AD16C 800AC56C A7380030 */  sh    $t8, 0x30($t9)
/* 0AD170 800AC570 8D6BC5F0 */  lw    $t3, %lo(D_800DC5F0)($t3)
/* 0AD174 800AC574 240A0050 */  li    $t2, 80
/* 0AD178 800AC578 100000FB */  b     .L800AC968
/* 0AD17C 800AC57C A56A0030 */   sh    $t2, 0x30($t3)
glabel L800AC580
/* 0AD180 800AC580 8CEC001C */  lw    $t4, 0x1c($a3)
/* 0AD184 800AC584 ACE0000C */  sw    $zero, 0xc($a3)
/* 0AD188 800AC588 3C0E8019 */  lui   $t6, %hi(D_8018D9D8) # $t6, 0x8019
/* 0AD18C 800AC58C 258D0001 */  addiu $t5, $t4, 1
/* 0AD190 800AC590 ACED001C */  sw    $t5, 0x1c($a3)
/* 0AD194 800AC594 81CED9D8 */  lb    $t6, %lo(D_8018D9D8)($t6)
/* 0AD198 800AC598 29A1001F */  slti  $at, $t5, 0x1f
/* 0AD19C 800AC59C 3C18800E */  lui   $t8, %hi(D_800DDB24) # $t8, 0x800e
/* 0AD1A0 800AC5A0 15C00003 */  bnez  $t6, .L800AC5B0
/* 0AD1A4 800AC5A4 00000000 */   nop   
/* 0AD1A8 800AC5A8 542000F0 */  bnel  $at, $zero, .L800AC96C
/* 0AD1AC 800AC5AC 8FBF0014 */   lw    $ra, 0x14($sp)
.L800AC5B0:
/* 0AD1B0 800AC5B0 8F18DB24 */  lw    $t8, %lo(D_800DDB24)($t8)
/* 0AD1B4 800AC5B4 24190003 */  li    $t9, 3
/* 0AD1B8 800AC5B8 530000EC */  beql  $t8, $zero, .L800AC96C
/* 0AD1BC 800AC5BC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD1C0 800AC5C0 ACF90004 */  sw    $t9, 4($a3)
/* 0AD1C4 800AC5C4 ACE0001C */  sw    $zero, 0x1c($a3)
/* 0AD1C8 800AC5C8 100000E7 */  b     .L800AC968
/* 0AD1CC 800AC5CC ACE00020 */   sw    $zero, 0x20($a3)
glabel L800AC5D0
/* 0AD1D0 800AC5D0 8CEA001C */  lw    $t2, 0x1c($a3)
/* 0AD1D4 800AC5D4 24010003 */  li    $at, 3
/* 0AD1D8 800AC5D8 00004825 */  move  $t1, $zero
/* 0AD1DC 800AC5DC 254B0001 */  addiu $t3, $t2, 1
/* 0AD1E0 800AC5E0 0161001A */  div   $zero, $t3, $at
/* 0AD1E4 800AC5E4 00006810 */  mfhi  $t5
/* 0AD1E8 800AC5E8 2445FFFD */  addiu $a1, $v0, -3
/* 0AD1EC 800AC5EC 11A00004 */  beqz  $t5, .L800AC600
/* 0AD1F0 800AC5F0 ACEB001C */   sw    $t3, 0x1c($a3)
/* 0AD1F4 800AC5F4 3C0E8019 */  lui   $t6, %hi(D_8018D9D8) # $t6, 0x8019
/* 0AD1F8 800AC5F8 81CED9D8 */  lb    $t6, %lo(D_8018D9D8)($t6)
/* 0AD1FC 800AC5FC 11C00032 */  beqz  $t6, .L800AC6C8
.L800AC600:
/* 0AD200 800AC600 3C028019 */   lui   $v0, %hi(D_8018D9BC) # $v0, 0x8019
/* 0AD204 800AC604 2442D9BC */  addiu $v0, %lo(D_8018D9BC) # addiu $v0, $v0, -0x2644
/* 0AD208 800AC608 8C4F0000 */  lw    $t7, ($v0)
/* 0AD20C 800AC60C 0005C840 */  sll   $t9, $a1, 1
/* 0AD210 800AC610 3C0A8016 */  lui   $t2, %hi(gGPCurrentRacePlayerIdByRank) # 0x8016
/* 0AD214 800AC614 01E53021 */  addu  $a2, $t7, $a1
/* 0AD218 800AC618 90C80000 */  lbu   $t0, ($a2)
/* 0AD21C 800AC61C 01595021 */  addu  $t2, $t2, $t9
/* 0AD220 800AC620 3C0C800F */  lui   $t4, %hi(gPlayers+0x254) # 0x800f
/* 0AD224 800AC624 19000028 */  blez  $t0, .L800AC6C8
/* 0AD228 800AC628 2518FFFF */   addiu $t8, $t0, -1
/* 0AD22C 800AC62C A0D80000 */  sb    $t8, ($a2)
/* 0AD230 800AC630 854A4360 */  lh    $t2, %lo(gGPCurrentRacePlayerIdByRank)($t2) # 0x4360($t2)
/* 0AD234 800AC634 3C0D8019 */  lui   $t5, %hi(gGPPointsByCharacterId) # $t5, 0x8019
/* 0AD238 800AC638 25ADD9C8 */  addiu $t5, %lo(gGPPointsByCharacterId) # addiu $t5, $t5, -0x2638
/* 0AD23C 800AC63C 000A58C0 */  sll   $t3, $t2, 3
/* 0AD240 800AC640 016A5823 */  subu  $t3, $t3, $t2
/* 0AD244 800AC644 000B5900 */  sll   $t3, $t3, 4
/* 0AD248 800AC648 016A5823 */  subu  $t3, $t3, $t2
/* 0AD24C 800AC64C 000B5880 */  sll   $t3, $t3, 2
/* 0AD250 800AC650 016A5823 */  subu  $t3, $t3, $t2
/* 0AD254 800AC654 000B58C0 */  sll   $t3, $t3, 3
/* 0AD258 800AC658 018B6021 */  addu  $t4, $t4, $t3
/* 0AD25C 800AC65C 958C6BE4 */  lhu   $t4, %lo(gPlayers+0x254)($t4) # 0x6be4($t4)
/* 0AD260 800AC660 3C044900 */  lui   $a0, (0x49008017 >> 16) # lui $a0, 0x4900
/* 0AD264 800AC664 34848017 */  ori   $a0, (0x49008017 & 0xFFFF) # ori $a0, $a0, 0x8017
/* 0AD268 800AC668 018D1821 */  addu  $v1, $t4, $t5
/* 0AD26C 800AC66C 806E0000 */  lb    $t6, ($v1)
/* 0AD270 800AC670 AFA90018 */  sw    $t1, 0x18($sp)
/* 0AD274 800AC674 AFA70020 */  sw    $a3, 0x20($sp)
/* 0AD278 800AC678 25CF0001 */  addiu $t7, $t6, 1
/* 0AD27C 800AC67C A06F0000 */  sb    $t7, ($v1)
/* 0AD280 800AC680 0C032384 */  jal   play_sound2
/* 0AD284 800AC684 AFA5001C */   sw    $a1, 0x1c($sp)
/* 0AD288 800AC688 3C028019 */  lui   $v0, %hi(D_8018D9BC) # $v0, 0x8019
/* 0AD28C 800AC68C 2442D9BC */  addiu $v0, %lo(D_8018D9BC) # addiu $v0, $v0, -0x2644
/* 0AD290 800AC690 8FA5001C */  lw    $a1, 0x1c($sp)
/* 0AD294 800AC694 8C580000 */  lw    $t8, ($v0)
/* 0AD298 800AC698 8FA70020 */  lw    $a3, 0x20($sp)
/* 0AD29C 800AC69C 8FA90018 */  lw    $t1, 0x18($sp)
/* 0AD2A0 800AC6A0 0305C821 */  addu  $t9, $t8, $a1
/* 0AD2A4 800AC6A4 932A0000 */  lbu   $t2, ($t9)
/* 0AD2A8 800AC6A8 55400008 */  bnel  $t2, $zero, .L800AC6CC
/* 0AD2AC 800AC6AC 8CED0020 */   lw    $t5, 0x20($a3)
/* 0AD2B0 800AC6B0 8CEB0020 */  lw    $t3, 0x20($a3)
/* 0AD2B4 800AC6B4 240C0001 */  li    $t4, 1
/* 0AD2B8 800AC6B8 55600004 */  bnel  $t3, $zero, .L800AC6CC
/* 0AD2BC 800AC6BC 8CED0020 */   lw    $t5, 0x20($a3)
/* 0AD2C0 800AC6C0 ACEC0020 */  sw    $t4, 0x20($a3)
/* 0AD2C4 800AC6C4 ACE0001C */  sw    $zero, 0x1c($a3)
.L800AC6C8:
/* 0AD2C8 800AC6C8 8CED0020 */  lw    $t5, 0x20($a3)
.L800AC6CC:
/* 0AD2CC 800AC6CC 11A0000D */  beqz  $t5, .L800AC704
/* 0AD2D0 800AC6D0 00000000 */   nop   
/* 0AD2D4 800AC6D4 8CE2001C */  lw    $v0, 0x1c($a3)
/* 0AD2D8 800AC6D8 3C0E8019 */  lui   $t6, %hi(D_8018D9D8) # $t6, 0x8019
/* 0AD2DC 800AC6DC 2841000B */  slti  $at, $v0, 0xb
/* 0AD2E0 800AC6E0 50200008 */  beql  $at, $zero, .L800AC704
/* 0AD2E4 800AC6E4 24090001 */   li    $t1, 1
/* 0AD2E8 800AC6E8 81CED9D8 */  lb    $t6, %lo(D_8018D9D8)($t6)
/* 0AD2EC 800AC6EC 28410004 */  slti  $at, $v0, 4
/* 0AD2F0 800AC6F0 11C00004 */  beqz  $t6, .L800AC704
/* 0AD2F4 800AC6F4 00000000 */   nop   
/* 0AD2F8 800AC6F8 14200002 */  bnez  $at, .L800AC704
/* 0AD2FC 800AC6FC 00000000 */   nop   
/* 0AD300 800AC700 24090001 */  li    $t1, 1
.L800AC704:
/* 0AD304 800AC704 51200099 */  beql  $t1, $zero, .L800AC96C
/* 0AD308 800AC708 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD30C 800AC70C 8CE20004 */  lw    $v0, 4($a3)
/* 0AD310 800AC710 ACE00020 */  sw    $zero, 0x20($a3)
/* 0AD314 800AC714 ACE0001C */  sw    $zero, 0x1c($a3)
/* 0AD318 800AC718 28410006 */  slti  $at, $v0, 6
/* 0AD31C 800AC71C 10200004 */  beqz  $at, .L800AC730
/* 0AD320 800AC720 24180007 */   li    $t8, 7
/* 0AD324 800AC724 244F0001 */  addiu $t7, $v0, 1
/* 0AD328 800AC728 1000008F */  b     .L800AC968
/* 0AD32C 800AC72C ACEF0004 */   sw    $t7, 4($a3)
.L800AC730:
/* 0AD330 800AC730 1000008D */  b     .L800AC968
/* 0AD334 800AC734 ACF80004 */   sw    $t8, 4($a3)
glabel L800AC738
/* 0AD338 800AC738 8CF9001C */  lw    $t9, 0x1c($a3)
/* 0AD33C 800AC73C 3C0B8019 */  lui   $t3, %hi(D_8018D9D8) # $t3, 0x8019
/* 0AD340 800AC740 272A0001 */  addiu $t2, $t9, 1
/* 0AD344 800AC744 ACEA001C */  sw    $t2, 0x1c($a3)
/* 0AD348 800AC748 816BD9D8 */  lb    $t3, %lo(D_8018D9D8)($t3)
/* 0AD34C 800AC74C 2941000B */  slti  $at, $t2, 0xb
/* 0AD350 800AC750 51600004 */  beql  $t3, $zero, .L800AC764
/* 0AD354 800AC754 8CED001C */   lw    $t5, 0x1c($a3)
/* 0AD358 800AC758 10200004 */  beqz  $at, .L800AC76C
/* 0AD35C 800AC75C 00000000 */   nop   
/* 0AD360 800AC760 8CED001C */  lw    $t5, 0x1c($a3)
.L800AC764:
/* 0AD364 800AC764 29A1003D */  slti  $at, $t5, 0x3d
/* 0AD368 800AC768 1420007F */  bnez  $at, .L800AC968
.L800AC76C:
/* 0AD36C 800AC76C 3C0E800E */   lui   $t6, %hi(D_800DDB24) # $t6, 0x800e
/* 0AD370 800AC770 8DCEDB24 */  lw    $t6, %lo(D_800DDB24)($t6)
/* 0AD374 800AC774 24060008 */  li    $a2, 8
/* 0AD378 800AC778 51C0007C */  beql  $t6, $zero, .L800AC96C
/* 0AD37C 800AC77C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD380 800AC780 ACE60004 */  sw    $a2, 4($a3)
/* 0AD384 800AC784 10000078 */  b     .L800AC968
/* 0AD388 800AC788 ACE0001C */   sw    $zero, 0x1c($a3)
glabel L800AC78C
/* 0AD38C 800AC78C 8CEF001C */  lw    $t7, 0x1c($a3)
/* 0AD390 800AC790 3C198019 */  lui   $t9, %hi(D_8018D9D8) # $t9, 0x8019
/* 0AD394 800AC794 240D0009 */  li    $t5, 9
/* 0AD398 800AC798 25F80001 */  addiu $t8, $t7, 1
/* 0AD39C 800AC79C ACF8001C */  sw    $t8, 0x1c($a3)
/* 0AD3A0 800AC7A0 8339D9D8 */  lb    $t9, %lo(D_8018D9D8)($t9)
/* 0AD3A4 800AC7A4 270B0005 */  addiu $t3, $t8, 5
/* 0AD3A8 800AC7A8 53200003 */  beql  $t9, $zero, .L800AC7B8
/* 0AD3AC 800AC7AC 8CEC001C */   lw    $t4, 0x1c($a3)
/* 0AD3B0 800AC7B0 ACEB001C */  sw    $t3, 0x1c($a3)
/* 0AD3B4 800AC7B4 8CEC001C */  lw    $t4, 0x1c($a3)
.L800AC7B8:
/* 0AD3B8 800AC7B8 29810029 */  slti  $at, $t4, 0x29
/* 0AD3BC 800AC7BC 5420006B */  bnel  $at, $zero, .L800AC96C
/* 0AD3C0 800AC7C0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD3C4 800AC7C4 10000068 */  b     .L800AC968
/* 0AD3C8 800AC7C8 ACED0004 */   sw    $t5, 4($a3)
glabel L800AC7CC
/* 0AD3CC 800AC7CC 8CEE001C */  lw    $t6, 0x1c($a3)
/* 0AD3D0 800AC7D0 3C188019 */  lui   $t8, %hi(D_8018D9D8) # $t8, 0x8019
/* 0AD3D4 800AC7D4 240C000A */  li    $t4, 10
/* 0AD3D8 800AC7D8 25CFFFFF */  addiu $t7, $t6, -1
/* 0AD3DC 800AC7DC ACEF001C */  sw    $t7, 0x1c($a3)
/* 0AD3E0 800AC7E0 8318D9D8 */  lb    $t8, %lo(D_8018D9D8)($t8)
/* 0AD3E4 800AC7E4 25EAFFFB */  addiu $t2, $t7, -5
/* 0AD3E8 800AC7E8 3C0D8019 */  lui   $t5, %hi(gCourseIndexInCup) # $t5, 0x8019
/* 0AD3EC 800AC7EC 53000003 */  beql  $t8, $zero, .L800AC7FC
/* 0AD3F0 800AC7F0 8CEB001C */   lw    $t3, 0x1c($a3)
/* 0AD3F4 800AC7F4 ACEA001C */  sw    $t2, 0x1c($a3)
/* 0AD3F8 800AC7F8 8CEB001C */  lw    $t3, 0x1c($a3)
.L800AC7FC:
/* 0AD3FC 800AC7FC 5D60005B */  bgtzl $t3, .L800AC96C
/* 0AD400 800AC800 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD404 800AC804 ACEC0004 */  sw    $t4, 4($a3)
/* 0AD408 800AC808 ACE0001C */  sw    $zero, 0x1c($a3)
/* 0AD40C 800AC80C 81ADEE0B */  lb    $t5, %lo(gCourseIndexInCup)($t5)
/* 0AD410 800AC810 24010003 */  li    $at, 3
/* 0AD414 800AC814 00002825 */  move  $a1, $zero
/* 0AD418 800AC818 15A10053 */  bne   $t5, $at, .L800AC968
/* 0AD41C 800AC81C 3C028019 */   lui   $v0, %hi(gCharacterIdByGPOverallRank) # $v0, 0x8019
/* 0AD420 800AC820 3C038019 */  lui   $v1, %hi(gPlayerCount) # $v1, 0x8019
/* 0AD424 800AC824 3C048016 */  lui   $a0, %hi(D_80164478) # $a0, 0x8016
/* 0AD428 800AC828 24844478 */  addiu $a0, %lo(D_80164478) # addiu $a0, $a0, 0x4478
/* 0AD42C 800AC82C 8063EDF3 */  lb    $v1, %lo(gPlayerCount)($v1)
/* 0AD430 800AC830 2442D9D0 */  addiu $v0, %lo(gCharacterIdByGPOverallRank) # addiu $v0, $v0, -0x2630
/* 0AD434 800AC834 24060008 */  li    $a2, 8
.L800AC838:
/* 0AD438 800AC838 804E0000 */  lb    $t6, ($v0)
/* 0AD43C 800AC83C 000E7840 */  sll   $t7, $t6, 1
/* 0AD440 800AC840 008FC021 */  addu  $t8, $a0, $t7
/* 0AD444 800AC844 87190000 */  lh    $t9, ($t8)
/* 0AD448 800AC848 0323082A */  slt   $at, $t9, $v1
/* 0AD44C 800AC84C 50200006 */  beql  $at, $zero, .L800AC868
/* 0AD450 800AC850 24A50001 */   addiu $a1, $a1, 1
/* 0AD454 800AC854 0C02D4DB */  jal   func_800B536C
/* 0AD458 800AC858 00A02025 */   move  $a0, $a1
/* 0AD45C 800AC85C 10000043 */  b     .L800AC96C
/* 0AD460 800AC860 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD464 800AC864 24A50001 */  addiu $a1, $a1, 1
.L800AC868:
/* 0AD468 800AC868 14A6FFF3 */  bne   $a1, $a2, .L800AC838
/* 0AD46C 800AC86C 24420001 */   addiu $v0, $v0, 1
/* 0AD470 800AC870 1000003E */  b     .L800AC96C
/* 0AD474 800AC874 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800AC878
/* 0AD478 800AC878 8CEA001C */  lw    $t2, 0x1c($a3)
/* 0AD47C 800AC87C 240D000B */  li    $t5, 11
/* 0AD480 800AC880 254B0001 */  addiu $t3, $t2, 1
/* 0AD484 800AC884 19600038 */  blez  $t3, .L800AC968
/* 0AD488 800AC888 ACEB001C */   sw    $t3, 0x1c($a3)
/* 0AD48C 800AC88C ACED0004 */  sw    $t5, 4($a3)
/* 0AD490 800AC890 0C02486D */  jal   func_800921B4
/* 0AD494 800AC894 ACE0001C */   sw    $zero, 0x1c($a3)
/* 0AD498 800AC898 10000034 */  b     .L800AC96C
/* 0AD49C 800AC89C 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800AC8A0
/* 0AD4A0 800AC8A0 3C0E8019 */  lui   $t6, %hi(D_8018D9D8) # $t6, 0x8019
/* 0AD4A4 800AC8A4 81CED9D8 */  lb    $t6, %lo(D_8018D9D8)($t6)
/* 0AD4A8 800AC8A8 3C0F800E */  lui   $t7, %hi(D_800DDB24) # $t7, 0x800e
/* 0AD4AC 800AC8AC 51C0002F */  beql  $t6, $zero, .L800AC96C
/* 0AD4B0 800AC8B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AD4B4 800AC8B4 8DEFDB24 */  lw    $t7, %lo(D_800DDB24)($t7)
/* 0AD4B8 800AC8B8 3C044900 */  lui   $a0, (0x49008015 >> 16) # lui $a0, 0x4900
/* 0AD4BC 800AC8BC 2418000C */  li    $t8, 12
/* 0AD4C0 800AC8C0 11E00029 */  beqz  $t7, .L800AC968
/* 0AD4C4 800AC8C4 34848015 */   ori   $a0, (0x49008015 & 0xFFFF) # ori $a0, $a0, 0x8015
/* 0AD4C8 800AC8C8 8CF90010 */  lw    $t9, 0x10($a3)
/* 0AD4CC 800AC8CC ACF80004 */  sw    $t8, 4($a3)
/* 0AD4D0 800AC8D0 0C032384 */  jal   play_sound2
/* 0AD4D4 800AC8D4 ACF90020 */   sw    $t9, 0x20($a3)
/* 0AD4D8 800AC8D8 10000024 */  b     .L800AC96C
/* 0AD4DC 800AC8DC 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L800AC8E0
/* 0AD4E0 800AC8E0 8CE50020 */  lw    $a1, 0x20($a3)
/* 0AD4E4 800AC8E4 240F000D */  li    $t7, 13
/* 0AD4E8 800AC8E8 2418012C */  li    $t8, 300
/* 0AD4EC 800AC8EC 28A100F0 */  slti  $at, $a1, 0xf0
/* 0AD4F0 800AC8F0 1020000E */  beqz  $at, .L800AC92C
/* 0AD4F4 800AC8F4 ACE50010 */   sw    $a1, 0x10($a3)
/* 0AD4F8 800AC8F8 24AA0010 */  addiu $t2, $a1, 0x10
/* 0AD4FC 800AC8FC ACEA0020 */  sw    $t2, 0x20($a3)
/* 0AD500 800AC900 3C02800E */  lui   $v0, %hi(D_800DC5EC) # $v0, 0x800e
/* 0AD504 800AC904 8C42C5EC */  lw    $v0, %lo(D_800DC5EC)($v0)
/* 0AD508 800AC908 3C03800E */  lui   $v1, %hi(D_800DC5F0) # $v1, 0x800e
/* 0AD50C 800AC90C 844B0032 */  lh    $t3, 0x32($v0)
/* 0AD510 800AC910 256C0010 */  addiu $t4, $t3, 0x10
/* 0AD514 800AC914 A44C0032 */  sh    $t4, 0x32($v0)
/* 0AD518 800AC918 8C63C5F0 */  lw    $v1, %lo(D_800DC5F0)($v1)
/* 0AD51C 800AC91C 846D0032 */  lh    $t5, 0x32($v1)
/* 0AD520 800AC920 25AEFFF0 */  addiu $t6, $t5, -0x10
/* 0AD524 800AC924 10000010 */  b     .L800AC968
/* 0AD528 800AC928 A46E0032 */   sh    $t6, 0x32($v1)
.L800AC92C:
/* 0AD52C 800AC92C ACE00020 */  sw    $zero, 0x20($a3)
/* 0AD530 800AC930 ACEF0004 */  sw    $t7, 4($a3)
/* 0AD534 800AC934 ACE0001C */  sw    $zero, 0x1c($a3)
/* 0AD538 800AC938 3C19800E */  lui   $t9, %hi(D_800DC5EC) # $t9, 0x800e
/* 0AD53C 800AC93C 8F39C5EC */  lw    $t9, %lo(D_800DC5EC)($t9)
/* 0AD540 800AC940 3C0B800E */  lui   $t3, %hi(D_800DC5F0) # $t3, 0x800e
/* 0AD544 800AC944 240AFFC4 */  li    $t2, -60
/* 0AD548 800AC948 A7380032 */  sh    $t8, 0x32($t9)
/* 0AD54C 800AC94C 8D6BC5F0 */  lw    $t3, %lo(D_800DC5F0)($t3)
/* 0AD550 800AC950 240C0004 */  li    $t4, 4
/* 0AD554 800AC954 3C018016 */  lui   $at, %hi(D_8015F894) # $at, 0x8016
/* 0AD558 800AC958 A56A0032 */  sh    $t2, 0x32($t3)
/* 0AD55C 800AC95C A42CF894 */  sh    $t4, %lo(D_8015F894)($at)
/* 0AD560 800AC960 0C0328CC */  jal   func_800CA330
/* 0AD564 800AC964 24040019 */   li    $a0, 25
.L800AC968:
glabel L800AC968
/* 0AD568 800AC968 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AC96C:
/* 0AD56C 800AC96C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AD570 800AC970 03E00008 */  jr    $ra
/* 0AD574 800AC974 00000000 */   nop   
