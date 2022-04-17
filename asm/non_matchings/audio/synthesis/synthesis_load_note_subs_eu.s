glabel synthesis_load_note_subs_eu
/* 0B7BB4 800B6FB4 3C06803B */  lui   $a2, %hi(gAudioBufferParameters) # $a2, 0x803b
/* 0B7BB8 800B6FB8 24C67088 */  addiu $a2, %lo(gAudioBufferParameters) # addiu $a2, $a2, 0x7088
/* 0B7BBC 800B6FBC 84CE000C */  lh    $t6, 0xc($a2)
/* 0B7BC0 800B6FC0 24820001 */  addiu $v0, $a0, 1
/* 0B7BC4 800B6FC4 00051900 */  sll   $v1, $a1, 4
/* 0B7BC8 800B6FC8 004E082A */  slt   $at, $v0, $t6
/* 0B7BCC 800B6FCC 10200017 */  beqz  $at, .L800B702C
/* 0B7BD0 800B6FD0 3C07803B */   lui   $a3, %hi(gMaxSimultaneousNotes) # $a3, 0x803b
/* 0B7BD4 800B6FD4 3C05803B */  lui   $a1, %hi(gNoteSubsEu) # $a1, 0x803b
/* 0B7BD8 800B6FD8 24A5FBC4 */  addiu $a1, %lo(gNoteSubsEu) # addiu $a1, $a1, -0x43c
/* 0B7BDC 800B6FDC 24E770B0 */  addiu $a3, %lo(gMaxSimultaneousNotes) # addiu $a3, $a3, 0x70b0
/* 0B7BE0 800B6FE0 8CF80000 */  lw    $t8, ($a3)
.L800B6FE4:
/* 0B7BE4 800B6FE4 8CAF0000 */  lw    $t7, ($a1)
/* 0B7BE8 800B6FE8 03020019 */  multu $t8, $v0
/* 0B7BEC 800B6FEC 0000C812 */  mflo  $t9
/* 0B7BF0 800B6FF0 00194100 */  sll   $t0, $t9, 4
/* 0B7BF4 800B6FF4 01E84821 */  addu  $t1, $t7, $t0
/* 0B7BF8 800B6FF8 01232021 */  addu  $a0, $t1, $v1
/* 0B7BFC 800B6FFC 8C8A0000 */  lw    $t2, ($a0)
/* 0B7C00 800B7000 000A6040 */  sll   $t4, $t2, 1
/* 0B7C04 800B7004 05800009 */  bltz  $t4, .L800B702C
/* 0B7C08 800B7008 00000000 */   nop   
/* 0B7C0C 800B700C 908D0000 */  lbu   $t5, ($a0)
/* 0B7C10 800B7010 24420001 */  addiu $v0, $v0, 1
/* 0B7C14 800B7014 31AEFF7F */  andi  $t6, $t5, 0xff7f
/* 0B7C18 800B7018 A08E0000 */  sb    $t6, ($a0)
/* 0B7C1C 800B701C 84D8000C */  lh    $t8, 0xc($a2)
/* 0B7C20 800B7020 0058082A */  slt   $at, $v0, $t8
/* 0B7C24 800B7024 5420FFEF */  bnel  $at, $zero, .L800B6FE4
/* 0B7C28 800B7028 8CF80000 */   lw    $t8, ($a3)
.L800B702C:
/* 0B7C2C 800B702C 03E00008 */  jr    $ra
/* 0B7C30 800B7030 00000000 */   nop   
