glabel func_80067604
/* 068204 80067604 27BDFF68 */  addiu $sp, $sp, -0x98
/* 068208 80067608 AFA600A0 */  sw    $a2, 0xa0($sp)
/* 06820C 8006760C 00067400 */  sll   $t6, $a2, 0x10
/* 068210 80067610 000E3403 */  sra   $a2, $t6, 0x10
/* 068214 80067614 000678C0 */  sll   $t7, $a2, 3
/* 068218 80067618 01E67821 */  addu  $t7, $t7, $a2
/* 06821C 8006761C 0007C600 */  sll   $t8, $a3, 0x18
/* 068220 80067620 000F78C0 */  sll   $t7, $t7, 3
/* 068224 80067624 0018CE03 */  sra   $t9, $t8, 0x18
/* 068228 80067628 AFBF0024 */  sw    $ra, 0x24($sp)
/* 06822C 8006762C AFA40098 */  sw    $a0, 0x98($sp)
/* 068230 80067630 AFA5009C */  sw    $a1, 0x9c($sp)
/* 068234 80067634 AFA700A4 */  sw    $a3, 0xa4($sp)
/* 068238 80067638 008F1021 */  addu  $v0, $a0, $t7
/* 06823C 8006763C 84580AE4 */  lh    $t8, 0xae4($v0)
/* 068240 80067640 24010001 */  li    $at, 1
/* 068244 80067644 00807025 */  move  $t6, $a0
/* 068248 80067648 570100C3 */  bnel  $t8, $at, .L80067958
/* 06824C 8006764C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 068250 80067650 C4440AC8 */  lwc1  $f4, 0xac8($v0)
/* 068254 80067654 0019C840 */  sll   $t9, $t9, 1
/* 068258 80067658 00997821 */  addu  $t7, $a0, $t9
/* 06825C 8006765C E7A4008C */  swc1  $f4, 0x8c($sp)
/* 068260 80067660 C4460ACC */  lwc1  $f6, 0xacc($v0)
/* 068264 80067664 27A4008C */  addiu $a0, $sp, 0x8c
/* 068268 80067668 27A50084 */  addiu $a1, $sp, 0x84
/* 06826C 8006766C E7A60090 */  swc1  $f6, 0x90($sp)
/* 068270 80067670 C4480AD0 */  lwc1  $f8, 0xad0($v0)
/* 068274 80067674 A7A00084 */  sh    $zero, 0x84($sp)
/* 068278 80067678 E7A80094 */  swc1  $f8, 0x94($sp)
/* 06827C 8006767C 85F80048 */  lh    $t8, 0x48($t7)
/* 068280 80067680 A7A00088 */  sh    $zero, 0x88($sp)
/* 068284 80067684 A7B80086 */  sh    $t8, 0x86($sp)
/* 068288 80067688 C5D00224 */  lwc1  $f16, 0x224($t6)
/* 06828C 8006768C C44A0AD4 */  lwc1  $f10, 0xad4($v0)
/* 068290 80067690 AFA20028 */  sw    $v0, 0x28($sp)
/* 068294 80067694 46105482 */  mul.s $f18, $f10, $f16
/* 068298 80067698 44069000 */  mfc1  $a2, $f18
/* 06829C 8006769C 0C0194B5 */  jal   func_800652D4
/* 0682A0 800676A0 00000000 */   nop
/* 0682A4 800676A4 8FA20028 */  lw    $v0, 0x28($sp)
/* 0682A8 800676A8 24010001 */  li    $at, 1
/* 0682AC 800676AC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0682B0 800676B0 94590AD8 */  lhu   $t9, 0xad8($v0)
/* 0682B4 800676B4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0682B8 800676B8 3C180600 */  lui   $t8, 0x600
/* 0682BC 800676BC 17210053 */  bne   $t9, $at, .L8006780C
/* 0682C0 800676C0 3C0F0D01 */   lui   $t7, 0xd01
/* 0682C4 800676C4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0682C8 800676C8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0682CC 800676CC 8C620000 */  lw    $v0, ($v1)
/* 0682D0 800676D0 3C0E0D01 */  lui   $t6, %hi(D_0D008DB8) # $t6, 0xd01
/* 0682D4 800676D4 25CE8DB8 */  addiu $t6, %lo(D_0D008DB8) # addiu $t6, $t6, -0x7248
/* 0682D8 800676D8 244F0008 */  addiu $t7, $v0, 8
/* 0682DC 800676DC AC6F0000 */  sw    $t7, ($v1)
/* 0682E0 800676E0 3C180600 */  lui   $t8, 0x600
/* 0682E4 800676E4 AC580000 */  sw    $t8, ($v0)
/* 0682E8 800676E8 AC4E0004 */  sw    $t6, 4($v0)
/* 0682EC 800676EC 8C620000 */  lw    $v0, ($v1)
/* 0682F0 800676F0 3C180D03 */  lui   $t8, %hi(D_0D02AC58) # $t8, 0xd03
/* 0682F4 800676F4 2718AC58 */  addiu $t8, %lo(D_0D02AC58) # addiu $t8, $t8, -0x53a8
/* 0682F8 800676F8 24590008 */  addiu $t9, $v0, 8
/* 0682FC 800676FC AC790000 */  sw    $t9, ($v1)
/* 068300 80067700 3C0FFD90 */  lui   $t7, 0xfd90
/* 068304 80067704 AC4F0000 */  sw    $t7, ($v0)
/* 068308 80067708 AC580004 */  sw    $t8, 4($v0)
/* 06830C 8006770C 8C620000 */  lw    $v0, ($v1)
/* 068310 80067710 3C0F0700 */  lui   $t7, 0x700
/* 068314 80067714 3C19F590 */  lui   $t9, 0xf590
/* 068318 80067718 244E0008 */  addiu $t6, $v0, 8
/* 06831C 8006771C AC6E0000 */  sw    $t6, ($v1)
/* 068320 80067720 AC4F0004 */  sw    $t7, 4($v0)
/* 068324 80067724 AC590000 */  sw    $t9, ($v0)
/* 068328 80067728 8C620000 */  lw    $v0, ($v1)
/* 06832C 8006772C 3C0EE600 */  lui   $t6, 0xe600
/* 068330 80067730 3C0FF300 */  lui   $t7, 0xf300
/* 068334 80067734 24580008 */  addiu $t8, $v0, 8
/* 068338 80067738 AC780000 */  sw    $t8, ($v1)
/* 06833C 8006773C AC400004 */  sw    $zero, 4($v0)
/* 068340 80067740 AC4E0000 */  sw    $t6, ($v0)
/* 068344 80067744 8C620000 */  lw    $v0, ($v1)
/* 068348 80067748 3C18071F */  lui   $t8, (0x071FF200 >> 16) # lui $t8, 0x71f
/* 06834C 8006774C 3718F200 */  ori   $t8, (0x071FF200 & 0xFFFF) # ori $t8, $t8, 0xf200
/* 068350 80067750 24590008 */  addiu $t9, $v0, 8
/* 068354 80067754 AC790000 */  sw    $t9, ($v1)
/* 068358 80067758 AC580004 */  sw    $t8, 4($v0)
/* 06835C 8006775C AC4F0000 */  sw    $t7, ($v0)
/* 068360 80067760 8C620000 */  lw    $v0, ($v1)
/* 068364 80067764 3C19E700 */  lui   $t9, 0xe700
/* 068368 80067768 3C18F588 */  lui   $t8, (0xF5880800 >> 16) # lui $t8, 0xf588
/* 06836C 8006776C 244E0008 */  addiu $t6, $v0, 8
/* 068370 80067770 AC6E0000 */  sw    $t6, ($v1)
/* 068374 80067774 AC400004 */  sw    $zero, 4($v0)
/* 068378 80067778 AC590000 */  sw    $t9, ($v0)
/* 06837C 8006777C 8C620000 */  lw    $v0, ($v1)
/* 068380 80067780 37180800 */  ori   $t8, (0xF5880800 & 0xFFFF) # ori $t8, $t8, 0x800
/* 068384 80067784 3C19F200 */  lui   $t9, 0xf200
/* 068388 80067788 244F0008 */  addiu $t7, $v0, 8
/* 06838C 8006778C AC6F0000 */  sw    $t7, ($v1)
/* 068390 80067790 AC400004 */  sw    $zero, 4($v0)
/* 068394 80067794 AC580000 */  sw    $t8, ($v0)
/* 068398 80067798 8C620000 */  lw    $v0, ($v1)
/* 06839C 8006779C 3C180007 */  lui   $t8, (0x0007C07C >> 16) # lui $t8, 7
/* 0683A0 800677A0 3718C07C */  ori   $t8, (0x0007C07C & 0xFFFF) # ori $t8, $t8, 0xc07c
/* 0683A4 800677A4 244E0008 */  addiu $t6, $v0, 8
/* 0683A8 800677A8 AC6E0000 */  sw    $t6, ($v1)
/* 0683AC 800677AC AFA20054 */  sw    $v0, 0x54($sp)
/* 0683B0 800677B0 AC590000 */  sw    $t9, ($v0)
/* 0683B4 800677B4 AC580004 */  sw    $t8, 4($v0)
/* 0683B8 800677B8 24190060 */  li    $t9, 96
/* 0683BC 800677BC 240E005F */  li    $t6, 95
/* 0683C0 800677C0 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0683C4 800677C4 AFB90018 */  sw    $t9, 0x18($sp)
/* 0683C8 800677C8 AFA00014 */  sw    $zero, 0x14($sp)
/* 0683CC 800677CC 240400FF */  li    $a0, 255
/* 0683D0 800677D0 240500FF */  li    $a1, 255
/* 0683D4 800677D4 240600DF */  li    $a2, 223
/* 0683D8 800677D8 0C012DCB */  jal   func_8004B72C
/* 0683DC 800677DC 240700FF */   li    $a3, 255
/* 0683E0 800677E0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0683E4 800677E4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0683E8 800677E8 8C620000 */  lw    $v0, ($v1)
/* 0683EC 800677EC 3C0E0D01 */  lui   $t6, %hi(D_0D008E70) # $t6, 0xd01
/* 0683F0 800677F0 25CE8E70 */  addiu $t6, %lo(D_0D008E70) # addiu $t6, $t6, -0x7190
/* 0683F4 800677F4 24580008 */  addiu $t8, $v0, 8
/* 0683F8 800677F8 AC780000 */  sw    $t8, ($v1)
/* 0683FC 800677FC 3C0F0600 */  lui   $t7, %hi(D_05FF8DB8) # $t7, 0x600
/* 068400 80067800 AC4F0000 */  sw    $t7, ($v0)
/* 068404 80067804 1000004E */  b     .L80067940
/* 068408 80067808 AC4E0004 */   sw    $t6, 4($v0)
.L8006780C:
/* 06840C 8006780C 8C620000 */  lw    $v0, ($v1)
/* 068410 80067810 25EF8DB8 */  addiu $t7, %lo(D_05FF8DB8) # addiu $t7, $t7, -0x7248
/* 068414 80067814 240400FF */  li    $a0, 255
/* 068418 80067818 24590008 */  addiu $t9, $v0, 8
/* 06841C 8006781C AC790000 */  sw    $t9, ($v1)
/* 068420 80067820 AC4F0004 */  sw    $t7, 4($v0)
/* 068424 80067824 AC580000 */  sw    $t8, ($v0)
/* 068428 80067828 8C620000 */  lw    $v0, ($v1)
/* 06842C 8006782C 3C180D03 */  lui   $t8, %hi(D_0D02AC58) # $t8, 0xd03
/* 068430 80067830 2718AC58 */  addiu $t8, %lo(D_0D02AC58) # addiu $t8, $t8, -0x53a8
/* 068434 80067834 244E0008 */  addiu $t6, $v0, 8
/* 068438 80067838 AC6E0000 */  sw    $t6, ($v1)
/* 06843C 8006783C 3C19FD90 */  lui   $t9, 0xfd90
/* 068440 80067840 AC590000 */  sw    $t9, ($v0)
/* 068444 80067844 AC580004 */  sw    $t8, 4($v0)
/* 068448 80067848 8C620000 */  lw    $v0, ($v1)
/* 06844C 8006784C 3C190700 */  lui   $t9, 0x700
/* 068450 80067850 3C0EF590 */  lui   $t6, 0xf590
/* 068454 80067854 244F0008 */  addiu $t7, $v0, 8
/* 068458 80067858 AC6F0000 */  sw    $t7, ($v1)
/* 06845C 8006785C AC590004 */  sw    $t9, 4($v0)
/* 068460 80067860 AC4E0000 */  sw    $t6, ($v0)
/* 068464 80067864 8C620000 */  lw    $v0, ($v1)
/* 068468 80067868 3C0FE600 */  lui   $t7, 0xe600
/* 06846C 8006786C 3C19F300 */  lui   $t9, 0xf300
/* 068470 80067870 24580008 */  addiu $t8, $v0, 8
/* 068474 80067874 AC780000 */  sw    $t8, ($v1)
/* 068478 80067878 AC400004 */  sw    $zero, 4($v0)
/* 06847C 8006787C AC4F0000 */  sw    $t7, ($v0)
/* 068480 80067880 8C620000 */  lw    $v0, ($v1)
/* 068484 80067884 3C18071F */  lui   $t8, (0x071FF200 >> 16) # lui $t8, 0x71f
/* 068488 80067888 3718F200 */  ori   $t8, (0x071FF200 & 0xFFFF) # ori $t8, $t8, 0xf200
/* 06848C 8006788C 244E0008 */  addiu $t6, $v0, 8
/* 068490 80067890 AC6E0000 */  sw    $t6, ($v1)
/* 068494 80067894 AC580004 */  sw    $t8, 4($v0)
/* 068498 80067898 AC590000 */  sw    $t9, ($v0)
/* 06849C 8006789C 8C620000 */  lw    $v0, ($v1)
/* 0684A0 800678A0 3C0EE700 */  lui   $t6, 0xe700
/* 0684A4 800678A4 3C18F588 */  lui   $t8, (0xF5880800 >> 16) # lui $t8, 0xf588
/* 0684A8 800678A8 244F0008 */  addiu $t7, $v0, 8
/* 0684AC 800678AC AC6F0000 */  sw    $t7, ($v1)
/* 0684B0 800678B0 AC400004 */  sw    $zero, 4($v0)
/* 0684B4 800678B4 AC4E0000 */  sw    $t6, ($v0)
/* 0684B8 800678B8 8C620000 */  lw    $v0, ($v1)
/* 0684BC 800678BC 37180800 */  ori   $t8, (0xF5880800 & 0xFFFF) # ori $t8, $t8, 0x800
/* 0684C0 800678C0 3C0EF200 */  lui   $t6, 0xf200
/* 0684C4 800678C4 24590008 */  addiu $t9, $v0, 8
/* 0684C8 800678C8 AC790000 */  sw    $t9, ($v1)
/* 0684CC 800678CC AC400004 */  sw    $zero, 4($v0)
/* 0684D0 800678D0 AC580000 */  sw    $t8, ($v0)
/* 0684D4 800678D4 8C620000 */  lw    $v0, ($v1)
/* 0684D8 800678D8 3C180007 */  lui   $t8, (0x0007C07C >> 16) # lui $t8, 7
/* 0684DC 800678DC 3718C07C */  ori   $t8, (0x0007C07C & 0xFFFF) # ori $t8, $t8, 0xc07c
/* 0684E0 800678E0 244F0008 */  addiu $t7, $v0, 8
/* 0684E4 800678E4 AC6F0000 */  sw    $t7, ($v1)
/* 0684E8 800678E8 AFA20030 */  sw    $v0, 0x30($sp)
/* 0684EC 800678EC AC4E0000 */  sw    $t6, ($v0)
/* 0684F0 800678F0 AC580004 */  sw    $t8, 4($v0)
/* 0684F4 800678F4 240E0060 */  li    $t6, 96
/* 0684F8 800678F8 240F005F */  li    $t7, 95
/* 0684FC 800678FC AFAF0010 */  sw    $t7, 0x10($sp)
/* 068500 80067900 AFAE0018 */  sw    $t6, 0x18($sp)
/* 068504 80067904 AFA00014 */  sw    $zero, 0x14($sp)
/* 068508 80067908 240500FF */  li    $a1, 255
/* 06850C 8006790C 240600DF */  li    $a2, 223
/* 068510 80067910 0C012DCB */  jal   func_8004B72C
/* 068514 80067914 240700FF */   li    $a3, 255
/* 068518 80067918 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06851C 8006791C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 068520 80067920 8C620000 */  lw    $v0, ($v1)
/* 068524 80067924 3C0F0D01 */  lui   $t7, %hi(D_0D008E48) # $t7, 0xd01
/* 068528 80067928 25EF8E48 */  addiu $t7, %lo(D_0D008E48) # addiu $t7, $t7, -0x71b8
/* 06852C 8006792C 24580008 */  addiu $t8, $v0, 8
/* 068530 80067930 AC780000 */  sw    $t8, ($v1)
/* 068534 80067934 3C190600 */  lui   $t9, 0x600
/* 068538 80067938 AC590000 */  sw    $t9, ($v0)
/* 06853C 8006793C AC4F0004 */  sw    $t7, 4($v0)
.L80067940:
/* 068540 80067940 3C028016 */  lui   $v0, %hi(D_80164AF0) # $v0, 0x8016
/* 068544 80067944 24424AF0 */  addiu $v0, %lo(D_80164AF0) # addiu $v0, $v0, 0x4af0
/* 068548 80067948 844E0000 */  lh    $t6, ($v0)
/* 06854C 8006794C 25D80001 */  addiu $t8, $t6, 1
/* 068550 80067950 A4580000 */  sh    $t8, ($v0)
/* 068554 80067954 8FBF0024 */  lw    $ra, 0x24($sp)
.L80067958:
/* 068558 80067958 27BD0098 */  addiu $sp, $sp, 0x98
/* 06855C 8006795C 03E00008 */  jr    $ra
/* 068560 80067960 00000000 */   nop
