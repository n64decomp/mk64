glabel func_800145A8
/* 0151A8 800145A8 0006C400 */  sll   $t8, $a2, 0x10
/* 0151AC 800145AC 0018CC03 */  sra   $t9, $t8, 0x10
/* 0151B0 800145B0 00047400 */  sll   $t6, $a0, 0x10
/* 0151B4 800145B4 000E7C03 */  sra   $t7, $t6, 0x10
/* 0151B8 800145B8 AFA40000 */  sw    $a0, ($sp)
/* 0151BC 800145BC 44856000 */  mtc1  $a1, $f12
/* 0151C0 800145C0 2B21028A */  slti  $at, $t9, 0x28a
/* 0151C4 800145C4 01E02025 */  move  $a0, $t7
/* 0151C8 800145C8 1020002A */  beqz  $at, .L80014674
/* 0151CC 800145CC AFA60008 */   sw    $a2, 8($sp)
/* 0151D0 800145D0 11E00007 */  beqz  $t7, .L800145F0
/* 0151D4 800145D4 24010001 */   li    $at, 1
/* 0151D8 800145D8 11E1000F */  beq   $t7, $at, .L80014618
/* 0151DC 800145DC 24010002 */   li    $at, 2
/* 0151E0 800145E0 51E1001B */  beql  $t7, $at, .L80014650
/* 0151E4 800145E4 44809800 */   mtc1  $zero, $f19
/* 0151E8 800145E8 03E00008 */  jr    $ra
/* 0151EC 800145EC 46006006 */   mov.s $f0, $f12

.L800145F0:
/* 0151F0 800145F0 44803800 */  mtc1  $zero, $f7
/* 0151F4 800145F4 44803000 */  mtc1  $zero, $f6
/* 0151F8 800145F8 46006121 */  cvt.d.s $f4, $f12
/* 0151FC 800145FC 4626203C */  c.lt.d $f4, $f6
/* 015200 80014600 00000000 */  nop   
/* 015204 80014604 4500002A */  bc1f  .L800146B0
/* 015208 80014608 00000000 */   nop   
/* 01520C 8001460C 44800000 */  mtc1  $zero, $f0
/* 015210 80014610 03E00008 */  jr    $ra
/* 015214 80014614 00000000 */   nop   

.L80014618:
/* 015218 80014618 44805800 */  mtc1  $zero, $f11
/* 01521C 8001461C 44805000 */  mtc1  $zero, $f10
/* 015220 80014620 46006221 */  cvt.d.s $f8, $f12
/* 015224 80014624 3C01800F */  lui   $at, %hi(D_800ED1AC)
/* 015228 80014628 462A403C */  c.lt.d $f8, $f10
/* 01522C 8001462C 00000000 */  nop   
/* 015230 80014630 45000004 */  bc1f  .L80014644
/* 015234 80014634 00000000 */   nop   
/* 015238 80014638 3C01800F */  lui   $at, %hi(D_800ED1A8)
/* 01523C 8001463C 03E00008 */  jr    $ra
/* 015240 80014640 C420D1A8 */   lwc1  $f0, %lo(D_800ED1A8)($at)

.L80014644:
/* 015244 80014644 03E00008 */  jr    $ra
/* 015248 80014648 C420D1AC */   lwc1  $f0, %lo(D_800ED1AC)($at)

/* 01524C 8001464C 44809800 */  mtc1  $zero, $f19
.L80014650:
/* 015250 80014650 44809000 */  mtc1  $zero, $f18
/* 015254 80014654 46006421 */  cvt.d.s $f16, $f12
/* 015258 80014658 4630903E */  c.le.d $f18, $f16
/* 01525C 8001465C 00000000 */  nop   
/* 015260 80014660 45000013 */  bc1f  .L800146B0
/* 015264 80014664 00000000 */   nop   
/* 015268 80014668 44800000 */  mtc1  $zero, $f0
/* 01526C 8001466C 03E00008 */  jr    $ra
/* 015270 80014670 00000000 */   nop   

.L80014674:
/* 015274 80014674 10800007 */  beqz  $a0, .L80014694
/* 015278 80014678 24010001 */   li    $at, 1
/* 01527C 8001467C 10810005 */  beq   $a0, $at, .L80014694
/* 015280 80014680 24010002 */   li    $at, 2
/* 015284 80014684 50810008 */  beql  $a0, $at, .L800146A8
/* 015288 80014688 3C01BF00 */   lui   $at, 0xbf00
/* 01528C 8001468C 03E00008 */  jr    $ra
/* 015290 80014690 46006006 */   mov.s $f0, $f12

.L80014694:
/* 015294 80014694 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 015298 80014698 44810000 */  mtc1  $at, $f0
/* 01529C 8001469C 03E00008 */  jr    $ra
/* 0152A0 800146A0 00000000 */   nop   

/* 0152A4 800146A4 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
.L800146A8:
/* 0152A8 800146A8 44816000 */  mtc1  $at, $f12
/* 0152AC 800146AC 00000000 */  nop   
.L800146B0:
/* 0152B0 800146B0 03E00008 */  jr    $ra
/* 0152B4 800146B4 46006006 */   mov.s $f0, $f12
