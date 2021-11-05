glabel render_yoshi_valley
/* 0FC9E8 802933D8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FC9EC 802933DC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FC9F0 802933E0 8C620000 */  lw    $v0, ($v1)
/* 0FC9F4 802933E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FC9F8 802933E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FC9FC 802933EC 244E0008 */  addiu $t6, $v0, 8
/* 0FCA00 802933F0 AC6E0000 */  sw    $t6, ($v1)
/* 0FCA04 802933F4 3C0FE700 */  lui   $t7, 0xe700
/* 0FCA08 802933F8 AC4F0000 */  sw    $t7, ($v0)
/* 0FCA0C 802933FC AC400004 */  sw    $zero, 4($v0)
/* 0FCA10 80293400 8C620000 */  lw    $v0, ($v1)
/* 0FCA14 80293404 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FCA18 80293408 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FCA1C 8029340C 24580008 */  addiu $t8, $v0, 8
/* 0FCA20 80293410 AC780000 */  sw    $t8, ($v1)
/* 0FCA24 80293414 240AF9FC */  li    $t2, -1540
/* 0FCA28 80293418 AC4A0004 */  sw    $t2, 4($v0)
/* 0FCA2C 8029341C AC590000 */  sw    $t9, ($v0)
/* 0FCA30 80293420 8C620000 */  lw    $v0, ($v1)
/* 0FCA34 80293424 3C0CB900 */  lui   $t4, (0xB900031D >> 16) # lui $t4, 0xb900
/* 0FCA38 80293428 3C0D0055 */  lui   $t5, (0x00552078 >> 16) # lui $t5, 0x55
/* 0FCA3C 8029342C 244B0008 */  addiu $t3, $v0, 8
/* 0FCA40 80293430 AC6B0000 */  sw    $t3, ($v1)
/* 0FCA44 80293434 35AD2078 */  ori   $t5, (0x00552078 & 0xFFFF) # ori $t5, $t5, 0x2078
/* 0FCA48 80293438 358C031D */  ori   $t4, (0xB900031D & 0xFFFF) # ori $t4, $t4, 0x31d
/* 0FCA4C 8029343C AC4C0000 */  sw    $t4, ($v0)
/* 0FCA50 80293440 AC4D0004 */  sw    $t5, 4($v0)
/* 0FCA54 80293444 8C620000 */  lw    $v0, ($v1)
/* 0FCA58 80293448 00802825 */  move  $a1, $a0
/* 0FCA5C 8029344C 3C180002 */  lui   $t8, 2
/* 0FCA60 80293450 244E0008 */  addiu $t6, $v0, 8
/* 0FCA64 80293454 AC6E0000 */  sw    $t6, ($v1)
/* 0FCA68 80293458 3C0FB600 */  lui   $t7, 0xb600
/* 0FCA6C 8029345C 3C040602 */  lui   $a0, %hi(yoshi_valley_dls) # $a0, 0x602
/* 0FCA70 80293460 248483F0 */  addiu $a0, %lo(yoshi_valley_dls) # addiu $a0, $a0, -0x7c10
/* 0FCA74 80293464 AC4F0000 */  sw    $t7, ($v0)
/* 0FCA78 80293468 0C0A436B */  jal   load_surface_map
/* 0FCA7C 8029346C AC580004 */   sw    $t8, 4($v0)
/* 0FCA80 80293470 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCA84 80293474 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCA88 80293478 8C620000 */  lw    $v0, ($v1)
/* 0FCA8C 8029347C 3C0AE700 */  lui   $t2, 0xe700
/* 0FCA90 80293480 24590008 */  addiu $t9, $v0, 8
/* 0FCA94 80293484 AC790000 */  sw    $t9, ($v1)
/* 0FCA98 80293488 AC400004 */  sw    $zero, 4($v0)
/* 0FCA9C 8029348C AC4A0000 */  sw    $t2, ($v0)
/* 0FCAA0 80293490 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FCAA4 80293494 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FCAA8 80293498 03E00008 */  jr    $ra
/* 0FCAAC 8029349C 00000000 */   nop   
