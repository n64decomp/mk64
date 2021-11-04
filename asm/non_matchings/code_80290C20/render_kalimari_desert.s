glabel render_kalimari_desert
/* 0FDD40 80294730 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FDD44 80294734 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FDD48 80294738 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FDD4C 8029473C 3C04800E */  lui   $a0, %hi(D_800DC610) # $a0, 0x800e
/* 0FDD50 80294740 3C05802C */  lui   $a1, %hi(D_802B87D4) # $a1, 0x802c
/* 0FDD54 80294744 84A587D4 */  lh    $a1, %lo(D_802B87D4)($a1)
/* 0FDD58 80294748 2484C610 */  addiu $a0, %lo(D_800DC610) # addiu $a0, $a0, -0x39f0
/* 0FDD5C 8029474C 00003025 */  move  $a2, $zero
/* 0FDD60 80294750 0C0AD759 */  jal   func_802B5D64
/* 0FDD64 80294754 24070001 */   li    $a3, 1
/* 0FDD68 80294758 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FDD6C 8029475C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FDD70 80294760 8C620000 */  lw    $v0, ($v1)
/* 0FDD74 80294764 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FDD78 80294768 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FDD7C 8029476C 244E0008 */  addiu $t6, $v0, 8
/* 0FDD80 80294770 AC6E0000 */  sw    $t6, ($v1)
/* 0FDD84 80294774 2418FFFF */  li    $t8, -1
/* 0FDD88 80294778 AC580004 */  sw    $t8, 4($v0)
/* 0FDD8C 8029477C AC4F0000 */  sw    $t7, ($v0)
/* 0FDD90 80294780 8C620000 */  lw    $v0, ($v1)
/* 0FDD94 80294784 3C0F0002 */  lui   $t7, 2
/* 0FDD98 80294788 3C0EB600 */  lui   $t6, 0xb600
/* 0FDD9C 8029478C 24590008 */  addiu $t9, $v0, 8
/* 0FDDA0 80294790 AC790000 */  sw    $t9, ($v1)
/* 0FDDA4 80294794 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDDA8 80294798 AC4E0000 */  sw    $t6, ($v0)
/* 0FDDAC 8029479C 8C620000 */  lw    $v0, ($v1)
/* 0FDDB0 802947A0 240E0200 */  li    $t6, 512
/* 0FDDB4 802947A4 3C19B700 */  lui   $t9, 0xb700
/* 0FDDB8 802947A8 24580008 */  addiu $t8, $v0, 8
/* 0FDDBC 802947AC AC780000 */  sw    $t8, ($v1)
/* 0FDDC0 802947B0 AC4E0004 */  sw    $t6, 4($v0)
/* 0FDDC4 802947B4 AC590000 */  sw    $t9, ($v0)
/* 0FDDC8 802947B8 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0FDDCC 802947BC 0C0A4308 */  jal   func_80290C20
/* 0FDDD0 802947C0 8DE40004 */   lw    $a0, 4($t7)
/* 0FDDD4 802947C4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FDDD8 802947C8 24010001 */  li    $at, 1
/* 0FDDDC 802947CC 1441001B */  bne   $v0, $at, .L8029483C
/* 0FDDE0 802947D0 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FDDE4 802947D4 8C620000 */  lw    $v0, ($v1)
/* 0FDDE8 802947D8 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* 0FDDEC 802947DC 3C0EFFFE */  lui   $t6, (0xFFFE793C >> 16) # lui $t6, 0xfffe
/* 0FDDF0 802947E0 24580008 */  addiu $t8, $v0, 8
/* 0FDDF4 802947E4 AC780000 */  sw    $t8, ($v1)
/* 0FDDF8 802947E8 35CE793C */  ori   $t6, (0xFFFE793C & 0xFFFF) # ori $t6, $t6, 0x793c
/* 0FDDFC 802947EC 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 0FDE00 802947F0 AC590000 */  sw    $t9, ($v0)
/* 0FDE04 802947F4 AC4E0004 */  sw    $t6, 4($v0)
/* 0FDE08 802947F8 8C620000 */  lw    $v0, ($v1)
/* 0FDE0C 802947FC 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FDE10 80294800 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FDE14 80294804 244F0008 */  addiu $t7, $v0, 8
/* 0FDE18 80294808 AC6F0000 */  sw    $t7, ($v1)
/* 0FDE1C 8029480C 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FDE20 80294810 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FDE24 80294814 AC590004 */  sw    $t9, 4($v0)
/* 0FDE28 80294818 AC580000 */  sw    $t8, ($v0)
/* 0FDE2C 8029481C 8C620000 */  lw    $v0, ($v1)
/* 0FDE30 80294820 3C0F0700 */  lui   $t7, (0x070071C8 >> 16) # lui $t7, 0x700
/* 0FDE34 80294824 3C0D0600 */  lui   $t5, 0x600
/* 0FDE38 80294828 244E0008 */  addiu $t6, $v0, 8
/* 0FDE3C 8029482C AC6E0000 */  sw    $t6, ($v1)
/* 0FDE40 80294830 35EF71C8 */  ori   $t7, (0x070071C8 & 0xFFFF) # ori $t7, $t7, 0x71c8
/* 0FDE44 80294834 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDE48 80294838 AC4D0000 */  sw    $t5, ($v0)
.L8029483C:
/* 0FDE4C 8029483C 8C620000 */  lw    $v0, ($v1)
/* 0FDE50 80294840 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FDE54 80294844 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FDE58 80294848 24580008 */  addiu $t8, $v0, 8
/* 0FDE5C 8029484C AC780000 */  sw    $t8, ($v1)
/* 0FDE60 80294850 240EF9FC */  li    $t6, -1540
/* 0FDE64 80294854 AC4E0004 */  sw    $t6, 4($v0)
/* 0FDE68 80294858 AC590000 */  sw    $t9, ($v0)
/* 0FDE6C 8029485C 8C620000 */  lw    $v0, ($v1)
/* 0FDE70 80294860 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FDE74 80294864 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FDE78 80294868 244F0008 */  addiu $t7, $v0, 8
/* 0FDE7C 8029486C AC6F0000 */  sw    $t7, ($v1)
/* 0FDE80 80294870 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FDE84 80294874 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FDE88 80294878 3C040900 */  lui   $a0, %hi(kalimari_desert_dls) # $a0, 0x900
/* 0FDE8C 8029487C AC590004 */  sw    $t9, 4($v0)
/* 0FDE90 80294880 AC580000 */  sw    $t8, ($v0)
/* 0FDE94 80294884 8FA50018 */  lw    $a1, 0x18($sp)
/* 0FDE98 80294888 0C0A436B */  jal   load_surface_map
/* 0FDE9C 8029488C 248401A0 */   addiu $a0, %lo(kalimari_desert_dls) # addiu $a0, $a0, 0x1a0
/* 0FDEA0 80294890 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FDEA4 80294894 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FDEA8 80294898 8C620000 */  lw    $v0, ($v1)
/* 0FDEAC 8029489C 3C0F0700 */  lui   $t7, (0x07001ED8 >> 16) # lui $t7, 0x700
/* 0FDEB0 802948A0 3C0D0600 */  lui   $t5, 0x600
/* 0FDEB4 802948A4 244E0008 */  addiu $t6, $v0, 8
/* 0FDEB8 802948A8 AC6E0000 */  sw    $t6, ($v1)
/* 0FDEBC 802948AC 35EF1ED8 */  ori   $t7, (0x07001ED8 & 0xFFFF) # ori $t7, $t7, 0x1ed8
/* 0FDEC0 802948B0 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDEC4 802948B4 AC4D0000 */  sw    $t5, ($v0)
/* 0FDEC8 802948B8 8C620000 */  lw    $v0, ($v1)
/* 0FDECC 802948BC 3C190700 */  lui   $t9, (0x07001B18 >> 16) # lui $t9, 0x700
/* 0FDED0 802948C0 37391B18 */  ori   $t9, (0x07001B18 & 0xFFFF) # ori $t9, $t9, 0x1b18
/* 0FDED4 802948C4 24580008 */  addiu $t8, $v0, 8
/* 0FDED8 802948C8 AC780000 */  sw    $t8, ($v1)
/* 0FDEDC 802948CC AC590004 */  sw    $t9, 4($v0)
/* 0FDEE0 802948D0 AC4D0000 */  sw    $t5, ($v0)
/* 0FDEE4 802948D4 8C620000 */  lw    $v0, ($v1)
/* 0FDEE8 802948D8 3C0F0700 */  lui   $t7, (0x07008330 >> 16) # lui $t7, 0x700
/* 0FDEEC 802948DC 35EF8330 */  ori   $t7, (0x07008330 & 0xFFFF) # ori $t7, $t7, 0x8330
/* 0FDEF0 802948E0 244E0008 */  addiu $t6, $v0, 8
/* 0FDEF4 802948E4 AC6E0000 */  sw    $t6, ($v1)
/* 0FDEF8 802948E8 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDEFC 802948EC AC4D0000 */  sw    $t5, ($v0)
/* 0FDF00 802948F0 8C620000 */  lw    $v0, ($v1)
/* 0FDF04 802948F4 241F2000 */  li    $ra, 8192
/* 0FDF08 802948F8 3C19B600 */  lui   $t9, 0xb600
/* 0FDF0C 802948FC 24580008 */  addiu $t8, $v0, 8
/* 0FDF10 80294900 AC780000 */  sw    $t8, ($v1)
/* 0FDF14 80294904 AC5F0004 */  sw    $ra, 4($v0)
/* 0FDF18 80294908 AC590000 */  sw    $t9, ($v0)
/* 0FDF1C 8029490C 8C620000 */  lw    $v0, ($v1)
/* 0FDF20 80294910 3C0FFC12 */  lui   $t7, (0xFC127E24 >> 16) # lui $t7, 0xfc12
/* 0FDF24 80294914 35EF7E24 */  ori   $t7, (0xFC127E24 & 0xFFFF) # ori $t7, $t7, 0x7e24
/* 0FDF28 80294918 244E0008 */  addiu $t6, $v0, 8
/* 0FDF2C 8029491C AC6E0000 */  sw    $t6, ($v1)
/* 0FDF30 80294920 2418F3F9 */  li    $t8, -3079
/* 0FDF34 80294924 AC580004 */  sw    $t8, 4($v0)
/* 0FDF38 80294928 AC4F0000 */  sw    $t7, ($v0)
/* 0FDF3C 8029492C 8C620000 */  lw    $v0, ($v1)
/* 0FDF40 80294930 3C0F0055 */  lui   $t7, (0x00553078 >> 16) # lui $t7, 0x55
/* 0FDF44 80294934 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 0FDF48 80294938 24590008 */  addiu $t9, $v0, 8
/* 0FDF4C 8029493C AC790000 */  sw    $t9, ($v1)
/* 0FDF50 80294940 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 0FDF54 80294944 35EF3078 */  ori   $t7, (0x00553078 & 0xFFFF) # ori $t7, $t7, 0x3078
/* 0FDF58 80294948 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDF5C 8029494C AC4E0000 */  sw    $t6, ($v0)
/* 0FDF60 80294950 8C620000 */  lw    $v0, ($v1)
/* 0FDF64 80294954 3C190700 */  lui   $t9, (0x07000998 >> 16) # lui $t9, 0x700
/* 0FDF68 80294958 37390998 */  ori   $t9, (0x07000998 & 0xFFFF) # ori $t9, $t9, 0x998
/* 0FDF6C 8029495C 24580008 */  addiu $t8, $v0, 8
/* 0FDF70 80294960 AC780000 */  sw    $t8, ($v1)
/* 0FDF74 80294964 AC590004 */  sw    $t9, 4($v0)
/* 0FDF78 80294968 AC4D0000 */  sw    $t5, ($v0)
/* 0FDF7C 8029496C 8C620000 */  lw    $v0, ($v1)
/* 0FDF80 80294970 3C0F0700 */  lui   $t7, (0x07000270 >> 16) # lui $t7, 0x700
/* 0FDF84 80294974 35EF0270 */  ori   $t7, (0x07000270 & 0xFFFF) # ori $t7, $t7, 0x270
/* 0FDF88 80294978 244E0008 */  addiu $t6, $v0, 8
/* 0FDF8C 8029497C AC6E0000 */  sw    $t6, ($v1)
/* 0FDF90 80294980 AC4F0004 */  sw    $t7, 4($v0)
/* 0FDF94 80294984 AC4D0000 */  sw    $t5, ($v0)
/* 0FDF98 80294988 8C620000 */  lw    $v0, ($v1)
/* 0FDF9C 8029498C 3C19B700 */  lui   $t9, 0xb700
/* 0FDFA0 80294990 24580008 */  addiu $t8, $v0, 8
/* 0FDFA4 80294994 AC780000 */  sw    $t8, ($v1)
/* 0FDFA8 80294998 AC5F0004 */  sw    $ra, 4($v0)
/* 0FDFAC 8029499C AC590000 */  sw    $t9, ($v0)
/* 0FDFB0 802949A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FDFB4 802949A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FDFB8 802949A8 03E00008 */  jr    $ra
/* 0FDFBC 802949AC 00000000 */   nop   
