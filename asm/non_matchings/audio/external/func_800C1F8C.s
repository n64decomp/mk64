glabel func_800C1F8C
/* 0C2B8C 800C1F8C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0C2B90 800C1F90 3C05800F */  lui   $a1, %hi(D_800EA1C0) # $a1, 0x800f
/* 0C2B94 800C1F94 90A5A1C0 */  lbu   $a1, %lo(D_800EA1C0)($a1)
/* 0C2B98 800C1F98 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0C2B9C 800C1F9C AFB10034 */  sw    $s1, 0x34($sp)
/* 0C2BA0 800C1FA0 24A50001 */  addiu $a1, $a1, 1
/* 0C2BA4 800C1FA4 30A800FF */  andi  $t0, $a1, 0xff
/* 0C2BA8 800C1FA8 03A0F025 */  move  $fp, $sp
/* 0C2BAC 800C1FAC AFBF0054 */  sw    $ra, 0x54($sp)
/* 0C2BB0 800C1FB0 AFB7004C */  sw    $s7, 0x4c($sp)
/* 0C2BB4 800C1FB4 AFB60048 */  sw    $s6, 0x48($sp)
/* 0C2BB8 800C1FB8 AFB50044 */  sw    $s5, 0x44($sp)
/* 0C2BBC 800C1FBC AFB40040 */  sw    $s4, 0x40($sp)
/* 0C2BC0 800C1FC0 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0C2BC4 800C1FC4 AFB20038 */  sw    $s2, 0x38($sp)
/* 0C2BC8 800C1FC8 AFB00030 */  sw    $s0, 0x30($sp)
/* 0C2BCC 800C1FCC F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0C2BD0 800C1FD0 19000020 */  blez  $t0, .L800C2054
/* 0C2BD4 800C1FD4 00008825 */   move  $s1, $zero
/* 0C2BD8 800C1FD8 3C0A8019 */  lui   $t2, %hi(D_8018FB98) # $t2, 0x8019
/* 0C2BDC 800C1FDC 3C098019 */  lui   $t1, %hi(D_8018FBA8) # $t1, 0x8019
/* 0C2BE0 800C1FE0 3C078019 */  lui   $a3, %hi(D_8018FBD8) # $a3, 0x8019
/* 0C2BE4 800C1FE4 24E7FBD8 */  addiu $a3, %lo(D_8018FBD8) # addiu $a3, $a3, -0x428
/* 0C2BE8 800C1FE8 2529FBA8 */  addiu $t1, %lo(D_8018FBA8) # addiu $t1, $t1, -0x458
/* 0C2BEC 800C1FEC 254AFB98 */  addiu $t2, %lo(D_8018FB98) # addiu $t2, $t2, -0x468
/* 0C2BF0 800C1FF0 2406000C */  li    $a2, 12
.L800C1FF4:
/* 0C2BF4 800C1FF4 02260019 */  multu $s1, $a2
/* 0C2BF8 800C1FF8 00117880 */  sll   $t7, $s1, 2
/* 0C2BFC 800C1FFC 014FC021 */  addu  $t8, $t2, $t7
/* 0C2C00 800C2000 8F020000 */  lw    $v0, ($t8)
/* 0C2C04 800C2004 26310001 */  addiu $s1, $s1, 1
/* 0C2C08 800C2008 323900FF */  andi  $t9, $s1, 0xff
/* 0C2C0C 800C200C C4440000 */  lwc1  $f4, ($v0)
/* 0C2C10 800C2010 0328082A */  slt   $at, $t9, $t0
/* 0C2C14 800C2014 03208825 */  move  $s1, $t9
/* 0C2C18 800C2018 00002012 */  mflo  $a0
/* 0C2C1C 800C201C 00E41821 */  addu  $v1, $a3, $a0
/* 0C2C20 800C2020 C4660000 */  lwc1  $f6, ($v1)
/* 0C2C24 800C2024 01242821 */  addu  $a1, $t1, $a0
/* 0C2C28 800C2028 C4700008 */  lwc1  $f16, 8($v1)
/* 0C2C2C 800C202C 46062201 */  sub.s $f8, $f4, $f6
/* 0C2C30 800C2030 E4A80000 */  swc1  $f8, ($a1)
/* 0C2C34 800C2034 C44A0008 */  lwc1  $f10, 8($v0)
/* 0C2C38 800C2038 46105481 */  sub.s $f18, $f10, $f16
/* 0C2C3C 800C203C E4B20008 */  swc1  $f18, 8($a1)
/* 0C2C40 800C2040 C4440000 */  lwc1  $f4, ($v0)
/* 0C2C44 800C2044 E4640000 */  swc1  $f4, ($v1)
/* 0C2C48 800C2048 C4460008 */  lwc1  $f6, 8($v0)
/* 0C2C4C 800C204C 1420FFE9 */  bnez  $at, .L800C1FF4
/* 0C2C50 800C2050 E4660008 */   swc1  $f6, 8($v1)
.L800C2054:
/* 0C2C54 800C2054 3C138019 */  lui   $s3, %hi(D_8018EFD8) # $s3, 0x8019
/* 0C2C58 800C2058 2673EFD8 */  addiu $s3, %lo(D_8018EFD8) # addiu $s3, $s3, -0x1028
/* 0C2C5C 800C205C 9271002A */  lbu   $s1, 0x2a($s3)
/* 0C2C60 800C2060 241500FF */  li    $s5, 255
/* 0C2C64 800C2064 00002825 */  move  $a1, $zero
/* 0C2C68 800C2068 12B10051 */  beq   $s5, $s1, .L800C21B0
/* 0C2C6C 800C206C 02201025 */   move  $v0, $s1
/* 0C2C70 800C2070 3C01800F */  lui   $at, %hi(D_800F35E0) # $at, 0x800f
/* 0C2C74 800C2074 3C178019 */  lui   $s7, %hi(D_8018FB90) # $s7, 0x8019
/* 0C2C78 800C2078 3C168019 */  lui   $s6, %hi(D_8018FB91) # $s6, 0x8019
/* 0C2C7C 800C207C 26D6FB91 */  addiu $s6, %lo(D_8018FB91) # addiu $s6, $s6, -0x46f
/* 0C2C80 800C2080 26F7FB90 */  addiu $s7, %lo(D_8018FB90) # addiu $s7, $s7, -0x470
/* 0C2C84 800C2084 C43435E0 */  lwc1  $f20, %lo(D_800F35E0)($at)
/* 0C2C88 800C2088 2414003C */  li    $s4, 60
.L800C208C:
/* 0C2C8C 800C208C 02340019 */  multu $s1, $s4
/* 0C2C90 800C2090 00056100 */  sll   $t4, $a1, 4
/* 0C2C94 800C2094 00005812 */  mflo  $t3
/* 0C2C98 800C2098 026B8021 */  addu  $s0, $s3, $t3
/* 0C2C9C 800C209C C608001C */  lwc1  $f8, 0x1c($s0)
/* 0C2CA0 800C20A0 4608A032 */  c.eq.s $f20, $f8
/* 0C2CA4 800C20A4 00000000 */  nop   
/* 0C2CA8 800C20A8 45020020 */  bc1fl .L800C212C
/* 0C2CAC 800C20AC 92020028 */   lbu   $v0, 0x28($s0)
/* 0C2CB0 800C20B0 92CD0000 */  lbu   $t5, ($s6)
/* 0C2CB4 800C20B4 01856023 */  subu  $t4, $t4, $a1
/* 0C2CB8 800C20B8 000C6080 */  sll   $t4, $t4, 2
/* 0C2CBC 800C20BC 144D0004 */  bne   $v0, $t5, .L800C20D0
/* 0C2CC0 800C20C0 026C2021 */   addu  $a0, $s3, $t4
/* 0C2CC4 800C20C4 92030029 */  lbu   $v1, 0x29($s0)
/* 0C2CC8 800C20C8 10000008 */  b     .L800C20EC
/* 0C2CCC 800C20CC A2C30000 */   sb    $v1, ($s6)
.L800C20D0:
/* 0C2CD0 800C20D0 920F002A */  lbu   $t7, 0x2a($s0)
/* 0C2CD4 800C20D4 920E0029 */  lbu   $t6, 0x29($s0)
/* 0C2CD8 800C20D8 01F40019 */  multu $t7, $s4
/* 0C2CDC 800C20DC 0000C012 */  mflo  $t8
/* 0C2CE0 800C20E0 0278C821 */  addu  $t9, $s3, $t8
/* 0C2CE4 800C20E4 A32E0029 */  sb    $t6, 0x29($t9)
/* 0C2CE8 800C20E8 92030029 */  lbu   $v1, 0x29($s0)
.L800C20EC:
/* 0C2CEC 800C20EC 00740019 */  multu $v1, $s4
/* 0C2CF0 800C20F0 920B002A */  lbu   $t3, 0x2a($s0)
/* 0C2CF4 800C20F4 240F00FF */  li    $t7, 255
/* 0C2CF8 800C20F8 00006012 */  mflo  $t4
/* 0C2CFC 800C20FC 026C6821 */  addu  $t5, $s3, $t4
/* 0C2D00 800C2100 A1AB002A */  sb    $t3, 0x2a($t5)
/* 0C2D04 800C2104 92E20000 */  lbu   $v0, ($s7)
/* 0C2D08 800C2108 A20F0029 */  sb    $t7, 0x29($s0)
/* 0C2D0C 800C210C 00540019 */  multu $v0, $s4
/* 0C2D10 800C2110 A202002A */  sb    $v0, 0x2a($s0)
/* 0C2D14 800C2114 0000C012 */  mflo  $t8
/* 0C2D18 800C2118 02787021 */  addu  $t6, $s3, $t8
/* 0C2D1C 800C211C A1D10029 */  sb    $s1, 0x29($t6)
/* 0C2D20 800C2120 10000018 */  b     .L800C2184
/* 0C2D24 800C2124 A2F10000 */   sb    $s1, ($s7)
/* 0C2D28 800C2128 92020028 */  lbu   $v0, 0x28($s0)
.L800C212C:
/* 0C2D2C 800C212C 3C0C8019 */  lui   $t4, %hi(D_8018FB98) # $t4, 0x8019
/* 0C2D30 800C2130 258CFB98 */  addiu $t4, %lo(D_8018FB98) # addiu $t4, $t4, -0x468
/* 0C2D34 800C2134 0002C880 */  sll   $t9, $v0, 2
/* 0C2D38 800C2138 032C9021 */  addu  $s2, $t9, $t4
/* 0C2D3C 800C213C 8E440000 */  lw    $a0, ($s2)
/* 0C2D40 800C2140 02003025 */  move  $a2, $s0
/* 0C2D44 800C2144 0C030769 */  jal   func_800C1DA4
/* 0C2D48 800C2148 24850024 */   addiu $a1, $a0, 0x24
/* 0C2D4C 800C214C 8E0D000C */  lw    $t5, 0xc($s0)
/* 0C2D50 800C2150 3C0B800F */  lui   $t3, %hi(D_800EA1C8) # $t3, 0x800f
/* 0C2D54 800C2154 256BA1C8 */  addiu $t3, %lo(D_800EA1C8) # addiu $t3, $t3, -0x5e38
/* 0C2D58 800C2158 116D0005 */  beq   $t3, $t5, .L800C2170
/* 0C2D5C 800C215C 3C058019 */   lui   $a1, %hi(D_8018FBA8) # $a1, 0x8019
/* 0C2D60 800C2160 8E440000 */  lw    $a0, ($s2)
/* 0C2D64 800C2164 24A5FBA8 */  addiu $a1, %lo(D_8018FBA8) # addiu $a1, $a1, -0x458
/* 0C2D68 800C2168 0C03078B */  jal   func_800C1E2C
/* 0C2D6C 800C216C 02003025 */   move  $a2, $s0
.L800C2170:
/* 0C2D70 800C2170 322500FF */  andi  $a1, $s1, 0xff
/* 0C2D74 800C2174 00057900 */  sll   $t7, $a1, 4
/* 0C2D78 800C2178 01E57823 */  subu  $t7, $t7, $a1
/* 0C2D7C 800C217C 000F7880 */  sll   $t7, $t7, 2
/* 0C2D80 800C2180 026F2021 */  addu  $a0, $s3, $t7
.L800C2184:
/* 0C2D84 800C2184 9091002A */  lbu   $s1, 0x2a($a0)
/* 0C2D88 800C2188 3C18800F */  lui   $t8, %hi(D_800EA244) # $t8, 0x800f
/* 0C2D8C 800C218C 12B10006 */  beq   $s5, $s1, .L800C21A8
/* 0C2D90 800C2190 02201025 */   move  $v0, $s1
/* 0C2D94 800C2194 9318A244 */  lbu   $t8, %lo(D_800EA244)($t8)
/* 0C2D98 800C2198 0302082A */  slt   $at, $t8, $v0
/* 0C2D9C 800C219C 10200002 */  beqz  $at, .L800C21A8
/* 0C2DA0 800C21A0 3C01800F */   lui   $at, %hi(D_800EA244) # $at, 0x800f
/* 0C2DA4 800C21A4 A031A244 */  sb    $s1, %lo(D_800EA244)($at)
.L800C21A8:
/* 0C2DA8 800C21A8 16A2FFB8 */  bne   $s5, $v0, .L800C208C
/* 0C2DAC 800C21AC 00000000 */   nop   
.L800C21B0:
/* 0C2DB0 800C21B0 8FDF0054 */  lw    $ra, 0x54($fp)
/* 0C2DB4 800C21B4 03C0E825 */  move  $sp, $fp
/* 0C2DB8 800C21B8 D7D40028 */  ldc1  $f20, 0x28($fp)
/* 0C2DBC 800C21BC 8FD00030 */  lw    $s0, 0x30($fp)
/* 0C2DC0 800C21C0 8FD10034 */  lw    $s1, 0x34($fp)
/* 0C2DC4 800C21C4 8FD20038 */  lw    $s2, 0x38($fp)
/* 0C2DC8 800C21C8 8FD3003C */  lw    $s3, 0x3c($fp)
/* 0C2DCC 800C21CC 8FD40040 */  lw    $s4, 0x40($fp)
/* 0C2DD0 800C21D0 8FD50044 */  lw    $s5, 0x44($fp)
/* 0C2DD4 800C21D4 8FD60048 */  lw    $s6, 0x48($fp)
/* 0C2DD8 800C21D8 8FD7004C */  lw    $s7, 0x4c($fp)
/* 0C2DDC 800C21DC 8FDE0050 */  lw    $fp, 0x50($fp)
/* 0C2DE0 800C21E0 03E00008 */  jr    $ra
/* 0C2DE4 800C21E4 27BD0058 */   addiu $sp, $sp, 0x58
