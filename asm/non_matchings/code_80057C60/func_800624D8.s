glabel func_800624D8
/* 0630D8 800624D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0630DC 800624DC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0630E0 800624E0 AFB30020 */  sw    $s3, 0x20($sp)
/* 0630E4 800624E4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0630E8 800624E8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0630EC 800624EC AFB00014 */  sw    $s0, 0x14($sp)
/* 0630F0 800624F0 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0630F4 800624F4 AFA60030 */  sw    $a2, 0x30($sp)
/* 0630F8 800624F8 AFA70034 */  sw    $a3, 0x34($sp)
/* 0630FC 800624FC 948E00F8 */  lhu   $t6, 0xf8($a0)
/* 063100 80062500 00809825 */  move  $s3, $a0
/* 063104 80062504 25CFFFFF */  addiu $t7, $t6, -1
/* 063108 80062508 2DE1000D */  sltiu $at, $t7, 0xd
/* 06310C 8006250C 102000D3 */  beqz  $at, .L8006285C
/* 063110 80062510 000F7880 */   sll   $t7, $t7, 2
/* 063114 80062514 3C01800F */  lui   $at, %hi(D_800EE5C8)
/* 063118 80062518 002F0821 */  addu  $at, $at, $t7
/* 06311C 8006251C 8C2FE5C8 */  lw    $t7, %lo(D_800EE5C8)($at)
/* 063120 80062520 01E00008 */  jr    $t7
/* 063124 80062524 00000000 */   nop   
glabel L80062528
/* 063128 80062528 00008825 */  move  $s1, $zero
/* 06312C 8006252C 26700AC8 */  addiu $s0, $s3, 0xac8
/* 063130 80062530 2412000A */  li    $s2, 10
.L80062534:
/* 063134 80062534 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 063138 80062538 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 06313C 8006253C 24010001 */  li    $at, 1
/* 063140 80062540 02002025 */  move  $a0, $s0
/* 063144 80062544 10410003 */  beq   $v0, $at, .L80062554
/* 063148 80062548 24050001 */   li    $a1, 1
/* 06314C 8006254C 24010007 */  li    $at, 7
/* 063150 80062550 14410005 */  bne   $v0, $at, .L80062568
.L80062554:
/* 063154 80062554 00003025 */   move  $a2, $zero
/* 063158 80062558 0C0176B6 */  jal   func_8005DAD8
/* 06315C 8006255C 240700A8 */   li    $a3, 168
/* 063160 80062560 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 063164 80062564 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
.L80062568:
/* 063168 80062568 2401000B */  li    $at, 11
/* 06316C 8006256C 14410007 */  bne   $v0, $at, .L8006258C
/* 063170 80062570 02002025 */   move  $a0, $s0
/* 063174 80062574 24050007 */  li    $a1, 7
/* 063178 80062578 00003025 */  move  $a2, $zero
/* 06317C 8006257C 0C0176B6 */  jal   func_8005DAD8
/* 063180 80062580 240700A8 */   li    $a3, 168
/* 063184 80062584 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 063188 80062588 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
.L8006258C:
/* 06318C 8006258C 24010009 */  li    $at, 9
/* 063190 80062590 14410007 */  bne   $v0, $at, .L800625B0
/* 063194 80062594 02002025 */   move  $a0, $s0
/* 063198 80062598 24050008 */  li    $a1, 8
/* 06319C 8006259C 00003025 */  move  $a2, $zero
/* 0631A0 800625A0 0C0176B6 */  jal   func_8005DAD8
/* 0631A4 800625A4 240700A8 */   li    $a3, 168
/* 0631A8 800625A8 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0631AC 800625AC 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
.L800625B0:
/* 0631B0 800625B0 2401000E */  li    $at, 14
/* 0631B4 800625B4 14410007 */  bne   $v0, $at, .L800625D4
/* 0631B8 800625B8 02002025 */   move  $a0, $s0
/* 0631BC 800625BC 24050009 */  li    $a1, 9
/* 0631C0 800625C0 00003025 */  move  $a2, $zero
/* 0631C4 800625C4 0C0176B6 */  jal   func_8005DAD8
/* 0631C8 800625C8 240700A8 */   li    $a3, 168
/* 0631CC 800625CC 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0631D0 800625D0 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
.L800625D4:
/* 0631D4 800625D4 24010004 */  li    $at, 4
/* 0631D8 800625D8 14410009 */  bne   $v0, $at, .L80062600
/* 0631DC 800625DC 02002025 */   move  $a0, $s0
/* 0631E0 800625E0 00122C00 */  sll   $a1, $s2, 0x10
/* 0631E4 800625E4 0005C403 */  sra   $t8, $a1, 0x10
/* 0631E8 800625E8 03002825 */  move  $a1, $t8
/* 0631EC 800625EC 00003025 */  move  $a2, $zero
/* 0631F0 800625F0 0C0176B6 */  jal   func_8005DAD8
/* 0631F4 800625F4 240700A8 */   li    $a3, 168
/* 0631F8 800625F8 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0631FC 800625FC 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
.L80062600:
/* 063200 80062600 24010012 */  li    $at, 18
/* 063204 80062604 14410005 */  bne   $v0, $at, .L8006261C
/* 063208 80062608 02002025 */   move  $a0, $s0
/* 06320C 8006260C 2405000B */  li    $a1, 11
/* 063210 80062610 00003025 */  move  $a2, $zero
/* 063214 80062614 0C0176B6 */  jal   func_8005DAD8
/* 063218 80062618 240700A8 */   li    $a3, 168
.L8006261C:
/* 06321C 8006261C 02602025 */  move  $a0, $s3
/* 063220 80062620 02002825 */  move  $a1, $s0
/* 063224 80062624 0C018921 */  jal   func_80062484
/* 063228 80062628 02203025 */   move  $a2, $s1
/* 06322C 8006262C 26310001 */  addiu $s1, $s1, 1
/* 063230 80062630 1632FFC0 */  bne   $s1, $s2, .L80062534
/* 063234 80062634 26100048 */   addiu $s0, $s0, 0x48
/* 063238 80062638 86790044 */  lh    $t9, 0x44($s3)
/* 06323C 8006263C 3328FEFF */  andi  $t0, $t9, 0xfeff
/* 063240 80062640 10000098 */  b     .L800628A4
/* 063244 80062644 A6680044 */   sh    $t0, 0x44($s3)
glabel L80062648
/* 063248 80062648 00008825 */  move  $s1, $zero
/* 06324C 8006264C 26700AC8 */  addiu $s0, $s3, 0xac8
/* 063250 80062650 2412000A */  li    $s2, 10
.L80062654:
/* 063254 80062654 02002025 */  move  $a0, $s0
/* 063258 80062658 24050002 */  li    $a1, 2
/* 06325C 8006265C 24060001 */  li    $a2, 1
/* 063260 80062660 0C0176B6 */  jal   func_8005DAD8
/* 063264 80062664 240700A8 */   li    $a3, 168
/* 063268 80062668 02602025 */  move  $a0, $s3
/* 06326C 8006266C 02002825 */  move  $a1, $s0
/* 063270 80062670 0C018921 */  jal   func_80062484
/* 063274 80062674 02203025 */   move  $a2, $s1
/* 063278 80062678 26310001 */  addiu $s1, $s1, 1
/* 06327C 8006267C 1632FFF5 */  bne   $s1, $s2, .L80062654
/* 063280 80062680 26100048 */   addiu $s0, $s0, 0x48
/* 063284 80062684 86690044 */  lh    $t1, 0x44($s3)
/* 063288 80062688 312AFEFF */  andi  $t2, $t1, 0xfeff
/* 06328C 8006268C 10000085 */  b     .L800628A4
/* 063290 80062690 A66A0044 */   sh    $t2, 0x44($s3)
glabel L80062694
/* 063294 80062694 00008825 */  move  $s1, $zero
/* 063298 80062698 26700AC8 */  addiu $s0, $s3, 0xac8
/* 06329C 8006269C 2412000A */  li    $s2, 10
.L800626A0:
/* 0632A0 800626A0 02002025 */  move  $a0, $s0
/* 0632A4 800626A4 24050002 */  li    $a1, 2
/* 0632A8 800626A8 24060001 */  li    $a2, 1
/* 0632AC 800626AC 0C0176B6 */  jal   func_8005DAD8
/* 0632B0 800626B0 240700A8 */   li    $a3, 168
/* 0632B4 800626B4 02602025 */  move  $a0, $s3
/* 0632B8 800626B8 02002825 */  move  $a1, $s0
/* 0632BC 800626BC 0C018921 */  jal   func_80062484
/* 0632C0 800626C0 02203025 */   move  $a2, $s1
/* 0632C4 800626C4 26310001 */  addiu $s1, $s1, 1
/* 0632C8 800626C8 1632FFF5 */  bne   $s1, $s2, .L800626A0
/* 0632CC 800626CC 26100048 */   addiu $s0, $s0, 0x48
/* 0632D0 800626D0 866B0044 */  lh    $t3, 0x44($s3)
/* 0632D4 800626D4 316CFEFF */  andi  $t4, $t3, 0xfeff
/* 0632D8 800626D8 10000072 */  b     .L800628A4
/* 0632DC 800626DC A66C0044 */   sh    $t4, 0x44($s3)
glabel L800626E0
/* 0632E0 800626E0 00008825 */  move  $s1, $zero
/* 0632E4 800626E4 26700AC8 */  addiu $s0, $s3, 0xac8
/* 0632E8 800626E8 2412000A */  li    $s2, 10
.L800626EC:
/* 0632EC 800626EC 02002025 */  move  $a0, $s0
/* 0632F0 800626F0 24050003 */  li    $a1, 3
/* 0632F4 800626F4 24060001 */  li    $a2, 1
/* 0632F8 800626F8 0C0176B6 */  jal   func_8005DAD8
/* 0632FC 800626FC 240700A8 */   li    $a3, 168
/* 063300 80062700 02602025 */  move  $a0, $s3
/* 063304 80062704 02002825 */  move  $a1, $s0
/* 063308 80062708 0C018921 */  jal   func_80062484
/* 06330C 8006270C 02203025 */   move  $a2, $s1
/* 063310 80062710 26310001 */  addiu $s1, $s1, 1
/* 063314 80062714 1632FFF5 */  bne   $s1, $s2, .L800626EC
/* 063318 80062718 26100048 */   addiu $s0, $s0, 0x48
/* 06331C 8006271C 866D0044 */  lh    $t5, 0x44($s3)
/* 063320 80062720 31AEFEFF */  andi  $t6, $t5, 0xfeff
/* 063324 80062724 1000005F */  b     .L800628A4
/* 063328 80062728 A66E0044 */   sh    $t6, 0x44($s3)
glabel L8006272C
/* 06332C 8006272C 00008825 */  move  $s1, $zero
/* 063330 80062730 26700AC8 */  addiu $s0, $s3, 0xac8
/* 063334 80062734 2412000A */  li    $s2, 10
.L80062738:
/* 063338 80062738 02002025 */  move  $a0, $s0
/* 06333C 8006273C 24050004 */  li    $a1, 4
/* 063340 80062740 24060001 */  li    $a2, 1
/* 063344 80062744 0C0176B6 */  jal   func_8005DAD8
/* 063348 80062748 240700A8 */   li    $a3, 168
/* 06334C 8006274C 02602025 */  move  $a0, $s3
/* 063350 80062750 02002825 */  move  $a1, $s0
/* 063354 80062754 0C018921 */  jal   func_80062484
/* 063358 80062758 02203025 */   move  $a2, $s1
/* 06335C 8006275C 26310001 */  addiu $s1, $s1, 1
/* 063360 80062760 1632FFF5 */  bne   $s1, $s2, .L80062738
/* 063364 80062764 26100048 */   addiu $s0, $s0, 0x48
/* 063368 80062768 866F0044 */  lh    $t7, 0x44($s3)
/* 06336C 8006276C 31F8FEFF */  andi  $t8, $t7, 0xfeff
/* 063370 80062770 1000004C */  b     .L800628A4
/* 063374 80062774 A6780044 */   sh    $t8, 0x44($s3)
glabel L80062778
/* 063378 80062778 00008825 */  move  $s1, $zero
/* 06337C 8006277C 26700AC8 */  addiu $s0, $s3, 0xac8
/* 063380 80062780 2412000A */  li    $s2, 10
.L80062784:
/* 063384 80062784 02002025 */  move  $a0, $s0
/* 063388 80062788 24050005 */  li    $a1, 5
/* 06338C 8006278C 24060001 */  li    $a2, 1
/* 063390 80062790 0C0176B6 */  jal   func_8005DAD8
/* 063394 80062794 240700A8 */   li    $a3, 168
/* 063398 80062798 02602025 */  move  $a0, $s3
/* 06339C 8006279C 02002825 */  move  $a1, $s0
/* 0633A0 800627A0 0C018921 */  jal   func_80062484
/* 0633A4 800627A4 02203025 */   move  $a2, $s1
/* 0633A8 800627A8 26310001 */  addiu $s1, $s1, 1
/* 0633AC 800627AC 1632FFF5 */  bne   $s1, $s2, .L80062784
/* 0633B0 800627B0 26100048 */   addiu $s0, $s0, 0x48
/* 0633B4 800627B4 86790044 */  lh    $t9, 0x44($s3)
/* 0633B8 800627B8 3328FEFF */  andi  $t0, $t9, 0xfeff
/* 0633BC 800627BC 10000039 */  b     .L800628A4
/* 0633C0 800627C0 A6680044 */   sh    $t0, 0x44($s3)
glabel L800627C4
/* 0633C4 800627C4 00008825 */  move  $s1, $zero
/* 0633C8 800627C8 26700AC8 */  addiu $s0, $s3, 0xac8
/* 0633CC 800627CC 2412000A */  li    $s2, 10
.L800627D0:
/* 0633D0 800627D0 02002025 */  move  $a0, $s0
/* 0633D4 800627D4 24050006 */  li    $a1, 6
/* 0633D8 800627D8 24060001 */  li    $a2, 1
/* 0633DC 800627DC 0C0176B6 */  jal   func_8005DAD8
/* 0633E0 800627E0 240700A8 */   li    $a3, 168
/* 0633E4 800627E4 02602025 */  move  $a0, $s3
/* 0633E8 800627E8 02002825 */  move  $a1, $s0
/* 0633EC 800627EC 0C018921 */  jal   func_80062484
/* 0633F0 800627F0 02203025 */   move  $a2, $s1
/* 0633F4 800627F4 26310001 */  addiu $s1, $s1, 1
/* 0633F8 800627F8 1632FFF5 */  bne   $s1, $s2, .L800627D0
/* 0633FC 800627FC 26100048 */   addiu $s0, $s0, 0x48
/* 063400 80062800 86690044 */  lh    $t1, 0x44($s3)
/* 063404 80062804 312AFEFF */  andi  $t2, $t1, 0xfeff
/* 063408 80062808 10000026 */  b     .L800628A4
/* 06340C 8006280C A66A0044 */   sh    $t2, 0x44($s3)
glabel L80062810
/* 063410 80062810 00008825 */  move  $s1, $zero
/* 063414 80062814 26700AC8 */  addiu $s0, $s3, 0xac8
/* 063418 80062818 2412000A */  li    $s2, 10
.L8006281C:
/* 06341C 8006281C 02002025 */  move  $a0, $s0
/* 063420 80062820 00002825 */  move  $a1, $zero
/* 063424 80062824 00003025 */  move  $a2, $zero
/* 063428 80062828 0C0176B6 */  jal   func_8005DAD8
/* 06342C 8006282C 240700A8 */   li    $a3, 168
/* 063430 80062830 02602025 */  move  $a0, $s3
/* 063434 80062834 02002825 */  move  $a1, $s0
/* 063438 80062838 0C018921 */  jal   func_80062484
/* 06343C 8006283C 02203025 */   move  $a2, $s1
/* 063440 80062840 26310001 */  addiu $s1, $s1, 1
/* 063444 80062844 1632FFF5 */  bne   $s1, $s2, .L8006281C
/* 063448 80062848 26100048 */   addiu $s0, $s0, 0x48
/* 06344C 8006284C 866B0044 */  lh    $t3, 0x44($s3)
/* 063450 80062850 316CFEFF */  andi  $t4, $t3, 0xfeff
/* 063454 80062854 10000013 */  b     .L800628A4
/* 063458 80062858 A66C0044 */   sh    $t4, 0x44($s3)
.L8006285C:
glabel L8006285C
/* 06345C 8006285C 00008825 */  move  $s1, $zero
/* 063460 80062860 26700AC8 */  addiu $s0, $s3, 0xac8
/* 063464 80062864 2412000A */  li    $s2, 10
.L80062868:
/* 063468 80062868 02002025 */  move  $a0, $s0
/* 06346C 8006286C 00002825 */  move  $a1, $zero
/* 063470 80062870 00003025 */  move  $a2, $zero
/* 063474 80062874 0C0176B6 */  jal   func_8005DAD8
/* 063478 80062878 240700A8 */   li    $a3, 168
/* 06347C 8006287C 02602025 */  move  $a0, $s3
/* 063480 80062880 02002825 */  move  $a1, $s0
/* 063484 80062884 0C018921 */  jal   func_80062484
/* 063488 80062888 02203025 */   move  $a2, $s1
/* 06348C 8006288C 26310001 */  addiu $s1, $s1, 1
/* 063490 80062890 1632FFF5 */  bne   $s1, $s2, .L80062868
/* 063494 80062894 26100048 */   addiu $s0, $s0, 0x48
/* 063498 80062898 866D0044 */  lh    $t5, 0x44($s3)
/* 06349C 8006289C 31AEFEFF */  andi  $t6, $t5, 0xfeff
/* 0634A0 800628A0 A66E0044 */  sh    $t6, 0x44($s3)
.L800628A4:
/* 0634A4 800628A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0634A8 800628A8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0634AC 800628AC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0634B0 800628B0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0634B4 800628B4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0634B8 800628B8 03E00008 */  jr    $ra
/* 0634BC 800628BC 27BD0028 */   addiu $sp, $sp, 0x28
