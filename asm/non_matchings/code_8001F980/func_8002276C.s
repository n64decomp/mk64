glabel func_8002276C
/* 02336C 8002276C 3C02800E */  lui   $v0, %hi(D_800DC52C) # $v0, 0x800e
/* 023370 80022770 8C42C52C */  lw    $v0, %lo(D_800DC52C)($v0)
/* 023374 80022774 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 023378 80022778 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02337C 8002277C 1040000B */  beqz  $v0, .L800227AC
/* 023380 80022780 24030001 */   li    $v1, 1
/* 023384 80022784 1043006A */  beq   $v0, $v1, .L80022930
/* 023388 80022788 24040002 */   li    $a0, 2
/* 02338C 8002278C 24040002 */  li    $a0, 2
/* 023390 80022790 10440067 */  beq   $v0, $a0, .L80022930
/* 023394 80022794 00000000 */   nop
/* 023398 80022798 24030003 */  li    $v1, 3
/* 02339C 8002279C 104300A1 */  beq   $v0, $v1, .L80022A24
/* 0233A0 800227A0 00000000 */   nop
/* 0233A4 800227A4 100000B9 */  b     .L80022A8C
/* 0233A8 800227A8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800227AC:
/* 0233AC 800227AC 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 0233B0 800227B0 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 0233B4 800227B4 24030001 */  li    $v1, 1
/* 0233B8 800227B8 3C04800E */  lui   $a0, %hi(gPlayerOne) # 0x800e
/* 0233BC 800227BC 1040000A */  beqz  $v0, .L800227E8
/* 0233C0 800227C0 00002825 */   move  $a1, $zero
/* 0233C4 800227C4 10430028 */  beq   $v0, $v1, .L80022868
/* 0233C8 800227C8 3C04800E */   lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 0233CC 800227CC 24040002 */  li    $a0, 2
/* 0233D0 800227D0 1044003C */  beq   $v0, $a0, .L800228C4
/* 0233D4 800227D4 24030003 */   li    $v1, 3
/* 0233D8 800227D8 1043003A */  beq   $v0, $v1, .L800228C4
/* 0233DC 800227DC 00000000 */   nop
/* 0233E0 800227E0 100000AA */  b     .L80022A8C
/* 0233E4 800227E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800227E8:
/* 0233E8 800227E8 0C008AA6 */  jal   func_80022A98
/* 0233EC 800227EC 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 0233F0 800227F0 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0233F4 800227F4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0233F8 800227F8 0C008AA6 */  jal   func_80022A98
/* 0233FC 800227FC 24050001 */   li    $a1, 1
/* 023400 80022800 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 023404 80022804 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 023408 80022808 0C008AA6 */  jal   func_80022A98
/* 02340C 8002280C 24050002 */   li    $a1, 2
/* 023410 80022810 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 023414 80022814 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 023418 80022818 0C008AA6 */  jal   func_80022A98
/* 02341C 8002281C 24050003 */   li    $a1, 3
/* 023420 80022820 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 023424 80022824 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 023428 80022828 0C008AA6 */  jal   func_80022A98
/* 02342C 8002282C 24050004 */   li    $a1, 4
/* 023430 80022830 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 023434 80022834 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 023438 80022838 0C008AA6 */  jal   func_80022A98
/* 02343C 8002283C 24050005 */   li    $a1, 5
/* 023440 80022840 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 023444 80022844 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 023448 80022848 0C008AA6 */  jal   func_80022A98
/* 02344C 8002284C 24050006 */   li    $a1, 6
/* 023450 80022850 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 023454 80022854 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 023458 80022858 0C008AA6 */  jal   func_80022A98
/* 02345C 8002285C 24050007 */   li    $a1, 7
/* 023460 80022860 1000008A */  b     .L80022A8C
/* 023464 80022864 8FBF0014 */   lw    $ra, 0x14($sp)
.L80022868:
/* 023468 80022868 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0) # -0x3b24($a0)
/* 02346C 8002286C 0C008AA6 */  jal   func_80022A98
/* 023470 80022870 00002825 */   move  $a1, $zero
/* 023474 80022874 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 023478 80022878 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 02347C 8002287C 24010100 */  li    $at, 256
/* 023480 80022880 948E0000 */  lhu   $t6, ($a0)
/* 023484 80022884 31CF0100 */  andi  $t7, $t6, 0x100
/* 023488 80022888 15E10003 */  bne   $t7, $at, .L80022898
/* 02348C 8002288C 00000000 */   nop
/* 023490 80022890 0C008AA6 */  jal   func_80022A98
/* 023494 80022894 24050001 */   li    $a1, 1
.L80022898:
/* 023498 80022898 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 02349C 8002289C 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 0234A0 800228A0 24010100 */  li    $at, 256
/* 0234A4 800228A4 94980000 */  lhu   $t8, ($a0)
/* 0234A8 800228A8 33190100 */  andi  $t9, $t8, 0x100
/* 0234AC 800228AC 57210077 */  bnel  $t9, $at, .L80022A8C
/* 0234B0 800228B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0234B4 800228B4 0C008AA6 */  jal   func_80022A98
/* 0234B8 800228B8 24050002 */   li    $a1, 2
/* 0234BC 800228BC 10000073 */  b     .L80022A8C
/* 0234C0 800228C0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800228C4:
/* 0234C4 800228C4 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 0234C8 800228C8 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 0234CC 800228CC 0C008AA6 */  jal   func_80022A98
/* 0234D0 800228D0 00002825 */   move  $a1, $zero
/* 0234D4 800228D4 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0234D8 800228D8 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0234DC 800228DC 0C008AA6 */  jal   func_80022A98
/* 0234E0 800228E0 24050001 */   li    $a1, 1
/* 0234E4 800228E4 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 0234E8 800228E8 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 0234EC 800228EC 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0234F0 800228F0 24050002 */  li    $a1, 2
/* 0234F4 800228F4 28410003 */  slti  $at, $v0, 3
/* 0234F8 800228F8 54200006 */  bnel  $at, $zero, .L80022914
/* 0234FC 800228FC 24010004 */   li    $at, 4
/* 023500 80022900 0C008AA6 */  jal   func_80022A98
/* 023504 80022904 8C84C4E4 */   lw    $a0, %lo(gPlayerThree)($a0)
/* 023508 80022908 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 02350C 8002290C 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 023510 80022910 24010004 */  li    $at, 4
.L80022914:
/* 023514 80022914 1441005C */  bne   $v0, $at, .L80022A88
/* 023518 80022918 3C04800E */   lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 02351C 8002291C 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 023520 80022920 0C008AA6 */  jal   func_80022A98
/* 023524 80022924 24050003 */   li    $a1, 3
/* 023528 80022928 10000058 */  b     .L80022A8C
/* 02352C 8002292C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80022930:
/* 023530 80022930 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 023534 80022934 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 023538 80022938 00002825 */  move  $a1, $zero
/* 02353C 8002293C 10400009 */  beqz  $v0, .L80022964
/* 023540 80022940 00000000 */   nop
/* 023544 80022944 10430032 */  beq   $v0, $v1, .L80022A10
/* 023548 80022948 00002825 */   move  $a1, $zero
/* 02354C 8002294C 10440026 */  beq   $v0, $a0, .L800229E8
/* 023550 80022950 24030003 */   li    $v1, 3
/* 023554 80022954 10430024 */  beq   $v0, $v1, .L800229E8
/* 023558 80022958 00000000 */   nop
/* 02355C 8002295C 1000004B */  b     .L80022A8C
/* 023560 80022960 8FBF0014 */   lw    $ra, 0x14($sp)
.L80022964:
/* 023564 80022964 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 023568 80022968 0C008AA6 */  jal   func_80022A98
/* 02356C 8002296C 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 023570 80022970 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 023574 80022974 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 023578 80022978 0C008AA6 */  jal   func_80022A98
/* 02357C 8002297C 24050001 */   li    $a1, 1
/* 023580 80022980 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 023584 80022984 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 023588 80022988 0C008AA6 */  jal   func_80022A98
/* 02358C 8002298C 24050002 */   li    $a1, 2
/* 023590 80022990 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 023594 80022994 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 023598 80022998 0C008AA6 */  jal   func_80022A98
/* 02359C 8002299C 24050003 */   li    $a1, 3
/* 0235A0 800229A0 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 0235A4 800229A4 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 0235A8 800229A8 0C008AA6 */  jal   func_80022A98
/* 0235AC 800229AC 24050004 */   li    $a1, 4
/* 0235B0 800229B0 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 0235B4 800229B4 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 0235B8 800229B8 0C008AA6 */  jal   func_80022A98
/* 0235BC 800229BC 24050005 */   li    $a1, 5
/* 0235C0 800229C0 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 0235C4 800229C4 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 0235C8 800229C8 0C008AA6 */  jal   func_80022A98
/* 0235CC 800229CC 24050006 */   li    $a1, 6
/* 0235D0 800229D0 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 0235D4 800229D4 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 0235D8 800229D8 0C008AA6 */  jal   func_80022A98
/* 0235DC 800229DC 24050007 */   li    $a1, 7
/* 0235E0 800229E0 1000002A */  b     .L80022A8C
/* 0235E4 800229E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800229E8:
/* 0235E8 800229E8 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 0235EC 800229EC 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 0235F0 800229F0 0C008AA6 */  jal   func_80022A98
/* 0235F4 800229F4 00002825 */   move  $a1, $zero
/* 0235F8 800229F8 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0235FC 800229FC 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 023600 80022A00 0C008AA6 */  jal   func_80022A98
/* 023604 80022A04 24050001 */   li    $a1, 1
/* 023608 80022A08 10000020 */  b     .L80022A8C
/* 02360C 80022A0C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80022A10:
/* 023610 80022A10 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 023614 80022A14 0C008AA6 */  jal   func_80022A98
/* 023618 80022A18 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 02361C 80022A1C 1000001B */  b     .L80022A8C
/* 023620 80022A20 8FBF0014 */   lw    $ra, 0x14($sp)
.L80022A24:
/* 023624 80022A24 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 023628 80022A28 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 02362C 80022A2C 00002825 */  move  $a1, $zero
/* 023630 80022A30 10440002 */  beq   $v0, $a0, .L80022A3C
/* 023634 80022A34 00000000 */   nop
/* 023638 80022A38 14430013 */  bne   $v0, $v1, .L80022A88
.L80022A3C:
/* 02363C 80022A3C 3C04800E */   lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 023640 80022A40 0C008AA6 */  jal   func_80022A98
/* 023644 80022A44 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 023648 80022A48 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 02364C 80022A4C 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 023650 80022A50 0C008AA6 */  jal   func_80022A98
/* 023654 80022A54 24050001 */   li    $a1, 1
/* 023658 80022A58 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 02365C 80022A5C 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 023660 80022A60 0C008AA6 */  jal   func_80022A98
/* 023664 80022A64 24050002 */   li    $a1, 2
/* 023668 80022A68 3C08800E */  lui   $t0, %hi(gPlayerCountSelection1) # $t0, 0x800e
/* 02366C 80022A6C 8D08C538 */  lw    $t0, %lo(gPlayerCountSelection1)($t0)
/* 023670 80022A70 24010004 */  li    $at, 4
/* 023674 80022A74 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 023678 80022A78 15010003 */  bne   $t0, $at, .L80022A88
/* 02367C 80022A7C 24050003 */   li    $a1, 3
/* 023680 80022A80 0C008AA6 */  jal   func_80022A98
/* 023684 80022A84 8C84C4E8 */   lw    $a0, %lo(gPlayerFour)($a0)
.L80022A88:
/* 023688 80022A88 8FBF0014 */  lw    $ra, 0x14($sp)
.L80022A8C:
/* 02368C 80022A8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 023690 80022A90 03E00008 */  jr    $ra
/* 023694 80022A94 00000000 */   nop
