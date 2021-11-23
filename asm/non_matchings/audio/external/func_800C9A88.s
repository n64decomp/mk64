glabel func_800C9A88
/* 0CA688 800C9A88 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0CA68C 800C9A8C 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CA690 800C9A90 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CA694 800C9A94 AFBE0058 */  sw    $fp, 0x58($sp)
/* 0CA698 800C9A98 AFB30044 */  sw    $s3, 0x44($sp)
/* 0CA69C 800C9A9C 309300FF */  andi  $s3, $a0, 0xff
/* 0CA6A0 800C9AA0 03A0F025 */  move  $fp, $sp
/* 0CA6A4 800C9AA4 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0CA6A8 800C9AA8 AFB70054 */  sw    $s7, 0x54($sp)
/* 0CA6AC 800C9AAC AFB60050 */  sw    $s6, 0x50($sp)
/* 0CA6B0 800C9AB0 AFB5004C */  sw    $s5, 0x4c($sp)
/* 0CA6B4 800C9AB4 AFB40048 */  sw    $s4, 0x48($sp)
/* 0CA6B8 800C9AB8 AFB20040 */  sw    $s2, 0x40($sp)
/* 0CA6BC 800C9ABC AFB1003C */  sw    $s1, 0x3c($sp)
/* 0CA6C0 800C9AC0 AFB00038 */  sw    $s0, 0x38($sp)
/* 0CA6C4 800C9AC4 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0CA6C8 800C9AC8 15C00082 */  bnez  $t6, .L800C9CD4
/* 0CA6CC 800C9ACC AFA40078 */   sw    $a0, 0x78($sp)
/* 0CA6D0 800C9AD0 3C03800F */  lui   $v1, %hi(D_800EA0F0) # $v1, 0x800f
/* 0CA6D4 800C9AD4 2463A0F0 */  addiu $v1, %lo(D_800EA0F0) # addiu $v1, $v1, -0x5f10
/* 0CA6D8 800C9AD8 90620000 */  lbu   $v0, ($v1)
/* 0CA6DC 800C9ADC 0013C0C0 */  sll   $t8, $s3, 3
/* 0CA6E0 800C9AE0 24010002 */  li    $at, 2
/* 0CA6E4 800C9AE4 10400004 */  beqz  $v0, .L800C9AF8
/* 0CA6E8 800C9AE8 0313C023 */   subu  $t8, $t8, $s3
/* 0CA6EC 800C9AEC 14410079 */  bne   $v0, $at, .L800C9CD4
/* 0CA6F0 800C9AF0 240F0001 */   li    $t7, 1
/* 0CA6F4 800C9AF4 A06F0000 */  sb    $t7, ($v1)
.L800C9AF8:
/* 0CA6F8 800C9AF8 0018C100 */  sll   $t8, $t8, 4
/* 0CA6FC 800C9AFC 0313C023 */  subu  $t8, $t8, $s3
/* 0CA700 800C9B00 0018C080 */  sll   $t8, $t8, 2
/* 0CA704 800C9B04 0313C023 */  subu  $t8, $t8, $s3
/* 0CA708 800C9B08 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 0CA70C 800C9B0C 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 0CA710 800C9B10 0018C0C0 */  sll   $t8, $t8, 3
/* 0CA714 800C9B14 03191821 */  addu  $v1, $t8, $t9
/* 0CA718 800C9B18 94680254 */  lhu   $t0, 0x254($v1)
/* 0CA71C 800C9B1C 2D010008 */  sltiu $at, $t0, 8
/* 0CA720 800C9B20 1020003C */  beqz  $at, .L800C9C14
/* 0CA724 800C9B24 00084080 */   sll   $t0, $t0, 2
/* 0CA728 800C9B28 3C01800F */  lui   $at, %hi(jpt_800F3960)
/* 0CA72C 800C9B2C 00280821 */  addu  $at, $at, $t0
/* 0CA730 800C9B30 8C283960 */  lw    $t0, %lo(jpt_800F3960)($at)
/* 0CA734 800C9B34 01000008 */  jr    $t0
/* 0CA738 800C9B38 00000000 */   nop   
glabel L800C9B3C
/* 0CA73C 800C9B3C 3C01800F */  lui   $at, %hi(D_800F3980) # $at, 0x800f
/* 0CA740 800C9B40 C4243980 */  lwc1  $f4, %lo(D_800F3980)($at)
/* 0CA744 800C9B44 3C0A800F */  lui   $t2, %hi(D_800EA06C) # $t2, 0x800f
/* 0CA748 800C9B48 254AA06C */  addiu $t2, %lo(D_800EA06C) # addiu $t2, $t2, -0x5f94
/* 0CA74C 800C9B4C 00134900 */  sll   $t1, $s3, 4
/* 0CA750 800C9B50 012A1021 */  addu  $v0, $t1, $t2
/* 0CA754 800C9B54 3C01800F */  lui   $at, %hi(D_800F3984) # $at, 0x800f
/* 0CA758 800C9B58 E4440000 */  swc1  $f4, ($v0)
/* 0CA75C 800C9B5C C4263984 */  lwc1  $f6, %lo(D_800F3984)($at)
/* 0CA760 800C9B60 1000002C */  b     .L800C9C14
/* 0CA764 800C9B64 E4460004 */   swc1  $f6, 4($v0)
glabel L800C9B68
/* 0CA768 800C9B68 3C01800F */  lui   $at, %hi(D_800F3988) # $at, 0x800f
/* 0CA76C 800C9B6C C4283988 */  lwc1  $f8, %lo(D_800F3988)($at)
/* 0CA770 800C9B70 3C0C800F */  lui   $t4, %hi(D_800EA06C) # $t4, 0x800f
/* 0CA774 800C9B74 258CA06C */  addiu $t4, %lo(D_800EA06C) # addiu $t4, $t4, -0x5f94
/* 0CA778 800C9B78 00135900 */  sll   $t3, $s3, 4
/* 0CA77C 800C9B7C 016C1021 */  addu  $v0, $t3, $t4
/* 0CA780 800C9B80 3C01800F */  lui   $at, %hi(D_800F398C) # $at, 0x800f
/* 0CA784 800C9B84 E4480000 */  swc1  $f8, ($v0)
/* 0CA788 800C9B88 C42A398C */  lwc1  $f10, %lo(D_800F398C)($at)
/* 0CA78C 800C9B8C 10000021 */  b     .L800C9C14
/* 0CA790 800C9B90 E44A0004 */   swc1  $f10, 4($v0)
glabel L800C9B94
/* 0CA794 800C9B94 3C01800F */  lui   $at, %hi(D_800F3990) # $at, 0x800f
/* 0CA798 800C9B98 C4303990 */  lwc1  $f16, %lo(D_800F3990)($at)
/* 0CA79C 800C9B9C 3C0E800F */  lui   $t6, %hi(D_800EA06C) # $t6, 0x800f
/* 0CA7A0 800C9BA0 25CEA06C */  addiu $t6, %lo(D_800EA06C) # addiu $t6, $t6, -0x5f94
/* 0CA7A4 800C9BA4 00136900 */  sll   $t5, $s3, 4
/* 0CA7A8 800C9BA8 01AE1021 */  addu  $v0, $t5, $t6
/* 0CA7AC 800C9BAC 3C01800F */  lui   $at, %hi(D_800F3994) # $at, 0x800f
/* 0CA7B0 800C9BB0 E4500000 */  swc1  $f16, ($v0)
/* 0CA7B4 800C9BB4 C4323994 */  lwc1  $f18, %lo(D_800F3994)($at)
/* 0CA7B8 800C9BB8 10000016 */  b     .L800C9C14
/* 0CA7BC 800C9BBC E4520004 */   swc1  $f18, 4($v0)
glabel L800C9BC0
/* 0CA7C0 800C9BC0 3C01800F */  lui   $at, %hi(D_800F3998) # $at, 0x800f
/* 0CA7C4 800C9BC4 C4243998 */  lwc1  $f4, %lo(D_800F3998)($at)
/* 0CA7C8 800C9BC8 3C18800F */  lui   $t8, %hi(D_800EA06C) # $t8, 0x800f
/* 0CA7CC 800C9BCC 2718A06C */  addiu $t8, %lo(D_800EA06C) # addiu $t8, $t8, -0x5f94
/* 0CA7D0 800C9BD0 00137900 */  sll   $t7, $s3, 4
/* 0CA7D4 800C9BD4 01F81021 */  addu  $v0, $t7, $t8
/* 0CA7D8 800C9BD8 3C01800F */  lui   $at, %hi(D_800F399C) # $at, 0x800f
/* 0CA7DC 800C9BDC E4440000 */  swc1  $f4, ($v0)
/* 0CA7E0 800C9BE0 C426399C */  lwc1  $f6, %lo(D_800F399C)($at)
/* 0CA7E4 800C9BE4 1000000B */  b     .L800C9C14
/* 0CA7E8 800C9BE8 E4460004 */   swc1  $f6, 4($v0)
glabel L800C9BEC
/* 0CA7EC 800C9BEC 3C01800F */  lui   $at, %hi(D_800F39A0) # $at, 0x800f
/* 0CA7F0 800C9BF0 C42839A0 */  lwc1  $f8, %lo(D_800F39A0)($at)
/* 0CA7F4 800C9BF4 3C08800F */  lui   $t0, %hi(D_800EA06C) # $t0, 0x800f
/* 0CA7F8 800C9BF8 2508A06C */  addiu $t0, %lo(D_800EA06C) # addiu $t0, $t0, -0x5f94
/* 0CA7FC 800C9BFC 0013C900 */  sll   $t9, $s3, 4
/* 0CA800 800C9C00 03281021 */  addu  $v0, $t9, $t0
/* 0CA804 800C9C04 3C01800F */  lui   $at, %hi(D_800F39A4) # $at, 0x800f
/* 0CA808 800C9C08 E4480000 */  swc1  $f8, ($v0)
/* 0CA80C 800C9C0C C42A39A4 */  lwc1  $f10, %lo(D_800F39A4)($at)
/* 0CA810 800C9C10 E44A0004 */  swc1  $f10, 4($v0)
.L800C9C14:
/* 0CA814 800C9C14 3C17800F */  lui   $s7, %hi(D_800EA1C0) # $s7, 0x800f
/* 0CA818 800C9C18 26F7A1C0 */  addiu $s7, %lo(D_800EA1C0) # addiu $s7, $s7, -0x5e40
/* 0CA81C 800C9C1C 92E20000 */  lbu   $v0, ($s7)
/* 0CA820 800C9C20 28410002 */  slti  $at, $v0, 2
/* 0CA824 800C9C24 5020002C */  beql  $at, $zero, .L800C9CD8
/* 0CA828 800C9C28 8FDF005C */   lw    $ra, 0x5c($fp)
/* 0CA82C 800C9C2C 04400029 */  bltz  $v0, .L800C9CD4
/* 0CA830 800C9C30 00008025 */   move  $s0, $zero
/* 0CA834 800C9C34 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 0CA838 800C9C38 3C123102 */  lui   $s2, (0x31028000 >> 16) # lui $s2, 0x3102
/* 0CA83C 800C9C3C 4481A000 */  mtc1  $at, $f20
/* 0CA840 800C9C40 36528000 */  ori   $s2, (0x31028000 & 0xFFFF) # ori $s2, $s2, 0x8000
/* 0CA844 800C9C44 24740014 */  addiu $s4, $v1, 0x14
/* 0CA848 800C9C48 24750034 */  addiu $s5, $v1, 0x34
/* 0CA84C 800C9C4C 24760098 */  addiu $s6, $v1, 0x98
/* 0CA850 800C9C50 AFC30064 */  sw    $v1, 0x64($fp)
.L800C9C54:
/* 0CA854 800C9C54 8FC30064 */  lw    $v1, 0x64($fp)
/* 0CA858 800C9C58 AFB00010 */  sw    $s0, 0x10($sp)
/* 0CA85C 800C9C5C 326400FF */  andi  $a0, $s3, 0xff
/* 0CA860 800C9C60 94690254 */  lhu   $t1, 0x254($v1)
/* 0CA864 800C9C64 02802825 */  move  $a1, $s4
/* 0CA868 800C9C68 02A03025 */  move  $a2, $s5
/* 0CA86C 800C9C6C 01328821 */  addu  $s1, $t1, $s2
/* 0CA870 800C9C70 AFB10014 */  sw    $s1, 0x14($sp)
/* 0CA874 800C9C74 0C030722 */  jal   func_800C1C88
/* 0CA878 800C9C78 02C03825 */   move  $a3, $s6
/* 0CA87C 800C9C7C 1040000E */  beqz  $v0, .L800C9CB8
/* 0CA880 800C9C80 02202025 */   move  $a0, $s1
/* 0CA884 800C9C84 3C0B800F */  lui   $t3, %hi(D_800EA06C) # $t3, 0x800f
/* 0CA888 800C9C88 E4540034 */  swc1  $f20, 0x34($v0)
/* 0CA88C 800C9C8C 256BA06C */  addiu $t3, %lo(D_800EA06C) # addiu $t3, $t3, -0x5f94
/* 0CA890 800C9C90 24450018 */  addiu $a1, $v0, 0x18
/* 0CA894 800C9C94 2447002C */  addiu $a3, $v0, 0x2c
/* 0CA898 800C9C98 00135100 */  sll   $t2, $s3, 4
/* 0CA89C 800C9C9C 014B1021 */  addu  $v0, $t2, $t3
/* 0CA8A0 800C9CA0 244C0008 */  addiu $t4, $v0, 8
/* 0CA8A4 800C9CA4 244D000C */  addiu $t5, $v0, 0xc
/* 0CA8A8 800C9CA8 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0CA8AC 800C9CAC AFAC0010 */  sw    $t4, 0x10($sp)
/* 0CA8B0 800C9CB0 0C031052 */  jal   play_sound
/* 0CA8B4 800C9CB4 320600FF */   andi  $a2, $s0, 0xff
.L800C9CB8:
/* 0CA8B8 800C9CB8 92EF0000 */  lbu   $t7, ($s7)
/* 0CA8BC 800C9CBC 26100001 */  addiu $s0, $s0, 1
/* 0CA8C0 800C9CC0 320E00FF */  andi  $t6, $s0, 0xff
/* 0CA8C4 800C9CC4 25F80001 */  addiu $t8, $t7, 1
/* 0CA8C8 800C9CC8 01D8082A */  slt   $at, $t6, $t8
/* 0CA8CC 800C9CCC 1420FFE1 */  bnez  $at, .L800C9C54
/* 0CA8D0 800C9CD0 01C08025 */   move  $s0, $t6
.L800C9CD4:
/* 0CA8D4 800C9CD4 8FDF005C */  lw    $ra, 0x5c($fp)
.L800C9CD8:
/* 0CA8D8 800C9CD8 03C0E825 */  move  $sp, $fp
/* 0CA8DC 800C9CDC D7D40030 */  ldc1  $f20, 0x30($fp)
/* 0CA8E0 800C9CE0 8FD00038 */  lw    $s0, 0x38($fp)
/* 0CA8E4 800C9CE4 8FD1003C */  lw    $s1, 0x3c($fp)
/* 0CA8E8 800C9CE8 8FD20040 */  lw    $s2, 0x40($fp)
/* 0CA8EC 800C9CEC 8FD30044 */  lw    $s3, 0x44($fp)
/* 0CA8F0 800C9CF0 8FD40048 */  lw    $s4, 0x48($fp)
/* 0CA8F4 800C9CF4 8FD5004C */  lw    $s5, 0x4c($fp)
/* 0CA8F8 800C9CF8 8FD60050 */  lw    $s6, 0x50($fp)
/* 0CA8FC 800C9CFC 8FD70054 */  lw    $s7, 0x54($fp)
/* 0CA900 800C9D00 8FDE0058 */  lw    $fp, 0x58($fp)
/* 0CA904 800C9D04 03E00008 */  jr    $ra
/* 0CA908 800C9D08 27BD0078 */   addiu $sp, $sp, 0x78
