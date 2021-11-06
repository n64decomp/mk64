glabel play_sound
/* 0C4D48 800C4148 00047F02 */  srl   $t7, $a0, 0x1c
/* 0C4D4C 800C414C 31F800FF */  andi  $t8, $t7, 0xff
/* 0C4D50 800C4150 3C198019 */  lui   $t9, %hi(D_80192C3C) # 0x8019
/* 0C4D54 800C4154 0338C821 */  addu  $t9, $t9, $t8
/* 0C4D58 800C4158 93392C3C */  lbu   $t9, %lo(D_80192C3C)($t9) # 0x2c3c($t9)
/* 0C4D5C 800C415C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0C4D60 800C4160 03A06825 */  move  $t5, $sp
/* 0C4D64 800C4164 AFA60018 */  sw    $a2, 0x18($sp)
/* 0C4D68 800C4168 17200015 */  bnez  $t9, .L800C41C0
/* 0C4D6C 800C416C 30CE00FF */   andi  $t6, $a2, 0xff
/* 0C4D70 800C4170 3C03800F */  lui   $v1, %hi(D_800EA1B8) # $v1, 0x800f
/* 0C4D74 800C4174 2463A1B8 */  addiu $v1, %lo(D_800EA1B8) # addiu $v1, $v1, -0x5e48
/* 0C4D78 800C4178 90680000 */  lbu   $t0, ($v1)
/* 0C4D7C 800C417C 3C0A8019 */  lui   $t2, %hi(D_8018FC20) # $t2, 0x8019
/* 0C4D80 800C4180 254AFC20 */  addiu $t2, %lo(D_8018FC20) # addiu $t2, $t2, -0x3e0
/* 0C4D84 800C4184 00084880 */  sll   $t1, $t0, 2
/* 0C4D88 800C4188 01284823 */  subu  $t1, $t1, $t0
/* 0C4D8C 800C418C 000948C0 */  sll   $t1, $t1, 3
/* 0C4D90 800C4190 012A1021 */  addu  $v0, $t1, $t2
/* 0C4D94 800C4194 AC440000 */  sw    $a0, ($v0)
/* 0C4D98 800C4198 AC450004 */  sw    $a1, 4($v0)
/* 0C4D9C 800C419C A04E0008 */  sb    $t6, 8($v0)
/* 0C4DA0 800C41A0 AC47000C */  sw    $a3, 0xc($v0)
/* 0C4DA4 800C41A4 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0C4DA8 800C41A8 AC4B0010 */  sw    $t3, 0x10($v0)
/* 0C4DAC 800C41AC 8FAC0024 */  lw    $t4, 0x24($sp)
/* 0C4DB0 800C41B0 AC4C0014 */  sw    $t4, 0x14($v0)
/* 0C4DB4 800C41B4 906E0000 */  lbu   $t6, ($v1)
/* 0C4DB8 800C41B8 25CF0001 */  addiu $t7, $t6, 1
/* 0C4DBC 800C41BC A06F0000 */  sb    $t7, ($v1)
.L800C41C0:
/* 0C4DC0 800C41C0 01A0E825 */  move  $sp, $t5
/* 0C4DC4 800C41C4 03E00008 */  jr    $ra
/* 0C4DC8 800C41C8 25BD0010 */   addiu $sp, $t5, 0x10
