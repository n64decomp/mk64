glabel func_8006BB34
/* 06C734 8006BB34 27BDFEB8 */  addiu $sp, $sp, -0x148
/* 06C738 8006BB38 3C18800E */  lui   $t8, %hi(D_800E4974) # $t8, 0x800e
/* 06C73C 8006BB3C AFBF0024 */  sw    $ra, 0x24($sp)
/* 06C740 8006BB40 AFA40148 */  sw    $a0, 0x148($sp)
/* 06C744 8006BB44 AFA5014C */  sw    $a1, 0x14c($sp)
/* 06C748 8006BB48 AFA60150 */  sw    $a2, 0x150($sp)
/* 06C74C 8006BB4C AFA70154 */  sw    $a3, 0x154($sp)
/* 06C750 8006BB50 27184974 */  addiu $t8, %lo(D_800E4974) # addiu $t8, $t8, 0x4974
/* 06C754 8006BB54 8F010000 */  lw    $at, ($t8)
/* 06C758 8006BB58 27A900C4 */  addiu $t1, $sp, 0xc4
/* 06C75C 8006BB5C 00077400 */  sll   $t6, $a3, 0x10
/* 06C760 8006BB60 AD210000 */  sw    $at, ($t1)
/* 06C764 8006BB64 8F0F0004 */  lw    $t7, 4($t8)
/* 06C768 8006BB68 000E3C03 */  sra   $a3, $t6, 0x10
/* 06C76C 8006BB6C 3C0E800E */  lui   $t6, %hi(D_800E4994) # $t6, 0x800e
/* 06C770 8006BB70 AD2F0004 */  sw    $t7, 4($t1)
/* 06C774 8006BB74 8F010008 */  lw    $at, 8($t8)
/* 06C778 8006BB78 25CE4994 */  addiu $t6, %lo(D_800E4994) # addiu $t6, $t6, 0x4994
/* 06C77C 8006BB7C 27AA00A4 */  addiu $t2, $sp, 0xa4
/* 06C780 8006BB80 AD210008 */  sw    $at, 8($t1)
/* 06C784 8006BB84 8F0F000C */  lw    $t7, 0xc($t8)
/* 06C788 8006BB88 00074080 */  sll   $t0, $a3, 2
/* 06C78C 8006BB8C 27A600F4 */  addiu $a2, $sp, 0xf4
/* 06C790 8006BB90 AD2F000C */  sw    $t7, 0xc($t1)
/* 06C794 8006BB94 8F010010 */  lw    $at, 0x10($t8)
/* 06C798 8006BB98 27A500FC */  addiu $a1, $sp, 0xfc
/* 06C79C 8006BB9C 27A40108 */  addiu $a0, $sp, 0x108
/* 06C7A0 8006BBA0 AD210010 */  sw    $at, 0x10($t1)
/* 06C7A4 8006BBA4 8F0F0014 */  lw    $t7, 0x14($t8)
/* 06C7A8 8006BBA8 AD2F0014 */  sw    $t7, 0x14($t1)
/* 06C7AC 8006BBAC 8F010018 */  lw    $at, 0x18($t8)
/* 06C7B0 8006BBB0 AD210018 */  sw    $at, 0x18($t1)
/* 06C7B4 8006BBB4 8F0F001C */  lw    $t7, 0x1c($t8)
/* 06C7B8 8006BBB8 0128C021 */  addu  $t8, $t1, $t0
/* 06C7BC 8006BBBC AD2F001C */  sw    $t7, 0x1c($t1)
/* 06C7C0 8006BBC0 8DC10000 */  lw    $at, ($t6)
/* 06C7C4 8006BBC4 8F020000 */  lw    $v0, ($t8)
/* 06C7C8 8006BBC8 AD410000 */  sw    $at, ($t2)
/* 06C7CC 8006BBCC 8DCF0004 */  lw    $t7, 4($t6)
/* 06C7D0 8006BBD0 0002CC03 */  sra   $t9, $v0, 0x10
/* 06C7D4 8006BBD4 AD4F0004 */  sw    $t7, 4($t2)
/* 06C7D8 8006BBD8 8DC10008 */  lw    $at, 8($t6)
/* 06C7DC 8006BBDC AD410008 */  sw    $at, 8($t2)
/* 06C7E0 8006BBE0 8DCF000C */  lw    $t7, 0xc($t6)
/* 06C7E4 8006BBE4 AD4F000C */  sw    $t7, 0xc($t2)
/* 06C7E8 8006BBE8 8DC10010 */  lw    $at, 0x10($t6)
/* 06C7EC 8006BBEC AD410010 */  sw    $at, 0x10($t2)
/* 06C7F0 8006BBF0 8DCF0014 */  lw    $t7, 0x14($t6)
/* 06C7F4 8006BBF4 AD4F0014 */  sw    $t7, 0x14($t2)
/* 06C7F8 8006BBF8 8DC10018 */  lw    $at, 0x18($t6)
/* 06C7FC 8006BBFC AD410018 */  sw    $at, 0x18($t2)
/* 06C800 8006BC00 8DCF001C */  lw    $t7, 0x1c($t6)
/* 06C804 8006BC04 332E00FF */  andi  $t6, $t9, 0xff
/* 06C808 8006BC08 305900FF */  andi  $t9, $v0, 0xff
/* 06C80C 8006BC0C AD4F001C */  sw    $t7, 0x1c($t2)
/* 06C810 8006BC10 00027A03 */  sra   $t7, $v0, 8
/* 06C814 8006BC14 A7AE00F0 */  sh    $t6, 0xf0($sp)
/* 06C818 8006BC18 31F800FF */  andi  $t8, $t7, 0xff
/* 06C81C 8006BC1C A7B800EE */  sh    $t8, 0xee($sp)
/* 06C820 8006BC20 A7B900EC */  sh    $t9, 0xec($sp)
/* 06C824 8006BC24 01487021 */  addu  $t6, $t2, $t0
/* 06C828 8006BC28 8DC30000 */  lw    $v1, ($t6)
/* 06C82C 8006BC2C 00037C03 */  sra   $t7, $v1, 0x10
/* 06C830 8006BC30 31F800FF */  andi  $t8, $t7, 0xff
/* 06C834 8006BC34 A7B800EA */  sh    $t8, 0xea($sp)
/* 06C838 8006BC38 8FB80148 */  lw    $t8, 0x148($sp)
/* 06C83C 8006BC3C 0003CA03 */  sra   $t9, $v1, 8
/* 06C840 8006BC40 332E00FF */  andi  $t6, $t9, 0xff
/* 06C844 8006BC44 306F00FF */  andi  $t7, $v1, 0xff
/* 06C848 8006BC48 A7AE00E8 */  sh    $t6, 0xe8($sp)
/* 06C84C 8006BC4C A7AF00E6 */  sh    $t7, 0xe6($sp)
/* 06C850 8006BC50 C7040000 */  lwc1  $f4, ($t8)
/* 06C854 8006BC54 3C19800E */  lui   $t9, %hi(camera1) # $t9, 0x800e
/* 06C858 8006BC58 8F39DB40 */  lw    $t9, %lo(camera1)($t9)
/* 06C85C 8006BC5C E7A400FC */  swc1  $f4, 0xfc($sp)
/* 06C860 8006BC60 C7060004 */  lwc1  $f6, 4($t8)
/* 06C864 8006BC64 87AF0152 */  lh    $t7, 0x152($sp)
/* 06C868 8006BC68 E7A60100 */  swc1  $f6, 0x100($sp)
/* 06C86C 8006BC6C C7080008 */  lwc1  $f8, 8($t8)
/* 06C870 8006BC70 A7A000F4 */  sh    $zero, 0xf4($sp)
/* 06C874 8006BC74 E7A80104 */  swc1  $f8, 0x104($sp)
/* 06C878 8006BC78 872E0026 */  lh    $t6, 0x26($t9)
/* 06C87C 8006BC7C A7AF00F8 */  sh    $t7, 0xf8($sp)
/* 06C880 8006BC80 0C008784 */  jal   func_80021E10
/* 06C884 8006BC84 A7AE00F6 */   sh    $t6, 0xf6($sp)
/* 06C888 8006BC88 27A40108 */  addiu $a0, $sp, 0x108
/* 06C88C 8006BC8C 0C0087E1 */  jal   func_80021F84
/* 06C890 8006BC90 8FA5014C */   lw    $a1, 0x14c($sp)
/* 06C894 8006BC94 3C198016 */  lui   $t9, %hi(D_80164AF0) # $t9, 0x8016
/* 06C898 8006BC98 87394AF0 */  lh    $t9, %lo(D_80164AF0)($t9)
/* 06C89C 8006BC9C 3C188015 */  lui   $t8, %hi(gGfxPool) # $t8, 0x8015
/* 06C8A0 8006BCA0 8F18EF40 */  lw    $t8, %lo(gGfxPool)($t8)
/* 06C8A4 8006BCA4 00197180 */  sll   $t6, $t9, 6
/* 06C8A8 8006BCA8 3401FAC0 */  li    $at, 64192
/* 06C8AC 8006BCAC 030E2021 */  addu  $a0, $t8, $t6
/* 06C8B0 8006BCB0 00812021 */  addu  $a0, $a0, $at
/* 06C8B4 8006BCB4 0C008860 */  jal   func_80022180
/* 06C8B8 8006BCB8 27A50108 */   addiu $a1, $sp, 0x108
/* 06C8BC 8006BCBC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06C8C0 8006BCC0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06C8C4 8006BCC4 8C620000 */  lw    $v0, ($v1)
/* 06C8C8 8006BCC8 3C190102 */  lui   $t9, (0x01020040 >> 16) # lui $t9, 0x102
/* 06C8CC 8006BCCC 37390040 */  ori   $t9, (0x01020040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 06C8D0 8006BCD0 244F0008 */  addiu $t7, $v0, 8
/* 06C8D4 8006BCD4 AC6F0000 */  sw    $t7, ($v1)
/* 06C8D8 8006BCD8 3C0E8016 */  lui   $t6, %hi(D_80164AF0) # $t6, 0x8016
/* 06C8DC 8006BCDC AC590000 */  sw    $t9, ($v0)
/* 06C8E0 8006BCE0 85CE4AF0 */  lh    $t6, %lo(D_80164AF0)($t6)
/* 06C8E4 8006BCE4 3C188015 */  lui   $t8, %hi(gGfxPool) # $t8, 0x8015
/* 06C8E8 8006BCE8 8F18EF40 */  lw    $t8, %lo(gGfxPool)($t8)
/* 06C8EC 8006BCEC 000E7980 */  sll   $t7, $t6, 6
/* 06C8F0 8006BCF0 3401FAC0 */  li    $at, 64192
/* 06C8F4 8006BCF4 030FC821 */  addu  $t9, $t8, $t7
/* 06C8F8 8006BCF8 03217021 */  addu  $t6, $t9, $at
/* 06C8FC 8006BCFC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 06C900 8006BD00 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 06C904 8006BD04 01C1C024 */  and   $t8, $t6, $at
/* 06C908 8006BD08 AC580004 */  sw    $t8, 4($v0)
/* 06C90C 8006BD0C 8C620000 */  lw    $v0, ($v1)
/* 06C910 8006BD10 3C0E0D01 */  lui   $t6, %hi(D_0D008DB8) # $t6, 0xd01
/* 06C914 8006BD14 25CE8DB8 */  addiu $t6, %lo(D_0D008DB8) # addiu $t6, $t6, -0x7248
/* 06C918 8006BD18 244F0008 */  addiu $t7, $v0, 8
/* 06C91C 8006BD1C AC6F0000 */  sw    $t7, ($v1)
/* 06C920 8006BD20 3C190600 */  lui   $t9, 0x600
/* 06C924 8006BD24 AC590000 */  sw    $t9, ($v0)
/* 06C928 8006BD28 AC4E0004 */  sw    $t6, 4($v0)
/* 06C92C 8006BD2C 8C620000 */  lw    $v0, ($v1)
/* 06C930 8006BD30 3C19800E */  lui   $t9, %hi(D_800E52D0) # $t9, 0x800e
/* 06C934 8006BD34 273952D0 */  addiu $t9, %lo(D_800E52D0) # addiu $t9, $t9, 0x52d0
/* 06C938 8006BD38 24580008 */  addiu $t8, $v0, 8
/* 06C93C 8006BD3C AC780000 */  sw    $t8, ($v1)
/* 06C940 8006BD40 3C0FFD10 */  lui   $t7, 0xfd10
/* 06C944 8006BD44 AC4F0000 */  sw    $t7, ($v0)
/* 06C948 8006BD48 AC590004 */  sw    $t9, 4($v0)
/* 06C94C 8006BD4C 8C620000 */  lw    $v0, ($v1)
/* 06C950 8006BD50 3C18E800 */  lui   $t8, 0xe800
/* 06C954 8006BD54 3C19F500 */  lui   $t9, (0xF5000100 >> 16) # lui $t9, 0xf500
/* 06C958 8006BD58 244E0008 */  addiu $t6, $v0, 8
/* 06C95C 8006BD5C AC6E0000 */  sw    $t6, ($v1)
/* 06C960 8006BD60 AC580000 */  sw    $t8, ($v0)
/* 06C964 8006BD64 AC400004 */  sw    $zero, 4($v0)
/* 06C968 8006BD68 8C620000 */  lw    $v0, ($v1)
/* 06C96C 8006BD6C 3C0E0700 */  lui   $t6, 0x700
/* 06C970 8006BD70 37390100 */  ori   $t9, (0xF5000100 & 0xFFFF) # ori $t9, $t9, 0x100
/* 06C974 8006BD74 244F0008 */  addiu $t7, $v0, 8
/* 06C978 8006BD78 AC6F0000 */  sw    $t7, ($v1)
/* 06C97C 8006BD7C AC590000 */  sw    $t9, ($v0)
/* 06C980 8006BD80 AC4E0004 */  sw    $t6, 4($v0)
/* 06C984 8006BD84 8C620000 */  lw    $v0, ($v1)
/* 06C988 8006BD88 3C0FE600 */  lui   $t7, 0xe600
/* 06C98C 8006BD8C 3C0EF000 */  lui   $t6, 0xf000
/* 06C990 8006BD90 24580008 */  addiu $t8, $v0, 8
/* 06C994 8006BD94 AC780000 */  sw    $t8, ($v1)
/* 06C998 8006BD98 AC4F0000 */  sw    $t7, ($v0)
/* 06C99C 8006BD9C AC400004 */  sw    $zero, 4($v0)
/* 06C9A0 8006BDA0 8C620000 */  lw    $v0, ($v1)
/* 06C9A4 8006BDA4 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 06C9A8 8006BDA8 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 06C9AC 8006BDAC 24590008 */  addiu $t9, $v0, 8
/* 06C9B0 8006BDB0 AC790000 */  sw    $t9, ($v1)
/* 06C9B4 8006BDB4 AC4E0000 */  sw    $t6, ($v0)
/* 06C9B8 8006BDB8 AC580004 */  sw    $t8, 4($v0)
/* 06C9BC 8006BDBC 8C620000 */  lw    $v0, ($v1)
/* 06C9C0 8006BDC0 3C19E700 */  lui   $t9, 0xe700
/* 06C9C4 8006BDC4 244F0008 */  addiu $t7, $v0, 8
/* 06C9C8 8006BDC8 AC6F0000 */  sw    $t7, ($v1)
/* 06C9CC 8006BDCC AFA20084 */  sw    $v0, 0x84($sp)
/* 06C9D0 8006BDD0 AC590000 */  sw    $t9, ($v0)
/* 06C9D4 8006BDD4 8FB80084 */  lw    $t8, 0x84($sp)
/* 06C9D8 8006BDD8 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 06C9DC 8006BDDC 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 06C9E0 8006BDE0 AF000004 */  sw    $zero, 4($t8)
/* 06C9E4 8006BDE4 8C620000 */  lw    $v0, ($v1)
/* 06C9E8 8006BDE8 34188000 */  li    $t8, 32768
/* 06C9EC 8006BDEC 244F0008 */  addiu $t7, $v0, 8
/* 06C9F0 8006BDF0 AC6F0000 */  sw    $t7, ($v1)
/* 06C9F4 8006BDF4 AFA20080 */  sw    $v0, 0x80($sp)
/* 06C9F8 8006BDF8 AC590000 */  sw    $t9, ($v0)
/* 06C9FC 8006BDFC 8FAF0080 */  lw    $t7, 0x80($sp)
/* 06CA00 8006BE00 ADF80004 */  sw    $t8, 4($t7)
/* 06CA04 8006BE04 87AE00E6 */  lh    $t6, 0xe6($sp)
/* 06CA08 8006BE08 87B900E8 */  lh    $t9, 0xe8($sp)
/* 06CA0C 8006BE0C 241800D8 */  li    $t8, 216
/* 06CA10 8006BE10 AFB80018 */  sw    $t8, 0x18($sp)
/* 06CA14 8006BE14 87A700EA */  lh    $a3, 0xea($sp)
/* 06CA18 8006BE18 87A600EC */  lh    $a2, 0xec($sp)
/* 06CA1C 8006BE1C 87A500EE */  lh    $a1, 0xee($sp)
/* 06CA20 8006BE20 87A400F0 */  lh    $a0, 0xf0($sp)
/* 06CA24 8006BE24 AFAE0014 */  sw    $t6, 0x14($sp)
/* 06CA28 8006BE28 0C012D85 */  jal   func_8004B614
/* 06CA2C 8006BE2C AFB90010 */   sw    $t9, 0x10($sp)
/* 06CA30 8006BE30 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06CA34 8006BE34 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06CA38 8006BE38 8C620000 */  lw    $v0, ($v1)
/* 06CA3C 8006BE3C 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 06CA40 8006BE40 3C0E0050 */  lui   $t6, (0x00505978 >> 16) # lui $t6, 0x50
/* 06CA44 8006BE44 244F0008 */  addiu $t7, $v0, 8
/* 06CA48 8006BE48 AC6F0000 */  sw    $t7, ($v1)
/* 06CA4C 8006BE4C 35CE5978 */  ori   $t6, (0x00505978 & 0xFFFF) # ori $t6, $t6, 0x5978
/* 06CA50 8006BE50 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 06CA54 8006BE54 AC590000 */  sw    $t9, ($v0)
/* 06CA58 8006BE58 AC4E0004 */  sw    $t6, 4($v0)
/* 06CA5C 8006BE5C 8C620000 */  lw    $v0, ($v1)
/* 06CA60 8006BE60 3C0FFD50 */  lui   $t7, 0xfd50
/* 06CA64 8006BE64 3C198019 */  lui   $t9, %hi(D_8018D4BC) # $t9, 0x8019
/* 06CA68 8006BE68 24580008 */  addiu $t8, $v0, 8
/* 06CA6C 8006BE6C AC780000 */  sw    $t8, ($v1)
/* 06CA70 8006BE70 AC4F0000 */  sw    $t7, ($v0)
/* 06CA74 8006BE74 8F39D4BC */  lw    $t9, %lo(D_8018D4BC)($t9)
/* 06CA78 8006BE78 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 06CA7C 8006BE7C 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 06CA80 8006BE80 AC590004 */  sw    $t9, 4($v0)
/* 06CA84 8006BE84 8C620000 */  lw    $v0, ($v1)
/* 06CA88 8006BE88 3C18F550 */  lui   $t8, 0xf550
/* 06CA8C 8006BE8C 3C1F0D01 */  lui   $ra, %hi(D_0D008C78) # $ra, 0xd01
/* 06CA90 8006BE90 244E0008 */  addiu $t6, $v0, 8
/* 06CA94 8006BE94 AC6E0000 */  sw    $t6, ($v1)
/* 06CA98 8006BE98 AC4F0004 */  sw    $t7, 4($v0)
/* 06CA9C 8006BE9C AC580000 */  sw    $t8, ($v0)
/* 06CAA0 8006BEA0 8C620000 */  lw    $v0, ($v1)
/* 06CAA4 8006BEA4 3C0EE600 */  lui   $t6, 0xe600
/* 06CAA8 8006BEA8 3C0FF300 */  lui   $t7, 0xf300
/* 06CAAC 8006BEAC 24590008 */  addiu $t9, $v0, 8
/* 06CAB0 8006BEB0 AC790000 */  sw    $t9, ($v1)
/* 06CAB4 8006BEB4 AC400004 */  sw    $zero, 4($v0)
/* 06CAB8 8006BEB8 AC4E0000 */  sw    $t6, ($v0)
/* 06CABC 8006BEBC 8C620000 */  lw    $v0, ($v1)
/* 06CAC0 8006BEC0 3C19073F */  lui   $t9, (0x073FF100 >> 16) # lui $t9, 0x73f
/* 06CAC4 8006BEC4 3739F100 */  ori   $t9, (0x073FF100 & 0xFFFF) # ori $t9, $t9, 0xf100
/* 06CAC8 8006BEC8 24580008 */  addiu $t8, $v0, 8
/* 06CACC 8006BECC AC780000 */  sw    $t8, ($v1)
/* 06CAD0 8006BED0 AC590004 */  sw    $t9, 4($v0)
/* 06CAD4 8006BED4 AC4F0000 */  sw    $t7, ($v0)
/* 06CAD8 8006BED8 8C620000 */  lw    $v0, ($v1)
/* 06CADC 8006BEDC 3C18E700 */  lui   $t8, 0xe700
/* 06CAE0 8006BEE0 3C19F548 */  lui   $t9, (0xF5481000 >> 16) # lui $t9, 0xf548
/* 06CAE4 8006BEE4 244E0008 */  addiu $t6, $v0, 8
/* 06CAE8 8006BEE8 AC6E0000 */  sw    $t6, ($v1)
/* 06CAEC 8006BEEC AC400004 */  sw    $zero, 4($v0)
/* 06CAF0 8006BEF0 AC580000 */  sw    $t8, ($v0)
/* 06CAF4 8006BEF4 8C620000 */  lw    $v0, ($v1)
/* 06CAF8 8006BEF8 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 06CAFC 8006BEFC 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 06CB00 8006BF00 244F0008 */  addiu $t7, $v0, 8
/* 06CB04 8006BF04 AC6F0000 */  sw    $t7, ($v1)
/* 06CB08 8006BF08 37391000 */  ori   $t9, (0xF5481000 & 0xFFFF) # ori $t9, $t9, 0x1000
/* 06CB0C 8006BF0C AC590000 */  sw    $t9, ($v0)
/* 06CB10 8006BF10 AC4E0004 */  sw    $t6, 4($v0)
/* 06CB14 8006BF14 8C620000 */  lw    $v0, ($v1)
/* 06CB18 8006BF18 3C19000F */  lui   $t9, (0x000FC07C >> 16) # lui $t9, 0xf
/* 06CB1C 8006BF1C 3739C07C */  ori   $t9, (0x000FC07C & 0xFFFF) # ori $t9, $t9, 0xc07c
/* 06CB20 8006BF20 24580008 */  addiu $t8, $v0, 8
/* 06CB24 8006BF24 AC780000 */  sw    $t8, ($v1)
/* 06CB28 8006BF28 3C0FF200 */  lui   $t7, 0xf200
/* 06CB2C 8006BF2C AC4F0000 */  sw    $t7, ($v0)
/* 06CB30 8006BF30 AC590004 */  sw    $t9, 4($v0)
/* 06CB34 8006BF34 8C620000 */  lw    $v0, ($v1)
/* 06CB38 8006BF38 3C0F800E */  lui   $t7, %hi(D_800E5250) # $t7, 0x800e
/* 06CB3C 8006BF3C 3C180400 */  lui   $t8, (0x0400103F >> 16) # lui $t8, 0x400
/* 06CB40 8006BF40 244E0008 */  addiu $t6, $v0, 8
/* 06CB44 8006BF44 AC6E0000 */  sw    $t6, ($v1)
/* 06CB48 8006BF48 3718103F */  ori   $t8, (0x0400103F & 0xFFFF) # ori $t8, $t8, 0x103f
/* 06CB4C 8006BF4C 25EF5250 */  addiu $t7, %lo(D_800E5250) # addiu $t7, $t7, 0x5250
/* 06CB50 8006BF50 AC4F0004 */  sw    $t7, 4($v0)
/* 06CB54 8006BF54 AC580000 */  sw    $t8, ($v0)
/* 06CB58 8006BF58 8C620000 */  lw    $v0, ($v1)
/* 06CB5C 8006BF5C 3C0E0600 */  lui   $t6, 0x600
/* 06CB60 8006BF60 27FF8C78 */  addiu $ra, %lo(D_0D008C78) # addiu $ra, $ra, -0x7388
/* 06CB64 8006BF64 24590008 */  addiu $t9, $v0, 8
/* 06CB68 8006BF68 AC790000 */  sw    $t9, ($v1)
/* 06CB6C 8006BF6C AC5F0004 */  sw    $ra, 4($v0)
/* 06CB70 8006BF70 AC4E0000 */  sw    $t6, ($v0)
/* 06CB74 8006BF74 8C620000 */  lw    $v0, ($v1)
/* 06CB78 8006BF78 3C0FFD50 */  lui   $t7, 0xfd50
/* 06CB7C 8006BF7C 3C198019 */  lui   $t9, %hi(D_8018D4C0) # $t9, 0x8019
/* 06CB80 8006BF80 24580008 */  addiu $t8, $v0, 8
/* 06CB84 8006BF84 AC780000 */  sw    $t8, ($v1)
/* 06CB88 8006BF88 AC4F0000 */  sw    $t7, ($v0)
/* 06CB8C 8006BF8C 8F39D4C0 */  lw    $t9, %lo(D_8018D4C0)($t9)
/* 06CB90 8006BF90 3C0FF550 */  lui   $t7, 0xf550
/* 06CB94 8006BF94 272EFFC0 */  addiu $t6, $t9, -0x40
/* 06CB98 8006BF98 AC4E0004 */  sw    $t6, 4($v0)
/* 06CB9C 8006BF9C 8C620000 */  lw    $v0, ($v1)
/* 06CBA0 8006BFA0 3C190708 */  lui   $t9, (0x07080200 >> 16) # lui $t9, 0x708
/* 06CBA4 8006BFA4 37390200 */  ori   $t9, (0x07080200 & 0xFFFF) # ori $t9, $t9, 0x200
/* 06CBA8 8006BFA8 24580008 */  addiu $t8, $v0, 8
/* 06CBAC 8006BFAC AC780000 */  sw    $t8, ($v1)
/* 06CBB0 8006BFB0 AC590004 */  sw    $t9, 4($v0)
/* 06CBB4 8006BFB4 AC4F0000 */  sw    $t7, ($v0)
/* 06CBB8 8006BFB8 8C620000 */  lw    $v0, ($v1)
/* 06CBBC 8006BFBC 3C18E600 */  lui   $t8, 0xe600
/* 06CBC0 8006BFC0 3C19F300 */  lui   $t9, 0xf300
/* 06CBC4 8006BFC4 244E0008 */  addiu $t6, $v0, 8
/* 06CBC8 8006BFC8 AC6E0000 */  sw    $t6, ($v1)
/* 06CBCC 8006BFCC AC400004 */  sw    $zero, 4($v0)
/* 06CBD0 8006BFD0 AC580000 */  sw    $t8, ($v0)
/* 06CBD4 8006BFD4 8C620000 */  lw    $v0, ($v1)
/* 06CBD8 8006BFD8 3C0E073F */  lui   $t6, (0x073FF100 >> 16) # lui $t6, 0x73f
/* 06CBDC 8006BFDC 35CEF100 */  ori   $t6, (0x073FF100 & 0xFFFF) # ori $t6, $t6, 0xf100
/* 06CBE0 8006BFE0 244F0008 */  addiu $t7, $v0, 8
/* 06CBE4 8006BFE4 AC6F0000 */  sw    $t7, ($v1)
/* 06CBE8 8006BFE8 AC4E0004 */  sw    $t6, 4($v0)
/* 06CBEC 8006BFEC AC590000 */  sw    $t9, ($v0)
/* 06CBF0 8006BFF0 8C620000 */  lw    $v0, ($v1)
/* 06CBF4 8006BFF4 3C0FE700 */  lui   $t7, 0xe700
/* 06CBF8 8006BFF8 3C0EF548 */  lui   $t6, (0xF5481000 >> 16) # lui $t6, 0xf548
/* 06CBFC 8006BFFC 24580008 */  addiu $t8, $v0, 8
/* 06CC00 8006C000 AC780000 */  sw    $t8, ($v1)
/* 06CC04 8006C004 AC400004 */  sw    $zero, 4($v0)
/* 06CC08 8006C008 AC4F0000 */  sw    $t7, ($v0)
/* 06CC0C 8006C00C 8C620000 */  lw    $v0, ($v1)
/* 06CC10 8006C010 3C180008 */  lui   $t8, (0x00080200 >> 16) # lui $t8, 8
/* 06CC14 8006C014 37180200 */  ori   $t8, (0x00080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 06CC18 8006C018 24590008 */  addiu $t9, $v0, 8
/* 06CC1C 8006C01C AC790000 */  sw    $t9, ($v1)
/* 06CC20 8006C020 35CE1000 */  ori   $t6, (0xF5481000 & 0xFFFF) # ori $t6, $t6, 0x1000
/* 06CC24 8006C024 AC4E0000 */  sw    $t6, ($v0)
/* 06CC28 8006C028 AC580004 */  sw    $t8, 4($v0)
/* 06CC2C 8006C02C 8C620000 */  lw    $v0, ($v1)
/* 06CC30 8006C030 3C0E000F */  lui   $t6, (0x000FC07C >> 16) # lui $t6, 0xf
/* 06CC34 8006C034 35CEC07C */  ori   $t6, (0x000FC07C & 0xFFFF) # ori $t6, $t6, 0xc07c
/* 06CC38 8006C038 244F0008 */  addiu $t7, $v0, 8
/* 06CC3C 8006C03C AC6F0000 */  sw    $t7, ($v1)
/* 06CC40 8006C040 3C19F200 */  lui   $t9, 0xf200
/* 06CC44 8006C044 AC590000 */  sw    $t9, ($v0)
/* 06CC48 8006C048 AC4E0004 */  sw    $t6, 4($v0)
/* 06CC4C 8006C04C 8C620000 */  lw    $v0, ($v1)
/* 06CC50 8006C050 3C19800E */  lui   $t9, %hi(D_800E5290) # $t9, 0x800e
/* 06CC54 8006C054 3C0F0400 */  lui   $t7, (0x0400103F >> 16) # lui $t7, 0x400
/* 06CC58 8006C058 24580008 */  addiu $t8, $v0, 8
/* 06CC5C 8006C05C AC780000 */  sw    $t8, ($v1)
/* 06CC60 8006C060 35EF103F */  ori   $t7, (0x0400103F & 0xFFFF) # ori $t7, $t7, 0x103f
/* 06CC64 8006C064 27395290 */  addiu $t9, %lo(D_800E5290) # addiu $t9, $t9, 0x5290
/* 06CC68 8006C068 AC590004 */  sw    $t9, 4($v0)
/* 06CC6C 8006C06C AC4F0000 */  sw    $t7, ($v0)
/* 06CC70 8006C070 8C620000 */  lw    $v0, ($v1)
/* 06CC74 8006C074 3C180600 */  lui   $t8, 0x600
/* 06CC78 8006C078 3C19BB00 */  lui   $t9, 0xbb00
/* 06CC7C 8006C07C 244E0008 */  addiu $t6, $v0, 8
/* 06CC80 8006C080 AC6E0000 */  sw    $t6, ($v1)
/* 06CC84 8006C084 AC5F0004 */  sw    $ra, 4($v0)
/* 06CC88 8006C088 AC580000 */  sw    $t8, ($v0)
/* 06CC8C 8006C08C 8C620000 */  lw    $v0, ($v1)
/* 06CC90 8006C090 3C0E0001 */  lui   $t6, (0x00010001 >> 16) # lui $t6, 1
/* 06CC94 8006C094 35CE0001 */  ori   $t6, (0x00010001 & 0xFFFF) # ori $t6, $t6, 1
/* 06CC98 8006C098 244F0008 */  addiu $t7, $v0, 8
/* 06CC9C 8006C09C AC6F0000 */  sw    $t7, ($v1)
/* 06CCA0 8006C0A0 AC4E0004 */  sw    $t6, 4($v0)
/* 06CCA4 8006C0A4 AC590000 */  sw    $t9, ($v0)
/* 06CCA8 8006C0A8 3C028016 */  lui   $v0, %hi(D_80164AF0) # $v0, 0x8016
/* 06CCAC 8006C0AC 24424AF0 */  addiu $v0, %lo(D_80164AF0) # addiu $v0, $v0, 0x4af0
/* 06CCB0 8006C0B0 84580000 */  lh    $t8, ($v0)
/* 06CCB4 8006C0B4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 06CCB8 8006C0B8 27BD0148 */  addiu $sp, $sp, 0x148
/* 06CCBC 8006C0BC 270F0001 */  addiu $t7, $t8, 1
/* 06CCC0 8006C0C0 03E00008 */  jr    $ra
/* 06CCC4 8006C0C4 A44F0000 */   sh    $t7, ($v0)
