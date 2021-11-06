glabel func_800C5A3C
/* 0C663C 800C5A3C 3C01800F */  lui   $at, %hi(D_800EA1B8) # $at, 0x800f
/* 0C6640 800C5A40 A020A1B8 */  sb    $zero, %lo(D_800EA1B8)($at)
/* 0C6644 800C5A44 3C01800F */  lui   $at, %hi(D_800EA1BC) # $at, 0x800f
/* 0C6648 800C5A48 A020A1BC */  sb    $zero, %lo(D_800EA1BC)($at)
/* 0C664C 800C5A4C 3C01800F */  lui   $at, %hi(D_800EA1C4) # $at, 0x800f
/* 0C6650 800C5A50 A420A1C4 */  sh    $zero, %lo(D_800EA1C4)($at)
/* 0C6654 800C5A54 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C6658 800C5A58 3C098019 */  lui   $t1, %hi(D_80192C48) # $t1, 0x8019
/* 0C665C 800C5A5C 3C088019 */  lui   $t0, %hi(D_80192C3C) # $t0, 0x8019
/* 0C6660 800C5A60 3C078019 */  lui   $a3, %hi(D_80192AB0) # $a3, 0x8019
/* 0C6664 800C5A64 3C058019 */  lui   $a1, %hi(D_80192AA8) # $a1, 0x8019
/* 0C6668 800C5A68 3C048019 */  lui   $a0, %hi(D_80192AA0) # $a0, 0x8019
/* 0C666C 800C5A6C 44810000 */  mtc1  $at, $f0
/* 0C6670 800C5A70 27ADFFF0 */  addiu $t5, $sp, -0x10
/* 0C6674 800C5A74 24842AA0 */  addiu $a0, %lo(D_80192AA0) # addiu $a0, $a0, 0x2aa0
/* 0C6678 800C5A78 24A52AA8 */  addiu $a1, %lo(D_80192AA8) # addiu $a1, $a1, 0x2aa8
/* 0C667C 800C5A7C 24E72AB0 */  addiu $a3, %lo(D_80192AB0) # addiu $a3, $a3, 0x2ab0
/* 0C6680 800C5A80 25082C3C */  addiu $t0, %lo(D_80192C3C) # addiu $t0, $t0, 0x2c3c
/* 0C6684 800C5A84 25292C48 */  addiu $t1, %lo(D_80192C48) # addiu $t1, $t1, 0x2c48
/* 0C6688 800C5A88 00001025 */  move  $v0, $zero
/* 0C668C 800C5A8C 24060001 */  li    $a2, 1
.L800C5A90:
/* 0C6690 800C5A90 00827021 */  addu  $t6, $a0, $v0
/* 0C6694 800C5A94 00A27821 */  addu  $t7, $a1, $v0
/* 0C6698 800C5A98 A1C00000 */  sb    $zero, ($t6)
/* 0C669C 800C5A9C 00E2C021 */  addu  $t8, $a3, $v0
/* 0C66A0 800C5AA0 0102C821 */  addu  $t9, $t0, $v0
/* 0C66A4 800C5AA4 00025900 */  sll   $t3, $v0, 4
/* 0C66A8 800C5AA8 24420001 */  addiu $v0, $v0, 1
/* 0C66AC 800C5AAC A1E60000 */  sb    $a2, ($t7)
/* 0C66B0 800C5AB0 304C00FF */  andi  $t4, $v0, 0xff
/* 0C66B4 800C5AB4 A3000000 */  sb    $zero, ($t8)
/* 0C66B8 800C5AB8 29810006 */  slti  $at, $t4, 6
/* 0C66BC 800C5ABC A3200000 */  sb    $zero, ($t9)
/* 0C66C0 800C5AC0 012B1821 */  addu  $v1, $t1, $t3
/* 0C66C4 800C5AC4 01801025 */  move  $v0, $t4
/* 0C66C8 800C5AC8 E4600000 */  swc1  $f0, ($v1)
/* 0C66CC 800C5ACC 1420FFF0 */  bnez  $at, .L800C5A90
/* 0C66D0 800C5AD0 A460000C */   sh    $zero, 0xc($v1)
/* 0C66D4 800C5AD4 00001025 */  move  $v0, $zero
/* 0C66D8 800C5AD8 240700FF */  li    $a3, 255
.L800C5ADC:
/* 0C66DC 800C5ADC 3C0F8019 */  lui   $t7, %hi(D_80192AB8) # $t7, 0x8019
/* 0C66E0 800C5AE0 25EF2AB8 */  addiu $t7, %lo(D_80192AB8) # addiu $t7, $t7, 0x2ab8
/* 0C66E4 800C5AE4 00027180 */  sll   $t6, $v0, 6
/* 0C66E8 800C5AE8 01CF2021 */  addu  $a0, $t6, $t7
/* 0C66EC 800C5AEC 00001825 */  move  $v1, $zero
.L800C5AF0:
/* 0C66F0 800C5AF0 0003C0C0 */  sll   $t8, $v1, 3
/* 0C66F4 800C5AF4 24630001 */  addiu $v1, $v1, 1
/* 0C66F8 800C5AF8 306B00FF */  andi  $t3, $v1, 0xff
/* 0C66FC 800C5AFC 29610008 */  slti  $at, $t3, 8
/* 0C6700 800C5B00 0098C821 */  addu  $t9, $a0, $t8
/* 0C6704 800C5B04 01601825 */  move  $v1, $t3
/* 0C6708 800C5B08 1420FFF9 */  bnez  $at, .L800C5AF0
/* 0C670C 800C5B0C A3270004 */   sb    $a3, 4($t9)
/* 0C6710 800C5B10 24420001 */  addiu $v0, $v0, 1
/* 0C6714 800C5B14 304C00FF */  andi  $t4, $v0, 0xff
/* 0C6718 800C5B18 29810006 */  slti  $at, $t4, 6
/* 0C671C 800C5B1C 1420FFEF */  bnez  $at, .L800C5ADC
/* 0C6720 800C5B20 01801025 */   move  $v0, $t4
/* 0C6724 800C5B24 3C088019 */  lui   $t0, %hi(D_80191420) # $t0, 0x8019
/* 0C6728 800C5B28 25081420 */  addiu $t0, %lo(D_80191420) # addiu $t0, $t0, 0x1420
/* 0C672C 800C5B2C 00001025 */  move  $v0, $zero
/* 0C6730 800C5B30 240A0030 */  li    $t2, 48
/* 0C6734 800C5B34 240903C0 */  li    $t1, 960
.L800C5B38:
/* 0C6738 800C5B38 00490019 */  multu $v0, $t1
/* 0C673C 800C5B3C 00027900 */  sll   $t7, $v0, 4
/* 0C6740 800C5B40 01E27823 */  subu  $t7, $t7, $v0
/* 0C6744 800C5B44 000F7980 */  sll   $t7, $t7, 6
/* 0C6748 800C5B48 010F3021 */  addu  $a2, $t0, $t7
/* 0C674C 800C5B4C 24030001 */  li    $v1, 1
/* 0C6750 800C5B50 24040001 */  li    $a0, 1
/* 0C6754 800C5B54 00007012 */  mflo  $t6
/* 0C6758 800C5B58 010E2821 */  addu  $a1, $t0, $t6
/* 0C675C 800C5B5C A0A7002A */  sb    $a3, 0x2a($a1)
/* 0C6760 800C5B60 A0A7002B */  sb    $a3, 0x2b($a1)
.L800C5B64:
/* 0C6764 800C5B64 006A0019 */  multu $v1, $t2
/* 0C6768 800C5B68 24630001 */  addiu $v1, $v1, 1
/* 0C676C 800C5B6C 306C00FF */  andi  $t4, $v1, 0xff
/* 0C6770 800C5B70 29810013 */  slti  $at, $t4, 0x13
/* 0C6774 800C5B74 2499FFFF */  addiu $t9, $a0, -1
/* 0C6778 800C5B78 248B0001 */  addiu $t3, $a0, 1
/* 0C677C 800C5B7C 01802025 */  move  $a0, $t4
/* 0C6780 800C5B80 01801825 */  move  $v1, $t4
/* 0C6784 800C5B84 0000C012 */  mflo  $t8
/* 0C6788 800C5B88 00D82821 */  addu  $a1, $a2, $t8
/* 0C678C 800C5B8C A0B9002A */  sb    $t9, 0x2a($a1)
/* 0C6790 800C5B90 1420FFF4 */  bnez  $at, .L800C5B64
/* 0C6794 800C5B94 A0AB002B */   sb    $t3, 0x2b($a1)
/* 0C6798 800C5B98 018A0019 */  multu $t4, $t2
/* 0C679C 800C5B9C 24420001 */  addiu $v0, $v0, 1
/* 0C67A0 800C5BA0 305800FF */  andi  $t8, $v0, 0xff
/* 0C67A4 800C5BA4 2B010006 */  slti  $at, $t8, 6
/* 0C67A8 800C5BA8 258FFFFF */  addiu $t7, $t4, -1
/* 0C67AC 800C5BAC 03001025 */  move  $v0, $t8
/* 0C67B0 800C5BB0 00007012 */  mflo  $t6
/* 0C67B4 800C5BB4 00CE2821 */  addu  $a1, $a2, $t6
/* 0C67B8 800C5BB8 A0AF002A */  sb    $t7, 0x2a($a1)
/* 0C67BC 800C5BBC 1420FFDE */  bnez  $at, .L800C5B38
/* 0C67C0 800C5BC0 A0A7002B */   sb    $a3, 0x2b($a1)
/* 0C67C4 800C5BC4 01A0E825 */  move  $sp, $t5
/* 0C67C8 800C5BC8 03E00008 */  jr    $ra
/* 0C67CC 800C5BCC 25BD0010 */   addiu $sp, $t5, 0x10
