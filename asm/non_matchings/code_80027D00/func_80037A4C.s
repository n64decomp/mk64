glabel func_80037A4C
/* 03864C 80037A4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 038650 80037A50 AFBF001C */  sw    $ra, 0x1c($sp)
/* 038654 80037A54 AFB00018 */  sw    $s0, 0x18($sp)
/* 038658 80037A58 8C8200BC */  lw    $v0, 0xbc($a0)
/* 03865C 80037A5C 24010020 */  li    $at, 32
/* 038660 80037A60 00A08025 */  move  $s0, $a1
/* 038664 80037A64 304E0020 */  andi  $t6, $v0, 0x20
/* 038668 80037A68 15C1000B */  bne   $t6, $at, .L80037A98
/* 03866C 80037A6C 00803825 */   move  $a3, $a0
/* 038670 80037A70 44807000 */  mtc1  $zero, $f14
/* 038674 80037A74 00A02025 */  move  $a0, $a1
/* 038678 80037A78 E4AE0000 */  swc1  $f14, ($a1)
/* 03867C 80037A7C E4AE0004 */  swc1  $f14, 4($a1)
/* 038680 80037A80 E4AE0008 */  swc1  $f14, 8($a1)
/* 038684 80037A84 AFA60028 */  sw    $a2, 0x28($sp)
/* 038688 80037A88 0C0AD8EE */  jal   func_802B63B8
/* 03868C 80037A8C 24E50174 */   addiu $a1, $a3, 0x174
/* 038690 80037A90 1000003D */  b     .L80037B88
/* 038694 80037A94 8FA60028 */   lw    $a2, 0x28($sp)
.L80037A98:
/* 038698 80037A98 304F0010 */  andi  $t7, $v0, 0x10
/* 03869C 80037A9C 24010010 */  li    $at, 16
/* 0386A0 80037AA0 15E10016 */  bne   $t7, $at, .L80037AFC
/* 0386A4 80037AA4 3C014190 */   li    $at, 0x41900000 # 18.000000
/* 0386A8 80037AA8 44812000 */  mtc1  $at, $f4
/* 0386AC 80037AAC C4E00094 */  lwc1  $f0, 0x94($a3)
/* 0386B0 80037AB0 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 0386B4 80037AB4 44815000 */  mtc1  $at, $f10
/* 0386B8 80037AB8 46040183 */  div.s $f6, $f0, $f4
/* 0386BC 80037ABC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0386C0 80037AC0 44819000 */  mtc1  $at, $f18
/* 0386C4 80037AC4 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 0386C8 80037AC8 46003207 */  neg.s $f8, $f6
/* 0386CC 80037ACC C4E60208 */  lwc1  $f6, 0x208($a3)
/* 0386D0 80037AD0 460A4402 */  mul.s $f16, $f8, $f10
/* 0386D4 80037AD4 C4EA020C */  lwc1  $f10, 0x20c($a3)
/* 0386D8 80037AD8 46128102 */  mul.s $f4, $f16, $f18
/* 0386DC 80037ADC 44819000 */  mtc1  $at, $f18
/* 0386E0 80037AE0 46005407 */  neg.s $f16, $f10
/* 0386E4 80037AE4 3C01C2C8 */  li    $at, 0xC2C80000 # -100.000000
/* 0386E8 80037AE8 44816000 */  mtc1  $at, $f12
/* 0386EC 80037AEC 46043200 */  add.s $f8, $f6, $f4
/* 0386F0 80037AF0 46128182 */  mul.s $f6, $f16, $f18
/* 0386F4 80037AF4 10000015 */  b     .L80037B4C
/* 0386F8 80037AF8 46064080 */   add.s $f2, $f8, $f6
.L80037AFC:
/* 0386FC 80037AFC 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 038700 80037B00 44812000 */  mtc1  $at, $f4
/* 038704 80037B04 C4E00094 */  lwc1  $f0, 0x94($a3)
/* 038708 80037B08 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 03870C 80037B0C 44819000 */  mtc1  $at, $f18
/* 038710 80037B10 46040283 */  div.s $f10, $f0, $f4
/* 038714 80037B14 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 038718 80037B18 44813000 */  mtc1  $at, $f6
/* 03871C 80037B1C 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 038720 80037B20 C4EC0084 */  lwc1  $f12, 0x84($a3)
/* 038724 80037B24 46005407 */  neg.s $f16, $f10
/* 038728 80037B28 C4EA0208 */  lwc1  $f10, 0x208($a3)
/* 03872C 80037B2C 46128202 */  mul.s $f8, $f16, $f18
/* 038730 80037B30 C4F2020C */  lwc1  $f18, 0x20c($a3)
/* 038734 80037B34 46064103 */  div.s $f4, $f8, $f6
/* 038738 80037B38 44813000 */  mtc1  $at, $f6
/* 03873C 80037B3C 46009207 */  neg.s $f8, $f18
/* 038740 80037B40 46045400 */  add.s $f16, $f10, $f4
/* 038744 80037B44 46064282 */  mul.s $f10, $f8, $f6
/* 038748 80037B48 460A8080 */  add.s $f2, $f16, $f10
.L80037B4C:
/* 03874C 80037B4C C4E40090 */  lwc1  $f4, 0x90($a3)
/* 038750 80037B50 44807000 */  mtc1  $zero, $f14
/* 038754 80037B54 02002025 */  move  $a0, $s0
/* 038758 80037B58 46022480 */  add.s $f18, $f4, $f2
/* 03875C 80037B5C E60E0004 */  swc1  $f14, 4($s0)
/* 038760 80037B60 24E50174 */  addiu $a1, $a3, 0x174
/* 038764 80037B64 46009207 */  neg.s $f8, $f18
/* 038768 80037B68 46004182 */  mul.s $f6, $f8, $f0
/* 03876C 80037B6C E6060000 */  swc1  $f6, ($s0)
/* 038770 80037B70 C4F00094 */  lwc1  $f16, 0x94($a3)
/* 038774 80037B74 460C8282 */  mul.s $f10, $f16, $f12
/* 038778 80037B78 E60A0008 */  swc1  $f10, 8($s0)
/* 03877C 80037B7C 0C0AD8EE */  jal   func_802B63B8
/* 038780 80037B80 AFA60028 */   sw    $a2, 0x28($sp)
/* 038784 80037B84 8FA60028 */  lw    $a2, 0x28($sp)
.L80037B88:
/* 038788 80037B88 C6040000 */  lwc1  $f4, ($s0)
/* 03878C 80037B8C E4C40000 */  swc1  $f4, ($a2)
/* 038790 80037B90 C6120004 */  lwc1  $f18, 4($s0)
/* 038794 80037B94 E4D20004 */  swc1  $f18, 4($a2)
/* 038798 80037B98 C6080008 */  lwc1  $f8, 8($s0)
/* 03879C 80037B9C E4C80008 */  swc1  $f8, 8($a2)
/* 0387A0 80037BA0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0387A4 80037BA4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0387A8 80037BA8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0387AC 80037BAC 03E00008 */  jr    $ra
/* 0387B0 80037BB0 00000000 */   nop   
