glabel func_80091AC0
/* 0926C0 80091AC0 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 0926C4 80091AC4 44810800 */  mtc1  $at, $f1
/* 0926C8 80091AC8 44800000 */  mtc1  $zero, $f0
/* 0926CC 80091ACC 00001025 */  move  $v0, $zero
/* 0926D0 80091AD0 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0926D4 80091AD4 4620603C */  c.lt.d $f12, $f0
/* 0926D8 80091AD8 00000000 */  nop   
/* 0926DC 80091ADC 45030009 */  bc1tl .L80091B04
/* 0926E0 80091AE0 4620603C */   c.lt.d $f12, $f0
/* 0926E4 80091AE4 44811800 */  mtc1  $at, $f3
/* 0926E8 80091AE8 44801000 */  mtc1  $zero, $f2
/* 0926EC 80091AEC 00000000 */  nop   
/* 0926F0 80091AF0 462C103E */  c.le.d $f2, $f12
/* 0926F4 80091AF4 00000000 */  nop   
/* 0926F8 80091AF8 45020018 */  bc1fl .L80091B5C
/* 0926FC 80091AFC ACC20000 */   sw    $v0, ($a2)
/* 092700 80091B00 4620603C */  c.lt.d $f12, $f0
.L80091B04:
/* 092704 80091B04 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 092708 80091B08 44811800 */  mtc1  $at, $f3
/* 09270C 80091B0C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 092710 80091B10 44817800 */  mtc1  $at, $f15
/* 092714 80091B14 44801000 */  mtc1  $zero, $f2
/* 092718 80091B18 44807000 */  mtc1  $zero, $f14
/* 09271C 80091B1C 45020005 */  bc1fl .L80091B34
/* 092720 80091B20 462E6303 */   div.d $f12, $f12, $f14
/* 092724 80091B24 462E6302 */  mul.d $f12, $f12, $f14
/* 092728 80091B28 10000003 */  b     .L80091B38
/* 09272C 80091B2C 2442FFFF */   addiu $v0, $v0, -1
/* 092730 80091B30 462E6303 */  div.d $f12, $f12, $f14
.L80091B34:
/* 092734 80091B34 24420001 */  addiu $v0, $v0, 1
.L80091B38:
/* 092738 80091B38 4620603C */  c.lt.d $f12, $f0
/* 09273C 80091B3C 00000000 */  nop   
/* 092740 80091B40 4503FFF0 */  bc1tl .L80091B04
/* 092744 80091B44 4620603C */   c.lt.d $f12, $f0
/* 092748 80091B48 462C103E */  c.le.d $f2, $f12
/* 09274C 80091B4C 00000000 */  nop   
/* 092750 80091B50 4503FFEC */  bc1tl .L80091B04
/* 092754 80091B54 4620603C */   c.lt.d $f12, $f0
/* 092758 80091B58 ACC20000 */  sw    $v0, ($a2)
.L80091B5C:
/* 09275C 80091B5C 03E00008 */  jr    $ra
/* 092760 80091B60 46206006 */   mov.d $f0, $f12
