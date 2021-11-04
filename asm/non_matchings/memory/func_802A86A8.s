glabel func_802A86A8
/* 111CB8 802A86A8 3C078016 */  lui   $a3, %hi(gHeapEndPtr) # $a3, 0x8016
/* 111CBC 802A86AC 24E7F72C */  addiu $a3, %lo(gHeapEndPtr) # addiu $a3, $a3, -0x8d4
/* 111CC0 802A86B0 8CEE0000 */  lw    $t6, ($a3)
/* 111CC4 802A86B4 00057900 */  sll   $t7, $a1, 4
/* 111CC8 802A86B8 25F8000F */  addiu $t8, $t7, 0xf
/* 111CCC 802A86BC 2401FFF0 */  li    $at, -16
/* 111CD0 802A86C0 0301C824 */  and   $t9, $t8, $at
/* 111CD4 802A86C4 01D91823 */  subu  $v1, $t6, $t9
/* 111CD8 802A86C8 00801025 */  move  $v0, $a0
/* 111CDC 802A86CC ACE30000 */  sw    $v1, ($a3)
/* 111CE0 802A86D0 10A00033 */  beqz  $a1, .L802A87A0
/* 111CE4 802A86D4 00003025 */   move  $a2, $zero
/* 111CE8 802A86D8 3C09800E */  lui   $t1, %hi(D_800DC608) # $t1, 0x800e
/* 111CEC 802A86DC 3C08800E */  lui   $t0, %hi(gIsMirrorMode) # $t0, 0x800e
/* 111CF0 802A86E0 2508C604 */  addiu $t0, %lo(gIsMirrorMode) # addiu $t0, $t0, -0x39fc
/* 111CF4 802A86E4 2529C608 */  addiu $t1, %lo(D_800DC608) # addiu $t1, $t1, -0x39f8
/* 111CF8 802A86E8 240A00FF */  li    $t2, 255
.L802A86EC:
/* 111CFC 802A86EC 8D0C0000 */  lw    $t4, ($t0)
/* 111D00 802A86F0 51800006 */  beql  $t4, $zero, .L802A870C
/* 111D04 802A86F4 84580000 */   lh    $t8, ($v0)
/* 111D08 802A86F8 844D0000 */  lh    $t5, ($v0)
/* 111D0C 802A86FC 000D7823 */  negu  $t7, $t5
/* 111D10 802A8700 10000003 */  b     .L802A8710
/* 111D14 802A8704 A46F0000 */   sh    $t7, ($v1)
/* 111D18 802A8708 84580000 */  lh    $t8, ($v0)
.L802A870C:
/* 111D1C 802A870C A4780000 */  sh    $t8, ($v1)
.L802A8710:
/* 111D20 802A8710 844E0002 */  lh    $t6, 2($v0)
/* 111D24 802A8714 C5280000 */  lwc1  $f8, ($t1)
/* 111D28 802A8718 24C60001 */  addiu $a2, $a2, 1
/* 111D2C 802A871C 448E2000 */  mtc1  $t6, $f4
/* 111D30 802A8720 00C5082B */  sltu  $at, $a2, $a1
/* 111D34 802A8724 24630010 */  addiu $v1, $v1, 0x10
/* 111D38 802A8728 468021A0 */  cvt.s.w $f6, $f4
/* 111D3C 802A872C 2442000E */  addiu $v0, $v0, 0xe
/* 111D40 802A8730 46083282 */  mul.s $f10, $f6, $f8
/* 111D44 802A8734 4600540D */  trunc.w.s $f16, $f10
/* 111D48 802A8738 440B8000 */  mfc1  $t3, $f16
/* 111D4C 802A873C 00000000 */  nop   
/* 111D50 802A8740 A46BFFF2 */  sh    $t3, -0xe($v1)
/* 111D54 802A8744 844CFFF6 */  lh    $t4, -0xa($v0)
/* 111D58 802A8748 8044FFFC */  lb    $a0, -4($v0)
/* 111D5C 802A874C 8047FFFD */  lb    $a3, -3($v0)
/* 111D60 802A8750 A46CFFF4 */  sh    $t4, -0xc($v1)
/* 111D64 802A8754 844DFFF8 */  lh    $t5, -8($v0)
/* 111D68 802A8758 309800FC */  andi  $t8, $a0, 0xfc
/* 111D6C 802A875C 30EE00FC */  andi  $t6, $a3, 0xfc
/* 111D70 802A8760 A46DFFF8 */  sh    $t5, -8($v1)
/* 111D74 802A8764 844FFFFA */  lh    $t7, -6($v0)
/* 111D78 802A8768 A078FFFC */  sb    $t8, -4($v1)
/* 111D7C 802A876C A06EFFFD */  sb    $t6, -3($v1)
/* 111D80 802A8770 A46FFFFA */  sh    $t7, -6($v1)
/* 111D84 802A8774 8059FFFE */  lb    $t9, -2($v0)
/* 111D88 802A8778 00077880 */  sll   $t7, $a3, 2
/* 111D8C 802A877C 31F8000C */  andi  $t8, $t7, 0xc
/* 111D90 802A8780 308D0003 */  andi  $t5, $a0, 3
/* 111D94 802A8784 01B87025 */  or    $t6, $t5, $t8
/* 111D98 802A8788 A079FFFE */  sb    $t9, -2($v1)
/* 111D9C 802A878C 000ECE00 */  sll   $t9, $t6, 0x18
/* 111DA0 802A8790 00195E03 */  sra   $t3, $t9, 0x18
/* 111DA4 802A8794 A46BFFF6 */  sh    $t3, -0xa($v1)
/* 111DA8 802A8798 1420FFD4 */  bnez  $at, .L802A86EC
/* 111DAC 802A879C A06AFFFF */   sb    $t2, -1($v1)
.L802A87A0:
/* 111DB0 802A87A0 03E00008 */  jr    $ra
/* 111DB4 802A87A4 00000000 */   nop   
