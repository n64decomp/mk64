glabel func_800BCB64
/* BD764 800BCB64 27BDFF90 */  addiu      $sp, $sp, -0x70
/* BD768 800BCB68 3C03803B */  lui        $v1, %hi(D_803B70B0)
/* BD76C 800BCB6C 8C6370B0 */  lw         $v1, %lo(D_803B70B0)($v1)
/* BD770 800BCB70 AFBF0044 */  sw         $ra, 0x44($sp)
/* BD774 800BCB74 AFB70040 */  sw         $s7, 0x40($sp)
/* BD778 800BCB78 AFB6003C */  sw         $s6, 0x3C($sp)
/* BD77C 800BCB7C AFB50038 */  sw         $s5, 0x38($sp)
/* BD780 800BCB80 AFB40034 */  sw         $s4, 0x34($sp)
/* BD784 800BCB84 AFB30030 */  sw         $s3, 0x30($sp)
/* BD788 800BCB88 AFB2002C */  sw         $s2, 0x2C($sp)
/* BD78C 800BCB8C AFB10028 */  sw         $s1, 0x28($sp)
/* BD790 800BCB90 AFB00024 */  sw         $s0, 0x24($sp)
/* BD794 800BCB94 F7B60018 */  sdc1       $fs1, 0x18($sp)
/* BD798 800BCB98 186000D4 */  blez       $v1, .L800BCEEC
/* BD79C 800BCB9C F7B40010 */   sdc1      $fs0, 0x10($sp)
/* BD7A0 800BCBA0 0000A025 */  or         $s4, $zero, $zero
/* BD7A4 800BCBA4 24170001 */  addiu      $s7, $zero, 0x1
/* BD7A8 800BCBA8 24160001 */  addiu      $s6, $zero, 0x1
/* BD7AC 800BCBAC 2415FFFF */  addiu      $s5, $zero, -0x1
.L800BCBB0:
/* BD7B0 800BCBB0 3C0E803B */  lui        $t6, %hi(D_803B1508)
/* BD7B4 800BCBB4 8DCE1508 */  lw         $t6, %lo(D_803B1508)($t6)
/* BD7B8 800BCBB8 028E8021 */  addu       $s0, $s4, $t6
/* BD7BC 800BCBBC 8E0F0044 */  lw         $t7, 0x44($s0)
/* BD7C0 800BCBC0 26110030 */  addiu      $s1, $s0, 0x30
/* BD7C4 800BCBC4 52AF0045 */  beql       $s5, $t7, .L800BCCDC
/* BD7C8 800BCBC8 92220000 */   lbu       $v0, 0x0($s1)
/* BD7CC 800BCBCC 26110030 */  addiu      $s1, $s0, 0x30
/* BD7D0 800BCBD0 8E250014 */  lw         $a1, 0x14($s1)
/* BD7D4 800BCBD4 3C017FFF */  lui        $at, (0x7FFFFFFF >> 16)
/* BD7D8 800BCBD8 3421FFFF */  ori        $at, $at, (0x7FFFFFFF & 0xFFFF)
/* BD7DC 800BCBDC 00A1082B */  sltu       $at, $a1, $at
/* BD7E0 800BCBE0 10200004 */  beqz       $at, .L800BCBF4
/* BD7E4 800BCBE4 00031080 */   sll       $v0, $v1, 2
/* BD7E8 800BCBE8 00431023 */  subu       $v0, $v0, $v1
/* BD7EC 800BCBEC 100000BB */  b          .L800BCEDC
/* BD7F0 800BCBF0 00021180 */   sll       $v0, $v0, 6
.L800BCBF4:
/* BD7F4 800BCBF4 8CB80040 */  lw         $t8, 0x40($a1)
/* BD7F8 800BCBF8 5218000E */  beql       $s0, $t8, .L800BCC34
/* BD7FC 800BCBFC 8CAA0000 */   lw        $t2, 0x0($a1)
/* BD800 800BCC00 92390000 */  lbu        $t9, 0x0($s1)
/* BD804 800BCC04 52D9000B */  beql       $s6, $t9, .L800BCC34
/* BD808 800BCC08 8CAA0000 */   lw        $t2, 0x0($a1)
/* BD80C 800BCC0C 92280028 */  lbu        $t0, 0x28($s1)
/* BD810 800BCC10 3C01803B */  lui        $at, %hi(D_803B70A0)
/* BD814 800BCC14 32E200FF */  andi       $v0, $s7, 0xFF
/* BD818 800BCC18 35090010 */  ori        $t1, $t0, 0x10
/* BD81C 800BCC1C A2290028 */  sb         $t1, 0x28($s1)
/* BD820 800BCC20 C42470A0 */  lwc1       $ft0, %lo(D_803B70A0)($at)
/* BD824 800BCC24 A2370000 */  sb         $s7, 0x0($s1)
/* BD828 800BCC28 10000033 */  b          .L800BCCF8
/* BD82C 800BCC2C E6240038 */   swc1      $ft0, 0x38($s1)
/* BD830 800BCC30 8CAA0000 */  lw         $t2, 0x0($a1)
.L800BCC34:
/* BD834 800BCC34 000A5FC2 */  srl        $t3, $t2, 31
/* BD838 800BCC38 55600006 */  bnel       $t3, $zero, .L800BCC54
/* BD83C 800BCC3C 8CA4004C */   lw        $a0, 0x4C($a1)
/* BD840 800BCC40 922C0000 */  lbu        $t4, 0x0($s1)
/* BD844 800BCC44 29810002 */  slti       $at, $t4, 0x2
/* BD848 800BCC48 10200018 */  beqz       $at, .L800BCCAC
/* BD84C 800BCC4C 00000000 */   nop
/* BD850 800BCC50 8CA4004C */  lw         $a0, 0x4C($a1)
.L800BCC54:
/* BD854 800BCC54 8C820044 */  lw         $v0, 0x44($a0)
/* BD858 800BCC58 5440000B */  bnel       $v0, $zero, .L800BCC88
/* BD85C 800BCC5C 8C4D0000 */   lw        $t5, 0x0($v0)
/* BD860 800BCC60 0C02FAE1 */  jal        func_800BEB84
/* BD864 800BCC64 00000000 */   nop
/* BD868 800BCC68 A2370000 */  sb         $s7, 0x0($s1)
/* BD86C 800BCC6C 3C03803B */  lui        $v1, %hi(D_803B70B0)
/* BD870 800BCC70 8C6370B0 */  lw         $v1, %lo(D_803B70B0)($v1)
/* BD874 800BCC74 00031080 */  sll        $v0, $v1, 2
/* BD878 800BCC78 00431023 */  subu       $v0, $v0, $v1
/* BD87C 800BCC7C 10000097 */  b          .L800BCEDC
/* BD880 800BCC80 00021180 */   sll       $v0, $v0, 6
/* BD884 800BCC84 8C4D0000 */  lw         $t5, 0x0($v0)
.L800BCC88:
/* BD888 800BCC88 000D7880 */  sll        $t7, $t5, 2
/* BD88C 800BCC8C 05E10005 */  bgez       $t7, .L800BCCA4
/* BD890 800BCC90 00000000 */   nop
/* BD894 800BCC94 90980003 */  lbu        $t8, 0x3($a0)
/* BD898 800BCC98 331900C0 */  andi       $t9, $t8, 0xC0
/* BD89C 800BCC9C 17200003 */  bnez       $t9, .L800BCCAC
/* BD8A0 800BCCA0 00000000 */   nop
.L800BCCA4:
/* BD8A4 800BCCA4 10000014 */  b          .L800BCCF8
/* BD8A8 800BCCA8 92220000 */   lbu       $v0, 0x0($s1)
.L800BCCAC:
/* BD8AC 800BCCAC 0C02F447 */  jal        func_800BD11C
/* BD8B0 800BCCB0 00A02025 */   or        $a0, $a1, $zero
/* BD8B4 800BCCB4 0C02F5B4 */  jal        func_800BD6D0
/* BD8B8 800BCCB8 02002025 */   or        $a0, $s0, $zero
/* BD8BC 800BCCBC 8E04000C */  lw         $a0, 0xC($s0)
/* BD8C0 800BCCC0 02002825 */  or         $a1, $s0, $zero
/* BD8C4 800BCCC4 0C02F5A4 */  jal        func_800BD690
/* BD8C8 800BCCC8 24840010 */   addiu     $a0, $a0, 0x10
/* BD8CC 800BCCCC A2370000 */  sb         $s7, 0x0($s1)
/* BD8D0 800BCCD0 10000009 */  b          .L800BCCF8
/* BD8D4 800BCCD4 32E200FF */   andi      $v0, $s7, 0xFF
/* BD8D8 800BCCD8 92220000 */  lbu        $v0, 0x0($s1)
.L800BCCDC:
/* BD8DC 800BCCDC 28410002 */  slti       $at, $v0, 0x2
/* BD8E0 800BCCE0 14200005 */  bnez       $at, .L800BCCF8
/* BD8E4 800BCCE4 00000000 */   nop
/* BD8E8 800BCCE8 00031080 */  sll        $v0, $v1, 2
/* BD8EC 800BCCEC 00431023 */  subu       $v0, $v0, $v1
/* BD8F0 800BCCF0 1000007A */  b          .L800BCEDC
/* BD8F4 800BCCF4 00021180 */   sll       $v0, $v0, 6
.L800BCCF8:
/* BD8F8 800BCCF8 10400073 */  beqz       $v0, .L800BCEC8
/* BD8FC 800BCCFC 00000000 */   nop
/* BD900 800BCD00 12C20005 */  beq        $s6, $v0, .L800BCD18
/* BD904 800BCD04 261300B0 */   addiu     $s3, $s0, 0xB0
/* BD908 800BCD08 8E680000 */  lw         $t0, 0x0($s3)
/* BD90C 800BCD0C 00085080 */  sll        $t2, $t0, 2
/* BD910 800BCD10 05430032 */  bgezl      $t2, .L800BCDDC
/* BD914 800BCD14 92390029 */   lbu       $t9, 0x29($s1)
.L800BCD18:
/* BD918 800BCD18 922B0029 */  lbu        $t3, 0x29($s1)
/* BD91C 800BCD1C 261300B0 */  addiu      $s3, $s0, 0xB0
/* BD920 800BCD20 51600006 */  beql       $t3, $zero, .L800BCD3C
/* BD924 800BCD24 8E2F0018 */   lw        $t7, 0x18($s1)
/* BD928 800BCD28 8E6C0000 */  lw         $t4, 0x0($s3)
/* BD92C 800BCD2C 000C7080 */  sll        $t6, $t4, 2
/* BD930 800BCD30 05C10035 */  bgez       $t6, .L800BCE08
/* BD934 800BCD34 00000000 */   nop
/* BD938 800BCD38 8E2F0018 */  lw         $t7, 0x18($s1)
.L800BCD3C:
/* BD93C 800BCD3C 12AF001D */  beq        $s5, $t7, .L800BCDB4
/* BD940 800BCD40 00000000 */   nop
/* BD944 800BCD44 0C02F2BA */  jal        func_800BCAE8
/* BD948 800BCD48 02002025 */   or        $a0, $s0, $zero
/* BD94C 800BCD4C 8E250018 */  lw         $a1, 0x18($s1)
/* BD950 800BCD50 02002025 */  or         $a0, $s0, $zero
/* BD954 800BCD54 8CB8004C */  lw         $t8, 0x4C($a1)
/* BD958 800BCD58 1300000D */  beqz       $t8, .L800BCD90
/* BD95C 800BCD5C 00000000 */   nop
/* BD960 800BCD60 0C02F5E7 */  jal        func_800BD79C
/* BD964 800BCD64 261300B0 */   addiu     $s3, $s0, 0xB0
/* BD968 800BCD68 0C02F92D */  jal        func_800BE4B4
/* BD96C 800BCD6C 02002025 */   or        $a0, $s0, $zero
/* BD970 800BCD70 0C02F5B4 */  jal        func_800BD6D0
/* BD974 800BCD74 02002025 */   or        $a0, $s0, $zero
/* BD978 800BCD78 8E04000C */  lw         $a0, 0xC($s0)
/* BD97C 800BCD7C 02002825 */  or         $a1, $s0, $zero
/* BD980 800BCD80 0C02FBF9 */  jal        func_800BEFE4
/* BD984 800BCD84 24840030 */   addiu     $a0, $a0, 0x30
/* BD988 800BCD88 1000001F */  b          .L800BCE08
/* BD98C 800BCD8C AE350018 */   sw        $s5, 0x18($s1)
.L800BCD90:
/* BD990 800BCD90 0C02F2BA */  jal        func_800BCAE8
/* BD994 800BCD94 02002025 */   or        $a0, $s0, $zero
/* BD998 800BCD98 0C02F5B4 */  jal        func_800BD6D0
/* BD99C 800BCD9C 02002025 */   or        $a0, $s0, $zero
/* BD9A0 800BCDA0 8E04000C */  lw         $a0, 0xC($s0)
/* BD9A4 800BCDA4 0C02FBF9 */  jal        func_800BEFE4
/* BD9A8 800BCDA8 02002825 */   or        $a1, $s0, $zero
/* BD9AC 800BCDAC 10000046 */  b          .L800BCEC8
/* BD9B0 800BCDB0 AE350018 */   sw        $s5, 0x18($s1)
.L800BCDB4:
/* BD9B4 800BCDB4 0C02F2BA */  jal        func_800BCAE8
/* BD9B8 800BCDB8 02002025 */   or        $a0, $s0, $zero
/* BD9BC 800BCDBC 0C02F5B4 */  jal        func_800BD6D0
/* BD9C0 800BCDC0 02002025 */   or        $a0, $s0, $zero
/* BD9C4 800BCDC4 8E04000C */  lw         $a0, 0xC($s0)
/* BD9C8 800BCDC8 0C02FBF9 */  jal        func_800BEFE4
/* BD9CC 800BCDCC 02002825 */   or        $a1, $s0, $zero
/* BD9D0 800BCDD0 1000003D */  b          .L800BCEC8
/* BD9D4 800BCDD4 00000000 */   nop
/* BD9D8 800BCDD8 92390029 */  lbu        $t9, 0x29($s1)
.L800BCDDC:
/* BD9DC 800BCDDC 1720000A */  bnez       $t9, .L800BCE08
/* BD9E0 800BCDE0 00000000 */   nop
/* BD9E4 800BCDE4 0C02F2BA */  jal        func_800BCAE8
/* BD9E8 800BCDE8 02002025 */   or        $a0, $s0, $zero
/* BD9EC 800BCDEC 0C02F5B4 */  jal        func_800BD6D0
/* BD9F0 800BCDF0 02002025 */   or        $a0, $s0, $zero
/* BD9F4 800BCDF4 8E04000C */  lw         $a0, 0xC($s0)
/* BD9F8 800BCDF8 0C02FBF9 */  jal        func_800BEFE4
/* BD9FC 800BCDFC 02002825 */   or        $a1, $s0, $zero
/* BDA00 800BCE00 10000031 */  b          .L800BCEC8
/* BDA04 800BCE04 00000000 */   nop
.L800BCE08:
/* BDA08 800BCE08 0C02F970 */  jal        func_800BE5C0
/* BDA0C 800BCE0C 26240028 */   addiu     $a0, $s1, 0x28
/* BDA10 800BCE10 46000586 */  mov.s      $fs1, $fv0
/* BDA14 800BCE14 0C02F912 */  jal        func_800BE448
/* BDA18 800BCE18 02002025 */   or        $a0, $s0, $zero
/* BDA1C 800BCE1C 92280000 */  lbu        $t0, 0x0($s1)
/* BDA20 800BCE20 2622001C */  addiu      $v0, $s1, 0x1C
/* BDA24 800BCE24 56C8000B */  bnel       $s6, $t0, .L800BCE54
/* BDA28 800BCE28 8E250014 */   lw        $a1, 0x14($s1)
/* BDA2C 800BCE2C 8E720000 */  lw         $s2, 0x0($s3)
/* BDA30 800BCE30 C4400004 */  lwc1       $fv0, 0x4($v0)
/* BDA34 800BCE34 C4540008 */  lwc1       $fs0, 0x8($v0)
/* BDA38 800BCE38 00124AC0 */  sll        $t1, $s2, 11
/* BDA3C 800BCE3C 00095742 */  srl        $t2, $t1, 29
/* BDA40 800BCE40 90460001 */  lbu        $a2, 0x1($v0)
/* BDA44 800BCE44 90470000 */  lbu        $a3, 0x0($v0)
/* BDA48 800BCE48 10000009 */  b          .L800BCE70
/* BDA4C 800BCE4C 315200FF */   andi      $s2, $t2, 0xFF
/* BDA50 800BCE50 8E250014 */  lw         $a1, 0x14($s1)
.L800BCE54:
/* BDA54 800BCE54 8CA4004C */  lw         $a0, 0x4C($a1)
/* BDA58 800BCE58 C4A00030 */  lwc1       $fv0, 0x30($a1)
/* BDA5C 800BCE5C C4B4002C */  lwc1       $fs0, 0x2C($a1)
/* BDA60 800BCE60 908C0008 */  lbu        $t4, 0x8($a0)
/* BDA64 800BCE64 90A60006 */  lbu        $a2, 0x6($a1)
/* BDA68 800BCE68 90870004 */  lbu        $a3, 0x4($a0)
/* BDA6C 800BCE6C 31920007 */  andi       $s2, $t4, 0x7
.L800BCE70:
/* BDA70 800BCE70 C626000C */  lwc1       $ft1, 0xC($s1)
/* BDA74 800BCE74 C6280008 */  lwc1       $ft2, 0x8($s1)
/* BDA78 800BCE78 A3A7004B */  sb         $a3, 0x4B($sp)
/* BDA7C 800BCE7C A3A60049 */  sb         $a2, 0x49($sp)
/* BDA80 800BCE80 46083282 */  mul.s      $ft3, $ft1, $ft2
/* BDA84 800BCE84 02002025 */  or         $a0, $s0, $zero
/* BDA88 800BCE88 460A0002 */  mul.s      $fv0, $fv0, $ft3
/* BDA8C 800BCE8C 44050000 */  mfc1       $a1, $fv0
/* BDA90 800BCE90 4616A502 */  mul.s      $fs0, $fs0, $fs1
/* BDA94 800BCE94 0C02F1F8 */  jal        func_800BC7E0
/* BDA98 800BCE98 00000000 */   nop
/* BDA9C 800BCE9C 4405A000 */  mfc1       $a1, $fs0
/* BDAA0 800BCEA0 93A60049 */  lbu        $a2, 0x49($sp)
/* BDAA4 800BCEA4 93A7004B */  lbu        $a3, 0x4B($sp)
/* BDAA8 800BCEA8 0C02F15C */  jal        func_800BC570
/* BDAAC 800BCEAC 02002025 */   or        $a0, $s0, $zero
/* BDAB0 800BCEB0 92790001 */  lbu        $t9, 0x1($s3)
/* BDAB4 800BCEB4 00127880 */  sll        $t7, $s2, 2
/* BDAB8 800BCEB8 31F8001C */  andi       $t8, $t7, 0x1C
/* BDABC 800BCEBC 3328FFE3 */  andi       $t0, $t9, 0xFFE3
/* BDAC0 800BCEC0 03084825 */  or         $t1, $t8, $t0
/* BDAC4 800BCEC4 A2690001 */  sb         $t1, 0x1($s3)
.L800BCEC8:
/* BDAC8 800BCEC8 3C03803B */  lui        $v1, %hi(D_803B70B0)
/* BDACC 800BCECC 8C6370B0 */  lw         $v1, %lo(D_803B70B0)($v1)
/* BDAD0 800BCED0 00031080 */  sll        $v0, $v1, 2
/* BDAD4 800BCED4 00431023 */  subu       $v0, $v0, $v1
/* BDAD8 800BCED8 00021180 */  sll        $v0, $v0, 6
.L800BCEDC:
/* BDADC 800BCEDC 269400C0 */  addiu      $s4, $s4, 0xC0
/* BDAE0 800BCEE0 0282082A */  slt        $at, $s4, $v0
/* BDAE4 800BCEE4 1420FF32 */  bnez       $at, .L800BCBB0
/* BDAE8 800BCEE8 00000000 */   nop
.L800BCEEC:
/* BDAEC 800BCEEC 8FBF0044 */  lw         $ra, 0x44($sp)
/* BDAF0 800BCEF0 D7B40010 */  ldc1       $fs0, 0x10($sp)
/* BDAF4 800BCEF4 D7B60018 */  ldc1       $fs1, 0x18($sp)
/* BDAF8 800BCEF8 8FB00024 */  lw         $s0, 0x24($sp)
/* BDAFC 800BCEFC 8FB10028 */  lw         $s1, 0x28($sp)
/* BDB00 800BCF00 8FB2002C */  lw         $s2, 0x2C($sp)
/* BDB04 800BCF04 8FB30030 */  lw         $s3, 0x30($sp)
/* BDB08 800BCF08 8FB40034 */  lw         $s4, 0x34($sp)
/* BDB0C 800BCF0C 8FB50038 */  lw         $s5, 0x38($sp)
/* BDB10 800BCF10 8FB6003C */  lw         $s6, 0x3C($sp)
/* BDB14 800BCF14 8FB70040 */  lw         $s7, 0x40($sp)
/* BDB18 800BCF18 03E00008 */  jr         $ra
/* BDB1C 800BCF1C 27BD0070 */   addiu     $sp, $sp, 0x70
