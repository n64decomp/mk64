glabel func_80013F7C
/* 014B7C 80013F7C 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 014B80 80013F80 AFB70074 */  sw    $s7, 0x74($sp)
/* 014B84 80013F84 0004B840 */  sll   $s7, $a0, 1
/* 014B88 80013F88 3C0F8016 */  lui   $t7, %hi(D_801631E0) # 0x8016
/* 014B8C 80013F8C 01F77821 */  addu  $t7, $t7, $s7
/* 014B90 80013F90 95EF31E0 */  lhu   $t7, %lo(D_801631E0)($t7) # 0x31e0($t7)
/* 014B94 80013F94 AFB5006C */  sw    $s5, 0x6c($sp)
/* 014B98 80013F98 24150001 */  li    $s5, 1
/* 014B9C 80013F9C AFB40068 */  sw    $s4, 0x68($sp)
/* 014BA0 80013FA0 AFB00058 */  sw    $s0, 0x58($sp)
/* 014BA4 80013FA4 00C08025 */  move  $s0, $a2
/* 014BA8 80013FA8 00A0A025 */  move  $s4, $a1
/* 014BAC 80013FAC AFBF007C */  sw    $ra, 0x7c($sp)
/* 014BB0 80013FB0 AFBE0078 */  sw    $fp, 0x78($sp)
/* 014BB4 80013FB4 AFB60070 */  sw    $s6, 0x70($sp)
/* 014BB8 80013FB8 AFB30064 */  sw    $s3, 0x64($sp)
/* 014BBC 80013FBC AFB20060 */  sw    $s2, 0x60($sp)
/* 014BC0 80013FC0 AFB1005C */  sw    $s1, 0x5c($sp)
/* 014BC4 80013FC4 F7BE0050 */  sdc1  $f30, 0x50($sp)
/* 014BC8 80013FC8 F7BC0048 */  sdc1  $f28, 0x48($sp)
/* 014BCC 80013FCC F7BA0040 */  sdc1  $f26, 0x40($sp)
/* 014BD0 80013FD0 F7B80038 */  sdc1  $f24, 0x38($sp)
/* 014BD4 80013FD4 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 014BD8 80013FD8 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 014BDC 80013FDC AFA400D8 */  sw    $a0, 0xd8($sp)
/* 014BE0 80013FE0 16AF0007 */  bne   $s5, $t7, .L80014000
/* 014BE4 80013FE4 AFA700E4 */   sw    $a3, 0xe4($sp)
/* 014BE8 80013FE8 94A20000 */  lhu   $v0, ($a1)
/* 014BEC 80013FEC 30584000 */  andi  $t8, $v0, 0x4000
/* 014BF0 80013FF0 1300015B */  beqz  $t8, .L80014560
/* 014BF4 80013FF4 30591000 */   andi  $t9, $v0, 0x1000
/* 014BF8 80013FF8 5720015A */  bnel  $t9, $zero, .L80014564
/* 014BFC 80013FFC 8FBF007C */   lw    $ra, 0x7c($sp)
.L80014000:
/* 014C00 80014000 8E8800BC */  lw    $t0, 0xbc($s4)
/* 014C04 80014004 000849C0 */  sll   $t1, $t0, 7
/* 014C08 80014008 05220156 */  bltzl $t1, .L80014564
/* 014C0C 8001400C 8FBF007C */   lw    $ra, 0x7c($sp)
/* 014C10 80014010 C6840014 */  lwc1  $f4, 0x14($s4)
/* 014C14 80014014 8FAA00EC */  lw    $t2, 0xec($sp)
/* 014C18 80014018 3C168016 */  lui   $s6, %hi(D_801631C8) # $s6, 0x8016
/* 014C1C 8001401C E7A400C4 */  swc1  $f4, 0xc4($sp)
/* 014C20 80014020 C6860018 */  lwc1  $f6, 0x18($s4)
/* 014C24 80014024 26D631C8 */  addiu $s6, %lo(D_801631C8) # addiu $s6, $s6, 0x31c8
/* 014C28 80014028 0000F025 */  move  $fp, $zero
/* 014C2C 8001402C E7A600C0 */  swc1  $f6, 0xc0($sp)
/* 014C30 80014030 C688001C */  lwc1  $f8, 0x1c($s4)
/* 014C34 80014034 3C01C059 */  li    $at, 0xC0590000 # -3.390625
/* 014C38 80014038 19400149 */  blez  $t2, .L80014560
/* 014C3C 8001403C E7A800BC */   swc1  $f8, 0xbc($sp)
/* 014C40 80014040 4481F800 */  mtc1  $at, $f31
/* 014C44 80014044 3C014034 */  li    $at, 0x40340000 # 2.812500
/* 014C48 80014048 4481E800 */  mtc1  $at, $f29
/* 014C4C 8001404C 3C01C034 */  li    $at, 0xC0340000 # -2.812500
/* 014C50 80014050 4481D800 */  mtc1  $at, $f27
/* 014C54 80014054 4480F000 */  mtc1  $zero, $f30
/* 014C58 80014058 4480E000 */  mtc1  $zero, $f28
/* 014C5C 8001405C 4480D000 */  mtc1  $zero, $f26
/* 014C60 80014060 8FB300F0 */  lw    $s3, 0xf0($sp)
/* 014C64 80014064 C60C0004 */  lwc1  $f12, 4($s0)
.L80014068:
/* 014C68 80014068 C7AA00C4 */  lwc1  $f10, 0xc4($sp)
/* 014C6C 8001406C C7B000C0 */  lwc1  $f16, 0xc0($sp)
/* 014C70 80014070 C6120008 */  lwc1  $f18, 8($s0)
/* 014C74 80014074 460C5001 */  sub.s $f0, $f10, $f12
/* 014C78 80014078 C60E000C */  lwc1  $f14, 0xc($s0)
/* 014C7C 8001407C C7A400BC */  lwc1  $f4, 0xbc($sp)
/* 014C80 80014080 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 014C84 80014084 46000521 */  cvt.d.s $f20, $f0
/* 014C88 80014088 46128581 */  sub.s $f22, $f16, $f18
/* 014C8C 8001408C 4634F03C */  c.lt.d $f30, $f20
/* 014C90 80014090 460E2601 */  sub.s $f24, $f4, $f14
/* 014C94 80014094 4502002D */  bc1fl .L8001414C
/* 014C98 80014098 96820000 */   lhu   $v0, ($s4)
/* 014C9C 8001409C 44813800 */  mtc1  $at, $f7
/* 014CA0 800140A0 44803000 */  mtc1  $zero, $f6
/* 014CA4 800140A4 00000000 */  nop   
/* 014CA8 800140A8 4626A03C */  c.lt.d $f20, $f6
/* 014CAC 800140AC 00000000 */  nop   
/* 014CB0 800140B0 45020026 */  bc1fl .L8001414C
/* 014CB4 800140B4 96820000 */   lhu   $v0, ($s4)
/* 014CB8 800140B8 4600B021 */  cvt.d.s $f0, $f22
/* 014CBC 800140BC 4620D03C */  c.lt.d $f26, $f0
/* 014CC0 800140C0 00000000 */  nop   
/* 014CC4 800140C4 45020021 */  bc1fl .L8001414C
/* 014CC8 800140C8 96820000 */   lhu   $v0, ($s4)
/* 014CCC 800140CC 463C003C */  c.lt.d $f0, $f28
/* 014CD0 800140D0 00000000 */  nop   
/* 014CD4 800140D4 4502001D */  bc1fl .L8001414C
/* 014CD8 800140D8 96820000 */   lhu   $v0, ($s4)
/* 014CDC 800140DC 4600C021 */  cvt.d.s $f0, $f24
/* 014CE0 800140E0 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 014CE4 800140E4 4620F03C */  c.lt.d $f30, $f0
/* 014CE8 800140E8 00000000 */  nop   
/* 014CEC 800140EC 45020017 */  bc1fl .L8001414C
/* 014CF0 800140F0 96820000 */   lhu   $v0, ($s4)
/* 014CF4 800140F4 44814800 */  mtc1  $at, $f9
/* 014CF8 800140F8 44804000 */  mtc1  $zero, $f8
/* 014CFC 800140FC C7B000E4 */  lwc1  $f16, 0xe4($sp)
/* 014D00 80014100 4628003C */  c.lt.d $f0, $f8
/* 014D04 80014104 00000000 */  nop   
/* 014D08 80014108 45020010 */  bc1fl .L8001414C
/* 014D0C 8001410C 96820000 */   lhu   $v0, ($s4)
/* 014D10 80014110 8E060010 */  lw    $a2, 0x10($s0)
/* 014D14 80014114 8E070018 */  lw    $a3, 0x18($s0)
/* 014D18 80014118 C7B200E8 */  lwc1  $f18, 0xe8($sp)
/* 014D1C 8001411C E7A4001C */  swc1  $f4, 0x1c($sp)
/* 014D20 80014120 E7AA0018 */  swc1  $f10, 0x18($sp)
/* 014D24 80014124 E7B00010 */  swc1  $f16, 0x10($sp)
/* 014D28 80014128 0C001806 */  jal   func_80006018
/* 014D2C 8001412C E7B20014 */   swc1  $f18, 0x14($sp)
/* 014D30 80014130 54550006 */  bnel  $v0, $s5, .L8001414C
/* 014D34 80014134 96820000 */   lhu   $v0, ($s4)
/* 014D38 80014138 8E8B000C */  lw    $t3, 0xc($s4)
/* 014D3C 8001413C 3C010040 */  lui   $at, 0x40
/* 014D40 80014140 01616025 */  or    $t4, $t3, $at
/* 014D44 80014144 AE8C000C */  sw    $t4, 0xc($s4)
/* 014D48 80014148 96820000 */  lhu   $v0, ($s4)
.L8001414C:
/* 014D4C 8001414C 304D4000 */  andi  $t5, $v0, 0x4000
/* 014D50 80014150 11A000FE */  beqz  $t5, .L8001454C
/* 014D54 80014154 304E1000 */   andi  $t6, $v0, 0x1000
/* 014D58 80014158 15C000FC */  bnez  $t6, .L8001454C
/* 014D5C 8001415C 3C01800F */   lui   $at, %hi(D_800ED188)
/* 014D60 80014160 D426D188 */  ldc1  $f6, %lo(D_800ED188)($at)
/* 014D64 80014164 8FAF00D8 */  lw    $t7, 0xd8($sp)
/* 014D68 80014168 24180001 */  li    $t8, 1
/* 014D6C 8001416C 4634303C */  c.lt.d $f6, $f20
/* 014D70 80014170 3C01800F */  lui   $at, %hi(D_800ED190)
/* 014D74 80014174 01F89004 */  sllv  $s2, $t8, $t7
/* 014D78 80014178 4502002D */  bc1fl .L80014230
/* 014D7C 8001417C 82020030 */   lb    $v0, 0x30($s0)
/* 014D80 80014180 D428D190 */  ldc1  $f8, %lo(D_800ED190)($at)
/* 014D84 80014184 4628A03C */  c.lt.d $f20, $f8
/* 014D88 80014188 00000000 */  nop   
/* 014D8C 8001418C 45020028 */  bc1fl .L80014230
/* 014D90 80014190 82020030 */   lb    $v0, 0x30($s0)
/* 014D94 80014194 4600B021 */  cvt.d.s $f0, $f22
/* 014D98 80014198 4620D03C */  c.lt.d $f26, $f0
/* 014D9C 8001419C 00000000 */  nop   
/* 014DA0 800141A0 45020023 */  bc1fl .L80014230
/* 014DA4 800141A4 82020030 */   lb    $v0, 0x30($s0)
/* 014DA8 800141A8 463C003C */  c.lt.d $f0, $f28
/* 014DAC 800141AC 3C01800F */  lui   $at, %hi(D_800ED198)
/* 014DB0 800141B0 4502001F */  bc1fl .L80014230
/* 014DB4 800141B4 82020030 */   lb    $v0, 0x30($s0)
/* 014DB8 800141B8 D430D198 */  ldc1  $f16, %lo(D_800ED198)($at)
/* 014DBC 800141BC 4600C021 */  cvt.d.s $f0, $f24
/* 014DC0 800141C0 3C01800F */  lui   $at, %hi(D_800ED1A0)
/* 014DC4 800141C4 4620803C */  c.lt.d $f16, $f0
/* 014DC8 800141C8 00000000 */  nop   
/* 014DCC 800141CC 45020018 */  bc1fl .L80014230
/* 014DD0 800141D0 82020030 */   lb    $v0, 0x30($s0)
/* 014DD4 800141D4 D432D1A0 */  ldc1  $f18, %lo(D_800ED1A0)($at)
/* 014DD8 800141D8 4632003C */  c.lt.d $f0, $f18
/* 014DDC 800141DC 00000000 */  nop   
/* 014DE0 800141E0 45020013 */  bc1fl .L80014230
/* 014DE4 800141E4 82020030 */   lb    $v0, 0x30($s0)
/* 014DE8 800141E8 86C20000 */  lh    $v0, ($s6)
/* 014DEC 800141EC 5840001E */  blezl $v0, .L80014268
/* 014DF0 800141F0 3C01C069 */   lui   $at, 0xc069
/* 014DF4 800141F4 82190030 */  lb    $t9, 0x30($s0)
/* 014DF8 800141F8 2448FFFF */  addiu $t0, $v0, -1
/* 014DFC 800141FC 26040004 */  addiu $a0, $s0, 4
/* 014E00 80014200 57200019 */  bnel  $t9, $zero, .L80014268
/* 014E04 80014204 3C01C069 */   lui   $at, 0xc069
/* 014E08 80014208 A6C80000 */  sh    $t0, ($s6)
/* 014E0C 8001420C 82090030 */  lb    $t1, 0x30($s0)
/* 014E10 80014210 26050010 */  addiu $a1, $s0, 0x10
/* 014E14 80014214 02603025 */  move  $a2, $s3
/* 014E18 80014218 01325025 */  or    $t2, $t1, $s2
/* 014E1C 8001421C 0C032760 */  jal   func_800C9D80
/* 014E20 80014220 A20A0030 */   sb    $t2, 0x30($s0)
/* 014E24 80014224 10000010 */  b     .L80014268
/* 014E28 80014228 3C01C069 */   lui   $at, 0xc069
/* 014E2C 8001422C 82020030 */  lb    $v0, 0x30($s0)
.L80014230:
/* 014E30 80014230 02405827 */  not   $t3, $s2
/* 014E34 80014234 1040000B */  beqz  $v0, .L80014264
/* 014E38 80014238 004B6024 */   and   $t4, $v0, $t3
/* 014E3C 8001423C A20C0030 */  sb    $t4, 0x30($s0)
/* 014E40 80014240 820D0030 */  lb    $t5, 0x30($s0)
/* 014E44 80014244 55A00008 */  bnel  $t5, $zero, .L80014268
/* 014E48 80014248 3C01C069 */   lui   $at, 0xc069
/* 014E4C 8001424C 86CE0000 */  lh    $t6, ($s6)
/* 014E50 80014250 26040004 */  addiu $a0, $s0, 4
/* 014E54 80014254 02602825 */  move  $a1, $s3
/* 014E58 80014258 25D80001 */  addiu $t8, $t6, 1
/* 014E5C 8001425C 0C0327BD */  jal   func_800C9EF4
/* 014E60 80014260 A6D80000 */   sh    $t8, ($s6)
.L80014264:
/* 014E64 80014264 3C01C069 */  li    $at, 0xC0690000 # -3.640625
.L80014268:
/* 014E68 80014268 44815800 */  mtc1  $at, $f11
/* 014E6C 8001426C 44805000 */  mtc1  $zero, $f10
/* 014E70 80014270 3C014069 */  li    $at, 0x40690000 # 3.640625
/* 014E74 80014274 4634503C */  c.lt.d $f10, $f20
/* 014E78 80014278 00000000 */  nop   
/* 014E7C 8001427C 450200AE */  bc1fl .L80014538
/* 014E80 80014280 82020031 */   lb    $v0, 0x31($s0)
/* 014E84 80014284 44812800 */  mtc1  $at, $f5
/* 014E88 80014288 44802000 */  mtc1  $zero, $f4
/* 014E8C 8001428C 00000000 */  nop   
/* 014E90 80014290 4624A03C */  c.lt.d $f20, $f4
/* 014E94 80014294 00000000 */  nop   
/* 014E98 80014298 450200A7 */  bc1fl .L80014538
/* 014E9C 8001429C 82020031 */   lb    $v0, 0x31($s0)
/* 014EA0 800142A0 4600B021 */  cvt.d.s $f0, $f22
/* 014EA4 800142A4 4620D03C */  c.lt.d $f26, $f0
/* 014EA8 800142A8 00000000 */  nop   
/* 014EAC 800142AC 450200A2 */  bc1fl .L80014538
/* 014EB0 800142B0 82020031 */   lb    $v0, 0x31($s0)
/* 014EB4 800142B4 463C003C */  c.lt.d $f0, $f28
/* 014EB8 800142B8 3C01C069 */  li    $at, 0xC0690000 # -3.640625
/* 014EBC 800142BC 4502009E */  bc1fl .L80014538
/* 014EC0 800142C0 82020031 */   lb    $v0, 0x31($s0)
/* 014EC4 800142C4 44813800 */  mtc1  $at, $f7
/* 014EC8 800142C8 44803000 */  mtc1  $zero, $f6
/* 014ECC 800142CC 4600C021 */  cvt.d.s $f0, $f24
/* 014ED0 800142D0 3C014069 */  li    $at, 0x40690000 # 3.640625
/* 014ED4 800142D4 4620303C */  c.lt.d $f6, $f0
/* 014ED8 800142D8 00000000 */  nop   
/* 014EDC 800142DC 45020096 */  bc1fl .L80014538
/* 014EE0 800142E0 82020031 */   lb    $v0, 0x31($s0)
/* 014EE4 800142E4 44814800 */  mtc1  $at, $f9
/* 014EE8 800142E8 44804000 */  mtc1  $zero, $f8
/* 014EEC 800142EC 00000000 */  nop   
/* 014EF0 800142F0 4628003C */  c.lt.d $f0, $f8
/* 014EF4 800142F4 00000000 */  nop   
/* 014EF8 800142F8 4502008F */  bc1fl .L80014538
/* 014EFC 800142FC 82020031 */   lb    $v0, 0x31($s0)
/* 014F00 80014300 820F0031 */  lb    $t7, 0x31($s0)
/* 014F04 80014304 3C038016 */  lui   $v1, %hi(D_8016347A) # $v1, 0x8016
/* 014F08 80014308 01F2C824 */  and   $t9, $t7, $s2
/* 014F0C 8001430C 57200090 */  bnel  $t9, $zero, .L80014550
/* 014F10 80014310 8FA800EC */   lw    $t0, 0xec($sp)
/* 014F14 80014314 8463347A */  lh    $v1, %lo(D_8016347A)($v1)
/* 014F18 80014318 3C028016 */  lui   $v0, %hi(gWaypointCountByPathIndex) # $v0, 0x8016
/* 014F1C 8001431C 00008825 */  move  $s1, $zero
/* 014F20 80014320 10600005 */  beqz  $v1, .L80014338
/* 014F24 80014324 944245C8 */   lhu   $v0, %lo(gWaypointCountByPathIndex)($v0)
/* 014F28 80014328 10750022 */  beq   $v1, $s5, .L800143B4
/* 014F2C 8001432C 3C058016 */   lui   $a1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 014F30 80014330 1000003F */  b     .L80014430
/* 014F34 80014334 00000000 */   nop   
.L80014338:
/* 014F38 80014338 3C088016 */  lui   $t0, %hi(D_80163270) # $t0, 0x8016
/* 014F3C 8001433C 25083270 */  addiu $t0, %lo(D_80163270) # addiu $t0, $t0, 0x3270
/* 014F40 80014340 3C058016 */  lui   $a1, %hi(gNearestWaypointByPlayerId) # 0x8016
/* 014F44 80014344 00B72821 */  addu  $a1, $a1, $s7
/* 014F48 80014348 02E84821 */  addu  $t1, $s7, $t0
/* 014F4C 8001434C 9604001C */  lhu   $a0, 0x1c($s0)
/* 014F50 80014350 AFA9009C */  sw    $t1, 0x9c($sp)
/* 014F54 80014354 AFA20010 */  sw    $v0, 0x10($sp)
/* 014F58 80014358 94A54438 */  lhu   $a1, %lo(gNearestWaypointByPlayerId)($a1) # 0x4438($a1)
/* 014F5C 8001435C 2406000A */  li    $a2, 10
/* 014F60 80014360 0C001EFE */  jal   func_80007BF8
/* 014F64 80014364 00003825 */   move  $a3, $zero
/* 014F68 80014368 8FAA009C */  lw    $t2, 0x9c($sp)
/* 014F6C 8001436C 95430000 */  lhu   $v1, ($t2)
/* 014F70 80014370 1460000A */  bnez  $v1, .L8001439C
/* 014F74 80014374 00000000 */   nop   
/* 014F78 80014378 18400008 */  blez  $v0, .L8001439C
/* 014F7C 8001437C 00000000 */   nop   
/* 014F80 80014380 C6900094 */  lwc1  $f16, 0x94($s4)
/* 014F84 80014384 C6120020 */  lwc1  $f18, 0x20($s0)
/* 014F88 80014388 4612803C */  c.lt.s $f16, $f18
/* 014F8C 8001438C 00000000 */  nop   
/* 014F90 80014390 45000002 */  bc1f  .L8001439C
/* 014F94 80014394 00000000 */   nop   
/* 014F98 80014398 02A08825 */  move  $s1, $s5
.L8001439C:
/* 014F9C 8001439C 16A30024 */  bne   $s5, $v1, .L80014430
/* 014FA0 800143A0 00000000 */   nop   
/* 014FA4 800143A4 18400022 */  blez  $v0, .L80014430
/* 014FA8 800143A8 00000000 */   nop   
/* 014FAC 800143AC 10000020 */  b     .L80014430
/* 014FB0 800143B0 02A08825 */   move  $s1, $s5
.L800143B4:
/* 014FB4 800143B4 9604001C */  lhu   $a0, 0x1c($s0)
/* 014FB8 800143B8 00B72821 */  addu  $a1, $a1, $s7
/* 014FBC 800143BC 94A54438 */  lhu   $a1, %lo(gNearestWaypointByPlayerId)($a1) # 0x4438($a1)
/* 014FC0 800143C0 AFA20010 */  sw    $v0, 0x10($sp)
/* 014FC4 800143C4 00003025 */  move  $a2, $zero
/* 014FC8 800143C8 0C001EFE */  jal   func_80007BF8
/* 014FCC 800143CC 2407000A */   li    $a3, 10
/* 014FD0 800143D0 18400017 */  blez  $v0, .L80014430
/* 014FD4 800143D4 00000000 */   nop   
/* 014FD8 800143D8 0C0ADF8D */  jal   random_int
/* 014FDC 800143DC 24040002 */   li    $a0, 2
/* 014FE0 800143E0 14400010 */  bnez  $v0, .L80014424
/* 014FE4 800143E4 3C038016 */   lui   $v1, %hi(D_80163270) # 0x8016
/* 014FE8 800143E8 00771821 */  addu  $v1, $v1, $s7
/* 014FEC 800143EC 94633270 */  lhu   $v1, %lo(D_80163270)($v1) # 0x3270($v1)
/* 014FF0 800143F0 14600002 */  bnez  $v1, .L800143FC
/* 014FF4 800143F4 00000000 */   nop   
/* 014FF8 800143F8 02A08825 */  move  $s1, $s5
.L800143FC:
/* 014FFC 800143FC 16A3000C */  bne   $s5, $v1, .L80014430
/* 015000 80014400 00000000 */   nop   
/* 015004 80014404 C68A0094 */  lwc1  $f10, 0x94($s4)
/* 015008 80014408 C6040020 */  lwc1  $f4, 0x20($s0)
/* 01500C 8001440C 4604503C */  c.lt.s $f10, $f4
/* 015010 80014410 00000000 */  nop   
/* 015014 80014414 45000006 */  bc1f  .L80014430
/* 015018 80014418 00000000 */   nop   
/* 01501C 8001441C 10000004 */  b     .L80014430
/* 015020 80014420 02A08825 */   move  $s1, $s5
.L80014424:
/* 015024 80014424 820B0031 */  lb    $t3, 0x31($s0)
/* 015028 80014428 01726025 */  or    $t4, $t3, $s2
/* 01502C 8001442C A20C0031 */  sb    $t4, 0x31($s0)
.L80014430:
/* 015030 80014430 16350046 */  bne   $s1, $s5, .L8001454C
/* 015034 80014434 3C061901 */   lui   $a2, (0x1901703B >> 16) # lui $a2, 0x1901
/* 015038 80014438 3C015101 */  lui   $at, (0x51018002 >> 16) # lui $at, 0x5101
/* 01503C 8001443C 34218002 */  ori   $at, (0x51018002 & 0xFFFF) # ori $at, $at, 0x8002
/* 015040 80014440 260D0010 */  addiu $t5, $s0, 0x10
/* 015044 80014444 34C6703B */  ori   $a2, (0x1901703B & 0xFFFF) # ori $a2, $a2, 0x703b
/* 015048 80014448 AFAD0084 */  sw    $t5, 0x84($sp)
/* 01504C 8001444C 12610015 */  beq   $s3, $at, .L800144A4
/* 015050 80014450 26110004 */   addiu $s1, $s0, 4
/* 015054 80014454 3C015101 */  lui   $at, (0x51018003 >> 16) # lui $at, 0x5101
/* 015058 80014458 34218003 */  ori   $at, (0x51018003 & 0xFFFF) # ori $at, $at, 0x8003
/* 01505C 8001445C 1261001B */  beq   $s3, $at, .L800144CC
/* 015060 80014460 3C015101 */   lui   $at, (0x51018004 >> 16) # lui $at, 0x5101
/* 015064 80014464 34218004 */  ori   $at, (0x51018004 & 0xFFFF) # ori $at, $at, 0x8004
/* 015068 80014468 12610022 */  beq   $s3, $at, .L800144F4
/* 01506C 8001446C 3C015101 */   lui   $at, (0x51018005 >> 16) # lui $at, 0x5101
/* 015070 80014470 34218005 */  ori   $at, (0x51018005 & 0xFFFF) # ori $at, $at, 0x8005
/* 015074 80014474 12610003 */  beq   $s3, $at, .L80014484
/* 015078 80014478 24040004 */   li    $a0, 4
/* 01507C 8001447C 10000026 */  b     .L80014518
/* 015080 80014480 82020031 */   lb    $v0, 0x31($s0)
.L80014484:
/* 015084 80014484 0C0ADF8D */  jal   random_int
/* 015088 80014488 AFA600A8 */   sw    $a2, 0xa8($sp)
/* 01508C 8001448C 14400003 */  bnez  $v0, .L8001449C
/* 015090 80014490 8FA600A8 */   lw    $a2, 0xa8($sp)
/* 015094 80014494 3C061901 */  lui   $a2, (0x1901703C >> 16) # lui $a2, 0x1901
/* 015098 80014498 34C6703C */  ori   $a2, (0x1901703C & 0xFFFF) # ori $a2, $a2, 0x703c
.L8001449C:
/* 01509C 8001449C 1000001E */  b     .L80014518
/* 0150A0 800144A0 82020031 */   lb    $v0, 0x31($s0)
.L800144A4:
/* 0150A4 800144A4 0C0ADF8D */  jal   random_int
/* 0150A8 800144A8 24040002 */   li    $a0, 2
/* 0150AC 800144AC 10400004 */  beqz  $v0, .L800144C0
/* 0150B0 800144B0 3C061901 */   lui   $a2, 0x1901
/* 0150B4 800144B4 3C061901 */  lui   $a2, (0x1901703E >> 16) # lui $a2, 0x1901
/* 0150B8 800144B8 10000002 */  b     .L800144C4
/* 0150BC 800144BC 34C6703D */   ori   $a2, (0x1901703D & 0xFFFF) # ori $a2, $a2, 0x703d
.L800144C0:
/* 0150C0 800144C0 34C6703E */  ori   $a2, (0x1901703E & 0xFFFF) # ori $a2, $a2, 0x703e
.L800144C4:
/* 0150C4 800144C4 10000014 */  b     .L80014518
/* 0150C8 800144C8 82020031 */   lb    $v0, 0x31($s0)
.L800144CC:
/* 0150CC 800144CC 0C0ADF8D */  jal   random_int
/* 0150D0 800144D0 24040002 */   li    $a0, 2
/* 0150D4 800144D4 10400004 */  beqz  $v0, .L800144E8
/* 0150D8 800144D8 3C061901 */   lui   $a2, 0x1901
/* 0150DC 800144DC 3C061901 */  lui   $a2, (0x19017040 >> 16) # lui $a2, 0x1901
/* 0150E0 800144E0 10000002 */  b     .L800144EC
/* 0150E4 800144E4 34C6703F */   ori   $a2, (0x1901703F & 0xFFFF) # ori $a2, $a2, 0x703f
.L800144E8:
/* 0150E8 800144E8 34C67040 */  ori   $a2, (0x19017040 & 0xFFFF) # ori $a2, $a2, 0x7040
.L800144EC:
/* 0150EC 800144EC 1000000A */  b     .L80014518
/* 0150F0 800144F0 82020031 */   lb    $v0, 0x31($s0)
.L800144F4:
/* 0150F4 800144F4 0C0ADF8D */  jal   random_int
/* 0150F8 800144F8 24040002 */   li    $a0, 2
/* 0150FC 800144FC 10400004 */  beqz  $v0, .L80014510
/* 015100 80014500 3C061901 */   lui   $a2, 0x1901
/* 015104 80014504 3C061901 */  lui   $a2, (0x19017042 >> 16) # lui $a2, 0x1901
/* 015108 80014508 10000002 */  b     .L80014514
/* 01510C 8001450C 34C67041 */   ori   $a2, (0x19017041 & 0xFFFF) # ori $a2, $a2, 0x7041
.L80014510:
/* 015110 80014510 34C67042 */  ori   $a2, (0x19017042 & 0xFFFF) # ori $a2, $a2, 0x7042
.L80014514:
/* 015114 80014514 82020031 */  lb    $v0, 0x31($s0)
.L80014518:
/* 015118 80014518 00527025 */  or    $t6, $v0, $s2
/* 01511C 8001451C A20E0031 */  sb    $t6, 0x31($s0)
/* 015120 80014520 8FA50084 */  lw    $a1, 0x84($sp)
/* 015124 80014524 0C03262E */  jal   func_800C98B8
/* 015128 80014528 02202025 */   move  $a0, $s1
/* 01512C 8001452C 10000008 */  b     .L80014550
/* 015130 80014530 8FA800EC */   lw    $t0, 0xec($sp)
/* 015134 80014534 82020031 */  lb    $v0, 0x31($s0)
.L80014538:
/* 015138 80014538 02407827 */  not   $t7, $s2
/* 01513C 8001453C 0052C024 */  and   $t8, $v0, $s2
/* 015140 80014540 13000002 */  beqz  $t8, .L8001454C
/* 015144 80014544 004FC824 */   and   $t9, $v0, $t7
/* 015148 80014548 A2190031 */  sb    $t9, 0x31($s0)
.L8001454C:
/* 01514C 8001454C 8FA800EC */  lw    $t0, 0xec($sp)
.L80014550:
/* 015150 80014550 27DE0001 */  addiu $fp, $fp, 1
/* 015154 80014554 26100034 */  addiu $s0, $s0, 0x34
/* 015158 80014558 57C8FEC3 */  bnel  $fp, $t0, .L80014068
/* 01515C 8001455C C60C0004 */   lwc1  $f12, 4($s0)
.L80014560:
/* 015160 80014560 8FBF007C */  lw    $ra, 0x7c($sp)
.L80014564:
/* 015164 80014564 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 015168 80014568 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 01516C 8001456C D7B80038 */  ldc1  $f24, 0x38($sp)
/* 015170 80014570 D7BA0040 */  ldc1  $f26, 0x40($sp)
/* 015174 80014574 D7BC0048 */  ldc1  $f28, 0x48($sp)
/* 015178 80014578 D7BE0050 */  ldc1  $f30, 0x50($sp)
/* 01517C 8001457C 8FB00058 */  lw    $s0, 0x58($sp)
/* 015180 80014580 8FB1005C */  lw    $s1, 0x5c($sp)
/* 015184 80014584 8FB20060 */  lw    $s2, 0x60($sp)
/* 015188 80014588 8FB30064 */  lw    $s3, 0x64($sp)
/* 01518C 8001458C 8FB40068 */  lw    $s4, 0x68($sp)
/* 015190 80014590 8FB5006C */  lw    $s5, 0x6c($sp)
/* 015194 80014594 8FB60070 */  lw    $s6, 0x70($sp)
/* 015198 80014598 8FB70074 */  lw    $s7, 0x74($sp)
/* 01519C 8001459C 8FBE0078 */  lw    $fp, 0x78($sp)
/* 0151A0 800145A0 03E00008 */  jr    $ra
/* 0151A4 800145A4 27BD00D8 */   addiu $sp, $sp, 0xd8
