glabel func_80099E60
/* 09AA60 80099E60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09AA64 80099E64 3C028019 */  lui   $v0, %hi(D_8018E0E8) # 0x8019
/* 09AA68 80099E68 2443E0E8 */  addiu $v1, $v0, %lo(D_8018E0E8) # -0x1f18
/* 09AA6C 80099E6C AFBF0014 */  sw    $ra, 0x14($sp)
/* 09AA70 80099E70 AFA50024 */  sw    $a1, 0x24($sp)
/* 09AA74 80099E74 AFA60028 */  sw    $a2, 0x28($sp)
/* 09AA78 80099E78 8C6E0000 */  lw    $t6, ($v1)
/* 09AA7C 80099E7C 11C00005 */  beqz  $t6, .L80099E94
/* 09AA80 80099E80 00000000 */   nop   
/* 09AA84 80099E84 8C6F0008 */  lw    $t7, 8($v1)
.L80099E88:
/* 09AA88 80099E88 24630008 */  addiu $v1, $v1, 8
/* 09AA8C 80099E8C 55E0FFFE */  bnel  $t7, $zero, .L80099E88
/* 09AA90 80099E90 8C6F0008 */   lw    $t7, 8($v1)
.L80099E94:
/* 09AA94 80099E94 0C026449 */  jal   segmented_to_virtual
/* 09AA98 80099E98 AFA3001C */   sw    $v1, 0x1c($sp)
/* 09AA9C 80099E9C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 09AAA0 80099EA0 AC620000 */  sw    $v0, ($v1)
/* 09AAA4 80099EA4 8FB80024 */  lw    $t8, 0x24($sp)
/* 09AAA8 80099EA8 A4780004 */  sh    $t8, 4($v1)
/* 09AAAC 80099EAC 8FB90028 */  lw    $t9, 0x28($sp)
/* 09AAB0 80099EB0 A4790006 */  sh    $t9, 6($v1)
/* 09AAB4 80099EB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09AAB8 80099EB8 27BD0020 */  addiu $sp, $sp, 0x20
/* 09AABC 80099EBC 03E00008 */  jr    $ra
/* 09AAC0 80099EC0 00000000 */   nop   
