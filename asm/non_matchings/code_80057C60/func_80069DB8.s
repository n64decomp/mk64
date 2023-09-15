glabel func_80069DB8
/* 06A9B8 80069DB8 27BDFF98 */  addiu $sp, $sp, -0x68
/* 06A9BC 80069DBC AFA60070 */  sw    $a2, 0x70($sp)
/* 06A9C0 80069DC0 00067400 */  sll   $t6, $a2, 0x10
/* 06A9C4 80069DC4 000E3403 */  sra   $a2, $t6, 0x10
/* 06A9C8 80069DC8 000678C0 */  sll   $t7, $a2, 3
/* 06A9CC 80069DCC 01E67821 */  addu  $t7, $t7, $a2
/* 06A9D0 80069DD0 0007C600 */  sll   $t8, $a3, 0x18
/* 06A9D4 80069DD4 000F78C0 */  sll   $t7, $t7, 3
/* 06A9D8 80069DD8 0018CE03 */  sra   $t9, $t8, 0x18
/* 06A9DC 80069DDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 06A9E0 80069DE0 AFA40068 */  sw    $a0, 0x68($sp)
/* 06A9E4 80069DE4 AFA5006C */  sw    $a1, 0x6c($sp)
/* 06A9E8 80069DE8 AFA70074 */  sw    $a3, 0x74($sp)
/* 06A9EC 80069DEC 008F1021 */  addu  $v0, $a0, $t7
/* 06A9F0 80069DF0 84580AE4 */  lh    $t8, 0xae4($v0)
/* 06A9F4 80069DF4 24010001 */  li    $at, 1
/* 06A9F8 80069DF8 00807025 */  move  $t6, $a0
/* 06A9FC 80069DFC 57010084 */  bnel  $t8, $at, .L8006A010
/* 06AA00 80069E00 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06AA04 80069E04 C4440AC8 */  lwc1  $f4, 0xac8($v0)
/* 06AA08 80069E08 0019C840 */  sll   $t9, $t9, 1
/* 06AA0C 80069E0C 00997821 */  addu  $t7, $a0, $t9
/* 06AA10 80069E10 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 06AA14 80069E14 C4460ACC */  lwc1  $f6, 0xacc($v0)
/* 06AA18 80069E18 27A4005C */  addiu $a0, $sp, 0x5c
/* 06AA1C 80069E1C 27A50054 */  addiu $a1, $sp, 0x54
/* 06AA20 80069E20 E7A60060 */  swc1  $f6, 0x60($sp)
/* 06AA24 80069E24 C4480AD0 */  lwc1  $f8, 0xad0($v0)
/* 06AA28 80069E28 A7A00054 */  sh    $zero, 0x54($sp)
/* 06AA2C 80069E2C E7A80064 */  swc1  $f8, 0x64($sp)
/* 06AA30 80069E30 85F80048 */  lh    $t8, 0x48($t7)
/* 06AA34 80069E34 A7A00058 */  sh    $zero, 0x58($sp)
/* 06AA38 80069E38 A7B80056 */  sh    $t8, 0x56($sp)
/* 06AA3C 80069E3C C5D00224 */  lwc1  $f16, 0x224($t6)
/* 06AA40 80069E40 C44A0AD4 */  lwc1  $f10, 0xad4($v0)
/* 06AA44 80069E44 46105482 */  mul.s $f18, $f10, $f16
/* 06AA48 80069E48 44069000 */  mfc1  $a2, $f18
/* 06AA4C 80069E4C 0C0194B5 */  jal   func_800652D4
/* 06AA50 80069E50 00000000 */   nop   
/* 06AA54 80069E54 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06AA58 80069E58 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06AA5C 80069E5C 8C620000 */  lw    $v0, ($v1)
/* 06AA60 80069E60 3C180D01 */  lui   $t8, %hi(D_0D008D58) # $t8, 0xd01
/* 06AA64 80069E64 27188D58 */  addiu $t8, %lo(D_0D008D58) # addiu $t8, $t8, -0x72a8
/* 06AA68 80069E68 24590008 */  addiu $t9, $v0, 8
/* 06AA6C 80069E6C AC790000 */  sw    $t9, ($v1)
/* 06AA70 80069E70 3C0F0600 */  lui   $t7, 0x600
/* 06AA74 80069E74 AC4F0000 */  sw    $t7, ($v0)
/* 06AA78 80069E78 AC580004 */  sw    $t8, 4($v0)
/* 06AA7C 80069E7C 8C620000 */  lw    $v0, ($v1)
/* 06AA80 80069E80 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 06AA84 80069E84 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 06AA88 80069E88 244E0008 */  addiu $t6, $v0, 8
/* 06AA8C 80069E8C AC6E0000 */  sw    $t6, ($v1)
/* 06AA90 80069E90 AC400004 */  sw    $zero, 4($v0)
/* 06AA94 80069E94 AC590000 */  sw    $t9, ($v0)
/* 06AA98 80069E98 8C620000 */  lw    $v0, ($v1)
/* 06AA9C 80069E9C 3C18FD70 */  lui   $t8, 0xfd70
/* 06AAA0 80069EA0 3C0E8019 */  lui   $t6, %hi(D_8018D49C) # $t6, 0x8019
/* 06AAA4 80069EA4 244F0008 */  addiu $t7, $v0, 8
/* 06AAA8 80069EA8 AC6F0000 */  sw    $t7, ($v1)
/* 06AAAC 80069EAC AC580000 */  sw    $t8, ($v0)
/* 06AAB0 80069EB0 8DCED49C */  lw    $t6, %lo(D_8018D49C)($t6)
/* 06AAB4 80069EB4 3C180708 */  lui   $t8, (0x07080200 >> 16) # lui $t8, 0x708
/* 06AAB8 80069EB8 37180200 */  ori   $t8, (0x07080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 06AABC 80069EBC AC4E0004 */  sw    $t6, 4($v0)
/* 06AAC0 80069EC0 8C620000 */  lw    $v0, ($v1)
/* 06AAC4 80069EC4 3C0FF570 */  lui   $t7, 0xf570
/* 06AAC8 80069EC8 240400FF */  li    $a0, 255
/* 06AACC 80069ECC 24590008 */  addiu $t9, $v0, 8
/* 06AAD0 80069ED0 AC790000 */  sw    $t9, ($v1)
/* 06AAD4 80069ED4 AC580004 */  sw    $t8, 4($v0)
/* 06AAD8 80069ED8 AC4F0000 */  sw    $t7, ($v0)
/* 06AADC 80069EDC 8C620000 */  lw    $v0, ($v1)
/* 06AAE0 80069EE0 3C19E600 */  lui   $t9, 0xe600
/* 06AAE4 80069EE4 3C18F300 */  lui   $t8, 0xf300
/* 06AAE8 80069EE8 244E0008 */  addiu $t6, $v0, 8
/* 06AAEC 80069EEC AC6E0000 */  sw    $t6, ($v1)
/* 06AAF0 80069EF0 AC400004 */  sw    $zero, 4($v0)
/* 06AAF4 80069EF4 AC590000 */  sw    $t9, ($v0)
/* 06AAF8 80069EF8 8C620000 */  lw    $v0, ($v1)
/* 06AAFC 80069EFC 3C0E070F */  lui   $t6, (0x070FF200 >> 16) # lui $t6, 0x70f
/* 06AB00 80069F00 35CEF200 */  ori   $t6, (0x070FF200 & 0xFFFF) # ori $t6, $t6, 0xf200
/* 06AB04 80069F04 244F0008 */  addiu $t7, $v0, 8
/* 06AB08 80069F08 AC6F0000 */  sw    $t7, ($v1)
/* 06AB0C 80069F0C AC4E0004 */  sw    $t6, 4($v0)
/* 06AB10 80069F10 AC580000 */  sw    $t8, ($v0)
/* 06AB14 80069F14 8C620000 */  lw    $v0, ($v1)
/* 06AB18 80069F18 3C0FE700 */  lui   $t7, 0xe700
/* 06AB1C 80069F1C 3C0EF570 */  lui   $t6, (0xF5700800 >> 16) # lui $t6, 0xf570
/* 06AB20 80069F20 24590008 */  addiu $t9, $v0, 8
/* 06AB24 80069F24 AC790000 */  sw    $t9, ($v1)
/* 06AB28 80069F28 AC400004 */  sw    $zero, 4($v0)
/* 06AB2C 80069F2C AC4F0000 */  sw    $t7, ($v0)
/* 06AB30 80069F30 8C620000 */  lw    $v0, ($v1)
/* 06AB34 80069F34 3C0F0008 */  lui   $t7, (0x00080200 >> 16) # lui $t7, 8
/* 06AB38 80069F38 35EF0200 */  ori   $t7, (0x00080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 06AB3C 80069F3C 24580008 */  addiu $t8, $v0, 8
/* 06AB40 80069F40 AC780000 */  sw    $t8, ($v1)
/* 06AB44 80069F44 AFA2002C */  sw    $v0, 0x2c($sp)
/* 06AB48 80069F48 35CE0800 */  ori   $t6, (0xF5700800 & 0xFFFF) # ori $t6, $t6, 0x800
/* 06AB4C 80069F4C AC4E0000 */  sw    $t6, ($v0)
/* 06AB50 80069F50 AC4F0004 */  sw    $t7, 4($v0)
/* 06AB54 80069F54 8C620000 */  lw    $v0, ($v1)
/* 06AB58 80069F58 3C190003 */  lui   $t9, (0x0003C03C >> 16) # lui $t9, 3
/* 06AB5C 80069F5C 3739C03C */  ori   $t9, (0x0003C03C & 0xFFFF) # ori $t9, $t9, 0xc03c
/* 06AB60 80069F60 24580008 */  addiu $t8, $v0, 8
/* 06AB64 80069F64 AC780000 */  sw    $t8, ($v1)
/* 06AB68 80069F68 3C0EF200 */  lui   $t6, 0xf200
/* 06AB6C 80069F6C AFA20028 */  sw    $v0, 0x28($sp)
/* 06AB70 80069F70 240500FF */  li    $a1, 255
/* 06AB74 80069F74 240600FF */  li    $a2, 255
/* 06AB78 80069F78 240700FF */  li    $a3, 255
/* 06AB7C 80069F7C AC590004 */  sw    $t9, 4($v0)
/* 06AB80 80069F80 0C012CD7 */  jal   func_8004B35C
/* 06AB84 80069F84 AC4E0000 */   sw    $t6, ($v0)
/* 06AB88 80069F88 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06AB8C 80069F8C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06AB90 80069F90 8C620000 */  lw    $v0, ($v1)
/* 06AB94 80069F94 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 06AB98 80069F98 3C190050 */  lui   $t9, (0x00504B50 >> 16) # lui $t9, 0x50
/* 06AB9C 80069F9C 24580008 */  addiu $t8, $v0, 8
/* 06ABA0 80069FA0 AC780000 */  sw    $t8, ($v1)
/* 06ABA4 80069FA4 37394B50 */  ori   $t9, (0x00504B50 & 0xFFFF) # ori $t9, $t9, 0x4b50
/* 06ABA8 80069FA8 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 06ABAC 80069FAC AC4E0000 */  sw    $t6, ($v0)
/* 06ABB0 80069FB0 AC590004 */  sw    $t9, 4($v0)
/* 06ABB4 80069FB4 8C620000 */  lw    $v0, ($v1)
/* 06ABB8 80069FB8 3C0E800F */  lui   $t6, %hi(D_800E8740) # $t6, 0x800f
/* 06ABBC 80069FBC 3C180400 */  lui   $t8, (0x0400103F >> 16) # lui $t8, 0x400
/* 06ABC0 80069FC0 244F0008 */  addiu $t7, $v0, 8
/* 06ABC4 80069FC4 AC6F0000 */  sw    $t7, ($v1)
/* 06ABC8 80069FC8 3718103F */  ori   $t8, (0x0400103F & 0xFFFF) # ori $t8, $t8, 0x103f
/* 06ABCC 80069FCC 25CE8740 */  addiu $t6, %lo(D_800E8740) # addiu $t6, $t6, -0x78c0
/* 06ABD0 80069FD0 AC4E0004 */  sw    $t6, 4($v0)
/* 06ABD4 80069FD4 AC580000 */  sw    $t8, ($v0)
/* 06ABD8 80069FD8 8C620000 */  lw    $v0, ($v1)
/* 06ABDC 80069FDC 3C180D01 */  lui   $t8, %hi(D_0D008DA0) # $t8, 0xd01
/* 06ABE0 80069FE0 3C078016 */  lui   $a3, %hi(D_80164AF0) # $a3, 0x8016
/* 06ABE4 80069FE4 24590008 */  addiu $t9, $v0, 8
/* 06ABE8 80069FE8 AC790000 */  sw    $t9, ($v1)
/* 06ABEC 80069FEC 27188DA0 */  addiu $t8, %lo(D_0D008DA0) # addiu $t8, $t8, -0x7260
/* 06ABF0 80069FF0 3C0F0600 */  lui   $t7, 0x600
/* 06ABF4 80069FF4 24E74AF0 */  addiu $a3, %lo(D_80164AF0) # addiu $a3, $a3, 0x4af0
/* 06ABF8 80069FF8 AC4F0000 */  sw    $t7, ($v0)
/* 06ABFC 80069FFC AC580004 */  sw    $t8, 4($v0)
/* 06AC00 8006A000 84EE0000 */  lh    $t6, ($a3)
/* 06AC04 8006A004 25D90001 */  addiu $t9, $t6, 1
/* 06AC08 8006A008 A4F90000 */  sh    $t9, ($a3)
/* 06AC0C 8006A00C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006A010:
/* 06AC10 8006A010 27BD0068 */  addiu $sp, $sp, 0x68
/* 06AC14 8006A014 03E00008 */  jr    $ra
/* 06AC18 8006A018 00000000 */   nop   
