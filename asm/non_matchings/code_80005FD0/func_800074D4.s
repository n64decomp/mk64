glabel func_800074D4
/* 0080D4 800074D4 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0080D8 800074D8 3C048016 */  lui   $a0, %hi(gCourseCompletionPercentByRank) # $a0, 0x8016
/* 0080DC 800074DC 44800000 */  mtc1  $zero, $f0
/* 0080E0 800074E0 AFB1000C */  sw    $s1, 0xc($sp)
/* 0080E4 800074E4 AFB00008 */  sw    $s0, 8($sp)
/* 0080E8 800074E8 240A0008 */  li    $t2, 8
/* 0080EC 800074EC 24842FD8 */  addiu $a0, %lo(gCourseCompletionPercentByRank) # addiu $a0, $a0, 0x2fd8
/* 0080F0 800074F0 24070001 */  li    $a3, 1
/* 0080F4 800074F4 24020009 */  li    $v0, 9
.L800074F8:
/* 0080F8 800074F8 24E70001 */  addiu $a3, $a3, 1
/* 0080FC 800074FC 00E2082A */  slt   $at, $a3, $v0
/* 008100 80007500 E4800000 */  swc1  $f0, ($a0)
/* 008104 80007504 1420FFFC */  bnez  $at, .L800074F8
/* 008108 80007508 24840004 */   addiu $a0, $a0, 4
/* 00810C 8000750C 00001025 */  move  $v0, $zero
/* 008110 80007510 10000025 */  b     .L800075A8
/* 008114 80007514 00004025 */   move  $t0, $zero
/* 008118 80007518 000070C0 */  sll   $t6, $zero, 3
/* 00811C 8000751C 01C07023 */  subu  $t6, $t6, $zero
/* 008120 80007520 000E7100 */  sll   $t6, $t6, 4
/* 008124 80007524 01C07023 */  subu  $t6, $t6, $zero
/* 008128 80007528 000E7080 */  sll   $t6, $t6, 2
/* 00812C 8000752C 01C07023 */  subu  $t6, $t6, $zero
/* 008130 80007530 3C0F800F */  lui   $t7, %hi(gPlayers) # $t7, 0x800f
/* 008134 80007534 25EF6990 */  addiu $t7, %lo(gPlayers) # addiu $t7, $t7, 0x6990
/* 008138 80007538 000E70C0 */  sll   $t6, $t6, 3
/* 00813C 8000753C 3C0C8016 */  lui   $t4, %hi(gCourseCompletionPercentByRank) # $t4, 0x8016
/* 008140 80007540 3C098016 */  lui   $t1, %hi(gTimePlayerLastTouchedFinishLine) # $t1, 0x8016
/* 008144 80007544 2529F898 */  addiu $t1, %lo(gTimePlayerLastTouchedFinishLine) # addiu $t1, $t1, -0x768
/* 008148 80007548 258C2FD8 */  addiu $t4, %lo(gCourseCompletionPercentByRank) # addiu $t4, $t4, 0x2fd8
/* 00814C 8000754C 01CF2021 */  addu  $a0, $t6, $t7
/* 008150 80007550 00002825 */  move  $a1, $zero
/* 008154 80007554 24070001 */  li    $a3, 1
/* 008158 80007558 27A60068 */  addiu $a2, $sp, 0x68
.L8000755C:
/* 00815C 8000755C 94980000 */  lhu   $t8, ($a0)
/* 008160 80007560 00021880 */  sll   $v1, $v0, 2
/* 008164 80007564 00C37021 */  addu  $t6, $a2, $v1
/* 008168 80007568 33190800 */  andi  $t9, $t8, 0x800
/* 00816C 8000756C 13200009 */  beqz  $t9, .L80007594
/* 008170 80007570 24840DD8 */   addiu $a0, $a0, 0xdd8
/* 008174 80007574 00087880 */  sll   $t7, $t0, 2
/* 008178 80007578 012FC021 */  addu  $t8, $t1, $t7
/* 00817C 8000757C ADC80000 */  sw    $t0, ($t6)
/* 008180 80007580 C7040000 */  lwc1  $f4, ($t8)
/* 008184 80007584 0183C821 */  addu  $t9, $t4, $v1
/* 008188 80007588 24420001 */  addiu $v0, $v0, 1
/* 00818C 8000758C 46002187 */  neg.s $f6, $f4
/* 008190 80007590 E7260000 */  swc1  $f6, ($t9)
.L80007594:
/* 008194 80007594 00E04025 */  move  $t0, $a3
/* 008198 80007598 14A7FFF0 */  bne   $a1, $a3, .L8000755C
/* 00819C 8000759C 24E70001 */   addiu $a3, $a3, 1
/* 0081A0 800075A0 240B0008 */  li    $t3, 8
/* 0081A4 800075A4 110B0049 */  beq   $t0, $t3, .L800076CC
.L800075A8:
/* 0081A8 800075A8 000870C0 */   sll   $t6, $t0, 3
/* 0081AC 800075AC 01C87023 */  subu  $t6, $t6, $t0
/* 0081B0 800075B0 000E7100 */  sll   $t6, $t6, 4
/* 0081B4 800075B4 01C87023 */  subu  $t6, $t6, $t0
/* 0081B8 800075B8 000E7080 */  sll   $t6, $t6, 2
/* 0081BC 800075BC 01C87023 */  subu  $t6, $t6, $t0
/* 0081C0 800075C0 3C0F800F */  lui   $t7, %hi(gPlayers) # $t7, 0x800f
/* 0081C4 800075C4 25EF6990 */  addiu $t7, %lo(gPlayers) # addiu $t7, $t7, 0x6990
/* 0081C8 800075C8 000E70C0 */  sll   $t6, $t6, 3
/* 0081CC 800075CC 3C098016 */  lui   $t1, %hi(gTimePlayerLastTouchedFinishLine) # $t1, 0x8016
/* 0081D0 800075D0 3C0C8016 */  lui   $t4, %hi(gCourseCompletionPercentByRank) # $t4, 0x8016
/* 0081D4 800075D4 258C2FD8 */  addiu $t4, %lo(gCourseCompletionPercentByRank) # addiu $t4, $t4, 0x2fd8
/* 0081D8 800075D8 2529F898 */  addiu $t1, %lo(gTimePlayerLastTouchedFinishLine) # addiu $t1, $t1, -0x768
/* 0081DC 800075DC 01CF2021 */  addu  $a0, $t6, $t7
/* 0081E0 800075E0 27A60068 */  addiu $a2, $sp, 0x68
.L800075E4:
/* 0081E4 800075E4 94980000 */  lhu   $t8, ($a0)
/* 0081E8 800075E8 00021880 */  sll   $v1, $v0, 2
/* 0081EC 800075EC 00C37021 */  addu  $t6, $a2, $v1
/* 0081F0 800075F0 33190800 */  andi  $t9, $t8, 0x800
/* 0081F4 800075F4 13200008 */  beqz  $t9, .L80007618
/* 0081F8 800075F8 00087880 */   sll   $t7, $t0, 2
/* 0081FC 800075FC ADC80000 */  sw    $t0, ($t6)
/* 008200 80007600 012FC021 */  addu  $t8, $t1, $t7
/* 008204 80007604 C7080000 */  lwc1  $f8, ($t8)
/* 008208 80007608 0183C821 */  addu  $t9, $t4, $v1
/* 00820C 8000760C 24420001 */  addiu $v0, $v0, 1
/* 008210 80007610 46004287 */  neg.s $f10, $f8
/* 008214 80007614 E72A0000 */  swc1  $f10, ($t9)
.L80007618:
/* 008218 80007618 948E0DD8 */  lhu   $t6, 0xdd8($a0)
/* 00821C 8000761C 00021880 */  sll   $v1, $v0, 2
/* 008220 80007620 00C3C821 */  addu  $t9, $a2, $v1
/* 008224 80007624 31CF0800 */  andi  $t7, $t6, 0x800
/* 008228 80007628 11E00009 */  beqz  $t7, .L80007650
/* 00822C 8000762C 25180001 */   addiu $t8, $t0, 1
/* 008230 80007630 00087080 */  sll   $t6, $t0, 2
/* 008234 80007634 012E7821 */  addu  $t7, $t1, $t6
/* 008238 80007638 AF380000 */  sw    $t8, ($t9)
/* 00823C 8000763C C5F00004 */  lwc1  $f16, 4($t7)
/* 008240 80007640 0183C021 */  addu  $t8, $t4, $v1
/* 008244 80007644 24420001 */  addiu $v0, $v0, 1
/* 008248 80007648 46008487 */  neg.s $f18, $f16
/* 00824C 8000764C E7120000 */  swc1  $f18, ($t8)
.L80007650:
/* 008250 80007650 94991BB0 */  lhu   $t9, 0x1bb0($a0)
/* 008254 80007654 00021880 */  sll   $v1, $v0, 2
/* 008258 80007658 00C3C021 */  addu  $t8, $a2, $v1
/* 00825C 8000765C 332E0800 */  andi  $t6, $t9, 0x800
/* 008260 80007660 11C00009 */  beqz  $t6, .L80007688
/* 008264 80007664 250F0002 */   addiu $t7, $t0, 2
/* 008268 80007668 0008C880 */  sll   $t9, $t0, 2
/* 00826C 8000766C 01397021 */  addu  $t6, $t1, $t9
/* 008270 80007670 AF0F0000 */  sw    $t7, ($t8)
/* 008274 80007674 C5C40008 */  lwc1  $f4, 8($t6)
/* 008278 80007678 01837821 */  addu  $t7, $t4, $v1
/* 00827C 8000767C 24420001 */  addiu $v0, $v0, 1
/* 008280 80007680 46002187 */  neg.s $f6, $f4
/* 008284 80007684 E5E60000 */  swc1  $f6, ($t7)
.L80007688:
/* 008288 80007688 94982988 */  lhu   $t8, 0x2988($a0)
/* 00828C 8000768C 00021880 */  sll   $v1, $v0, 2
/* 008290 80007690 00C37821 */  addu  $t7, $a2, $v1
/* 008294 80007694 33190800 */  andi  $t9, $t8, 0x800
/* 008298 80007698 13200009 */  beqz  $t9, .L800076C0
/* 00829C 8000769C 250E0003 */   addiu $t6, $t0, 3
/* 0082A0 800076A0 0008C080 */  sll   $t8, $t0, 2
/* 0082A4 800076A4 0138C821 */  addu  $t9, $t1, $t8
/* 0082A8 800076A8 ADEE0000 */  sw    $t6, ($t7)
/* 0082AC 800076AC C728000C */  lwc1  $f8, 0xc($t9)
/* 0082B0 800076B0 01837021 */  addu  $t6, $t4, $v1
/* 0082B4 800076B4 24420001 */  addiu $v0, $v0, 1
/* 0082B8 800076B8 46004287 */  neg.s $f10, $f8
/* 0082BC 800076BC E5CA0000 */  swc1  $f10, ($t6)
.L800076C0:
/* 0082C0 800076C0 25080004 */  addiu $t0, $t0, 4
/* 0082C4 800076C4 150AFFC7 */  bne   $t0, $t2, .L800075E4
/* 0082C8 800076C8 24843760 */   addiu $a0, $a0, 0x3760
.L800076CC:
/* 0082CC 800076CC 3C0C8016 */  lui   $t4, %hi(gCourseCompletionPercentByRank) # $t4, 0x8016
/* 0082D0 800076D0 258C2FD8 */  addiu $t4, %lo(gCourseCompletionPercentByRank) # addiu $t4, $t4, 0x2fd8
/* 0082D4 800076D4 00004025 */  move  $t0, $zero
/* 0082D8 800076D8 27A60068 */  addiu $a2, $sp, 0x68
/* 0082DC 800076DC 240B0008 */  li    $t3, 8
/* 0082E0 800076E0 10000020 */  b     .L80007764
/* 0082E4 800076E4 00404825 */   move  $t1, $v0
/* 0082E8 800076E8 000078C0 */  sll   $t7, $zero, 3
/* 0082EC 800076EC 01E07823 */  subu  $t7, $t7, $zero
/* 0082F0 800076F0 000F7900 */  sll   $t7, $t7, 4
/* 0082F4 800076F4 01E07823 */  subu  $t7, $t7, $zero
/* 0082F8 800076F8 000F7880 */  sll   $t7, $t7, 2
/* 0082FC 800076FC 01E07823 */  subu  $t7, $t7, $zero
/* 008300 80007700 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 008304 80007704 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 008308 80007708 000F78C0 */  sll   $t7, $t7, 3
/* 00830C 8000770C 3C0D8016 */  lui   $t5, %hi(gCourseCompletionPercentByPlayerId) # $t5, 0x8016
/* 008310 80007710 25AD44D0 */  addiu $t5, %lo(gCourseCompletionPercentByPlayerId) # addiu $t5, $t5, 0x44d0
/* 008314 80007714 01F82021 */  addu  $a0, $t7, $t8
/* 008318 80007718 00002825 */  move  $a1, $zero
/* 00831C 8000771C 24070001 */  li    $a3, 1
.L80007720:
/* 008320 80007720 94990000 */  lhu   $t9, ($a0)
/* 008324 80007724 00021880 */  sll   $v1, $v0, 2
/* 008328 80007728 00C37821 */  addu  $t7, $a2, $v1
/* 00832C 8000772C 332E0800 */  andi  $t6, $t9, 0x800
/* 008330 80007730 15C00008 */  bnez  $t6, .L80007754
/* 008334 80007734 24840DD8 */   addiu $a0, $a0, 0xdd8
/* 008338 80007738 0008C080 */  sll   $t8, $t0, 2
/* 00833C 8000773C 01B8C821 */  addu  $t9, $t5, $t8
/* 008340 80007740 ADE80000 */  sw    $t0, ($t7)
/* 008344 80007744 C7300000 */  lwc1  $f16, ($t9)
/* 008348 80007748 01837021 */  addu  $t6, $t4, $v1
/* 00834C 8000774C 24420001 */  addiu $v0, $v0, 1
/* 008350 80007750 E5D00000 */  swc1  $f16, ($t6)
.L80007754:
/* 008354 80007754 00E04025 */  move  $t0, $a3
/* 008358 80007758 14A7FFF1 */  bne   $a1, $a3, .L80007720
/* 00835C 8000775C 24E70001 */   addiu $a3, $a3, 1
/* 008360 80007760 110B0042 */  beq   $t0, $t3, .L8000786C
.L80007764:
/* 008364 80007764 000878C0 */   sll   $t7, $t0, 3
/* 008368 80007768 01E87823 */  subu  $t7, $t7, $t0
/* 00836C 8000776C 000F7900 */  sll   $t7, $t7, 4
/* 008370 80007770 01E87823 */  subu  $t7, $t7, $t0
/* 008374 80007774 000F7880 */  sll   $t7, $t7, 2
/* 008378 80007778 01E87823 */  subu  $t7, $t7, $t0
/* 00837C 8000777C 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 008380 80007780 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 008384 80007784 000F78C0 */  sll   $t7, $t7, 3
/* 008388 80007788 3C0D8016 */  lui   $t5, %hi(gCourseCompletionPercentByPlayerId) # $t5, 0x8016
/* 00838C 8000778C 25AD44D0 */  addiu $t5, %lo(gCourseCompletionPercentByPlayerId) # addiu $t5, $t5, 0x44d0
/* 008390 80007790 01F82021 */  addu  $a0, $t7, $t8
.L80007794:
/* 008394 80007794 94990000 */  lhu   $t9, ($a0)
/* 008398 80007798 00021880 */  sll   $v1, $v0, 2
/* 00839C 8000779C 00C37821 */  addu  $t7, $a2, $v1
/* 0083A0 800077A0 332E0800 */  andi  $t6, $t9, 0x800
/* 0083A4 800077A4 15C00007 */  bnez  $t6, .L800077C4
/* 0083A8 800077A8 0008C080 */   sll   $t8, $t0, 2
/* 0083AC 800077AC ADE80000 */  sw    $t0, ($t7)
/* 0083B0 800077B0 01B8C821 */  addu  $t9, $t5, $t8
/* 0083B4 800077B4 C7320000 */  lwc1  $f18, ($t9)
/* 0083B8 800077B8 01837021 */  addu  $t6, $t4, $v1
/* 0083BC 800077BC 24420001 */  addiu $v0, $v0, 1
/* 0083C0 800077C0 E5D20000 */  swc1  $f18, ($t6)
.L800077C4:
/* 0083C4 800077C4 948F0DD8 */  lhu   $t7, 0xdd8($a0)
/* 0083C8 800077C8 00021880 */  sll   $v1, $v0, 2
/* 0083CC 800077CC 00C37021 */  addu  $t6, $a2, $v1
/* 0083D0 800077D0 31F80800 */  andi  $t8, $t7, 0x800
/* 0083D4 800077D4 17000008 */  bnez  $t8, .L800077F8
/* 0083D8 800077D8 25190001 */   addiu $t9, $t0, 1
/* 0083DC 800077DC 00087880 */  sll   $t7, $t0, 2
/* 0083E0 800077E0 01AFC021 */  addu  $t8, $t5, $t7
/* 0083E4 800077E4 ADD90000 */  sw    $t9, ($t6)
/* 0083E8 800077E8 C7040004 */  lwc1  $f4, 4($t8)
/* 0083EC 800077EC 0183C821 */  addu  $t9, $t4, $v1
/* 0083F0 800077F0 24420001 */  addiu $v0, $v0, 1
/* 0083F4 800077F4 E7240000 */  swc1  $f4, ($t9)
.L800077F8:
/* 0083F8 800077F8 948E1BB0 */  lhu   $t6, 0x1bb0($a0)
/* 0083FC 800077FC 00021880 */  sll   $v1, $v0, 2
/* 008400 80007800 00C3C821 */  addu  $t9, $a2, $v1
/* 008404 80007804 31CF0800 */  andi  $t7, $t6, 0x800
/* 008408 80007808 15E00008 */  bnez  $t7, .L8000782C
/* 00840C 8000780C 25180002 */   addiu $t8, $t0, 2
/* 008410 80007810 00087080 */  sll   $t6, $t0, 2
/* 008414 80007814 01AE7821 */  addu  $t7, $t5, $t6
/* 008418 80007818 AF380000 */  sw    $t8, ($t9)
/* 00841C 8000781C C5E60008 */  lwc1  $f6, 8($t7)
/* 008420 80007820 0183C021 */  addu  $t8, $t4, $v1
/* 008424 80007824 24420001 */  addiu $v0, $v0, 1
/* 008428 80007828 E7060000 */  swc1  $f6, ($t8)
.L8000782C:
/* 00842C 8000782C 94992988 */  lhu   $t9, 0x2988($a0)
/* 008430 80007830 00021880 */  sll   $v1, $v0, 2
/* 008434 80007834 00C3C021 */  addu  $t8, $a2, $v1
/* 008438 80007838 332E0800 */  andi  $t6, $t9, 0x800
/* 00843C 8000783C 15C00008 */  bnez  $t6, .L80007860
/* 008440 80007840 250F0003 */   addiu $t7, $t0, 3
/* 008444 80007844 0008C880 */  sll   $t9, $t0, 2
/* 008448 80007848 01B97021 */  addu  $t6, $t5, $t9
/* 00844C 8000784C AF0F0000 */  sw    $t7, ($t8)
/* 008450 80007850 C5C8000C */  lwc1  $f8, 0xc($t6)
/* 008454 80007854 01837821 */  addu  $t7, $t4, $v1
/* 008458 80007858 24420001 */  addiu $v0, $v0, 1
/* 00845C 8000785C E5E80000 */  swc1  $f8, ($t7)
.L80007860:
/* 008460 80007860 25080004 */  addiu $t0, $t0, 4
/* 008464 80007864 150AFFCB */  bne   $t0, $t2, .L80007794
/* 008468 80007868 24843760 */   addiu $a0, $a0, 0x3760
.L8000786C:
/* 00846C 8000786C 252DFFFF */  addiu $t5, $t1, -1
/* 008470 80007870 19A00047 */  blez  $t5, .L80007990
/* 008474 80007874 00004025 */   move  $t0, $zero
/* 008478 80007878 24070001 */  li    $a3, 1
.L8000787C:
/* 00847C 8000787C 00E9082A */  slt   $at, $a3, $t1
/* 008480 80007880 10200040 */  beqz  $at, .L80007984
/* 008484 80007884 00E01025 */   move  $v0, $a3
/* 008488 80007888 3C188016 */  lui   $t8, %hi(gCourseCompletionPercentByRank) # $t8, 0x8016
/* 00848C 8000788C 01276023 */  subu  $t4, $t1, $a3
/* 008490 80007890 31830001 */  andi  $v1, $t4, 1
/* 008494 80007894 27182FD8 */  addiu $t8, %lo(gCourseCompletionPercentByRank) # addiu $t8, $t8, 0x2fd8
/* 008498 80007898 00082880 */  sll   $a1, $t0, 2
/* 00849C 8000789C 10600013 */  beqz  $v1, .L800078EC
/* 0084A0 800078A0 00B82021 */   addu  $a0, $a1, $t8
/* 0084A4 800078A4 00071880 */  sll   $v1, $a3, 2
/* 0084A8 800078A8 00786021 */  addu  $t4, $v1, $t8
/* 0084AC 800078AC C5820000 */  lwc1  $f2, ($t4)
/* 0084B0 800078B0 C4800000 */  lwc1  $f0, ($a0)
/* 0084B4 800078B4 00C34021 */  addu  $t0, $a2, $v1
/* 0084B8 800078B8 00C51021 */  addu  $v0, $a2, $a1
/* 0084BC 800078BC 4602003C */  c.lt.s $f0, $f2
/* 0084C0 800078C0 00000000 */  nop
/* 0084C4 800078C4 45020008 */  bc1fl .L800078E8
/* 0084C8 800078C8 24E20001 */   addiu $v0, $a3, 1
/* 0084CC 800078CC 8D190000 */  lw    $t9, ($t0)
/* 0084D0 800078D0 8C500000 */  lw    $s0, ($v0)
/* 0084D4 800078D4 E4820000 */  swc1  $f2, ($a0)
/* 0084D8 800078D8 AC590000 */  sw    $t9, ($v0)
/* 0084DC 800078DC E5800000 */  swc1  $f0, ($t4)
/* 0084E0 800078E0 AD100000 */  sw    $s0, ($t0)
/* 0084E4 800078E4 24E20001 */  addiu $v0, $a3, 1
.L800078E8:
/* 0084E8 800078E8 10490026 */  beq   $v0, $t1, .L80007984
.L800078EC:
/* 0084EC 800078EC 3C0E8016 */   lui   $t6, %hi(gCourseCompletionPercentByRank) # $t6, 0x8016
/* 0084F0 800078F0 25CE2FD8 */  addiu $t6, %lo(gCourseCompletionPercentByRank) # addiu $t6, $t6, 0x2fd8
/* 0084F4 800078F4 00021880 */  sll   $v1, $v0, 2
/* 0084F8 800078F8 00097880 */  sll   $t7, $t1, 2
/* 0084FC 800078FC 01EE8821 */  addu  $s1, $t7, $t6
/* 008500 80007900 006E6021 */  addu  $t4, $v1, $t6
.L80007904:
/* 008504 80007904 C4800000 */  lwc1  $f0, ($a0)
/* 008508 80007908 C5820000 */  lwc1  $f2, ($t4)
/* 00850C 8000790C 00C51021 */  addu  $v0, $a2, $a1
/* 008510 80007910 00C34021 */  addu  $t0, $a2, $v1
/* 008514 80007914 4602003C */  c.lt.s $f0, $f2
/* 008518 80007918 00000000 */  nop
/* 00851C 8000791C 4502000A */  bc1fl .L80007948
/* 008520 80007920 C5820004 */   lwc1  $f2, 4($t4)
/* 008524 80007924 8D180000 */  lw    $t8, ($t0)
/* 008528 80007928 8C500000 */  lw    $s0, ($v0)
/* 00852C 8000792C 46000306 */  mov.s $f12, $f0
/* 008530 80007930 E4820000 */  swc1  $f2, ($a0)
/* 008534 80007934 E58C0000 */  swc1  $f12, ($t4)
/* 008538 80007938 AC580000 */  sw    $t8, ($v0)
/* 00853C 8000793C C4800000 */  lwc1  $f0, ($a0)
/* 008540 80007940 AD100000 */  sw    $s0, ($t0)
/* 008544 80007944 C5820004 */  lwc1  $f2, 4($t4)
.L80007948:
/* 008548 80007948 00C51021 */  addu  $v0, $a2, $a1
/* 00854C 8000794C 00C34021 */  addu  $t0, $a2, $v1
/* 008550 80007950 4602003C */  c.lt.s $f0, $f2
/* 008554 80007954 00000000 */  nop
/* 008558 80007958 45020008 */  bc1fl .L8000797C
/* 00855C 8000795C 258C0008 */   addiu $t4, $t4, 8
/* 008560 80007960 8D190004 */  lw    $t9, 4($t0)
/* 008564 80007964 8C500000 */  lw    $s0, ($v0)
/* 008568 80007968 E4820000 */  swc1  $f2, ($a0)
/* 00856C 8000796C AC590000 */  sw    $t9, ($v0)
/* 008570 80007970 E5800004 */  swc1  $f0, 4($t4)
/* 008574 80007974 AD100004 */  sw    $s0, 4($t0)
/* 008578 80007978 258C0008 */  addiu $t4, $t4, 8
.L8000797C:
/* 00857C 8000797C 1591FFE1 */  bne   $t4, $s1, .L80007904
/* 008580 80007980 24630008 */   addiu $v1, $v1, 8
.L80007984:
/* 008584 80007984 00E04025 */  move  $t0, $a3
/* 008588 80007988 14EDFFBC */  bne   $a3, $t5, .L8000787C
/* 00858C 8000798C 24E70001 */   addiu $a3, $a3, 1
.L80007990:
/* 008590 80007990 29A10006 */  slti  $at, $t5, 6
/* 008594 80007994 10200049 */  beqz  $at, .L80007ABC
/* 008598 80007998 01204025 */   move  $t0, $t1
/* 00859C 8000799C 25270001 */  addiu $a3, $t1, 1
/* 0085A0 800079A0 2549FFFF */  addiu $t1, $t2, -1
.L800079A4:
/* 0085A4 800079A4 28E10008 */  slti  $at, $a3, 8
/* 0085A8 800079A8 10200041 */  beqz  $at, .L80007AB0
/* 0085AC 800079AC 00E01025 */   move  $v0, $a3
/* 0085B0 800079B0 240E0008 */  li    $t6, 8
/* 0085B4 800079B4 01C76023 */  subu  $t4, $t6, $a3
/* 0085B8 800079B8 3C0F8016 */  lui   $t7, %hi(gCourseCompletionPercentByRank) # $t7, 0x8016
/* 0085BC 800079BC 25EF2FD8 */  addiu $t7, %lo(gCourseCompletionPercentByRank) # addiu $t7, $t7, 0x2fd8
/* 0085C0 800079C0 31830001 */  andi  $v1, $t4, 1
/* 0085C4 800079C4 00082880 */  sll   $a1, $t0, 2
/* 0085C8 800079C8 10600013 */  beqz  $v1, .L80007A18
/* 0085CC 800079CC 00AF2021 */   addu  $a0, $a1, $t7
/* 0085D0 800079D0 00071880 */  sll   $v1, $a3, 2
/* 0085D4 800079D4 006F6021 */  addu  $t4, $v1, $t7
/* 0085D8 800079D8 C5820000 */  lwc1  $f2, ($t4)
/* 0085DC 800079DC C4800000 */  lwc1  $f0, ($a0)
/* 0085E0 800079E0 00C34021 */  addu  $t0, $a2, $v1
/* 0085E4 800079E4 00C51021 */  addu  $v0, $a2, $a1
/* 0085E8 800079E8 4602003C */  c.lt.s $f0, $f2
/* 0085EC 800079EC 00000000 */  nop
/* 0085F0 800079F0 45020008 */  bc1fl .L80007A14
/* 0085F4 800079F4 24E20001 */   addiu $v0, $a3, 1
/* 0085F8 800079F8 8D180000 */  lw    $t8, ($t0)
/* 0085FC 800079FC 8C500000 */  lw    $s0, ($v0)
/* 008600 80007A00 E4820000 */  swc1  $f2, ($a0)
/* 008604 80007A04 AC580000 */  sw    $t8, ($v0)
/* 008608 80007A08 E5800000 */  swc1  $f0, ($t4)
/* 00860C 80007A0C AD100000 */  sw    $s0, ($t0)
/* 008610 80007A10 24E20001 */  addiu $v0, $a3, 1
.L80007A14:
/* 008614 80007A14 104B0026 */  beq   $v0, $t3, .L80007AB0
.L80007A18:
/* 008618 80007A18 3C198016 */   lui   $t9, %hi(gCourseCompletionPercentByRank) # $t9, 0x8016
/* 00861C 80007A1C 27392FD8 */  addiu $t9, %lo(gCourseCompletionPercentByRank) # addiu $t9, $t9, 0x2fd8
/* 008620 80007A20 00021880 */  sll   $v1, $v0, 2
/* 008624 80007A24 000A7080 */  sll   $t6, $t2, 2
/* 008628 80007A28 01D96821 */  addu  $t5, $t6, $t9
/* 00862C 80007A2C 00796021 */  addu  $t4, $v1, $t9
.L80007A30:
/* 008630 80007A30 C4800000 */  lwc1  $f0, ($a0)
/* 008634 80007A34 C5820000 */  lwc1  $f2, ($t4)
/* 008638 80007A38 00C51021 */  addu  $v0, $a2, $a1
/* 00863C 80007A3C 00C34021 */  addu  $t0, $a2, $v1
/* 008640 80007A40 4602003C */  c.lt.s $f0, $f2
/* 008644 80007A44 00000000 */  nop
/* 008648 80007A48 4502000A */  bc1fl .L80007A74
/* 00864C 80007A4C C5820004 */   lwc1  $f2, 4($t4)
/* 008650 80007A50 8D0F0000 */  lw    $t7, ($t0)
/* 008654 80007A54 8C500000 */  lw    $s0, ($v0)
/* 008658 80007A58 46000306 */  mov.s $f12, $f0
/* 00865C 80007A5C E4820000 */  swc1  $f2, ($a0)
/* 008660 80007A60 E58C0000 */  swc1  $f12, ($t4)
/* 008664 80007A64 AC4F0000 */  sw    $t7, ($v0)
/* 008668 80007A68 C4800000 */  lwc1  $f0, ($a0)
/* 00866C 80007A6C AD100000 */  sw    $s0, ($t0)
/* 008670 80007A70 C5820004 */  lwc1  $f2, 4($t4)
.L80007A74:
/* 008674 80007A74 00C51021 */  addu  $v0, $a2, $a1
/* 008678 80007A78 00C34021 */  addu  $t0, $a2, $v1
/* 00867C 80007A7C 4602003C */  c.lt.s $f0, $f2
/* 008680 80007A80 00000000 */  nop
/* 008684 80007A84 45020008 */  bc1fl .L80007AA8
/* 008688 80007A88 258C0008 */   addiu $t4, $t4, 8
/* 00868C 80007A8C 8D180004 */  lw    $t8, 4($t0)
/* 008690 80007A90 8C500000 */  lw    $s0, ($v0)
/* 008694 80007A94 E4820000 */  swc1  $f2, ($a0)
/* 008698 80007A98 AC580000 */  sw    $t8, ($v0)
/* 00869C 80007A9C E5800004 */  swc1  $f0, 4($t4)
/* 0086A0 80007AA0 AD100004 */  sw    $s0, 4($t0)
/* 0086A4 80007AA4 258C0008 */  addiu $t4, $t4, 8
.L80007AA8:
/* 0086A8 80007AA8 158DFFE1 */  bne   $t4, $t5, .L80007A30
/* 0086AC 80007AAC 24630008 */   addiu $v1, $v1, 8
.L80007AB0:
/* 0086B0 80007AB0 00E04025 */  move  $t0, $a3
/* 0086B4 80007AB4 14E9FFBB */  bne   $a3, $t1, .L800079A4
/* 0086B8 80007AB8 24E70001 */   addiu $a3, $a3, 1
.L80007ABC:
/* 0086BC 80007ABC 3C028016 */  lui   $v0, %hi(D_801643E0) # $v0, 0x8016
/* 0086C0 80007AC0 3C038016 */  lui   $v1, %hi(gPlayerPositions) # $v1, 0x8016
/* 0086C4 80007AC4 3C048016 */  lui   $a0, %hi(D_801643D8) # $a0, 0x8016
/* 0086C8 80007AC8 248443D8 */  addiu $a0, %lo(D_801643D8) # addiu $a0, $a0, 0x43d8
/* 0086CC 80007ACC 246343B8 */  addiu $v1, %lo(gPlayerPositions) # addiu $v1, $v1, 0x43b8
/* 0086D0 80007AD0 244243E0 */  addiu $v0, %lo(D_801643E0) # addiu $v0, $v0, 0x43e0
/* 0086D4 80007AD4 24070001 */  li    $a3, 1
.L80007AD8:
/* 0086D8 80007AD8 8C6E0000 */  lw    $t6, ($v1)
/* 0086DC 80007ADC 24630004 */  addiu $v1, $v1, 4
/* 0086E0 80007AE0 0064082B */  sltu  $at, $v1, $a0
/* 0086E4 80007AE4 24E70001 */  addiu $a3, $a3, 1
/* 0086E8 80007AE8 24420004 */  addiu $v0, $v0, 4
/* 0086EC 80007AEC 1420FFFA */  bnez  $at, .L80007AD8
/* 0086F0 80007AF0 AC4EFFFC */   sw    $t6, -4($v0)
/* 0086F4 80007AF4 10000017 */  b     .L80007B54
/* 0086F8 80007AF8 00004025 */   move  $t0, $zero
/* 0086FC 80007AFC 3C0E8016 */  lui   $t6, %hi(D_80164360) # $t6, 0x8016
/* 008700 80007B00 25CE4360 */  addiu $t6, %lo(D_80164360) # addiu $t6, $t6, 0x4360
/* 008704 80007B04 0000C880 */  sll   $t9, $zero, 2
/* 008708 80007B08 27AF0068 */  addiu $t7, $sp, 0x68
/* 00870C 80007B0C 0000C040 */  sll   $t8, $zero, 1
/* 008710 80007B10 3C0C8016 */  lui   $t4, %hi(gPlayerPositions) # $t4, 0x8016
/* 008714 80007B14 258C43B8 */  addiu $t4, %lo(gPlayerPositions) # addiu $t4, $t4, 0x43b8
/* 008718 80007B18 030E2021 */  addu  $a0, $t8, $t6
/* 00871C 80007B1C 032F1021 */  addu  $v0, $t9, $t7
/* 008720 80007B20 00002825 */  move  $a1, $zero
/* 008724 80007B24 24070001 */  li    $a3, 1
.L80007B28:
/* 008728 80007B28 8C430000 */  lw    $v1, ($v0)
/* 00872C 80007B2C 24420004 */  addiu $v0, $v0, 4
/* 008730 80007B30 24840002 */  addiu $a0, $a0, 2
/* 008734 80007B34 0003C880 */  sll   $t9, $v1, 2
/* 008738 80007B38 01997821 */  addu  $t7, $t4, $t9
/* 00873C 80007B3C ADE80000 */  sw    $t0, ($t7)
/* 008740 80007B40 00E04025 */  move  $t0, $a3
/* 008744 80007B44 A483FFFE */  sh    $v1, -2($a0)
/* 008748 80007B48 14A7FFF7 */  bne   $a1, $a3, .L80007B28
/* 00874C 80007B4C 24E70001 */   addiu $a3, $a3, 1
/* 008750 80007B50 110B0025 */  beq   $t0, $t3, .L80007BE8
.L80007B54:
/* 008754 80007B54 3C0F8016 */   lui   $t7, %hi(D_80164360) # $t7, 0x8016
/* 008758 80007B58 25EF4360 */  addiu $t7, %lo(D_80164360) # addiu $t7, $t7, 0x4360
/* 00875C 80007B5C 3C0C8016 */  lui   $t4, %hi(gPlayerPositions) # $t4, 0x8016
/* 008760 80007B60 0008C080 */  sll   $t8, $t0, 2
/* 008764 80007B64 27AE0068 */  addiu $t6, $sp, 0x68
/* 008768 80007B68 0008C840 */  sll   $t9, $t0, 1
/* 00876C 80007B6C 032F2021 */  addu  $a0, $t9, $t7
/* 008770 80007B70 030E1021 */  addu  $v0, $t8, $t6
/* 008774 80007B74 258C43B8 */  addiu $t4, %lo(gPlayerPositions) # addiu $t4, $t4, 0x43b8
/* 008778 80007B78 25070001 */  addiu $a3, $t0, 1
.L80007B7C:
/* 00877C 80007B7C 8C430000 */  lw    $v1, ($v0)
/* 008780 80007B80 24420010 */  addiu $v0, $v0, 0x10
/* 008784 80007B84 24840008 */  addiu $a0, $a0, 8
/* 008788 80007B88 0003C080 */  sll   $t8, $v1, 2
/* 00878C 80007B8C 01987021 */  addu  $t6, $t4, $t8
/* 008790 80007B90 ADC80000 */  sw    $t0, ($t6)
/* 008794 80007B94 8C45FFF4 */  lw    $a1, -0xc($v0)
/* 008798 80007B98 25180002 */  addiu $t8, $t0, 2
/* 00879C 80007B9C A483FFF8 */  sh    $v1, -8($a0)
/* 0087A0 80007BA0 0005C880 */  sll   $t9, $a1, 2
/* 0087A4 80007BA4 01997821 */  addu  $t7, $t4, $t9
/* 0087A8 80007BA8 ADE70000 */  sw    $a3, ($t7)
/* 0087AC 80007BAC 8C46FFF8 */  lw    $a2, -8($v0)
/* 0087B0 80007BB0 250F0003 */  addiu $t7, $t0, 3
/* 0087B4 80007BB4 25080004 */  addiu $t0, $t0, 4
/* 0087B8 80007BB8 00067080 */  sll   $t6, $a2, 2
/* 0087BC 80007BBC 018EC821 */  addu  $t9, $t4, $t6
/* 0087C0 80007BC0 AF380000 */  sw    $t8, ($t9)
/* 0087C4 80007BC4 8C49FFFC */  lw    $t1, -4($v0)
/* 0087C8 80007BC8 24E70004 */  addiu $a3, $a3, 4
/* 0087CC 80007BCC A485FFFA */  sh    $a1, -6($a0)
/* 0087D0 80007BD0 00097080 */  sll   $t6, $t1, 2
/* 0087D4 80007BD4 018EC021 */  addu  $t8, $t4, $t6
/* 0087D8 80007BD8 AF0F0000 */  sw    $t7, ($t8)
/* 0087DC 80007BDC A486FFFC */  sh    $a2, -4($a0)
/* 0087E0 80007BE0 150AFFE6 */  bne   $t0, $t2, .L80007B7C
/* 0087E4 80007BE4 A489FFFE */   sh    $t1, -2($a0)
.L80007BE8:
/* 0087E8 80007BE8 8FB00008 */  lw    $s0, 8($sp)
/* 0087EC 80007BEC 8FB1000C */  lw    $s1, 0xc($sp)
/* 0087F0 80007BF0 03E00008 */  jr    $ra
/* 0087F4 80007BF4 27BD0090 */   addiu $sp, $sp, 0x90
