glabel render_koopa_troopa_beach
/* 0FCC08 802935F8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCC0C 802935FC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCC10 80293600 8C620000 */  lw    $v0, ($v1)
/* 0FCC14 80293604 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FCC18 80293608 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FCC1C 8029360C 244E0008 */  addiu $t6, $v0, 8
/* 0FCC20 80293610 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FCC24 80293614 AC6E0000 */  sw    $t6, ($v1)
/* 0FCC28 80293618 3C0FE700 */  lui   $t7, 0xe700
/* 0FCC2C 8029361C AC4F0000 */  sw    $t7, ($v0)
/* 0FCC30 80293620 AC400004 */  sw    $zero, 4($v0)
/* 0FCC34 80293624 8C620000 */  lw    $v0, ($v1)
/* 0FCC38 80293628 3C19BB00 */  lui   $t9, (0xBB000001 >> 16) # lui $t9, 0xbb00
/* 0FCC3C 8029362C 37390001 */  ori   $t9, (0xBB000001 & 0xFFFF) # ori $t9, $t9, 1
/* 0FCC40 80293630 24580008 */  addiu $t8, $v0, 8
/* 0FCC44 80293634 AC780000 */  sw    $t8, ($v1)
/* 0FCC48 80293638 240BFFFF */  li    $t3, -1
/* 0FCC4C 8029363C AC4B0004 */  sw    $t3, 4($v0)
/* 0FCC50 80293640 AC590000 */  sw    $t9, ($v0)
/* 0FCC54 80293644 8C620000 */  lw    $v0, ($v1)
/* 0FCC58 80293648 3C0E0002 */  lui   $t6, 2
/* 0FCC5C 8029364C 3C0DB600 */  lui   $t5, 0xb600
/* 0FCC60 80293650 244C0008 */  addiu $t4, $v0, 8
/* 0FCC64 80293654 AC6C0000 */  sw    $t4, ($v1)
/* 0FCC68 80293658 AC4E0004 */  sw    $t6, 4($v0)
/* 0FCC6C 8029365C AC4D0000 */  sw    $t5, ($v0)
/* 0FCC70 80293660 8C620000 */  lw    $v0, ($v1)
/* 0FCC74 80293664 24190200 */  li    $t9, 512
/* 0FCC78 80293668 3C18B700 */  lui   $t8, 0xb700
/* 0FCC7C 8029366C 244F0008 */  addiu $t7, $v0, 8
/* 0FCC80 80293670 AC6F0000 */  sw    $t7, ($v1)
/* 0FCC84 80293674 AC590004 */  sw    $t9, 4($v0)
/* 0FCC88 80293678 AC580000 */  sw    $t8, ($v0)
/* 0FCC8C 8029367C 8FAB0018 */  lw    $t3, 0x18($sp)
/* 0FCC90 80293680 0C0A4308 */  jal   func_80290C20
/* 0FCC94 80293684 8D640004 */   lw    $a0, 4($t3)
/* 0FCC98 80293688 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCC9C 8029368C 24010001 */  li    $at, 1
/* 0FCCA0 80293690 1441001B */  bne   $v0, $at, .L80293700
/* 0FCCA4 80293694 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCCA8 80293698 8C620000 */  lw    $v0, ($v1)
/* 0FCCAC 8029369C 3C0DFCFF */  lui   $t5, (0xFCFFFFFF >> 16) # lui $t5, 0xfcff
/* 0FCCB0 802936A0 3C0EFFFE */  lui   $t6, (0xFFFE793C >> 16) # lui $t6, 0xfffe
/* 0FCCB4 802936A4 244C0008 */  addiu $t4, $v0, 8
/* 0FCCB8 802936A8 AC6C0000 */  sw    $t4, ($v1)
/* 0FCCBC 802936AC 35CE793C */  ori   $t6, (0xFFFE793C & 0xFFFF) # ori $t6, $t6, 0x793c
/* 0FCCC0 802936B0 35ADFFFF */  ori   $t5, (0xFCFFFFFF & 0xFFFF) # ori $t5, $t5, 0xffff
/* 0FCCC4 802936B4 AC4D0000 */  sw    $t5, ($v0)
/* 0FCCC8 802936B8 AC4E0004 */  sw    $t6, 4($v0)
/* 0FCCCC 802936BC 8C620000 */  lw    $v0, ($v1)
/* 0FCCD0 802936C0 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FCCD4 802936C4 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FCCD8 802936C8 244F0008 */  addiu $t7, $v0, 8
/* 0FCCDC 802936CC AC6F0000 */  sw    $t7, ($v1)
/* 0FCCE0 802936D0 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FCCE4 802936D4 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FCCE8 802936D8 AC580000 */  sw    $t8, ($v0)
/* 0FCCEC 802936DC AC590004 */  sw    $t9, 4($v0)
/* 0FCCF0 802936E0 8C620000 */  lw    $v0, ($v1)
/* 0FCCF4 802936E4 3C0D0700 */  lui   $t5, (0x07009CC0 >> 16) # lui $t5, 0x700
/* 0FCCF8 802936E8 35AD9CC0 */  ori   $t5, (0x07009CC0 & 0xFFFF) # ori $t5, $t5, 0x9cc0
/* 0FCCFC 802936EC 244B0008 */  addiu $t3, $v0, 8
/* 0FCD00 802936F0 AC6B0000 */  sw    $t3, ($v1)
/* 0FCD04 802936F4 3C0C0600 */  lui   $t4, 0x600
/* 0FCD08 802936F8 AC4C0000 */  sw    $t4, ($v0)
/* 0FCD0C 802936FC AC4D0004 */  sw    $t5, 4($v0)
.L80293700:
/* 0FCD10 80293700 8C620000 */  lw    $v0, ($v1)
/* 0FCD14 80293704 3C0FFC12 */  lui   $t7, (0xFC121824 >> 16) # lui $t7, 0xfc12
/* 0FCD18 80293708 3C18FF33 */  lui   $t8, (0xFF33FFFF >> 16) # lui $t8, 0xff33
/* 0FCD1C 8029370C 244E0008 */  addiu $t6, $v0, 8
/* 0FCD20 80293710 AC6E0000 */  sw    $t6, ($v1)
/* 0FCD24 80293714 3718FFFF */  ori   $t8, (0xFF33FFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 0FCD28 80293718 35EF1824 */  ori   $t7, (0xFC121824 & 0xFFFF) # ori $t7, $t7, 0x1824
/* 0FCD2C 8029371C AC4F0000 */  sw    $t7, ($v0)
/* 0FCD30 80293720 AC580004 */  sw    $t8, 4($v0)
/* 0FCD34 80293724 8C620000 */  lw    $v0, ($v1)
/* 0FCD38 80293728 3C0BB900 */  lui   $t3, (0xB900031D >> 16) # lui $t3, 0xb900
/* 0FCD3C 8029372C 3C0C0055 */  lui   $t4, (0x00552078 >> 16) # lui $t4, 0x55
/* 0FCD40 80293730 24590008 */  addiu $t9, $v0, 8
/* 0FCD44 80293734 AC790000 */  sw    $t9, ($v1)
/* 0FCD48 80293738 358C2078 */  ori   $t4, (0x00552078 & 0xFFFF) # ori $t4, $t4, 0x2078
/* 0FCD4C 8029373C 356B031D */  ori   $t3, (0xB900031D & 0xFFFF) # ori $t3, $t3, 0x31d
/* 0FCD50 80293740 AC4B0000 */  sw    $t3, ($v0)
/* 0FCD54 80293744 AC4C0004 */  sw    $t4, 4($v0)
/* 0FCD58 80293748 8C620000 */  lw    $v0, ($v1)
/* 0FCD5C 8029374C 3C0F0700 */  lui   $t7, (0x07009688 >> 16) # lui $t7, 0x700
/* 0FCD60 80293750 35EF9688 */  ori   $t7, (0x07009688 & 0xFFFF) # ori $t7, $t7, 0x9688
/* 0FCD64 80293754 244D0008 */  addiu $t5, $v0, 8
/* 0FCD68 80293758 AC6D0000 */  sw    $t5, ($v1)
/* 0FCD6C 8029375C 3C0E0600 */  lui   $t6, 0x600
/* 0FCD70 80293760 3C040602 */  lui   $a0, %hi(koopa_troopa_beach_dls) # $a0, 0x602
/* 0FCD74 80293764 AC4E0000 */  sw    $t6, ($v0)
/* 0FCD78 80293768 AC4F0004 */  sw    $t7, 4($v0)
/* 0FCD7C 8029376C 8FA50018 */  lw    $a1, 0x18($sp)
/* 0FCD80 80293770 0C0A436B */  jal   load_surface_map
/* 0FCD84 80293774 24849328 */   addiu $a0, %lo(koopa_troopa_beach_dls) # addiu $a0, $a0, -0x6cd8
/* 0FCD88 80293778 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCD8C 8029377C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCD90 80293780 8C620000 */  lw    $v0, ($v1)
/* 0FCD94 80293784 240A2000 */  li    $t2, 8192
/* 0FCD98 80293788 3C19B600 */  lui   $t9, 0xb600
/* 0FCD9C 8029378C 24580008 */  addiu $t8, $v0, 8
/* 0FCDA0 80293790 AC780000 */  sw    $t8, ($v1)
/* 0FCDA4 80293794 AC4A0004 */  sw    $t2, 4($v0)
/* 0FCDA8 80293798 AC590000 */  sw    $t9, ($v0)
/* 0FCDAC 8029379C 8C620000 */  lw    $v0, ($v1)
/* 0FCDB0 802937A0 3C0CFC12 */  lui   $t4, (0xFC127E24 >> 16) # lui $t4, 0xfc12
/* 0FCDB4 802937A4 358C7E24 */  ori   $t4, (0xFC127E24 & 0xFFFF) # ori $t4, $t4, 0x7e24
/* 0FCDB8 802937A8 244B0008 */  addiu $t3, $v0, 8
/* 0FCDBC 802937AC AC6B0000 */  sw    $t3, ($v1)
/* 0FCDC0 802937B0 240DF3F9 */  li    $t5, -3079
/* 0FCDC4 802937B4 AC4D0004 */  sw    $t5, 4($v0)
/* 0FCDC8 802937B8 AC4C0000 */  sw    $t4, ($v0)
/* 0FCDCC 802937BC 8C620000 */  lw    $v0, ($v1)
/* 0FCDD0 802937C0 3C180055 */  lui   $t8, (0x00553078 >> 16) # lui $t8, 0x55
/* 0FCDD4 802937C4 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 0FCDD8 802937C8 244E0008 */  addiu $t6, $v0, 8
/* 0FCDDC 802937CC AC6E0000 */  sw    $t6, ($v1)
/* 0FCDE0 802937D0 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 0FCDE4 802937D4 37183078 */  ori   $t8, (0x00553078 & 0xFFFF) # ori $t8, $t8, 0x3078
/* 0FCDE8 802937D8 AC580004 */  sw    $t8, 4($v0)
/* 0FCDEC 802937DC AC4F0000 */  sw    $t7, ($v0)
/* 0FCDF0 802937E0 8C620000 */  lw    $v0, ($v1)
/* 0FCDF4 802937E4 3C0C0700 */  lui   $t4, (0x070002C0 >> 16) # lui $t4, 0x700
/* 0FCDF8 802937E8 358C02C0 */  ori   $t4, (0x070002C0 & 0xFFFF) # ori $t4, $t4, 0x2c0
/* 0FCDFC 802937EC 24590008 */  addiu $t9, $v0, 8
/* 0FCE00 802937F0 AC790000 */  sw    $t9, ($v1)
/* 0FCE04 802937F4 3C0B0600 */  lui   $t3, 0x600
/* 0FCE08 802937F8 AC4B0000 */  sw    $t3, ($v0)
/* 0FCE0C 802937FC AC4C0004 */  sw    $t4, 4($v0)
/* 0FCE10 80293800 8C620000 */  lw    $v0, ($v1)
/* 0FCE14 80293804 3C0EB700 */  lui   $t6, 0xb700
/* 0FCE18 80293808 3C18E700 */  lui   $t8, 0xe700
/* 0FCE1C 8029380C 244D0008 */  addiu $t5, $v0, 8
/* 0FCE20 80293810 AC6D0000 */  sw    $t5, ($v1)
/* 0FCE24 80293814 AC4A0004 */  sw    $t2, 4($v0)
/* 0FCE28 80293818 AC4E0000 */  sw    $t6, ($v0)
/* 0FCE2C 8029381C 8C620000 */  lw    $v0, ($v1)
/* 0FCE30 80293820 244F0008 */  addiu $t7, $v0, 8
/* 0FCE34 80293824 AC6F0000 */  sw    $t7, ($v1)
/* 0FCE38 80293828 AC400004 */  sw    $zero, 4($v0)
/* 0FCE3C 8029382C AC580000 */  sw    $t8, ($v0)
/* 0FCE40 80293830 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FCE44 80293834 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FCE48 80293838 03E00008 */  jr    $ra
/* 0FCE4C 8029383C 00000000 */   nop   
