glabel func_8029E7DC
/* 107DEC 8029E7DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 107DF0 8029E7E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 107DF4 8029E7E4 84820002 */  lh    $v0, 2($a0)
/* 107DF8 8029E7E8 00803025 */  move  $a2, $a0
/* 107DFC 8029E7EC 24840018 */  addiu $a0, $a0, 0x18
/* 107E00 8029E7F0 304E0200 */  andi  $t6, $v0, 0x200
/* 107E04 8029E7F4 11C00006 */  beqz  $t6, .L8029E810
/* 107E08 8029E7F8 304F0100 */   andi  $t7, $v0, 0x100
/* 107E0C 8029E7FC 3C051901 */  lui   $a1, (0x19019053 >> 16) # lui $a1, 0x1901
/* 107E10 8029E800 0C032678 */  jal   func_800C99E0
/* 107E14 8029E804 34A59053 */   ori   $a1, (0x19019053 & 0xFFFF) # ori $a1, $a1, 0x9053
/* 107E18 8029E808 1000000F */  b     .L8029E848
/* 107E1C 8029E80C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8029E810:
/* 107E20 8029E810 11E00007 */  beqz  $t7, .L8029E830
/* 107E24 8029E814 30580080 */   andi  $t8, $v0, 0x80
/* 107E28 8029E818 3C051901 */  lui   $a1, (0x19018010 >> 16) # lui $a1, 0x1901
/* 107E2C 8029E81C 34A58010 */  ori   $a1, (0x19018010 & 0xFFFF) # ori $a1, $a1, 0x8010
/* 107E30 8029E820 0C032678 */  jal   func_800C99E0
/* 107E34 8029E824 24C40018 */   addiu $a0, $a2, 0x18
/* 107E38 8029E828 10000007 */  b     .L8029E848
/* 107E3C 8029E82C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8029E830:
/* 107E40 8029E830 13000004 */  beqz  $t8, .L8029E844
/* 107E44 8029E834 24C40018 */   addiu $a0, $a2, 0x18
/* 107E48 8029E838 3C051900 */  lui   $a1, (0x19008054 >> 16) # lui $a1, 0x1900
/* 107E4C 8029E83C 0C032678 */  jal   func_800C99E0
/* 107E50 8029E840 34A58054 */   ori   $a1, (0x19008054 & 0xFFFF) # ori $a1, $a1, 0x8054
.L8029E844:
/* 107E54 8029E844 8FBF0014 */  lw    $ra, 0x14($sp)
.L8029E848:
/* 107E58 8029E848 27BD0018 */  addiu $sp, $sp, 0x18
/* 107E5C 8029E84C 03E00008 */  jr    $ra
/* 107E60 8029E850 00000000 */   nop   
