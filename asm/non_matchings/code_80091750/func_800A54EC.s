glabel func_800A54EC
/* 0A60EC 800A54EC 3C0B800E */  lui   $t3, %hi(D_800DC5FC) # $t3, 0x800e
/* 0A60F0 800A54F0 256BC5FC */  addiu $t3, %lo(D_800DC5FC) # addiu $t3, $t3, -0x3a04
/* 0A60F4 800A54F4 956E0000 */  lhu   $t6, ($t3)
/* 0A60F8 800A54F8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0A60FC 800A54FC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0A6100 800A5500 11C00089 */  beqz  $t6, .L800A5728
/* 0A6104 800A5504 3C0A800E */   lui   $t2, %hi(gModeSelection) # $t2, 0x800e
/* 0A6108 800A5508 8D4AC53C */  lw    $t2, %lo(gModeSelection)($t2)
/* 0A610C 800A550C 240400C7 */  li    $a0, 199
/* 0A6110 800A5510 0C02ABCC */  jal   find_8018D9E0_entry
/* 0A6114 800A5514 AFAA0040 */   sw    $t2, 0x40($sp)
/* 0A6118 800A5518 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0A611C 800A551C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0A6120 800A5520 8D030000 */  lw    $v1, ($t0)
/* 0A6124 800A5524 3C19802C */  lui   $t9, %hi(D_802B8880) # $t9, 0x802c
/* 0A6128 800A5528 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 0A612C 800A552C 246F0008 */  addiu $t7, $v1, 8
/* 0A6130 800A5530 8FAA0040 */  lw    $t2, 0x40($sp)
/* 0A6134 800A5534 AFA20048 */  sw    $v0, 0x48($sp)
/* 0A6138 800A5538 AD0F0000 */  sw    $t7, ($t0)
/* 0A613C 800A553C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0A6140 800A5540 27398880 */  addiu $t9, %lo(D_802B8880) # addiu $t9, $t9, -0x7780
/* 0A6144 800A5544 3C180380 */  lui   $t8, (0x03800010 >> 16) # lui $t8, 0x380
/* 0A6148 800A5548 3C098016 */  lui   $t1, %hi(D_80164AF0) # $t1, 0x8016
/* 0A614C 800A554C 37180010 */  ori   $t8, (0x03800010 & 0xFFFF) # ori $t8, $t8, 0x10
/* 0A6150 800A5550 03216024 */  and   $t4, $t9, $at
/* 0A6154 800A5554 25294AF0 */  addiu $t1, %lo(D_80164AF0) # addiu $t1, $t1, 0x4af0
/* 0A6158 800A5558 AC6C0004 */  sw    $t4, 4($v1)
/* 0A615C 800A555C AC780000 */  sw    $t8, ($v1)
/* 0A6160 800A5560 852E0000 */  lh    $t6, ($t1)
/* 0A6164 800A5564 3C0D8015 */  lui   $t5, %hi(gGfxPool) # $t5, 0x8015
/* 0A6168 800A5568 8DADEF40 */  lw    $t5, %lo(gGfxPool)($t5)
/* 0A616C 800A556C 000E7980 */  sll   $t7, $t6, 6
/* 0A6170 800A5570 3401FAC0 */  li    $at, 64192
/* 0A6174 800A5574 01AF2021 */  addu  $a0, $t5, $t7
/* 0A6178 800A5578 00812021 */  addu  $a0, $a0, $at
/* 0A617C 800A557C 3C01C2C8 */  li    $at, 0xC2C80000 # -100.000000
/* 0A6180 800A5580 44812000 */  mtc1  $at, $f4
/* 0A6184 800A5584 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0A6188 800A5588 44800000 */  mtc1  $zero, $f0
/* 0A618C 800A558C 44813000 */  mtc1  $at, $f6
/* 0A6190 800A5590 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A6194 800A5594 44814000 */  mtc1  $at, $f8
/* 0A6198 800A5598 3C06439F */  lui   $a2, (0x439F8000 >> 16) # lui $a2, 0x439f
/* 0A619C 800A559C 44050000 */  mfc1  $a1, $f0
/* 0A61A0 800A55A0 34C68000 */  ori   $a2, (0x439F8000 & 0xFFFF) # ori $a2, $a2, 0x8000
/* 0A61A4 800A55A4 3C07436F */  lui   $a3, 0x436f
/* 0A61A8 800A55A8 AFAA0040 */  sw    $t2, 0x40($sp)
/* 0A61AC 800A55AC E7A40014 */  swc1  $f4, 0x14($sp)
/* 0A61B0 800A55B0 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A61B4 800A55B4 E7A60018 */  swc1  $f6, 0x18($sp)
/* 0A61B8 800A55B8 0C0338A9 */  jal   guOrtho
/* 0A61BC 800A55BC E7A8001C */   swc1  $f8, 0x1c($sp)
/* 0A61C0 800A55C0 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0A61C4 800A55C4 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0A61C8 800A55C8 8D030000 */  lw    $v1, ($t0)
/* 0A61CC 800A55CC 3C190103 */  lui   $t9, (0x01030040 >> 16) # lui $t9, 0x103
/* 0A61D0 800A55D0 8FAA0040 */  lw    $t2, 0x40($sp)
/* 0A61D4 800A55D4 24780008 */  addiu $t8, $v1, 8
/* 0A61D8 800A55D8 8FA40048 */  lw    $a0, 0x48($sp)
/* 0A61DC 800A55DC 3C098016 */  lui   $t1, %hi(D_80164AF0) # $t1, 0x8016
/* 0A61E0 800A55E0 AD180000 */  sw    $t8, ($t0)
/* 0A61E4 800A55E4 37390040 */  ori   $t9, (0x01030040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 0A61E8 800A55E8 25294AF0 */  addiu $t1, %lo(D_80164AF0) # addiu $t1, $t1, 0x4af0
/* 0A61EC 800A55EC AC790000 */  sw    $t9, ($v1)
/* 0A61F0 800A55F0 852E0000 */  lh    $t6, ($t1)
/* 0A61F4 800A55F4 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 0A61F8 800A55F8 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 0A61FC 800A55FC 000E6980 */  sll   $t5, $t6, 6
/* 0A6200 800A5600 3401FAC0 */  li    $at, 64192
/* 0A6204 800A5604 018D7821 */  addu  $t7, $t4, $t5
/* 0A6208 800A5608 01E1C021 */  addu  $t8, $t7, $at
/* 0A620C 800A560C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 0A6210 800A5610 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0A6214 800A5614 0301C824 */  and   $t9, $t8, $at
/* 0A6218 800A5618 AC790004 */  sw    $t9, 4($v1)
/* 0A621C 800A561C 852E0000 */  lh    $t6, ($t1)
/* 0A6220 800A5620 3C0B800E */  lui   $t3, %hi(D_800DC5FC) # $t3, 0x800e
/* 0A6224 800A5624 256BC5FC */  addiu $t3, %lo(D_800DC5FC) # addiu $t3, $t3, -0x3a04
/* 0A6228 800A5628 25CC0001 */  addiu $t4, $t6, 1
/* 0A622C 800A562C 11400018 */  beqz  $t2, .L800A5690
/* 0A6230 800A5630 A52C0000 */   sh    $t4, ($t1)
/* 0A6234 800A5634 24010001 */  li    $at, 1
/* 0A6238 800A5638 11410009 */  beq   $t2, $at, .L800A5660
/* 0A623C 800A563C 3C03800F */   lui   $v1, %hi(D_800E8538) # 0x800f
/* 0A6240 800A5640 24010002 */  li    $at, 2
/* 0A6244 800A5644 11410008 */  beq   $t2, $at, .L800A5668
/* 0A6248 800A5648 3C0D800E */   lui   $t5, %hi(gScreenModeSelection) # $t5, 0x800e
/* 0A624C 800A564C 24010003 */  li    $at, 3
/* 0A6250 800A5650 1141001A */  beq   $t2, $at, .L800A56BC
/* 0A6254 800A5654 3C0C800E */   lui   $t4, %hi(gScreenModeSelection)
/* 0A6258 800A5658 10000021 */  b     .L800A56E0
/* 0A625C 800A565C 8FA3004C */   lw    $v1, 0x4c($sp)
.L800A5660:
/* 0A6260 800A5660 1000001F */  b     .L800A56E0
/* 0A6264 800A5664 24638538 */   addiu $v1, $v1, %lo(D_800E8538) # -0x7ac8
.L800A5668:
/* 0A6268 800A5668 8DAFC530 */  lw    $t7, %lo(gScreenModeSelection)($t5)
/* 0A626C 800A566C 95790000 */  lhu   $t9, ($t3)
/* 0A6270 800A5670 000FC140 */  sll   $t8, $t7, 5
/* 0A6274 800A5674 001970C0 */  sll   $t6, $t9, 3
/* 0A6278 800A5678 030E6021 */  addu  $t4, $t8, $t6
/* 0A627C 800A567C 3C0F800F */  lui   $t7, %hi(D_800E8540) # $t7, 0x800f
/* 0A6280 800A5680 25EF8540 */  addiu $t7, %lo(D_800E8540) # addiu $t7, $t7, -0x7ac0
/* 0A6284 800A5684 258DFFF8 */  addiu $t5, $t4, -8
/* 0A6288 800A5688 10000015 */  b     .L800A56E0
/* 0A628C 800A568C 01AF1821 */   addu  $v1, $t5, $t7
.L800A5690:
/* 0A6290 800A5690 3C19800E */  lui   $t9, %hi(gScreenModeSelection) # $t9, 0x800e
/* 0A6294 800A5694 8F38C530 */  lw    $t8, %lo(gScreenModeSelection)($t9)
/* 0A6298 800A5698 956C0000 */  lhu   $t4, ($t3)
/* 0A629C 800A569C 00187140 */  sll   $t6, $t8, 5
/* 0A62A0 800A56A0 000C68C0 */  sll   $t5, $t4, 3
/* 0A62A4 800A56A4 01CD7821 */  addu  $t7, $t6, $t5
/* 0A62A8 800A56A8 3C18800F */  lui   $t8, %hi(D_800E85C0) # $t8, 0x800f
/* 0A62AC 800A56AC 271885C0 */  addiu $t8, %lo(D_800E85C0) # addiu $t8, $t8, -0x7a40
/* 0A62B0 800A56B0 25F9FFF8 */  addiu $t9, $t7, -8
/* 0A62B4 800A56B4 1000000A */  b     .L800A56E0
/* 0A62B8 800A56B8 03381821 */   addu  $v1, $t9, $t8
.L800A56BC:
/* 0A62BC 800A56BC 8D8EC530 */  lw    $t6, %lo(gScreenModeSelection)($t4)
/* 0A62C0 800A56C0 956F0000 */  lhu   $t7, ($t3)
/* 0A62C4 800A56C4 000E6940 */  sll   $t5, $t6, 5
/* 0A62C8 800A56C8 000FC8C0 */  sll   $t9, $t7, 3
/* 0A62CC 800A56CC 01B9C021 */  addu  $t8, $t5, $t9
/* 0A62D0 800A56D0 3C0E800F */  lui   $t6, %hi(D_800E8600) # $t6, 0x800f
/* 0A62D4 800A56D4 25CE8600 */  addiu $t6, %lo(D_800E8600) # addiu $t6, $t6, -0x7a00
/* 0A62D8 800A56D8 270CFFF8 */  addiu $t4, $t8, -8
/* 0A62DC 800A56DC 018E1821 */  addu  $v1, $t4, $t6
.L800A56E0:
/* 0A62E0 800A56E0 846F0000 */  lh    $t7, ($v1)
/* 0A62E4 800A56E4 3C02800F */  lui   $v0, %hi(D_800F0B50) # 0x800f
/* 0A62E8 800A56E8 004A1021 */  addu  $v0, $v0, $t2
/* 0A62EC 800A56EC 25EDFFF8 */  addiu $t5, $t7, -8
/* 0A62F0 800A56F0 A7AD0050 */  sh    $t5, 0x50($sp)
/* 0A62F4 800A56F4 80420B50 */  lb    $v0, %lo(D_800F0B50)($v0) # 0xb50($v0)
/* 0A62F8 800A56F8 8C980004 */  lw    $t8, 4($a0)
/* 0A62FC 800A56FC 84790002 */  lh    $t9, 2($v1)
/* 0A6300 800A5700 27A50050 */  addiu $a1, $sp, 0x50
/* 0A6304 800A5704 03026023 */  subu  $t4, $t8, $v0
/* 0A6308 800A5708 000C7080 */  sll   $t6, $t4, 2
/* 0A630C 800A570C 01CC7023 */  subu  $t6, $t6, $t4
/* 0A6310 800A5710 000E7080 */  sll   $t6, $t6, 2
/* 0A6314 800A5714 01CC7021 */  addu  $t6, $t6, $t4
/* 0A6318 800A5718 032E7821 */  addu  $t7, $t9, $t6
/* 0A631C 800A571C 25EDFFF8 */  addiu $t5, $t7, -8
/* 0A6320 800A5720 0C0299AA */  jal   func_800A66A8
/* 0A6324 800A5724 A7AD0052 */   sh    $t5, 0x52($sp)
.L800A5728:
/* 0A6328 800A5728 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0A632C 800A572C 27BD0058 */  addiu $sp, $sp, 0x58
/* 0A6330 800A5730 03E00008 */  jr    $ra
/* 0A6334 800A5734 00000000 */   nop   
