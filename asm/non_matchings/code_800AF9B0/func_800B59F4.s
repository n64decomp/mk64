glabel func_800B59F4
/* 0B65F4 800B59F4 3C0E8019 */  lui   $t6, %hi(D_8018ED88) # $t6, 0x8019
/* 0B65F8 800B59F8 24020001 */  li    $v0, 1
/* 0B65FC 800B59FC 25CEED88 */  addiu $t6, %lo(D_8018ED88) # addiu $t6, $t6, -0x1278
/* 0B6600 800B5A00 004E2021 */  addu  $a0, $v0, $t6
/* 0B6604 800B5A04 908F0000 */  lbu   $t7, ($a0)
/* 0B6608 800B5A08 24590001 */  addiu $t9, $v0, 1
/* 0B660C 800B5A0C 908A0001 */  lbu   $t2, 1($a0)
/* 0B6610 800B5A10 25F80001 */  addiu $t8, $t7, 1
/* 0B6614 800B5A14 03190019 */  multu $t8, $t9
/* 0B6618 800B5A18 244C0002 */  addiu $t4, $v0, 2
/* 0B661C 800B5A1C 254B0001 */  addiu $t3, $t2, 1
/* 0B6620 800B5A20 908F0002 */  lbu   $t7, 2($a0)
/* 0B6624 800B5A24 24590003 */  addiu $t9, $v0, 3
/* 0B6628 800B5A28 3C038019 */  lui   $v1, %hi(D_8018ED88) # $v1, 0x8019
/* 0B662C 800B5A2C 25F80001 */  addiu $t8, $t7, 1
/* 0B6630 800B5A30 9063ED88 */  lbu   $v1, %lo(D_8018ED88)($v1)
/* 0B6634 800B5A34 908A0003 */  lbu   $t2, 3($a0)
/* 0B6638 800B5A38 00004012 */  mflo  $t0
/* 0B663C 800B5A3C 24630001 */  addiu $v1, $v1, 1
/* 0B6640 800B5A40 00684821 */  addu  $t1, $v1, $t0
/* 0B6644 800B5A44 016C0019 */  multu $t3, $t4
/* 0B6648 800B5A48 244C0004 */  addiu $t4, $v0, 4
/* 0B664C 800B5A4C 254B0001 */  addiu $t3, $t2, 1
/* 0B6650 800B5A50 01221821 */  addu  $v1, $t1, $v0
/* 0B6654 800B5A54 00006812 */  mflo  $t5
/* 0B6658 800B5A58 006D7021 */  addu  $t6, $v1, $t5
/* 0B665C 800B5A5C 01C21821 */  addu  $v1, $t6, $v0
/* 0B6660 800B5A60 03190019 */  multu $t8, $t9
/* 0B6664 800B5A64 24630001 */  addiu $v1, $v1, 1
/* 0B6668 800B5A68 00004012 */  mflo  $t0
/* 0B666C 800B5A6C 00684821 */  addu  $t1, $v1, $t0
/* 0B6670 800B5A70 01221821 */  addu  $v1, $t1, $v0
/* 0B6674 800B5A74 016C0019 */  multu $t3, $t4
/* 0B6678 800B5A78 24630002 */  addiu $v1, $v1, 2
/* 0B667C 800B5A7C 00006812 */  mflo  $t5
/* 0B6680 800B5A80 006D7021 */  addu  $t6, $v1, $t5
/* 0B6684 800B5A84 01C21821 */  addu  $v1, $t6, $v0
/* 0B6688 800B5A88 24630003 */  addiu $v1, $v1, 3
/* 0B668C 800B5A8C 04610004 */  bgez  $v1, .L800B5AA0
/* 0B6690 800B5A90 306200FF */   andi  $v0, $v1, 0xff
/* 0B6694 800B5A94 10400002 */  beqz  $v0, .L800B5AA0
/* 0B6698 800B5A98 00000000 */   nop   
/* 0B669C 800B5A9C 2442FF00 */  addiu $v0, $v0, -0x100
.L800B5AA0:
/* 0B66A0 800B5AA0 304F00FF */  andi  $t7, $v0, 0xff
/* 0B66A4 800B5AA4 03E00008 */  jr    $ra
/* 0B66A8 800B5AA8 01E01025 */   move  $v0, $t7
