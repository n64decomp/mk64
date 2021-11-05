glabel func_8004B05C
/* 04BC5C 8004B05C 3C0C8015 */  lui   $t4, %hi(gDisplayListHead) # $t4, 0x8015
/* 04BC60 8004B060 258C0298 */  addiu $t4, %lo(gDisplayListHead) # addiu $t4, $t4, 0x298
/* 04BC64 8004B064 8D830000 */  lw    $v1, ($t4)
/* 04BC68 8004B068 3C0FFD10 */  lui   $t7, 0xfd10
/* 04BC6C 8004B06C 3C19E800 */  lui   $t9, 0xe800
/* 04BC70 8004B070 246E0008 */  addiu $t6, $v1, 8
/* 04BC74 8004B074 AD8E0000 */  sw    $t6, ($t4)
/* 04BC78 8004B078 AC640004 */  sw    $a0, 4($v1)
/* 04BC7C 8004B07C AC6F0000 */  sw    $t7, ($v1)
/* 04BC80 8004B080 8D830000 */  lw    $v1, ($t4)
/* 04BC84 8004B084 3C0FF500 */  lui   $t7, (0xF5000100 >> 16) # lui $t7, 0xf500
/* 04BC88 8004B088 35EF0100 */  ori   $t7, (0xF5000100 & 0xFFFF) # ori $t7, $t7, 0x100
/* 04BC8C 8004B08C 24780008 */  addiu $t8, $v1, 8
/* 04BC90 8004B090 AD980000 */  sw    $t8, ($t4)
/* 04BC94 8004B094 AC600004 */  sw    $zero, 4($v1)
/* 04BC98 8004B098 AC790000 */  sw    $t9, ($v1)
/* 04BC9C 8004B09C 8D830000 */  lw    $v1, ($t4)
/* 04BCA0 8004B0A0 3C180700 */  lui   $t8, 0x700
/* 04BCA4 8004B0A4 3C0DE600 */  lui   $t5, 0xe600
/* 04BCA8 8004B0A8 246E0008 */  addiu $t6, $v1, 8
/* 04BCAC 8004B0AC AD8E0000 */  sw    $t6, ($t4)
/* 04BCB0 8004B0B0 AC780004 */  sw    $t8, 4($v1)
/* 04BCB4 8004B0B4 AC6F0000 */  sw    $t7, ($v1)
/* 04BCB8 8004B0B8 8D830000 */  lw    $v1, ($t4)
/* 04BCBC 8004B0BC 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 04BCC0 8004B0C0 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 04BCC4 8004B0C4 24790008 */  addiu $t9, $v1, 8
/* 04BCC8 8004B0C8 AD990000 */  sw    $t9, ($t4)
/* 04BCCC 8004B0CC AC600004 */  sw    $zero, 4($v1)
/* 04BCD0 8004B0D0 AC6D0000 */  sw    $t5, ($v1)
/* 04BCD4 8004B0D4 8D830000 */  lw    $v1, ($t4)
/* 04BCD8 8004B0D8 3C0FF000 */  lui   $t7, 0xf000
/* 04BCDC 8004B0DC 246E0008 */  addiu $t6, $v1, 8
/* 04BCE0 8004B0E0 AD8E0000 */  sw    $t6, ($t4)
/* 04BCE4 8004B0E4 AC780004 */  sw    $t8, 4($v1)
/* 04BCE8 8004B0E8 AC6F0000 */  sw    $t7, ($v1)
/* 04BCEC 8004B0EC 8D830000 */  lw    $v1, ($t4)
/* 04BCF0 8004B0F0 3C0EE700 */  lui   $t6, 0xe700
/* 04BCF4 8004B0F4 24790008 */  addiu $t9, $v1, 8
/* 04BCF8 8004B0F8 AD990000 */  sw    $t9, ($t4)
/* 04BCFC 8004B0FC AC600004 */  sw    $zero, 4($v1)
/* 04BD00 8004B100 AC6E0000 */  sw    $t6, ($v1)
/* 04BD04 8004B104 8D830000 */  lw    $v1, ($t4)
/* 04BD08 8004B108 3C19BA00 */  lui   $t9, (0xBA001301 >> 16) # lui $t9, 0xba00
/* 04BD0C 8004B10C 37391301 */  ori   $t9, (0xBA001301 & 0xFFFF) # ori $t9, $t9, 0x1301
/* 04BD10 8004B110 246F0008 */  addiu $t7, $v1, 8
/* 04BD14 8004B114 AD8F0000 */  sw    $t7, ($t4)
/* 04BD18 8004B118 AC600004 */  sw    $zero, 4($v1)
/* 04BD1C 8004B11C AC6D0000 */  sw    $t5, ($v1)
/* 04BD20 8004B120 8D830000 */  lw    $v1, ($t4)
/* 04BD24 8004B124 24780008 */  addiu $t8, $v1, 8
/* 04BD28 8004B128 AD980000 */  sw    $t8, ($t4)
/* 04BD2C 8004B12C AC600004 */  sw    $zero, 4($v1)
/* 04BD30 8004B130 03E00008 */  jr    $ra
/* 04BD34 8004B134 AC790000 */   sw    $t9, ($v1)
