glabel func_8001F394
/* 01FF94 8001F394 3C0E800E */  lui   $t6, %hi(gPlayerOne) # $t6, 0x800e
/* 01FF98 8001F398 8DCEC4DC */  lw    $t6, %lo(gPlayerOne)($t6)
/* 01FF9C 8001F39C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01FFA0 8001F3A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01FFA4 8001F3A4 AFA5003C */  sw    $a1, 0x3c($sp)
/* 01FFA8 8001F3A8 148E0002 */  bne   $a0, $t6, .L8001F3B4
/* 01FFAC 8001F3AC 00803025 */   move  $a2, $a0
/* 01FFB0 8001F3B0 AFA0002C */  sw    $zero, 0x2c($sp)
.L8001F3B4:
/* 01FFB4 8001F3B4 3C0F800E */  lui   $t7, %hi(gPlayerTwo) # $t7, 0x800e
/* 01FFB8 8001F3B8 8DEFC4E0 */  lw    $t7, %lo(gPlayerTwo)($t7)
/* 01FFBC 8001F3BC 24180001 */  li    $t8, 1
/* 01FFC0 8001F3C0 3C19800E */  lui   $t9, %hi(gPlayerThree) # $t9, 0x800e
/* 01FFC4 8001F3C4 14CF0002 */  bne   $a2, $t7, .L8001F3D0
/* 01FFC8 8001F3C8 3C09800E */   lui   $t1, %hi(gPlayerFour) # $t1, 0x800e
/* 01FFCC 8001F3CC AFB8002C */  sw    $t8, 0x2c($sp)
.L8001F3D0:
/* 01FFD0 8001F3D0 8F39C4E4 */  lw    $t9, %lo(gPlayerThree)($t9)
/* 01FFD4 8001F3D4 24080002 */  li    $t0, 2
/* 01FFD8 8001F3D8 240A0003 */  li    $t2, 3
/* 01FFDC 8001F3DC 14D90002 */  bne   $a2, $t9, .L8001F3E8
/* 01FFE0 8001F3E0 3C050010 */   lui   $a1, 0x10
/* 01FFE4 8001F3E4 AFA8002C */  sw    $t0, 0x2c($sp)
.L8001F3E8:
/* 01FFE8 8001F3E8 8D29C4E8 */  lw    $t1, %lo(gPlayerFour)($t1)
/* 01FFEC 8001F3EC 54C90003 */  bnel  $a2, $t1, .L8001F3FC
/* 01FFF0 8001F3F0 8FA7002C */   lw    $a3, 0x2c($sp)
/* 01FFF4 8001F3F4 AFAA002C */  sw    $t2, 0x2c($sp)
/* 01FFF8 8001F3F8 8FA7002C */  lw    $a3, 0x2c($sp)
.L8001F3FC:
/* 01FFFC 8001F3FC 3C0C8016 */  lui   $t4, %hi(D_80164A08) # $t4, 0x8016
/* 020000 8001F400 258C4A08 */  addiu $t4, %lo(D_80164A08) # addiu $t4, $t4, 0x4a08
/* 020004 8001F404 00075880 */  sll   $t3, $a3, 2
/* 020008 8001F408 016C1821 */  addu  $v1, $t3, $t4
/* 02000C 8001F40C 8C620000 */  lw    $v0, ($v1)
/* 020010 8001F410 01603825 */  move  $a3, $t3
/* 020014 8001F414 54400028 */  bnel  $v0, $zero, .L8001F4B8
/* 020018 8001F418 2458FFFF */   addiu $t8, $v0, -1
/* 02001C 8001F41C 8CCD000C */  lw    $t5, 0xc($a2)
/* 020020 8001F420 44806000 */  mtc1  $zero, $f12
/* 020024 8001F424 240F0001 */  li    $t7, 1
/* 020028 8001F428 000D7340 */  sll   $t6, $t5, 0xd
/* 02002C 8001F42C 05C10002 */  bgez  $t6, .L8001F438
/* 020030 8001F430 24190002 */   li    $t9, 2
/* 020034 8001F434 AC6F0000 */  sw    $t7, ($v1)
.L8001F438:
/* 020038 8001F438 8CC200BC */  lw    $v0, 0xbc($a2)
/* 02003C 8001F43C 24012000 */  li    $at, 8192
/* 020040 8001F440 24090003 */  li    $t1, 3
/* 020044 8001F444 30582000 */  andi  $t8, $v0, 0x2000
/* 020048 8001F448 17010003 */  bne   $t8, $at, .L8001F458
/* 02004C 8001F44C 240C0004 */   li    $t4, 4
/* 020050 8001F450 AC790000 */  sw    $t9, ($v1)
/* 020054 8001F454 8CC200BC */  lw    $v0, 0xbc($a2)
.L8001F458:
/* 020058 8001F458 00454024 */  and   $t0, $v0, $a1
/* 02005C 8001F45C 14A80002 */  bne   $a1, $t0, .L8001F468
/* 020060 8001F460 240F0005 */   li    $t7, 5
/* 020064 8001F464 AC690000 */  sw    $t1, ($v1)
.L8001F468:
/* 020068 8001F468 8CCA000C */  lw    $t2, 0xc($a2)
/* 02006C 8001F46C 24010100 */  li    $at, 256
/* 020070 8001F470 314B0100 */  andi  $t3, $t2, 0x100
/* 020074 8001F474 55610003 */  bnel  $t3, $at, .L8001F484
/* 020078 8001F478 8CC200BC */   lw    $v0, 0xbc($a2)
/* 02007C 8001F47C AC6C0000 */  sw    $t4, ($v1)
/* 020080 8001F480 8CC200BC */  lw    $v0, 0xbc($a2)
.L8001F484:
/* 020084 8001F484 24010080 */  li    $at, 128
/* 020088 8001F488 304D0080 */  andi  $t5, $v0, 0x80
/* 02008C 8001F48C 11A10004 */  beq   $t5, $at, .L8001F4A0
/* 020090 8001F490 304E0040 */   andi  $t6, $v0, 0x40
/* 020094 8001F494 24010040 */  li    $at, 64
/* 020098 8001F498 15C10002 */  bne   $t6, $at, .L8001F4A4
/* 02009C 8001F49C 00000000 */   nop
.L8001F4A0:
/* 0200A0 8001F4A0 AC6F0000 */  sw    $t7, ($v1)
.L8001F4A4:
/* 0200A4 8001F4A4 3C018016 */  lui   $at, %hi(D_80164498)
/* 0200A8 8001F4A8 00270821 */  addu  $at, $at, $a3
/* 0200AC 8001F4AC E42C4498 */  swc1  $f12, %lo(D_80164498)($at)
/* 0200B0 8001F4B0 8C620000 */  lw    $v0, ($v1)
/* 0200B4 8001F4B4 2458FFFF */  addiu $t8, $v0, -1
.L8001F4B8:
/* 0200B8 8001F4B8 44806000 */  mtc1  $zero, $f12
/* 0200BC 8001F4BC 2F010005 */  sltiu $at, $t8, 5
/* 0200C0 8001F4C0 102000A6 */  beqz  $at, .L8001F75C
/* 0200C4 8001F4C4 3C050010 */   lui   $a1, 0x10
/* 0200C8 8001F4C8 0018C080 */  sll   $t8, $t8, 2
/* 0200CC 8001F4CC 3C01800F */  lui   $at, %hi(jpt_800ED5D8)
/* 0200D0 8001F4D0 00380821 */  addu  $at, $at, $t8
/* 0200D4 8001F4D4 8C38D5D8 */  lw    $t8, %lo(jpt_800ED5D8)($at)
/* 0200D8 8001F4D8 03000008 */  jr    $t8
/* 0200DC 8001F4DC 00000000 */   nop
glabel L8001F4E0
/* 0200E0 8001F4E0 8CC8000C */  lw    $t0, 0xc($a2)
/* 0200E4 8001F4E4 3C198016 */  lui   $t9, %hi(D_80164498) # $t9, 0x8016
/* 0200E8 8001F4E8 27394498 */  addiu $t9, %lo(D_80164498) # addiu $t9, $t9, 0x4498
/* 0200EC 8001F4EC 00084B40 */  sll   $t1, $t0, 0xd
/* 0200F0 8001F4F0 05210009 */  bgez  $t1, .L8001F518
/* 0200F4 8001F4F4 00F92021 */   addu  $a0, $a3, $t9
/* 0200F8 8001F4F8 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # $a2, 0x3e4c
/* 0200FC 8001F4FC 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 020100 8001F500 3C0541A0 */  lui   $a1, 0x41a0
/* 020104 8001F504 0C008973 */  jal   func_800225CC
/* 020108 8001F508 AFA7001C */   sw    $a3, 0x1c($sp)
/* 02010C 8001F50C 44806000 */  mtc1  $zero, $f12
/* 020110 8001F510 10000092 */  b     .L8001F75C
/* 020114 8001F514 8FA7001C */   lw    $a3, 0x1c($sp)
.L8001F518:
/* 020118 8001F518 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02011C 8001F51C 44811000 */  mtc1  $at, $f2
/* 020120 8001F520 C4800000 */  lwc1  $f0, ($a0)
/* 020124 8001F524 4600103C */  c.lt.s $f2, $f0
/* 020128 8001F528 00000000 */  nop
/* 02012C 8001F52C 45020005 */  bc1fl .L8001F544
/* 020130 8001F530 AC600000 */   sw    $zero, ($v1)
/* 020134 8001F534 46020101 */  sub.s $f4, $f0, $f2
/* 020138 8001F538 10000088 */  b     .L8001F75C
/* 02013C 8001F53C E4840000 */   swc1  $f4, ($a0)
/* 020140 8001F540 AC600000 */  sw    $zero, ($v1)
.L8001F544:
/* 020144 8001F544 10000085 */  b     .L8001F75C
/* 020148 8001F548 E48C0000 */   swc1  $f12, ($a0)
glabel L8001F54C
/* 02014C 8001F54C 8CCA00BC */  lw    $t2, 0xbc($a2)
/* 020150 8001F550 24012000 */  li    $at, 8192
/* 020154 8001F554 3C0E8016 */  lui   $t6, %hi(D_80164498) # $t6, 0x8016
/* 020158 8001F558 314B2000 */  andi  $t3, $t2, 0x2000
/* 02015C 8001F55C 1561000E */  bne   $t3, $at, .L8001F598
/* 020160 8001F560 25CE4498 */   addiu $t6, %lo(D_80164498) # addiu $t6, $t6, 0x4498
/* 020164 8001F564 84CC00DC */  lh    $t4, 0xdc($a2)
/* 020168 8001F568 3C0D8016 */  lui   $t5, %hi(D_80164498) # $t5, 0x8016
/* 02016C 8001F56C 25AD4498 */  addiu $t5, %lo(D_80164498) # addiu $t5, $t5, 0x4498
/* 020170 8001F570 1180007A */  beqz  $t4, .L8001F75C
/* 020174 8001F574 00ED2021 */   addu  $a0, $a3, $t5
/* 020178 8001F578 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # $a2, 0x3e4c
/* 02017C 8001F57C 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 020180 8001F580 3C054100 */  lui   $a1, 0x4100
/* 020184 8001F584 0C008973 */  jal   func_800225CC
/* 020188 8001F588 AFA7001C */   sw    $a3, 0x1c($sp)
/* 02018C 8001F58C 44806000 */  mtc1  $zero, $f12
/* 020190 8001F590 10000072 */  b     .L8001F75C
/* 020194 8001F594 8FA7001C */   lw    $a3, 0x1c($sp)
.L8001F598:
/* 020198 8001F598 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02019C 8001F59C 00EE2021 */  addu  $a0, $a3, $t6
/* 0201A0 8001F5A0 44811000 */  mtc1  $at, $f2
/* 0201A4 8001F5A4 C4800000 */  lwc1  $f0, ($a0)
/* 0201A8 8001F5A8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0201AC 8001F5AC 4600103C */  c.lt.s $f2, $f0
/* 0201B0 8001F5B0 00000000 */  nop
/* 0201B4 8001F5B4 45020007 */  bc1fl .L8001F5D4
/* 0201B8 8001F5B8 AC600000 */   sw    $zero, ($v1)
/* 0201BC 8001F5BC 44813000 */  mtc1  $at, $f6
/* 0201C0 8001F5C0 00000000 */  nop
/* 0201C4 8001F5C4 46060201 */  sub.s $f8, $f0, $f6
/* 0201C8 8001F5C8 10000064 */  b     .L8001F75C
/* 0201CC 8001F5CC E4880000 */   swc1  $f8, ($a0)
/* 0201D0 8001F5D0 AC600000 */  sw    $zero, ($v1)
.L8001F5D4:
/* 0201D4 8001F5D4 10000061 */  b     .L8001F75C
/* 0201D8 8001F5D8 E48C0000 */   swc1  $f12, ($a0)
glabel L8001F5DC
/* 0201DC 8001F5DC 8CC200BC */  lw    $v0, 0xbc($a2)
/* 0201E0 8001F5E0 3C0F8016 */  lui   $t7, %hi(D_80164498) # $t7, 0x8016
/* 0201E4 8001F5E4 25EF4498 */  addiu $t7, %lo(D_80164498) # addiu $t7, $t7, 0x4498
/* 0201E8 8001F5E8 0045C024 */  and   $t8, $v0, $a1
/* 0201EC 8001F5EC 14B8000C */  bne   $a1, $t8, .L8001F620
/* 0201F0 8001F5F0 00EF2021 */   addu  $a0, $a3, $t7
/* 0201F4 8001F5F4 30590008 */  andi  $t9, $v0, 8
/* 0201F8 8001F5F8 24010008 */  li    $at, 8
/* 0201FC 8001F5FC 17210008 */  bne   $t9, $at, .L8001F620
/* 020200 8001F600 3C0541A0 */   lui   $a1, 0x41a0
/* 020204 8001F604 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # $a2, 0x3dcc
/* 020208 8001F608 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 02020C 8001F60C 0C008973 */  jal   func_800225CC
/* 020210 8001F610 AFA7001C */   sw    $a3, 0x1c($sp)
/* 020214 8001F614 44806000 */  mtc1  $zero, $f12
/* 020218 8001F618 10000050 */  b     .L8001F75C
/* 02021C 8001F61C 8FA7001C */   lw    $a3, 0x1c($sp)
.L8001F620:
/* 020220 8001F620 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 020224 8001F624 44811000 */  mtc1  $at, $f2
/* 020228 8001F628 C4800000 */  lwc1  $f0, ($a0)
/* 02022C 8001F62C 4600103C */  c.lt.s $f2, $f0
/* 020230 8001F630 00000000 */  nop
/* 020234 8001F634 45020005 */  bc1fl .L8001F64C
/* 020238 8001F638 AC600000 */   sw    $zero, ($v1)
/* 02023C 8001F63C 46020281 */  sub.s $f10, $f0, $f2
/* 020240 8001F640 10000046 */  b     .L8001F75C
/* 020244 8001F644 E48A0000 */   swc1  $f10, ($a0)
/* 020248 8001F648 AC600000 */  sw    $zero, ($v1)
.L8001F64C:
/* 02024C 8001F64C 10000043 */  b     .L8001F75C
/* 020250 8001F650 E48C0000 */   swc1  $f12, ($a0)
glabel L8001F654
/* 020254 8001F654 8CC9000C */  lw    $t1, 0xc($a2)
/* 020258 8001F658 3C088016 */  lui   $t0, %hi(D_80164498) # $t0, 0x8016
/* 02025C 8001F65C 25084498 */  addiu $t0, %lo(D_80164498) # addiu $t0, $t0, 0x4498
/* 020260 8001F660 24010100 */  li    $at, 256
/* 020264 8001F664 312A0100 */  andi  $t2, $t1, 0x100
/* 020268 8001F668 1541000B */  bne   $t2, $at, .L8001F698
/* 02026C 8001F66C 00E82021 */   addu  $a0, $a3, $t0
/* 020270 8001F670 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 020274 8001F674 44811000 */  mtc1  $at, $f2
/* 020278 8001F678 3C0541C8 */  lui   $a1, 0x41c8
/* 02027C 8001F67C AFA7001C */  sw    $a3, 0x1c($sp)
/* 020280 8001F680 44061000 */  mfc1  $a2, $f2
/* 020284 8001F684 0C008973 */  jal   func_800225CC
/* 020288 8001F688 00000000 */   nop
/* 02028C 8001F68C 44806000 */  mtc1  $zero, $f12
/* 020290 8001F690 10000032 */  b     .L8001F75C
/* 020294 8001F694 8FA7001C */   lw    $a3, 0x1c($sp)
.L8001F698:
/* 020298 8001F698 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 02029C 8001F69C 44811000 */  mtc1  $at, $f2
/* 0202A0 8001F6A0 C4800000 */  lwc1  $f0, ($a0)
/* 0202A4 8001F6A4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0202A8 8001F6A8 4600103C */  c.lt.s $f2, $f0
/* 0202AC 8001F6AC 00000000 */  nop
/* 0202B0 8001F6B0 45020007 */  bc1fl .L8001F6D0
/* 0202B4 8001F6B4 AC600000 */   sw    $zero, ($v1)
/* 0202B8 8001F6B8 44818000 */  mtc1  $at, $f16
/* 0202BC 8001F6BC 00000000 */  nop
/* 0202C0 8001F6C0 46100481 */  sub.s $f18, $f0, $f16
/* 0202C4 8001F6C4 10000025 */  b     .L8001F75C
/* 0202C8 8001F6C8 E4920000 */   swc1  $f18, ($a0)
/* 0202CC 8001F6CC AC600000 */  sw    $zero, ($v1)
.L8001F6D0:
/* 0202D0 8001F6D0 10000022 */  b     .L8001F75C
/* 0202D4 8001F6D4 E48C0000 */   swc1  $f12, ($a0)
glabel L8001F6D8
/* 0202D8 8001F6D8 8CC200BC */  lw    $v0, 0xbc($a2)
/* 0202DC 8001F6DC 3C0B8016 */  lui   $t3, %hi(D_80164498) # $t3, 0x8016
/* 0202E0 8001F6E0 256B4498 */  addiu $t3, %lo(D_80164498) # addiu $t3, $t3, 0x4498
/* 0202E4 8001F6E4 24010080 */  li    $at, 128
/* 0202E8 8001F6E8 304C0080 */  andi  $t4, $v0, 0x80
/* 0202EC 8001F6EC 11810004 */  beq   $t4, $at, .L8001F700
/* 0202F0 8001F6F0 00EB2021 */   addu  $a0, $a3, $t3
/* 0202F4 8001F6F4 304D0040 */  andi  $t5, $v0, 0x40
/* 0202F8 8001F6F8 24010040 */  li    $at, 64
/* 0202FC 8001F6FC 15A10008 */  bne   $t5, $at, .L8001F720
.L8001F700:
/* 020300 8001F700 3C063E4C */   lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* 020304 8001F704 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 020308 8001F708 3C054190 */  lui   $a1, 0x4190
/* 02030C 8001F70C 0C008973 */  jal   func_800225CC
/* 020310 8001F710 AFA7001C */   sw    $a3, 0x1c($sp)
/* 020314 8001F714 44806000 */  mtc1  $zero, $f12
/* 020318 8001F718 10000010 */  b     .L8001F75C
/* 02031C 8001F71C 8FA7001C */   lw    $a3, 0x1c($sp)
.L8001F720:
/* 020320 8001F720 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 020324 8001F724 44811000 */  mtc1  $at, $f2
/* 020328 8001F728 C4800000 */  lwc1  $f0, ($a0)
/* 02032C 8001F72C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 020330 8001F730 4600103C */  c.lt.s $f2, $f0
/* 020334 8001F734 00000000 */  nop
/* 020338 8001F738 45020007 */  bc1fl .L8001F758
/* 02033C 8001F73C AC600000 */   sw    $zero, ($v1)
/* 020340 8001F740 44812000 */  mtc1  $at, $f4
/* 020344 8001F744 00000000 */  nop
/* 020348 8001F748 46040181 */  sub.s $f6, $f0, $f4
/* 02034C 8001F74C 10000003 */  b     .L8001F75C
/* 020350 8001F750 E4860000 */   swc1  $f6, ($a0)
/* 020354 8001F754 AC600000 */  sw    $zero, ($v1)
.L8001F758:
/* 020358 8001F758 E48C0000 */  swc1  $f12, ($a0)
.L8001F75C:
/* 02035C 8001F75C 3C02800E */  lui   $v0, %hi(D_800DC52C) # $v0, 0x800e
/* 020360 8001F760 8C42C52C */  lw    $v0, %lo(D_800DC52C)($v0)
/* 020364 8001F764 3C038016 */  lui   $v1, %hi(D_80164A28) # $v1, 0x8016
/* 020368 8001F768 24634A28 */  addiu $v1, %lo(D_80164A28) # addiu $v1, $v1, 0x4a28
/* 02036C 8001F76C 1040000A */  beqz  $v0, .L8001F798
/* 020370 8001F770 24010001 */   li    $at, 1
/* 020374 8001F774 1041002D */  beq   $v0, $at, .L8001F82C
/* 020378 8001F778 8FB8003C */   lw    $t8, 0x3c($sp)
/* 02037C 8001F77C 24010002 */  li    $at, 2
/* 020380 8001F780 1041002A */  beq   $v0, $at, .L8001F82C
/* 020384 8001F784 24010003 */   li    $at, 3
/* 020388 8001F788 50410029 */  beql  $v0, $at, .L8001F830
/* 02038C 8001F78C C70C0000 */   lwc1  $f12, ($t8)
/* 020390 8001F790 1000002A */  b     .L8001F83C
/* 020394 8001F794 C7A20034 */   lwc1  $f2, 0x34($sp)
.L8001F798:
/* 020398 8001F798 8C620000 */  lw    $v0, ($v1)
/* 02039C 8001F79C 24010001 */  li    $at, 1
/* 0203A0 8001F7A0 3C0E8016 */  lui   $t6, %hi(D_80164498) # $t6, 0x8016
/* 0203A4 8001F7A4 14410006 */  bne   $v0, $at, .L8001F7C0
/* 0203A8 8001F7A8 25CE4498 */   addiu $t6, %lo(D_80164498) # addiu $t6, $t6, 0x4498
/* 0203AC 8001F7AC 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 0203B0 8001F7B0 44814000 */  mtc1  $at, $f8
/* 0203B4 8001F7B4 3C018016 */  lui   $at, %hi(D_80164498)
/* 0203B8 8001F7B8 00270821 */  addu  $at, $at, $a3
/* 0203BC 8001F7BC E4284498 */  swc1  $f8, %lo(D_80164498)($at)
.L8001F7C0:
/* 0203C0 8001F7C0 24010002 */  li    $at, 2
/* 0203C4 8001F7C4 14410013 */  bne   $v0, $at, .L8001F814
/* 0203C8 8001F7C8 00EE2021 */   addu  $a0, $a3, $t6
/* 0203CC 8001F7CC C4800000 */  lwc1  $f0, ($a0)
/* 0203D0 8001F7D0 3C01800F */  lui   $at, %hi(D_800ED5F0)
/* 0203D4 8001F7D4 4600603E */  c.le.s $f12, $f0
/* 0203D8 8001F7D8 00000000 */  nop
/* 0203DC 8001F7DC 45020008 */  bc1fl .L8001F800
/* 0203E0 8001F7E0 460C003E */   c.le.s $f0, $f12
/* 0203E4 8001F7E4 D430D5F0 */  ldc1  $f16, %lo(D_800ED5F0)($at)
/* 0203E8 8001F7E8 460002A1 */  cvt.d.s $f10, $f0
/* 0203EC 8001F7EC 46305481 */  sub.d $f18, $f10, $f16
/* 0203F0 8001F7F0 46209120 */  cvt.s.d $f4, $f18
/* 0203F4 8001F7F4 E4840000 */  swc1  $f4, ($a0)
/* 0203F8 8001F7F8 C4800000 */  lwc1  $f0, ($a0)
/* 0203FC 8001F7FC 460C003E */  c.le.s $f0, $f12
.L8001F800:
/* 020400 8001F800 00000000 */  nop
/* 020404 8001F804 45020004 */  bc1fl .L8001F818
/* 020408 8001F808 8FAF003C */   lw    $t7, 0x3c($sp)
/* 02040C 8001F80C AC600000 */  sw    $zero, ($v1)
/* 020410 8001F810 E48C0000 */  swc1  $f12, ($a0)
.L8001F814:
/* 020414 8001F814 8FAF003C */  lw    $t7, 0x3c($sp)
.L8001F818:
/* 020418 8001F818 8FA5002C */  lw    $a1, 0x2c($sp)
/* 02041C 8001F81C 0C0053B9 */  jal   func_80014EE4
/* 020420 8001F820 C5EC0000 */   lwc1  $f12, ($t7)
/* 020424 8001F824 10000005 */  b     .L8001F83C
/* 020428 8001F828 46000086 */   mov.s $f2, $f0
.L8001F82C:
/* 02042C 8001F82C C70C0000 */  lwc1  $f12, ($t8)
.L8001F830:
/* 020430 8001F830 0C0053B9 */  jal   func_80014EE4
/* 020434 8001F834 8FA5002C */   lw    $a1, 0x2c($sp)
/* 020438 8001F838 46000086 */  mov.s $f2, $f0
.L8001F83C:
/* 02043C 8001F83C 8FB9003C */  lw    $t9, 0x3c($sp)
/* 020440 8001F840 3C0A8016 */  lui   $t2, %hi(cameras) # $t2, 0x8016
/* 020444 8001F844 254A46F0 */  addiu $t2, %lo(cameras) # addiu $t2, $t2, 0x46f0
/* 020448 8001F848 E7220000 */  swc1  $f2, ($t9)
/* 02044C 8001F84C 8FA8002C */  lw    $t0, 0x2c($sp)
/* 020450 8001F850 00084880 */  sll   $t1, $t0, 2
/* 020454 8001F854 01284823 */  subu  $t1, $t1, $t0
/* 020458 8001F858 000948C0 */  sll   $t1, $t1, 3
/* 02045C 8001F85C 01284823 */  subu  $t1, $t1, $t0
/* 020460 8001F860 000948C0 */  sll   $t1, $t1, 3
/* 020464 8001F864 012A1021 */  addu  $v0, $t1, $t2
/* 020468 8001F868 E44200B4 */  swc1  $f2, 0xb4($v0)
/* 02046C 8001F86C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 020470 8001F870 27BD0038 */  addiu $sp, $sp, 0x38
/* 020474 8001F874 03E00008 */  jr    $ra
/* 020478 8001F878 00000000 */   nop
