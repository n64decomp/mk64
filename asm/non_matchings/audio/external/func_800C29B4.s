glabel func_800C29B4
/* 0C35B4 800C29B4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C35B8 800C29B8 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C35BC 800C29BC 93AF0033 */  lbu   $t7, 0x33($sp)
/* 0C35C0 800C29C0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C35C4 800C29C4 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C35C8 800C29C8 AFA50034 */  sw    $a1, 0x34($sp)
/* 0C35CC 800C29CC 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 0C35D0 800C29D0 3C018300 */  lui   $at, 0x8300
/* 0C35D4 800C29D4 000FC400 */  sll   $t8, $t7, 0x10
/* 0C35D8 800C29D8 01C02825 */  move  $a1, $t6
/* 0C35DC 800C29DC 03A0F025 */  move  $fp, $sp
/* 0C35E0 800C29E0 0C032EEE */  jal   func_800CBBB8
/* 0C35E4 800C29E4 03012025 */   or    $a0, $t8, $at
/* 0C35E8 800C29E8 93C90033 */  lbu   $t1, 0x33($fp)
/* 0C35EC 800C29EC 3C018019 */  lui   $at, %hi(D_80193318) # 0x8019
/* 0C35F0 800C29F0 3408FFFF */  li    $t0, 65535
/* 0C35F4 800C29F4 000950C0 */  sll   $t2, $t1, 3
/* 0C35F8 800C29F8 01495021 */  addu  $t2, $t2, $t1
/* 0C35FC 800C29FC 000A5080 */  sll   $t2, $t2, 2
/* 0C3600 800C2A00 01495021 */  addu  $t2, $t2, $t1
/* 0C3604 800C2A04 000A5080 */  sll   $t2, $t2, 2
/* 0C3608 800C2A08 01495023 */  subu  $t2, $t2, $t1
/* 0C360C 800C2A0C 000A5080 */  sll   $t2, $t2, 2
/* 0C3610 800C2A10 002A0821 */  addu  $at, $at, $t2
/* 0C3614 800C2A14 A4283318 */  sh    $t0, %lo(D_80193318)($at) # 0x3318($at)
/* 0C3618 800C2A18 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C361C 800C2A1C 03C0E825 */  move  $sp, $fp
/* 0C3620 800C2A20 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C3624 800C2A24 03E00008 */  jr    $ra
/* 0C3628 800C2A28 27BD0030 */   addiu $sp, $sp, 0x30
