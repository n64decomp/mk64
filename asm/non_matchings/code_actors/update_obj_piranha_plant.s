glabel update_obj_piranha_plant
/* 1017FC 802981EC 84820002 */  lh    $v0, 2($a0)
/* 101800 802981F0 304E0800 */  andi  $t6, $v0, 0x800
/* 101804 802981F4 15C0004A */  bnez  $t6, .L80298320
/* 101808 802981F8 304F0400 */   andi  $t7, $v0, 0x400
/* 10180C 802981FC 11E00010 */  beqz  $t7, .L80298240
/* 101810 80298200 3C014080 */   li    $at, 0x40800000 # 4.000000
/* 101814 80298204 C484001C */  lwc1  $f4, 0x1c($a0)
/* 101818 80298208 44813000 */  mtc1  $at, $f6
/* 10181C 8029820C 3C014448 */  li    $at, 0x44480000 # 800.000000
/* 101820 80298210 44815000 */  mtc1  $at, $f10
/* 101824 80298214 46062200 */  add.s $f8, $f4, $f6
/* 101828 80298218 E488001C */  swc1  $f8, 0x1c($a0)
/* 10182C 8029821C C490001C */  lwc1  $f16, 0x1c($a0)
/* 101830 80298220 4610503C */  c.lt.s $f10, $f16
/* 101834 80298224 00000000 */  nop   
/* 101838 80298228 4500003D */  bc1f  .L80298320
/* 10183C 8029822C 00000000 */   nop   
/* 101840 80298230 84980002 */  lh    $t8, 2($a0)
/* 101844 80298234 37190800 */  ori   $t9, $t8, 0x800
/* 101848 80298238 03E00008 */  jr    $ra
/* 10184C 8029823C A4990002 */   sh    $t9, 2($a0)

.L80298240:
/* 101850 80298240 84880004 */  lh    $t0, 4($a0)
/* 101854 80298244 24020001 */  li    $v0, 1
/* 101858 80298248 24030006 */  li    $v1, 6
/* 10185C 8029824C 5448000D */  bnel  $v0, $t0, .L80298284
/* 101860 80298250 A4800024 */   sh    $zero, 0x24($a0)
/* 101864 80298254 84890024 */  lh    $t1, 0x24($a0)
/* 101868 80298258 24030006 */  li    $v1, 6
/* 10186C 8029825C 252A0001 */  addiu $t2, $t1, 1
/* 101870 80298260 A48A0024 */  sh    $t2, 0x24($a0)
/* 101874 80298264 848B0024 */  lh    $t3, 0x24($a0)
/* 101878 80298268 2961003D */  slti  $at, $t3, 0x3d
/* 10187C 8029826C 14200002 */  bnez  $at, .L80298278
/* 101880 80298270 00000000 */   nop   
/* 101884 80298274 A4830024 */  sh    $v1, 0x24($a0)
.L80298278:
/* 101888 80298278 10000002 */  b     .L80298284
/* 10188C 8029827C 24030006 */   li    $v1, 6
/* 101890 80298280 A4800024 */  sh    $zero, 0x24($a0)
.L80298284:
/* 101894 80298284 848C0006 */  lh    $t4, 6($a0)
/* 101898 80298288 544C000B */  bnel  $v0, $t4, .L802982B8
/* 10189C 8029828C A4800026 */   sh    $zero, 0x26($a0)
/* 1018A0 80298290 848D0026 */  lh    $t5, 0x26($a0)
/* 1018A4 80298294 25AE0001 */  addiu $t6, $t5, 1
/* 1018A8 80298298 A48E0026 */  sh    $t6, 0x26($a0)
/* 1018AC 8029829C 848F0026 */  lh    $t7, 0x26($a0)
/* 1018B0 802982A0 29E1003D */  slti  $at, $t7, 0x3d
/* 1018B4 802982A4 54200005 */  bnel  $at, $zero, .L802982BC
/* 1018B8 802982A8 84980008 */   lh    $t8, 8($a0)
/* 1018BC 802982AC 10000002 */  b     .L802982B8
/* 1018C0 802982B0 A4830026 */   sh    $v1, 0x26($a0)
/* 1018C4 802982B4 A4800026 */  sh    $zero, 0x26($a0)
.L802982B8:
/* 1018C8 802982B8 84980008 */  lh    $t8, 8($a0)
.L802982BC:
/* 1018CC 802982BC 5458000B */  bnel  $v0, $t8, .L802982EC
/* 1018D0 802982C0 A4800028 */   sh    $zero, 0x28($a0)
/* 1018D4 802982C4 84990028 */  lh    $t9, 0x28($a0)
/* 1018D8 802982C8 27280001 */  addiu $t0, $t9, 1
/* 1018DC 802982CC A4880028 */  sh    $t0, 0x28($a0)
/* 1018E0 802982D0 84890028 */  lh    $t1, 0x28($a0)
/* 1018E4 802982D4 2921003D */  slti  $at, $t1, 0x3d
/* 1018E8 802982D8 54200005 */  bnel  $at, $zero, .L802982F0
/* 1018EC 802982DC 848A000A */   lh    $t2, 0xa($a0)
/* 1018F0 802982E0 10000002 */  b     .L802982EC
/* 1018F4 802982E4 A4830028 */   sh    $v1, 0x28($a0)
/* 1018F8 802982E8 A4800028 */  sh    $zero, 0x28($a0)
.L802982EC:
/* 1018FC 802982EC 848A000A */  lh    $t2, 0xa($a0)
.L802982F0:
/* 101900 802982F0 544A000B */  bnel  $v0, $t2, .L80298320
/* 101904 802982F4 A480002A */   sh    $zero, 0x2a($a0)
/* 101908 802982F8 848B002A */  lh    $t3, 0x2a($a0)
/* 10190C 802982FC 256C0001 */  addiu $t4, $t3, 1
/* 101910 80298300 A48C002A */  sh    $t4, 0x2a($a0)
/* 101914 80298304 848D002A */  lh    $t5, 0x2a($a0)
/* 101918 80298308 29A1003D */  slti  $at, $t5, 0x3d
/* 10191C 8029830C 14200004 */  bnez  $at, .L80298320
/* 101920 80298310 00000000 */   nop   
/* 101924 80298314 03E00008 */  jr    $ra
/* 101928 80298318 A483002A */   sh    $v1, 0x2a($a0)

/* 10192C 8029831C A480002A */  sh    $zero, 0x2a($a0)
.L80298320:
/* 101930 80298320 03E00008 */  jr    $ra
/* 101934 80298324 00000000 */   nop   
