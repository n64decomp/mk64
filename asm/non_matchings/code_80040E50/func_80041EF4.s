glabel func_80041EF4
/* 042AF4 80041EF4 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 042AF8 80041EF8 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 042AFC 80041EFC 8CA30000 */  lw    $v1, ($a1)
/* 042B00 80041F00 3C0FBA00 */  lui   $t7, (0xBA001301 >> 16) # lui $t7, 0xba00
/* 042B04 80041F04 35EF1301 */  ori   $t7, (0xBA001301 & 0xFFFF) # ori $t7, $t7, 0x1301
/* 042B08 80041F08 246E0008 */  addiu $t6, $v1, 8
/* 042B0C 80041F0C ACAE0000 */  sw    $t6, ($a1)
/* 042B10 80041F10 3C180008 */  lui   $t8, 8
/* 042B14 80041F14 AC780004 */  sw    $t8, 4($v1)
/* 042B18 80041F18 AC6F0000 */  sw    $t7, ($v1)
/* 042B1C 80041F1C 8CA30000 */  lw    $v1, ($a1)
/* 042B20 80041F20 3C080103 */  lui   $t0, (0x01030040 >> 16) # lui $t0, 0x103
/* 042B24 80041F24 35080040 */  ori   $t0, (0x01030040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042B28 80041F28 24790008 */  addiu $t9, $v1, 8
/* 042B2C 80041F2C ACB90000 */  sw    $t9, ($a1)
/* 042B30 80041F30 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042B34 80041F34 AC680000 */  sw    $t0, ($v1)
/* 042B38 80041F38 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042B3C 80041F3C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042B40 80041F40 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042B44 80041F44 252A0140 */  addiu $t2, $t1, 0x140
/* 042B48 80041F48 01415824 */  and   $t3, $t2, $at
/* 042B4C 80041F4C 03E00008 */  jr    $ra
/* 042B50 80041F50 AC6B0004 */   sw    $t3, 4($v1)

/* 042B54 80041F54 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042B58 80041F58 00A03025 */  move  $a2, $a1
/* 042B5C 80041F5C 00802825 */  move  $a1, $a0
/* 042B60 80041F60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042B64 80041F64 AFA40060 */  sw    $a0, 0x60($sp)
/* 042B68 80041F68 0C01069E */  jal   func_80041A78
/* 042B6C 80041F6C 27A40020 */   addiu $a0, $sp, 0x20
/* 042B70 80041F70 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042B74 80041F74 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042B78 80041F78 8CCF0000 */  lw    $t7, ($a2)
/* 042B7C 80041F7C 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042B80 80041F80 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042B84 80041F84 000FC180 */  sll   $t8, $t7, 6
/* 042B88 80041F88 27A50020 */  addiu $a1, $sp, 0x20
/* 042B8C 80041F8C 01D82021 */  addu  $a0, $t6, $t8
/* 042B90 80041F90 0C008860 */  jal   func_80022180
/* 042B94 80041F94 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042B98 80041F98 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042B9C 80041F9C 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042BA0 80041FA0 8C830000 */  lw    $v1, ($a0)
/* 042BA4 80041FA4 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042BA8 80041FA8 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042BAC 80041FAC 24790008 */  addiu $t9, $v1, 8
/* 042BB0 80041FB0 AC990000 */  sw    $t9, ($a0)
/* 042BB4 80041FB4 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042BB8 80041FB8 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042BBC 80041FBC AC680000 */  sw    $t0, ($v1)
/* 042BC0 80041FC0 8CCA0000 */  lw    $t2, ($a2)
/* 042BC4 80041FC4 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042BC8 80041FC8 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042BCC 80041FCC 000A5980 */  sll   $t3, $t2, 6
/* 042BD0 80041FD0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042BD4 80041FD4 012B6021 */  addu  $t4, $t1, $t3
/* 042BD8 80041FD8 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042BDC 80041FDC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042BE0 80041FE0 01A17824 */  and   $t7, $t5, $at
/* 042BE4 80041FE4 AC6F0004 */  sw    $t7, 4($v1)
/* 042BE8 80041FE8 8CCE0000 */  lw    $t6, ($a2)
/* 042BEC 80041FEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042BF0 80041FF0 27BD0060 */  addiu $sp, $sp, 0x60
/* 042BF4 80041FF4 25D80001 */  addiu $t8, $t6, 1
/* 042BF8 80041FF8 03E00008 */  jr    $ra
/* 042BFC 80041FFC ACD80000 */   sw    $t8, ($a2)

/* 042C00 80042000 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042C04 80042004 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042C08 80042008 AFA40060 */  sw    $a0, 0x60($sp)
/* 042C0C 8004200C 3085FFFF */  andi  $a1, $a0, 0xffff
/* 042C10 80042010 0C0106B6 */  jal   func_80041AD8
/* 042C14 80042014 27A40020 */   addiu $a0, $sp, 0x20
/* 042C18 80042018 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042C1C 8004201C 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042C20 80042020 8CCF0000 */  lw    $t7, ($a2)
/* 042C24 80042024 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042C28 80042028 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042C2C 8004202C 000FC180 */  sll   $t8, $t7, 6
/* 042C30 80042030 27A50020 */  addiu $a1, $sp, 0x20
/* 042C34 80042034 01D82021 */  addu  $a0, $t6, $t8
/* 042C38 80042038 0C008860 */  jal   func_80022180
/* 042C3C 8004203C 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042C40 80042040 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042C44 80042044 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042C48 80042048 8C830000 */  lw    $v1, ($a0)
/* 042C4C 8004204C 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042C50 80042050 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042C54 80042054 24790008 */  addiu $t9, $v1, 8
/* 042C58 80042058 AC990000 */  sw    $t9, ($a0)
/* 042C5C 8004205C 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042C60 80042060 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042C64 80042064 AC680000 */  sw    $t0, ($v1)
/* 042C68 80042068 8CCA0000 */  lw    $t2, ($a2)
/* 042C6C 8004206C 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042C70 80042070 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042C74 80042074 000A5980 */  sll   $t3, $t2, 6
/* 042C78 80042078 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042C7C 8004207C 012B6021 */  addu  $t4, $t1, $t3
/* 042C80 80042080 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042C84 80042084 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042C88 80042088 01A17824 */  and   $t7, $t5, $at
/* 042C8C 8004208C AC6F0004 */  sw    $t7, 4($v1)
/* 042C90 80042090 8CCE0000 */  lw    $t6, ($a2)
/* 042C94 80042094 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042C98 80042098 27BD0060 */  addiu $sp, $sp, 0x60
/* 042C9C 8004209C 25D80001 */  addiu $t8, $t6, 1
/* 042CA0 800420A0 03E00008 */  jr    $ra
/* 042CA4 800420A4 ACD80000 */   sw    $t8, ($a2)

/* 042CA8 800420A8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042CAC 800420AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 042CB0 800420B0 44056000 */  mfc1  $a1, $f12
/* 042CB4 800420B4 0C0106DA */  jal   func_80041B68
/* 042CB8 800420B8 27A40020 */   addiu $a0, $sp, 0x20
/* 042CBC 800420BC 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042CC0 800420C0 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042CC4 800420C4 8CCF0000 */  lw    $t7, ($a2)
/* 042CC8 800420C8 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042CCC 800420CC 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042CD0 800420D0 000FC180 */  sll   $t8, $t7, 6
/* 042CD4 800420D4 27A50020 */  addiu $a1, $sp, 0x20
/* 042CD8 800420D8 01D82021 */  addu  $a0, $t6, $t8
/* 042CDC 800420DC 0C008860 */  jal   func_80022180
/* 042CE0 800420E0 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042CE4 800420E4 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042CE8 800420E8 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042CEC 800420EC 8C830000 */  lw    $v1, ($a0)
/* 042CF0 800420F0 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042CF4 800420F4 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042CF8 800420F8 24790008 */  addiu $t9, $v1, 8
/* 042CFC 800420FC AC990000 */  sw    $t9, ($a0)
/* 042D00 80042100 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042D04 80042104 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042D08 80042108 AC680000 */  sw    $t0, ($v1)
/* 042D0C 8004210C 8CCA0000 */  lw    $t2, ($a2)
/* 042D10 80042110 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042D14 80042114 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042D18 80042118 000A5980 */  sll   $t3, $t2, 6
/* 042D1C 8004211C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042D20 80042120 012B6021 */  addu  $t4, $t1, $t3
/* 042D24 80042124 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042D28 80042128 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042D2C 8004212C 01A17824 */  and   $t7, $t5, $at
/* 042D30 80042130 AC6F0004 */  sw    $t7, 4($v1)
/* 042D34 80042134 8CCE0000 */  lw    $t6, ($a2)
/* 042D38 80042138 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042D3C 8004213C 27BD0060 */  addiu $sp, $sp, 0x60
/* 042D40 80042140 25D80001 */  addiu $t8, $t6, 1
/* 042D44 80042144 03E00008 */  jr    $ra
/* 042D48 80042148 ACD80000 */   sw    $t8, ($a2)

/* 042D4C 8004214C 44856000 */  mtc1  $a1, $f12
/* 042D50 80042150 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042D54 80042154 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042D58 80042158 AFA40060 */  sw    $a0, 0x60($sp)
/* 042D5C 8004215C 44066000 */  mfc1  $a2, $f12
/* 042D60 80042160 97A50062 */  lhu   $a1, 0x62($sp)
/* 042D64 80042164 0C0106EF */  jal   func_80041BBC
/* 042D68 80042168 27A40020 */   addiu $a0, $sp, 0x20
/* 042D6C 8004216C 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042D70 80042170 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042D74 80042174 8CCF0000 */  lw    $t7, ($a2)
/* 042D78 80042178 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042D7C 8004217C 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042D80 80042180 000FC180 */  sll   $t8, $t7, 6
/* 042D84 80042184 27A50020 */  addiu $a1, $sp, 0x20
/* 042D88 80042188 01D82021 */  addu  $a0, $t6, $t8
/* 042D8C 8004218C 0C008860 */  jal   func_80022180
/* 042D90 80042190 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042D94 80042194 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042D98 80042198 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042D9C 8004219C 8C830000 */  lw    $v1, ($a0)
/* 042DA0 800421A0 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042DA4 800421A4 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042DA8 800421A8 24790008 */  addiu $t9, $v1, 8
/* 042DAC 800421AC AC990000 */  sw    $t9, ($a0)
/* 042DB0 800421B0 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042DB4 800421B4 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042DB8 800421B8 AC680000 */  sw    $t0, ($v1)
/* 042DBC 800421BC 8CCA0000 */  lw    $t2, ($a2)
/* 042DC0 800421C0 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042DC4 800421C4 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042DC8 800421C8 000A5980 */  sll   $t3, $t2, 6
/* 042DCC 800421CC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042DD0 800421D0 012B6021 */  addu  $t4, $t1, $t3
/* 042DD4 800421D4 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042DD8 800421D8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042DDC 800421DC 01A17824 */  and   $t7, $t5, $at
/* 042DE0 800421E0 AC6F0004 */  sw    $t7, 4($v1)
/* 042DE4 800421E4 8CCE0000 */  lw    $t6, ($a2)
/* 042DE8 800421E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042DEC 800421EC 27BD0060 */  addiu $sp, $sp, 0x60
/* 042DF0 800421F0 25D80001 */  addiu $t8, $t6, 1
/* 042DF4 800421F4 03E00008 */  jr    $ra
/* 042DF8 800421F8 ACD80000 */   sw    $t8, ($a2)

/* 042DFC 800421FC 27BDFF90 */  addiu $sp, $sp, -0x70
/* 042E00 80042200 AFA50074 */  sw    $a1, 0x74($sp)
/* 042E04 80042204 00802825 */  move  $a1, $a0
/* 042E08 80042208 AFBF001C */  sw    $ra, 0x1c($sp)
/* 042E0C 8004220C AFA40070 */  sw    $a0, 0x70($sp)
/* 042E10 80042210 AFA60078 */  sw    $a2, 0x78($sp)
/* 042E14 80042214 8FA60074 */  lw    $a2, 0x74($sp)
/* 042E18 80042218 AFB00018 */  sw    $s0, 0x18($sp)
/* 042E1C 8004221C 0C01069E */  jal   func_80041A78
/* 042E20 80042220 27A40030 */   addiu $a0, $sp, 0x30
/* 042E24 80042224 3C108019 */  lui   $s0, %hi(D_8018D120) # $s0, 0x8019
/* 042E28 80042228 2610D120 */  addiu $s0, %lo(D_8018D120) # addiu $s0, $s0, -0x2ee0
/* 042E2C 8004222C 8E0F0000 */  lw    $t7, ($s0)
/* 042E30 80042230 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042E34 80042234 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042E38 80042238 000FC180 */  sll   $t8, $t7, 6
/* 042E3C 8004223C 27A50030 */  addiu $a1, $sp, 0x30
/* 042E40 80042240 01D82021 */  addu  $a0, $t6, $t8
/* 042E44 80042244 0C008860 */  jal   func_80022180
/* 042E48 80042248 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042E4C 8004224C 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 042E50 80042250 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 042E54 80042254 8CC30000 */  lw    $v1, ($a2)
/* 042E58 80042258 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042E5C 8004225C 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042E60 80042260 24790008 */  addiu $t9, $v1, 8
/* 042E64 80042264 ACD90000 */  sw    $t9, ($a2)
/* 042E68 80042268 AC680000 */  sw    $t0, ($v1)
/* 042E6C 8004226C 8E0A0000 */  lw    $t2, ($s0)
/* 042E70 80042270 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042E74 80042274 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042E78 80042278 000A5980 */  sll   $t3, $t2, 6
/* 042E7C 8004227C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042E80 80042280 012B6021 */  addu  $t4, $t1, $t3
/* 042E84 80042284 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042E88 80042288 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042E8C 8004228C 01A17824 */  and   $t7, $t5, $at
/* 042E90 80042290 AC6F0004 */  sw    $t7, 4($v1)
/* 042E94 80042294 8E0E0000 */  lw    $t6, ($s0)
/* 042E98 80042298 8FA50078 */  lw    $a1, 0x78($sp)
/* 042E9C 8004229C 27A40030 */  addiu $a0, $sp, 0x30
/* 042EA0 800422A0 25D80001 */  addiu $t8, $t6, 1
/* 042EA4 800422A4 0C0106DA */  jal   func_80041B68
/* 042EA8 800422A8 AE180000 */   sw    $t8, ($s0)
/* 042EAC 800422AC 8E080000 */  lw    $t0, ($s0)
/* 042EB0 800422B0 3C198015 */  lui   $t9, %hi(gGfxPool) # $t9, 0x8015
/* 042EB4 800422B4 8F39EF40 */  lw    $t9, %lo(gGfxPool)($t9)
/* 042EB8 800422B8 00085180 */  sll   $t2, $t0, 6
/* 042EBC 800422BC 27A50030 */  addiu $a1, $sp, 0x30
/* 042EC0 800422C0 032A2021 */  addu  $a0, $t9, $t2
/* 042EC4 800422C4 0C008860 */  jal   func_80022180
/* 042EC8 800422C8 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042ECC 800422CC 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042ED0 800422D0 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042ED4 800422D4 8C830000 */  lw    $v1, ($a0)
/* 042ED8 800422D8 3C0B0100 */  lui   $t3, (0x01000040 >> 16) # lui $t3, 0x100
/* 042EDC 800422DC 356B0040 */  ori   $t3, (0x01000040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 042EE0 800422E0 24690008 */  addiu $t1, $v1, 8
/* 042EE4 800422E4 AC890000 */  sw    $t1, ($a0)
/* 042EE8 800422E8 AC6B0000 */  sw    $t3, ($v1)
/* 042EEC 800422EC 8E0D0000 */  lw    $t5, ($s0)
/* 042EF0 800422F0 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 042EF4 800422F4 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 042EF8 800422F8 000D7980 */  sll   $t7, $t5, 6
/* 042EFC 800422FC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042F00 80042300 018F7021 */  addu  $t6, $t4, $t7
/* 042F04 80042304 25D802C0 */  addiu $t8, $t6, 0x2c0
/* 042F08 80042308 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042F0C 8004230C 03014024 */  and   $t0, $t8, $at
/* 042F10 80042310 AC680004 */  sw    $t0, 4($v1)
/* 042F14 80042314 8E190000 */  lw    $t9, ($s0)
/* 042F18 80042318 8FBF001C */  lw    $ra, 0x1c($sp)
/* 042F1C 8004231C 272A0001 */  addiu $t2, $t9, 1
/* 042F20 80042320 AE0A0000 */  sw    $t2, ($s0)
/* 042F24 80042324 8FB00018 */  lw    $s0, 0x18($sp)
/* 042F28 80042328 03E00008 */  jr    $ra
/* 042F2C 8004232C 27BD0070 */   addiu $sp, $sp, 0x70
