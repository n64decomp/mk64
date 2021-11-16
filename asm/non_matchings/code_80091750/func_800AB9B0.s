glabel func_800AB9B0
/* 0AC5B0 800AB9B0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AC5B4 800AB9B4 3C038019 */  lui   $v1, %hi(gCupSelection) # $v1, 0x8019
/* 0AC5B8 800AB9B8 2463EE09 */  addiu $v1, %lo(gCupSelection) # addiu $v1, $v1, -0x11f7
/* 0AC5BC 800AB9BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0AC5C0 800AB9C0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0AC5C4 800AB9C4 8C8E001C */  lw    $t6, 0x1c($a0)
/* 0AC5C8 800AB9C8 80620000 */  lb    $v0, ($v1)
/* 0AC5CC 800AB9CC 00808025 */  move  $s0, $a0
/* 0AC5D0 800AB9D0 3C05800E */  lui   $a1, %hi(gCCSelection) # $a1, 0x800e
/* 0AC5D4 800AB9D4 504E0020 */  beql  $v0, $t6, .L800ABA58
/* 0AC5D8 800AB9D8 8E020004 */   lw    $v0, 4($s0)
/* 0AC5DC 800AB9DC AC82001C */  sw    $v0, 0x1c($a0)
/* 0AC5E0 800AB9E0 8CA5C548 */  lw    $a1, %lo(gCCSelection)($a1)
/* 0AC5E4 800AB9E4 0C02D530 */  jal   func_800B54C0
/* 0AC5E8 800AB9E8 80640000 */   lb    $a0, ($v1)
/* 0AC5EC 800AB9EC AE020020 */  sw    $v0, 0x20($s0)
/* 0AC5F0 800AB9F0 3C0F800E */  lui   $t7, %hi(gCCSelection) # $t7, 0x800e
/* 0AC5F4 800AB9F4 8DEFC548 */  lw    $t7, %lo(gCCSelection)($t7)
/* 0AC5F8 800AB9F8 00401825 */  move  $v1, $v0
/* 0AC5FC 800AB9FC 00034880 */  sll   $t1, $v1, 2
/* 0AC600 800ABA00 05E10003 */  bgez  $t7, .L800ABA10
/* 0AC604 800ABA04 000FC043 */   sra   $t8, $t7, 1
/* 0AC608 800ABA08 25E10001 */  addiu $at, $t7, 1
/* 0AC60C 800ABA0C 0001C043 */  sra   $t8, $at, 1
.L800ABA10:
/* 0AC610 800ABA10 00184100 */  sll   $t0, $t8, 4
/* 0AC614 800ABA14 00095023 */  negu  $t2, $t1
/* 0AC618 800ABA18 010A5821 */  addu  $t3, $t0, $t2
/* 0AC61C 800ABA1C 3C04800E */  lui   $a0, %hi(D_800E7E20)
/* 0AC620 800ABA20 008B2021 */  addu  $a0, $a0, $t3
/* 0AC624 800ABA24 0C026455 */  jal   segmented_to_virtual_dupe
/* 0AC628 800ABA28 8C847E20 */   lw    $a0, %lo(D_800E7E20)($a0)
/* 0AC62C 800ABA2C 8E040018 */  lw    $a0, 0x18($s0)
/* 0AC630 800ABA30 00002825 */  move  $a1, $zero
/* 0AC634 800ABA34 0C026965 */  jal   func_8009A594
/* 0AC638 800ABA38 00403025 */   move  $a2, $v0
/* 0AC63C 800ABA3C 3C05800E */  lui   $a1, %hi(D_800E7268) # $a1, 0x800e
/* 0AC640 800ABA40 24A57268 */  addiu $a1, %lo(D_800E7268) # addiu $a1, $a1, 0x7268
/* 0AC644 800ABA44 84AC0000 */  lh    $t4, ($a1)
/* 0AC648 800ABA48 AE0C000C */  sw    $t4, 0xc($s0)
/* 0AC64C 800ABA4C 84AD0002 */  lh    $t5, 2($a1)
/* 0AC650 800ABA50 AE0D0010 */  sw    $t5, 0x10($s0)
/* 0AC654 800ABA54 8E020004 */  lw    $v0, 4($s0)
.L800ABA58:
/* 0AC658 800ABA58 3C05800E */  lui   $a1, %hi(D_800E7268) # $a1, 0x800e
/* 0AC65C 800ABA5C 24A57268 */  addiu $a1, %lo(D_800E7268) # addiu $a1, $a1, 0x7268
/* 0AC660 800ABA60 000270C0 */  sll   $t6, $v0, 3
/* 0AC664 800ABA64 10400006 */  beqz  $v0, .L800ABA80
/* 0AC668 800ABA68 00AE1821 */   addu  $v1, $a1, $t6
/* 0AC66C 800ABA6C 24010001 */  li    $at, 1
/* 0AC670 800ABA70 1041000F */  beq   $v0, $at, .L800ABAB0
/* 0AC674 800ABA74 02002025 */   move  $a0, $s0
/* 0AC678 800ABA78 10000017 */  b     .L800ABAD8
/* 0AC67C 800ABA7C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800ABA80:
/* 0AC680 800ABA80 02002025 */  move  $a0, $s0
/* 0AC684 800ABA84 84650000 */  lh    $a1, ($v1)
/* 0AC688 800ABA88 0C02A476 */  jal   func_800A91D8
/* 0AC68C 800ABA8C 84660002 */   lh    $a2, 2($v1)
/* 0AC690 800ABA90 3C0F8019 */  lui   $t7, %hi(D_8018EDEC) # $t7, 0x8019
/* 0AC694 800ABA94 81EFEDEC */  lb    $t7, %lo(D_8018EDEC)($t7)
/* 0AC698 800ABA98 24010003 */  li    $at, 3
/* 0AC69C 800ABA9C 24180001 */  li    $t8, 1
/* 0AC6A0 800ABAA0 55E1000D */  bnel  $t7, $at, .L800ABAD8
/* 0AC6A4 800ABAA4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AC6A8 800ABAA8 1000000A */  b     .L800ABAD4
/* 0AC6AC 800ABAAC AE180004 */   sw    $t8, 4($s0)
.L800ABAB0:
/* 0AC6B0 800ABAB0 84650000 */  lh    $a1, ($v1)
/* 0AC6B4 800ABAB4 0C02A476 */  jal   func_800A91D8
/* 0AC6B8 800ABAB8 84660002 */   lh    $a2, 2($v1)
/* 0AC6BC 800ABABC 3C198019 */  lui   $t9, %hi(D_8018EDEC) # $t9, 0x8019
/* 0AC6C0 800ABAC0 8339EDEC */  lb    $t9, %lo(D_8018EDEC)($t9)
/* 0AC6C4 800ABAC4 24010001 */  li    $at, 1
/* 0AC6C8 800ABAC8 57210003 */  bnel  $t9, $at, .L800ABAD8
/* 0AC6CC 800ABACC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0AC6D0 800ABAD0 AE000004 */  sw    $zero, 4($s0)
.L800ABAD4:
/* 0AC6D4 800ABAD4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800ABAD8:
/* 0AC6D8 800ABAD8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0AC6DC 800ABADC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AC6E0 800ABAE0 03E00008 */  jr    $ra
/* 0AC6E4 800ABAE4 00000000 */   nop   
