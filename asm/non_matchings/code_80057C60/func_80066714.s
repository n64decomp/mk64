glabel func_80066714
/* 067314 80066714 27BDFF98 */  addiu $sp, $sp, -0x68
/* 067318 80066718 AFA60070 */  sw    $a2, 0x70($sp)
/* 06731C 8006671C 00067400 */  sll   $t6, $a2, 0x10
/* 067320 80066720 000E3403 */  sra   $a2, $t6, 0x10
/* 067324 80066724 000678C0 */  sll   $t7, $a2, 3
/* 067328 80066728 01E67821 */  addu  $t7, $t7, $a2
/* 06732C 8006672C AFA70074 */  sw    $a3, 0x74($sp)
/* 067330 80066730 0007C600 */  sll   $t8, $a3, 0x18
/* 067334 80066734 000F78C0 */  sll   $t7, $t7, 3
/* 067338 80066738 00183E03 */  sra   $a3, $t8, 0x18
/* 06733C 8006673C AFBF0014 */  sw    $ra, 0x14($sp)
/* 067340 80066740 AFA40068 */  sw    $a0, 0x68($sp)
/* 067344 80066744 AFA5006C */  sw    $a1, 0x6c($sp)
/* 067348 80066748 008F1021 */  addu  $v0, $a0, $t7
/* 06734C 8006674C 84580544 */  lh    $t8, 0x544($v0)
/* 067350 80066750 24010001 */  li    $at, 1
/* 067354 80066754 00807025 */  move  $t6, $a0
/* 067358 80066758 5701008C */  bnel  $t8, $at, .L8006698C
/* 06735C 8006675C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 067360 80066760 84590560 */  lh    $t9, 0x560($v0)
/* 067364 80066764 27A50054 */  addiu $a1, $sp, 0x54
/* 067368 80066768 A7B90052 */  sh    $t9, 0x52($sp)
/* 06736C 8006676C 844F0562 */  lh    $t7, 0x562($v0)
/* 067370 80066770 A7AF0050 */  sh    $t7, 0x50($sp)
/* 067374 80066774 84580564 */  lh    $t8, 0x564($v0)
/* 067378 80066778 00077840 */  sll   $t7, $a3, 1
/* 06737C 8006677C A7B8004E */  sh    $t8, 0x4e($sp)
/* 067380 80066780 84590566 */  lh    $t9, 0x566($v0)
/* 067384 80066784 008FC021 */  addu  $t8, $a0, $t7
/* 067388 80066788 27A4005C */  addiu $a0, $sp, 0x5c
/* 06738C 8006678C A7B9004C */  sh    $t9, 0x4c($sp)
/* 067390 80066790 C4440528 */  lwc1  $f4, 0x528($v0)
/* 067394 80066794 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 067398 80066798 C446052C */  lwc1  $f6, 0x52c($v0)
/* 06739C 8006679C E7A60060 */  swc1  $f6, 0x60($sp)
/* 0673A0 800667A0 C4480530 */  lwc1  $f8, 0x530($v0)
/* 0673A4 800667A4 A7A00054 */  sh    $zero, 0x54($sp)
/* 0673A8 800667A8 E7A80064 */  swc1  $f8, 0x64($sp)
/* 0673AC 800667AC 87190048 */  lh    $t9, 0x48($t8)
/* 0673B0 800667B0 A7A00058 */  sh    $zero, 0x58($sp)
/* 0673B4 800667B4 A7B90056 */  sh    $t9, 0x56($sp)
/* 0673B8 800667B8 C5D00224 */  lwc1  $f16, 0x224($t6)
/* 0673BC 800667BC C44A0534 */  lwc1  $f10, 0x534($v0)
/* 0673C0 800667C0 46105482 */  mul.s $f18, $f10, $f16
/* 0673C4 800667C4 44069000 */  mfc1  $a2, $f18
/* 0673C8 800667C8 0C0194B5 */  jal   func_800652D4
/* 0673CC 800667CC 00000000 */   nop   
/* 0673D0 800667D0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0673D4 800667D4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0673D8 800667D8 8C620000 */  lw    $v0, ($v1)
/* 0673DC 800667DC 3C190D01 */  lui   $t9, %hi(D_0D008C90) # $t9, 0xd01
/* 0673E0 800667E0 27398C90 */  addiu $t9, %lo(D_0D008C90) # addiu $t9, $t9, -0x7370
/* 0673E4 800667E4 244F0008 */  addiu $t7, $v0, 8
/* 0673E8 800667E8 AC6F0000 */  sw    $t7, ($v1)
/* 0673EC 800667EC 3C180600 */  lui   $t8, 0x600
/* 0673F0 800667F0 AC580000 */  sw    $t8, ($v0)
/* 0673F4 800667F4 AC590004 */  sw    $t9, 4($v0)
/* 0673F8 800667F8 8C620000 */  lw    $v0, ($v1)
/* 0673FC 800667FC 3C0FBA00 */  lui   $t7, (0xBA000E02 >> 16) # lui $t7, 0xba00
/* 067400 80066800 35EF0E02 */  ori   $t7, (0xBA000E02 & 0xFFFF) # ori $t7, $t7, 0xe02
/* 067404 80066804 244E0008 */  addiu $t6, $v0, 8
/* 067408 80066808 AC6E0000 */  sw    $t6, ($v1)
/* 06740C 8006680C AC400004 */  sw    $zero, 4($v0)
/* 067410 80066810 AC4F0000 */  sw    $t7, ($v0)
/* 067414 80066814 8C620000 */  lw    $v0, ($v1)
/* 067418 80066818 3C0E0D00 */  lui   $t6, %hi(D_0D000200) # $t6, 0xd00
/* 06741C 8006681C 25CE0200 */  addiu $t6, %lo(D_0D000200) # addiu $t6, $t6, 0x200
/* 067420 80066820 24580008 */  addiu $t8, $v0, 8
/* 067424 80066824 AC780000 */  sw    $t8, ($v1)
/* 067428 80066828 3C19FD10 */  lui   $t9, 0xfd10
/* 06742C 8006682C AC590000 */  sw    $t9, ($v0)
/* 067430 80066830 AC4E0004 */  sw    $t6, 4($v0)
/* 067434 80066834 8C620000 */  lw    $v0, ($v1)
/* 067438 80066838 3C190708 */  lui   $t9, (0x07080200 >> 16) # lui $t9, 0x708
/* 06743C 8006683C 37390200 */  ori   $t9, (0x07080200 & 0xFFFF) # ori $t9, $t9, 0x200
/* 067440 80066840 244F0008 */  addiu $t7, $v0, 8
/* 067444 80066844 AC6F0000 */  sw    $t7, ($v1)
/* 067448 80066848 3C18F510 */  lui   $t8, 0xf510
/* 06744C 8006684C AC580000 */  sw    $t8, ($v0)
/* 067450 80066850 AC590004 */  sw    $t9, 4($v0)
/* 067454 80066854 8C620000 */  lw    $v0, ($v1)
/* 067458 80066858 3C0FE600 */  lui   $t7, 0xe600
/* 06745C 8006685C 3C19F300 */  lui   $t9, 0xf300
/* 067460 80066860 244E0008 */  addiu $t6, $v0, 8
/* 067464 80066864 AC6E0000 */  sw    $t6, ($v1)
/* 067468 80066868 AC400004 */  sw    $zero, 4($v0)
/* 06746C 8006686C AC4F0000 */  sw    $t7, ($v0)
/* 067470 80066870 8C620000 */  lw    $v0, ($v1)
/* 067474 80066874 3C0E077F */  lui   $t6, (0x077FF100 >> 16) # lui $t6, 0x77f
/* 067478 80066878 35CEF100 */  ori   $t6, (0x077FF100 & 0xFFFF) # ori $t6, $t6, 0xf100
/* 06747C 8006687C 24580008 */  addiu $t8, $v0, 8
/* 067480 80066880 AC780000 */  sw    $t8, ($v1)
/* 067484 80066884 AC4E0004 */  sw    $t6, 4($v0)
/* 067488 80066888 AC590000 */  sw    $t9, ($v0)
/* 06748C 8006688C 8C620000 */  lw    $v0, ($v1)
/* 067490 80066890 3C18E700 */  lui   $t8, 0xe700
/* 067494 80066894 3C0EF510 */  lui   $t6, (0xF5101000 >> 16) # lui $t6, 0xf510
/* 067498 80066898 244F0008 */  addiu $t7, $v0, 8
/* 06749C 8006689C AC6F0000 */  sw    $t7, ($v1)
/* 0674A0 800668A0 AC400004 */  sw    $zero, 4($v0)
/* 0674A4 800668A4 AC580000 */  sw    $t8, ($v0)
/* 0674A8 800668A8 8C620000 */  lw    $v0, ($v1)
/* 0674AC 800668AC 3C180008 */  lui   $t8, (0x00080200 >> 16) # lui $t8, 8
/* 0674B0 800668B0 37180200 */  ori   $t8, (0x00080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 0674B4 800668B4 24590008 */  addiu $t9, $v0, 8
/* 0674B8 800668B8 AC790000 */  sw    $t9, ($v1)
/* 0674BC 800668BC AFA2002C */  sw    $v0, 0x2c($sp)
/* 0674C0 800668C0 35CE1000 */  ori   $t6, (0xF5101000 & 0xFFFF) # ori $t6, $t6, 0x1000
/* 0674C4 800668C4 AC4E0000 */  sw    $t6, ($v0)
/* 0674C8 800668C8 AC580004 */  sw    $t8, 4($v0)
/* 0674CC 800668CC 8C620000 */  lw    $v0, ($v1)
/* 0674D0 800668D0 3C0F0007 */  lui   $t7, (0x0007C0FC >> 16) # lui $t7, 7
/* 0674D4 800668D4 35EFC0FC */  ori   $t7, (0x0007C0FC & 0xFFFF) # ori $t7, $t7, 0xc0fc
/* 0674D8 800668D8 24590008 */  addiu $t9, $v0, 8
/* 0674DC 800668DC AC790000 */  sw    $t9, ($v1)
/* 0674E0 800668E0 AFA20028 */  sw    $v0, 0x28($sp)
/* 0674E4 800668E4 3C0EF200 */  lui   $t6, 0xf200
/* 0674E8 800668E8 AC4E0000 */  sw    $t6, ($v0)
/* 0674EC 800668EC AC4F0004 */  sw    $t7, 4($v0)
/* 0674F0 800668F0 87A7004C */  lh    $a3, 0x4c($sp)
/* 0674F4 800668F4 87A6004E */  lh    $a2, 0x4e($sp)
/* 0674F8 800668F8 87A50050 */  lh    $a1, 0x50($sp)
/* 0674FC 800668FC 0C012CD7 */  jal   func_8004B35C
/* 067500 80066900 87A40052 */   lh    $a0, 0x52($sp)
/* 067504 80066904 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 067508 80066908 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06750C 8006690C 8C620000 */  lw    $v0, ($v1)
/* 067510 80066910 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 067514 80066914 3C0F0050 */  lui   $t7, (0x00504A50 >> 16) # lui $t7, 0x50
/* 067518 80066918 24590008 */  addiu $t9, $v0, 8
/* 06751C 8006691C AC790000 */  sw    $t9, ($v1)
/* 067520 80066920 35EF4A50 */  ori   $t7, (0x00504A50 & 0xFFFF) # ori $t7, $t7, 0x4a50
/* 067524 80066924 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 067528 80066928 AC4E0000 */  sw    $t6, ($v0)
/* 06752C 8006692C AC4F0004 */  sw    $t7, 4($v0)
/* 067530 80066930 8C620000 */  lw    $v0, ($v1)
/* 067534 80066934 3C0E800F */  lui   $t6, %hi(D_800E8B00) # $t6, 0x800f
/* 067538 80066938 3C190400 */  lui   $t9, (0x0400103F >> 16) # lui $t9, 0x400
/* 06753C 8006693C 24580008 */  addiu $t8, $v0, 8
/* 067540 80066940 AC780000 */  sw    $t8, ($v1)
/* 067544 80066944 3739103F */  ori   $t9, (0x0400103F & 0xFFFF) # ori $t9, $t9, 0x103f
/* 067548 80066948 25CE8B00 */  addiu $t6, %lo(D_800E8B00) # addiu $t6, $t6, -0x7500
/* 06754C 8006694C AC4E0004 */  sw    $t6, 4($v0)
/* 067550 80066950 AC590000 */  sw    $t9, ($v0)
/* 067554 80066954 8C620000 */  lw    $v0, ($v1)
/* 067558 80066958 3C190D01 */  lui   $t9, %hi(D_0D008DA0) # $t9, 0xd01
/* 06755C 8006695C 3C078016 */  lui   $a3, %hi(gMatrixEffectCount) # $a3, 0x8016
/* 067560 80066960 244F0008 */  addiu $t7, $v0, 8
/* 067564 80066964 AC6F0000 */  sw    $t7, ($v1)
/* 067568 80066968 27398DA0 */  addiu $t9, %lo(D_0D008DA0) # addiu $t9, $t9, -0x7260
/* 06756C 8006696C 3C180600 */  lui   $t8, 0x600
/* 067570 80066970 24E74AF0 */  addiu $a3, %lo(gMatrixEffectCount) # addiu $a3, $a3, 0x4af0
/* 067574 80066974 AC580000 */  sw    $t8, ($v0)
/* 067578 80066978 AC590004 */  sw    $t9, 4($v0)
/* 06757C 8006697C 84EE0000 */  lh    $t6, ($a3)
/* 067580 80066980 25CF0001 */  addiu $t7, $t6, 1
/* 067584 80066984 A4EF0000 */  sh    $t7, ($a3)
/* 067588 80066988 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006698C:
/* 06758C 8006698C 27BD0068 */  addiu $sp, $sp, 0x68
/* 067590 80066990 03E00008 */  jr    $ra
/* 067594 80066994 00000000 */   nop   
