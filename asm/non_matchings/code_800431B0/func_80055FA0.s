glabel func_80055FA0
/* 056BA0 80055FA0 000470C0 */  sll   $t6, $a0, 3
/* 056BA4 80055FA4 01C47023 */  subu  $t6, $t6, $a0
/* 056BA8 80055FA8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 056BAC 80055FAC 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 056BB0 80055FB0 000E7140 */  sll   $t6, $t6, 5
/* 056BB4 80055FB4 01CF4021 */  addu  $t0, $t6, $t7
/* 056BB8 80055FB8 851800A6 */  lh    $t8, 0xa6($t0)
/* 056BBC 80055FBC 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 056BC0 80055FC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 056BC4 80055FC4 2B010002 */  slti  $at, $t8, 2
/* 056BC8 80055FC8 14200061 */  bnez  $at, .L80056150
/* 056BCC 80055FCC AFA500C4 */   sw    $a1, 0xc4($sp)
/* 056BD0 80055FD0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 056BD4 80055FD4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 056BD8 80055FD8 8C620000 */  lw    $v0, ($v1)
/* 056BDC 80055FDC 3C0E0103 */  lui   $t6, (0x01030040 >> 16) # lui $t6, 0x103
/* 056BE0 80055FE0 3C0B8015 */  lui   $t3, %hi(gGfxPool) # $t3, 0x8015
/* 056BE4 80055FE4 24590008 */  addiu $t9, $v0, 8
/* 056BE8 80055FE8 AC790000 */  sw    $t9, ($v1)
/* 056BEC 80055FEC 35CE0040 */  ori   $t6, (0x01030040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 056BF0 80055FF0 256BEF40 */  addiu $t3, %lo(gGfxPool) # addiu $t3, $t3, -0x10c0
/* 056BF4 80055FF4 AC4E0000 */  sw    $t6, ($v0)
/* 056BF8 80055FF8 8D6F0000 */  lw    $t7, ($t3)
/* 056BFC 80055FFC 3C0C1FFF */  lui   $t4, (0x1FFFFFFF >> 16) # lui $t4, 0x1fff
/* 056C00 80056000 358CFFFF */  ori   $t4, (0x1FFFFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* 056C04 80056004 25F80040 */  addiu $t8, $t7, 0x40
/* 056C08 80056008 030CC824 */  and   $t9, $t8, $t4
/* 056C0C 8005600C AC590004 */  sw    $t9, 4($v0)
/* 056C10 80056010 8C620000 */  lw    $v0, ($v1)
/* 056C14 80056014 3C0F0102 */  lui   $t7, (0x01020040 >> 16) # lui $t7, 0x102
/* 056C18 80056018 35EF0040 */  ori   $t7, (0x01020040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 056C1C 8005601C 244E0008 */  addiu $t6, $v0, 8
/* 056C20 80056020 AC6E0000 */  sw    $t6, ($v1)
/* 056C24 80056024 AC4F0000 */  sw    $t7, ($v0)
/* 056C28 80056028 8D780000 */  lw    $t8, ($t3)
/* 056C2C 8005602C 27A40080 */  addiu $a0, $sp, 0x80
/* 056C30 80056030 25050004 */  addiu $a1, $t0, 4
/* 056C34 80056034 271901C0 */  addiu $t9, $t8, 0x1c0
/* 056C38 80056038 032C7024 */  and   $t6, $t9, $t4
/* 056C3C 8005603C AC4E0004 */  sw    $t6, 4($v0)
/* 056C40 80056040 AFA80020 */  sw    $t0, 0x20($sp)
/* 056C44 80056044 8D070000 */  lw    $a3, ($t0)
/* 056C48 80056048 0C010974 */  jal   func_800425D0
/* 056C4C 8005604C 250600BE */   addiu $a2, $t0, 0xbe
/* 056C50 80056050 3C0A8019 */  lui   $t2, %hi(D_8018D120) # $t2, 0x8019
/* 056C54 80056054 254AD120 */  addiu $t2, %lo(D_8018D120) # addiu $t2, $t2, -0x2ee0
/* 056C58 80056058 8D580000 */  lw    $t8, ($t2)
/* 056C5C 8005605C 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 056C60 80056060 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 056C64 80056064 0018C980 */  sll   $t9, $t8, 6
/* 056C68 80056068 27A50080 */  addiu $a1, $sp, 0x80
/* 056C6C 8005606C 01F92021 */  addu  $a0, $t7, $t9
/* 056C70 80056070 0C008860 */  jal   func_80022180
/* 056C74 80056074 248402C0 */   addiu $a0, $a0, 0x2c0
/* 056C78 80056078 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 056C7C 8005607C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 056C80 80056080 8C620000 */  lw    $v0, ($v1)
/* 056C84 80056084 3C180100 */  lui   $t8, (0x01000040 >> 16) # lui $t8, 0x100
/* 056C88 80056088 8FA80020 */  lw    $t0, 0x20($sp)
/* 056C8C 8005608C 244E0008 */  addiu $t6, $v0, 8
/* 056C90 80056090 3C0A8019 */  lui   $t2, %hi(D_8018D120) # $t2, 0x8019
/* 056C94 80056094 AC6E0000 */  sw    $t6, ($v1)
/* 056C98 80056098 37180040 */  ori   $t8, (0x01000040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 056C9C 8005609C 254AD120 */  addiu $t2, %lo(D_8018D120) # addiu $t2, $t2, -0x2ee0
/* 056CA0 800560A0 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 056CA4 800560A4 AC580000 */  sw    $t8, ($v0)
/* 056CA8 800560A8 8D590000 */  lw    $t9, ($t2)
/* 056CAC 800560AC 258CEF40 */  addiu $t4, %lo(gGfxPool) # addiu $t4, $t4, -0x10c0
/* 056CB0 800560B0 8D8F0000 */  lw    $t7, ($t4)
/* 056CB4 800560B4 00197180 */  sll   $t6, $t9, 6
/* 056CB8 800560B8 3C0D1FFF */  lui   $t5, (0x1FFFFFFF >> 16) # lui $t5, 0x1fff
/* 056CBC 800560BC 01EEC021 */  addu  $t8, $t7, $t6
/* 056CC0 800560C0 35ADFFFF */  ori   $t5, (0x1FFFFFFF & 0xFFFF) # ori $t5, $t5, 0xffff
/* 056CC4 800560C4 271902C0 */  addiu $t9, $t8, 0x2c0
/* 056CC8 800560C8 032D7824 */  and   $t7, $t9, $t5
/* 056CCC 800560CC AC4F0004 */  sw    $t7, 4($v0)
/* 056CD0 800560D0 8D4E0000 */  lw    $t6, ($t2)
/* 056CD4 800560D4 8C620000 */  lw    $v0, ($v1)
/* 056CD8 800560D8 3C0F0D00 */  lui   $t7, %hi(D_0D0077A0) # $t7, 0xd00
/* 056CDC 800560DC 25D80001 */  addiu $t8, $t6, 1
/* 056CE0 800560E0 24590008 */  addiu $t9, $v0, 8
/* 056CE4 800560E4 AD580000 */  sw    $t8, ($t2)
/* 056CE8 800560E8 AC790000 */  sw    $t9, ($v1)
/* 056CEC 800560EC 3C0B0600 */  lui   $t3, 0x600
/* 056CF0 800560F0 25EF77A0 */  addiu $t7, %lo(D_0D0077A0) # addiu $t7, $t7, 0x77a0
/* 056CF4 800560F4 AC4F0004 */  sw    $t7, 4($v0)
/* 056CF8 800560F8 AC4B0000 */  sw    $t3, ($v0)
/* 056CFC 800560FC 8C620000 */  lw    $v0, ($v1)
/* 056D00 80056100 3C0F0101 */  lui   $t7, (0x01010040 >> 16) # lui $t7, 0x101
/* 056D04 80056104 35EF0040 */  ori   $t7, (0x01010040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 056D08 80056108 244E0008 */  addiu $t6, $v0, 8
/* 056D0C 8005610C AC6E0000 */  sw    $t6, ($v1)
/* 056D10 80056110 AC4B0000 */  sw    $t3, ($v0)
/* 056D14 80056114 8D180070 */  lw    $t8, 0x70($t0)
/* 056D18 80056118 27A40040 */  addiu $a0, $sp, 0x40
/* 056D1C 8005611C AC580004 */  sw    $t8, 4($v0)
/* 056D20 80056120 8C620000 */  lw    $v0, ($v1)
/* 056D24 80056124 24590008 */  addiu $t9, $v0, 8
/* 056D28 80056128 AC790000 */  sw    $t9, ($v1)
/* 056D2C 8005612C AC4F0000 */  sw    $t7, ($v0)
/* 056D30 80056130 8D8E0000 */  lw    $t6, ($t4)
/* 056D34 80056134 25D801C0 */  addiu $t8, $t6, 0x1c0
/* 056D38 80056138 030DC824 */  and   $t9, $t8, $t5
/* 056D3C 8005613C 0C0AD4F2 */  jal   func_802B53C8
/* 056D40 80056140 AC590004 */   sw    $t9, 4($v0)
/* 056D44 80056144 27A40040 */  addiu $a0, $sp, 0x40
/* 056D48 80056148 0C0AD3FE */  jal   func_802B4FF8
/* 056D4C 8005614C 00002825 */   move  $a1, $zero
.L80056150:
/* 056D50 80056150 8FBF0014 */  lw    $ra, 0x14($sp)
/* 056D54 80056154 27BD00C0 */  addiu $sp, $sp, 0xc0
/* 056D58 80056158 03E00008 */  jr    $ra
/* 056D5C 8005615C 00000000 */   nop   
