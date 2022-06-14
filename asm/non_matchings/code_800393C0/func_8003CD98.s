glabel func_8003CD98
/* 3D998 8003CD98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3D99C 8003CD9C AFBF002C */  sw         $ra, 0x2c($sp)
/* 3D9A0 8003CDA0 AFB20028 */  sw         $s2, 0x28($sp)
/* 3D9A4 8003CDA4 AFB10024 */  sw         $s1, 0x24($sp)
/* 3D9A8 8003CDA8 AFB00020 */  sw         $s0, 0x20($sp)
/* 3D9AC 8003CDAC AFA50034 */  sw         $a1, 0x34($sp)
/* 3D9B0 8003CDB0 AFA60038 */  sw         $a2, 0x38($sp)
/* 3D9B4 8003CDB4 AFA7003C */  sw         $a3, 0x3c($sp)
/* 3D9B8 8003CDB8 94980000 */  lhu        $t8, ($a0)
/* 3D9BC 8003CDBC 00078600 */  sll        $s0, $a3, 0x18
/* 3D9C0 8003CDC0 00068E00 */  sll        $s1, $a2, 0x18
/* 3D9C4 8003CDC4 00117603 */  sra        $t6, $s1, 0x18
/* 3D9C8 8003CDC8 00107E03 */  sra        $t7, $s0, 0x18
/* 3D9CC 8003CDCC 33198000 */  andi       $t9, $t8, 0x8000
/* 3D9D0 8003CDD0 01E08025 */  or         $s0, $t7, $zero
/* 3D9D4 8003CDD4 01C08825 */  or         $s1, $t6, $zero
/* 3D9D8 8003CDD8 132000A3 */  beqz       $t9, .L8003D068
/* 3D9DC 8003CDDC 00809025 */   or        $s2, $a0, $zero
/* 3D9E0 8003CDE0 15E00007 */  bnez       $t7, .L8003CE00
/* 3D9E4 8003CDE4 000F3600 */   sll       $a2, $t7, 0x18
/* 3D9E8 8003CDE8 000E3E00 */  sll        $a3, $t6, 0x18
/* 3D9EC 8003CDEC 00074E03 */  sra        $t1, $a3, 0x18
/* 3D9F0 8003CDF0 00064603 */  sra        $t0, $a2, 0x18
/* 3D9F4 8003CDF4 01003025 */  or         $a2, $t0, $zero
/* 3D9F8 8003CDF8 0C00B49A */  jal        func_8002D268
/* 3D9FC 8003CDFC 01203825 */   or        $a3, $t1, $zero
.L8003CE00:
/* 3DA00 8003CE00 00103600 */  sll        $a2, $s0, 0x18
/* 3DA04 8003CE04 00113E00 */  sll        $a3, $s1, 0x18
/* 3DA08 8003CE08 00075E03 */  sra        $t3, $a3, 0x18
/* 3DA0C 8003CE0C 00065603 */  sra        $t2, $a2, 0x18
/* 3DA10 8003CE10 01403025 */  or         $a2, $t2, $zero
/* 3DA14 8003CE14 01603825 */  or         $a3, $t3, $zero
/* 3DA18 8003CE18 02402025 */  or         $a0, $s2, $zero
/* 3DA1C 8003CE1C 0C00A4D3 */  jal        func_8002934C
/* 3DA20 8003CE20 8FA50034 */   lw        $a1, 0x34($sp)
/* 3DA24 8003CE24 12000003 */  beqz       $s0, .L8003CE34
/* 3DA28 8003CE28 24010001 */   addiu     $at, $zero, 1
/* 3DA2C 8003CE2C 16010036 */  bne        $s0, $at, .L8003CF08
/* 3DA30 8003CE30 02402025 */   or        $a0, $s2, $zero
.L8003CE34:
/* 3DA34 8003CE34 00112E00 */  sll        $a1, $s1, 0x18
/* 3DA38 8003CE38 00103600 */  sll        $a2, $s0, 0x18
/* 3DA3C 8003CE3C 00066E03 */  sra        $t5, $a2, 0x18
/* 3DA40 8003CE40 00056603 */  sra        $t4, $a1, 0x18
/* 3DA44 8003CE44 01802825 */  or         $a1, $t4, $zero
/* 3DA48 8003CE48 01A03025 */  or         $a2, $t5, $zero
/* 3DA4C 8003CE4C 02402025 */  or         $a0, $s2, $zero
/* 3DA50 8003CE50 0C009E88 */  jal        func_80027A20
/* 3DA54 8003CE54 00003825 */   or        $a3, $zero, $zero
/* 3DA58 8003CE58 00112E00 */  sll        $a1, $s1, 0x18
/* 3DA5C 8003CE5C 00103600 */  sll        $a2, $s0, 0x18
/* 3DA60 8003CE60 00067E03 */  sra        $t7, $a2, 0x18
/* 3DA64 8003CE64 00057603 */  sra        $t6, $a1, 0x18
/* 3DA68 8003CE68 01C02825 */  or         $a1, $t6, $zero
/* 3DA6C 8003CE6C 01E03025 */  or         $a2, $t7, $zero
/* 3DA70 8003CE70 02402025 */  or         $a0, $s2, $zero
/* 3DA74 8003CE74 0C009E88 */  jal        func_80027A20
/* 3DA78 8003CE78 24070001 */   addiu     $a3, $zero, 1
/* 3DA7C 8003CE7C 00112E00 */  sll        $a1, $s1, 0x18
/* 3DA80 8003CE80 00103600 */  sll        $a2, $s0, 0x18
/* 3DA84 8003CE84 00103E00 */  sll        $a3, $s0, 0x18
/* 3DA88 8003CE88 00074603 */  sra        $t0, $a3, 0x18
/* 3DA8C 8003CE8C 0006CE03 */  sra        $t9, $a2, 0x18
/* 3DA90 8003CE90 0005C603 */  sra        $t8, $a1, 0x18
/* 3DA94 8003CE94 03002825 */  or         $a1, $t8, $zero
/* 3DA98 8003CE98 03203025 */  or         $a2, $t9, $zero
/* 3DA9C 8003CE9C 01003825 */  or         $a3, $t0, $zero
/* 3DAA0 8003CEA0 02402025 */  or         $a0, $s2, $zero
/* 3DAA4 8003CEA4 0C009C10 */  jal        func_80027040
/* 3DAA8 8003CEA8 AFA00010 */   sw        $zero, 0x10($sp)
/* 3DAAC 8003CEAC 001048C0 */  sll        $t1, $s0, 3
/* 3DAB0 8003CEB0 001150C0 */  sll        $t2, $s1, 3
/* 3DAB4 8003CEB4 01515021 */  addu       $t2, $t2, $s1
/* 3DAB8 8003CEB8 01304821 */  addu       $t1, $t1, $s0
/* 3DABC 8003CEBC 000948C0 */  sll        $t1, $t1, 3
/* 3DAC0 8003CEC0 000A50C0 */  sll        $t2, $t2, 3
/* 3DAC4 8003CEC4 01515021 */  addu       $t2, $t2, $s1
/* 3DAC8 8003CEC8 01304821 */  addu       $t1, $t1, $s0
/* 3DACC 8003CECC 00094A00 */  sll        $t1, $t1, 8
/* 3DAD0 8003CED0 000A5140 */  sll        $t2, $t2, 5
/* 3DAD4 8003CED4 3C0C802E */  lui        $t4, 0x802e
/* 3DAD8 8003CED8 00106BC0 */  sll        $t5, $s0, 0xf
/* 3DADC 8003CEDC 00117300 */  sll        $t6, $s1, 0xc
/* 3DAE0 8003CEE0 3C18802C */  lui        $t8, %hi(D_802BFB80)
/* 3DAE4 8003CEE4 2718FB80 */  addiu      $t8, $t8, %lo(D_802BFB80)
/* 3DAE8 8003CEE8 01AE7821 */  addu       $t7, $t5, $t6
/* 3DAEC 8003CEEC 258CFB80 */  addiu      $t4, $t4, -0x480
/* 3DAF0 8003CEF0 012A5821 */  addu       $t3, $t1, $t2
/* 3DAF4 8003CEF4 016C2021 */  addu       $a0, $t3, $t4
/* 3DAF8 8003CEF8 0C010034 */  jal        func_800400D0
/* 3DAFC 8003CEFC 01F82821 */   addu      $a1, $t7, $t8
/* 3DB00 8003CF00 10000038 */  b          .L8003CFE4
/* 3DB04 8003CF04 0010C040 */   sll       $t8, $s0, 1
.L8003CF08:
/* 3DB08 8003CF08 00112E00 */  sll        $a1, $s1, 0x18
/* 3DB0C 8003CF0C 00103600 */  sll        $a2, $s0, 0x18
/* 3DB10 8003CF10 00064603 */  sra        $t0, $a2, 0x18
/* 3DB14 8003CF14 0005CE03 */  sra        $t9, $a1, 0x18
/* 3DB18 8003CF18 03202825 */  or         $a1, $t9, $zero
/* 3DB1C 8003CF1C 01003025 */  or         $a2, $t0, $zero
/* 3DB20 8003CF20 0C009E88 */  jal        func_80027A20
/* 3DB24 8003CF24 00003825 */   or        $a3, $zero, $zero
/* 3DB28 8003CF28 00112E00 */  sll        $a1, $s1, 0x18
/* 3DB2C 8003CF2C 00103600 */  sll        $a2, $s0, 0x18
/* 3DB30 8003CF30 00065603 */  sra        $t2, $a2, 0x18
/* 3DB34 8003CF34 00054E03 */  sra        $t1, $a1, 0x18
/* 3DB38 8003CF38 01202825 */  or         $a1, $t1, $zero
/* 3DB3C 8003CF3C 01403025 */  or         $a2, $t2, $zero
/* 3DB40 8003CF40 02402025 */  or         $a0, $s2, $zero
/* 3DB44 8003CF44 0C009E88 */  jal        func_80027A20
/* 3DB48 8003CF48 24070001 */   addiu     $a3, $zero, 1
/* 3DB4C 8003CF4C 26250004 */  addiu      $a1, $s1, 4
/* 3DB50 8003CF50 00103600 */  sll        $a2, $s0, 0x18
/* 3DB54 8003CF54 2607FFFE */  addiu      $a3, $s0, -2
/* 3DB58 8003CF58 00077600 */  sll        $t6, $a3, 0x18
/* 3DB5C 8003CF5C 00066E03 */  sra        $t5, $a2, 0x18
/* 3DB60 8003CF60 00055E00 */  sll        $t3, $a1, 0x18
/* 3DB64 8003CF64 000B2E03 */  sra        $a1, $t3, 0x18
/* 3DB68 8003CF68 01A03025 */  or         $a2, $t5, $zero
/* 3DB6C 8003CF6C 000E3E03 */  sra        $a3, $t6, 0x18
/* 3DB70 8003CF70 02402025 */  or         $a0, $s2, $zero
/* 3DB74 8003CF74 0C009C10 */  jal        func_80027040
/* 3DB78 8003CF78 AFA00010 */   sw        $zero, 0x10($sp)
/* 3DB7C 8003CF7C 0010C0C0 */  sll        $t8, $s0, 3
/* 3DB80 8003CF80 0011C8C0 */  sll        $t9, $s1, 3
/* 3DB84 8003CF84 0331C821 */  addu       $t9, $t9, $s1
/* 3DB88 8003CF88 0310C021 */  addu       $t8, $t8, $s0
/* 3DB8C 8003CF8C 0018C0C0 */  sll        $t8, $t8, 3
/* 3DB90 8003CF90 0019C8C0 */  sll        $t9, $t9, 3
/* 3DB94 8003CF94 0331C821 */  addu       $t9, $t9, $s1
/* 3DB98 8003CF98 0310C021 */  addu       $t8, $t8, $s0
/* 3DB9C 8003CF9C 0018C200 */  sll        $t8, $t8, 8
/* 3DBA0 8003CFA0 0019C940 */  sll        $t9, $t9, 5
/* 3DBA4 8003CFA4 00105BC0 */  sll        $t3, $s0, 0xf
/* 3DBA8 8003CFA8 00116300 */  sll        $t4, $s1, 0xc
/* 3DBAC 8003CFAC 3C01FFFF */  lui        $at, 0xffff
/* 3DBB0 8003CFB0 34214000 */  ori        $at, $at, 0x4000
/* 3DBB4 8003CFB4 016C6821 */  addu       $t5, $t3, $t4
/* 3DBB8 8003CFB8 03194021 */  addu       $t0, $t8, $t9
/* 3DBBC 8003CFBC 3C0A802E */  lui        $t2, %hi(D_802DFB80)
/* 3DBC0 8003CFC0 3C0F802C */  lui        $t7, %hi(D_802BFB80)
/* 3DBC4 8003CFC4 25EFFB80 */  addiu      $t7, $t7, %lo(D_802BFB80)
/* 3DBC8 8003CFC8 254AFB80 */  addiu      $t2, $t2, %lo(D_802DFB80)
/* 3DBCC 8003CFCC 25099280 */  addiu      $t1, $t0, -0x6d80
/* 3DBD0 8003CFD0 01A17021 */  addu       $t6, $t5, $at
/* 3DBD4 8003CFD4 01CF2821 */  addu       $a1, $t6, $t7
/* 3DBD8 8003CFD8 0C010034 */  jal        func_800400D0
/* 3DBDC 8003CFDC 012A2021 */   addu      $a0, $t1, $t2
/* 3DBE0 8003CFE0 0010C040 */  sll        $t8, $s0, 1
.L8003CFE4:
/* 3DBE4 8003CFE4 02581821 */  addu       $v1, $s2, $t8
/* 3DBE8 8003CFE8 94790244 */  lhu        $t9, 0x244($v1)
/* 3DBEC 8003CFEC 00111040 */  sll        $v0, $s1, 1
/* 3DBF0 8003CFF0 00104100 */  sll        $t0, $s0, 4
/* 3DBF4 8003CFF4 01024821 */  addu       $t1, $t0, $v0
/* 3DBF8 8003CFF8 3C018016 */  lui        $at, %hi(D_801650D0)
/* 3DBFC 8003CFFC 00290821 */  addu       $at, $at, $t1
/* 3DC00 8003D000 A43950D0 */  sh         $t9, %lo(D_801650D0)($at)
/* 3DC04 8003D004 946A024C */  lhu        $t2, 0x24c($v1)
/* 3DC08 8003D008 00105900 */  sll        $t3, $s0, 4
/* 3DC0C 8003D00C 01626021 */  addu       $t4, $t3, $v0
/* 3DC10 8003D010 3C018016 */  lui        $at, %hi(D_80165110)
/* 3DC14 8003D014 002C0821 */  addu       $at, $at, $t4
/* 3DC18 8003D018 A42A5110 */  sh         $t2, %lo(D_80165110)($at)
/* 3DC1C 8003D01C 864D00A8 */  lh         $t5, 0xa8($s2)
/* 3DC20 8003D020 00107100 */  sll        $t6, $s0, 4
/* 3DC24 8003D024 01C27821 */  addu       $t7, $t6, $v0
/* 3DC28 8003D028 3C018016 */  lui        $at, %hi(D_80165150)
/* 3DC2C 8003D02C 002F0821 */  addu       $at, $at, $t7
/* 3DC30 8003D030 0010C100 */  sll        $t8, $s0, 4
/* 3DC34 8003D034 A42D5150 */  sh         $t5, %lo(D_80165150)($at)
/* 3DC38 8003D038 3C018016 */  lui        $at, 0x8016
/* 3DC3C 8003D03C 03024021 */  addu       $t0, $t8, $v0
/* 3DC40 8003D040 00112E00 */  sll        $a1, $s1, 0x18
/* 3DC44 8003D044 00103600 */  sll        $a2, $s0, 0x18
/* 3DC48 8003D048 00280821 */  addu       $at, $at, $t0
/* 3DC4C 8003D04C 00064E03 */  sra        $t1, $a2, 0x18
/* 3DC50 8003D050 0005CE03 */  sra        $t9, $a1, 0x18
/* 3DC54 8003D054 A42051D0 */  sh         $zero, 0x51d0($at)
/* 3DC58 8003D058 03202825 */  or         $a1, $t9, $zero
/* 3DC5C 8003D05C 01203025 */  or         $a2, $t1, $zero
/* 3DC60 8003D060 0C0099EB */  jal        func_800267AC
/* 3DC64 8003D064 02402025 */   or        $a0, $s2, $zero
.L8003D068:
/* 3DC68 8003D068 8FBF002C */  lw         $ra, 0x2c($sp)
/* 3DC6C 8003D06C 8FB00020 */  lw         $s0, 0x20($sp)
/* 3DC70 8003D070 8FB10024 */  lw         $s1, 0x24($sp)
/* 3DC74 8003D074 8FB20028 */  lw         $s2, 0x28($sp)
/* 3DC78 8003D078 03E00008 */  jr         $ra
/* 3DC7C 8003D07C 27BD0030 */   addiu     $sp, $sp, 0x30
