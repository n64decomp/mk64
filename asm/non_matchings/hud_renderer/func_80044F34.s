glabel func_80044F34
/* 045B34 80044F34 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 045B38 80044F38 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 045B3C 80044F3C 8C620000 */  lw    $v0, ($v1)
/* 045B40 80044F40 3C0FFD90 */  lui   $t7, 0xfd90
/* 045B44 80044F44 3C0C0708 */  lui   $t4, (0x07080200 >> 16) # lui $t4, 0x708
/* 045B48 80044F48 244E0008 */  addiu $t6, $v0, 8
/* 045B4C 80044F4C AC6E0000 */  sw    $t6, ($v1)
/* 045B50 80044F50 AC4F0000 */  sw    $t7, ($v0)
/* 045B54 80044F54 AC440004 */  sw    $a0, 4($v0)
/* 045B58 80044F58 8C620000 */  lw    $v0, ($v1)
/* 045B5C 80044F5C 00A60019 */  multu $a1, $a2
/* 045B60 80044F60 358C0200 */  ori   $t4, (0x07080200 & 0xFFFF) # ori $t4, $t4, 0x200
/* 045B64 80044F64 24580008 */  addiu $t8, $v0, 8
/* 045B68 80044F68 AC780000 */  sw    $t8, ($v1)
/* 045B6C 80044F6C 3C19F590 */  lui   $t9, 0xf590
/* 045B70 80044F70 AC590000 */  sw    $t9, ($v0)
/* 045B74 80044F74 AC4C0004 */  sw    $t4, 4($v0)
/* 045B78 80044F78 00404825 */  move  $t1, $v0
/* 045B7C 80044F7C 8C620000 */  lw    $v0, ($v1)
/* 045B80 80044F80 3C0EE600 */  lui   $t6, 0xe600
/* 045B84 80044F84 00005812 */  mflo  $t3
/* 045B88 80044F88 244D0008 */  addiu $t5, $v0, 8
/* 045B8C 80044F8C AC6D0000 */  sw    $t5, ($v1)
/* 045B90 80044F90 AC4E0000 */  sw    $t6, ($v0)
/* 045B94 80044F94 AC400004 */  sw    $zero, 4($v0)
/* 045B98 80044F98 00405025 */  move  $t2, $v0
/* 045B9C 80044F9C 8C620000 */  lw    $v0, ($v1)
/* 045BA0 80044FA0 256B0003 */  addiu $t3, $t3, 3
/* 045BA4 80044FA4 000BC883 */  sra   $t9, $t3, 2
/* 045BA8 80044FA8 272BFFFF */  addiu $t3, $t9, -1
/* 045BAC 80044FAC 244F0008 */  addiu $t7, $v0, 8
/* 045BB0 80044FB0 AC6F0000 */  sw    $t7, ($v1)
/* 045BB4 80044FB4 296107FF */  slti  $at, $t3, 0x7ff
/* 045BB8 80044FB8 3C18F300 */  lui   $t8, 0xf300
/* 045BBC 80044FBC AC580000 */  sw    $t8, ($v0)
/* 045BC0 80044FC0 10200003 */  beqz  $at, .L80044FD0
/* 045BC4 80044FC4 00403825 */   move  $a3, $v0
/* 045BC8 80044FC8 10000002 */  b     .L80044FD4
/* 045BCC 80044FCC 01602025 */   move  $a0, $t3
.L80044FD0:
/* 045BD0 80044FD0 240407FF */  li    $a0, 2047
.L80044FD4:
/* 045BD4 80044FD4 04A10003 */  bgez  $a1, .L80044FE4
/* 045BD8 80044FD8 00054103 */   sra   $t0, $a1, 4
/* 045BDC 80044FDC 24A1000F */  addiu $at, $a1, 0xf
/* 045BE0 80044FE0 00014103 */  sra   $t0, $at, 4
.L80044FE4:
/* 045BE4 80044FE4 250F07FF */  addiu $t7, $t0, 0x7ff
/* 045BE8 80044FE8 01E8001A */  div   $zero, $t7, $t0
/* 045BEC 80044FEC 308C0FFF */  andi  $t4, $a0, 0xfff
/* 045BF0 80044FF0 000C6B00 */  sll   $t5, $t4, 0xc
/* 045BF4 80044FF4 0000C012 */  mflo  $t8
/* 045BF8 80044FF8 3C010700 */  lui   $at, 0x700
/* 045BFC 80044FFC 01A17025 */  or    $t6, $t5, $at
/* 045C00 80045000 33190FFF */  andi  $t9, $t8, 0xfff
/* 045C04 80045004 01D96025 */  or    $t4, $t6, $t9
/* 045C08 80045008 ACEC0004 */  sw    $t4, 4($a3)
/* 045C0C 8004500C 8C620000 */  lw    $v0, ($v1)
/* 045C10 80045010 15000002 */  bnez  $t0, .L8004501C
/* 045C14 80045014 00000000 */   nop
/* 045C18 80045018 0007000D */  break 7
.L8004501C:
/* 045C1C 8004501C 2401FFFF */  li    $at, -1
/* 045C20 80045020 15010004 */  bne   $t0, $at, .L80045034
/* 045C24 80045024 3C018000 */   lui   $at, 0x8000
/* 045C28 80045028 15E10002 */  bne   $t7, $at, .L80045034
/* 045C2C 8004502C 00000000 */   nop
/* 045C30 80045030 0006000D */  break 6
.L80045034:
/* 045C34 80045034 244D0008 */  addiu $t5, $v0, 8
/* 045C38 80045038 AC6D0000 */  sw    $t5, ($v1)
/* 045C3C 8004503C 3C0FE700 */  lui   $t7, 0xe700
/* 045C40 80045040 AC4F0000 */  sw    $t7, ($v0)
/* 045C44 80045044 AC400004 */  sw    $zero, 4($v0)
/* 045C48 80045048 00404825 */  move  $t1, $v0
/* 045C4C 8004504C 8C620000 */  lw    $v0, ($v1)
/* 045C50 80045050 00057043 */  sra   $t6, $a1, 1
/* 045C54 80045054 25D90007 */  addiu $t9, $t6, 7
/* 045C58 80045058 001960C3 */  sra   $t4, $t9, 3
/* 045C5C 8004505C 24580008 */  addiu $t8, $v0, 8
/* 045C60 80045060 AC780000 */  sw    $t8, ($v1)
/* 045C64 80045064 318D01FF */  andi  $t5, $t4, 0x1ff
/* 045C68 80045068 000D7A40 */  sll   $t7, $t5, 9
/* 045C6C 8004506C 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 045C70 80045070 3C01F580 */  lui   $at, 0xf580
/* 045C74 80045074 01E1C025 */  or    $t8, $t7, $at
/* 045C78 80045078 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 045C7C 8004507C AC4E0004 */  sw    $t6, 4($v0)
/* 045C80 80045080 AC580000 */  sw    $t8, ($v0)
/* 045C84 80045084 00405025 */  move  $t2, $v0
/* 045C88 80045088 8C620000 */  lw    $v0, ($v1)
/* 045C8C 8004508C 24ADFFFF */  addiu $t5, $a1, -1
/* 045C90 80045090 3C0CF200 */  lui   $t4, 0xf200
/* 045C94 80045094 24590008 */  addiu $t9, $v0, 8
/* 045C98 80045098 AC790000 */  sw    $t9, ($v1)
/* 045C9C 8004509C 24D9FFFF */  addiu $t9, $a2, -1
/* 045CA0 800450A0 000D7880 */  sll   $t7, $t5, 2
/* 045CA4 800450A4 AC4C0000 */  sw    $t4, ($v0)
/* 045CA8 800450A8 00196080 */  sll   $t4, $t9, 2
/* 045CAC 800450AC 31F80FFF */  andi  $t8, $t7, 0xfff
/* 045CB0 800450B0 00187300 */  sll   $t6, $t8, 0xc
/* 045CB4 800450B4 318D0FFF */  andi  $t5, $t4, 0xfff
/* 045CB8 800450B8 01CD7825 */  or    $t7, $t6, $t5
/* 045CBC 800450BC AC4F0004 */  sw    $t7, 4($v0)
/* 045CC0 800450C0 03E00008 */  jr    $ra
/* 045CC4 800450C4 00405825 */   move  $t3, $v0
