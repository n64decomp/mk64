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
/* 06C854 8006BC54 3C19800E */  lui   $t9, %hi(D_800DDB40) # $t9, 0x800e
/* 06C858 8006BC58 8F39DB40 */  lw    $t9, %lo(D_800DDB40)($t9)
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

/* 06CCC8 8006C0C8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 06CCCC 8006C0CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 06CCD0 8006C0D0 AFA40058 */  sw    $a0, 0x58($sp)
/* 06CCD4 8006C0D4 AFA60060 */  sw    $a2, 0x60($sp)
/* 06CCD8 8006C0D8 AFA70064 */  sw    $a3, 0x64($sp)
/* 06CCDC 8006C0DC C4840000 */  lwc1  $f4, ($a0)
/* 06CCE0 8006C0E0 3C0F800E */  lui   $t7, %hi(D_800DDB40) # $t7, 0x800e
/* 06CCE4 8006C0E4 8DEFDB40 */  lw    $t7, %lo(D_800DDB40)($t7)
/* 06CCE8 8006C0E8 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 06CCEC 8006C0EC C4860004 */  lwc1  $f6, 4($a0)
/* 06CCF0 8006C0F0 44856000 */  mtc1  $a1, $f12
/* 06CCF4 8006C0F4 27A50044 */  addiu $a1, $sp, 0x44
/* 06CCF8 8006C0F8 E7A60050 */  swc1  $f6, 0x50($sp)
/* 06CCFC 8006C0FC C4880008 */  lwc1  $f8, 8($a0)
/* 06CD00 8006C100 A7A00044 */  sh    $zero, 0x44($sp)
/* 06CD04 8006C104 44066000 */  mfc1  $a2, $f12
/* 06CD08 8006C108 E7A80054 */  swc1  $f8, 0x54($sp)
/* 06CD0C 8006C10C 85F80026 */  lh    $t8, 0x26($t7)
/* 06CD10 8006C110 A7A00048 */  sh    $zero, 0x48($sp)
/* 06CD14 8006C114 27A4004C */  addiu $a0, $sp, 0x4c
/* 06CD18 8006C118 0C0194B5 */  jal   func_800652D4
/* 06CD1C 8006C11C A7B80046 */   sh    $t8, 0x46($sp)
/* 06CD20 8006C120 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06CD24 8006C124 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06CD28 8006C128 8C620000 */  lw    $v0, ($v1)
/* 06CD2C 8006C12C 3C0F0D01 */  lui   $t7, %hi(D_0D008DB8) # $t7, 0xd01
/* 06CD30 8006C130 25EF8DB8 */  addiu $t7, %lo(D_0D008DB8) # addiu $t7, $t7, -0x7248
/* 06CD34 8006C134 24590008 */  addiu $t9, $v0, 8
/* 06CD38 8006C138 AC790000 */  sw    $t9, ($v1)
/* 06CD3C 8006C13C 3C0E0600 */  lui   $t6, 0x600
/* 06CD40 8006C140 AC4E0000 */  sw    $t6, ($v0)
/* 06CD44 8006C144 AC4F0004 */  sw    $t7, 4($v0)
/* 06CD48 8006C148 8C620000 */  lw    $v0, ($v1)
/* 06CD4C 8006C14C 3C19FD70 */  lui   $t9, 0xfd70
/* 06CD50 8006C150 3C0E8019 */  lui   $t6, %hi(D_8018D48C) # $t6, 0x8019
/* 06CD54 8006C154 24580008 */  addiu $t8, $v0, 8
/* 06CD58 8006C158 AC780000 */  sw    $t8, ($v1)
/* 06CD5C 8006C15C AC590000 */  sw    $t9, ($v0)
/* 06CD60 8006C160 8DCED48C */  lw    $t6, %lo(D_8018D48C)($t6)
/* 06CD64 8006C164 3C190700 */  lui   $t9, 0x700
/* 06CD68 8006C168 3C18F570 */  lui   $t8, 0xf570
/* 06CD6C 8006C16C AC4E0004 */  sw    $t6, 4($v0)
/* 06CD70 8006C170 8C620000 */  lw    $v0, ($v1)
/* 06CD74 8006C174 244F0008 */  addiu $t7, $v0, 8
/* 06CD78 8006C178 AC6F0000 */  sw    $t7, ($v1)
/* 06CD7C 8006C17C AC590004 */  sw    $t9, 4($v0)
/* 06CD80 8006C180 AC580000 */  sw    $t8, ($v0)
/* 06CD84 8006C184 8C620000 */  lw    $v0, ($v1)
/* 06CD88 8006C188 3C0FE600 */  lui   $t7, 0xe600
/* 06CD8C 8006C18C 3C19F300 */  lui   $t9, 0xf300
/* 06CD90 8006C190 244E0008 */  addiu $t6, $v0, 8
/* 06CD94 8006C194 AC6E0000 */  sw    $t6, ($v1)
/* 06CD98 8006C198 AC400004 */  sw    $zero, 4($v0)
/* 06CD9C 8006C19C AC4F0000 */  sw    $t7, ($v0)
/* 06CDA0 8006C1A0 8C620000 */  lw    $v0, ($v1)
/* 06CDA4 8006C1A4 3C0E071F */  lui   $t6, (0x071FF200 >> 16) # lui $t6, 0x71f
/* 06CDA8 8006C1A8 35CEF200 */  ori   $t6, (0x071FF200 & 0xFFFF) # ori $t6, $t6, 0xf200
/* 06CDAC 8006C1AC 24580008 */  addiu $t8, $v0, 8
/* 06CDB0 8006C1B0 AC780000 */  sw    $t8, ($v1)
/* 06CDB4 8006C1B4 AC4E0004 */  sw    $t6, 4($v0)
/* 06CDB8 8006C1B8 AC590000 */  sw    $t9, ($v0)
/* 06CDBC 8006C1BC 8C620000 */  lw    $v0, ($v1)
/* 06CDC0 8006C1C0 3C18E700 */  lui   $t8, 0xe700
/* 06CDC4 8006C1C4 3C0EF568 */  lui   $t6, (0xF5680800 >> 16) # lui $t6, 0xf568
/* 06CDC8 8006C1C8 244F0008 */  addiu $t7, $v0, 8
/* 06CDCC 8006C1CC AC6F0000 */  sw    $t7, ($v1)
/* 06CDD0 8006C1D0 AC400004 */  sw    $zero, 4($v0)
/* 06CDD4 8006C1D4 AC580000 */  sw    $t8, ($v0)
/* 06CDD8 8006C1D8 8C620000 */  lw    $v0, ($v1)
/* 06CDDC 8006C1DC 35CE0800 */  ori   $t6, (0xF5680800 & 0xFFFF) # ori $t6, $t6, 0x800
/* 06CDE0 8006C1E0 3C18F200 */  lui   $t8, 0xf200
/* 06CDE4 8006C1E4 24590008 */  addiu $t9, $v0, 8
/* 06CDE8 8006C1E8 AC790000 */  sw    $t9, ($v1)
/* 06CDEC 8006C1EC AC400004 */  sw    $zero, 4($v0)
/* 06CDF0 8006C1F0 AC4E0000 */  sw    $t6, ($v0)
/* 06CDF4 8006C1F4 8C620000 */  lw    $v0, ($v1)
/* 06CDF8 8006C1F8 3C0E0007 */  lui   $t6, (0x0007C07C >> 16) # lui $t6, 7
/* 06CDFC 8006C1FC 35CEC07C */  ori   $t6, (0x0007C07C & 0xFFFF) # ori $t6, $t6, 0xc07c
/* 06CE00 8006C200 244F0008 */  addiu $t7, $v0, 8
/* 06CE04 8006C204 AC6F0000 */  sw    $t7, ($v1)
/* 06CE08 8006C208 AFA2001C */  sw    $v0, 0x1c($sp)
/* 06CE0C 8006C20C AC4E0004 */  sw    $t6, 4($v0)
/* 06CE10 8006C210 AC580000 */  sw    $t8, ($v0)
/* 06CE14 8006C214 8FA60060 */  lw    $a2, 0x60($sp)
/* 06CE18 8006C218 87A70066 */  lh    $a3, 0x66($sp)
/* 06CE1C 8006C21C 0006C403 */  sra   $t8, $a2, 0x10
/* 06CE20 8006C220 330E00FF */  andi  $t6, $t8, 0xff
/* 06CE24 8006C224 000ECC00 */  sll   $t9, $t6, 0x10
/* 06CE28 8006C228 00192403 */  sra   $a0, $t9, 0x10
/* 06CE2C 8006C22C 00067203 */  sra   $t6, $a2, 8
/* 06CE30 8006C230 31D900FF */  andi  $t9, $t6, 0xff
/* 06CE34 8006C234 0019C400 */  sll   $t8, $t9, 0x10
/* 06CE38 8006C238 00182C03 */  sra   $a1, $t8, 0x10
/* 06CE3C 8006C23C 30D900FF */  andi  $t9, $a2, 0xff
/* 06CE40 8006C240 0019C400 */  sll   $t8, $t9, 0x10
/* 06CE44 8006C244 0C012CD7 */  jal   func_8004B35C
/* 06CE48 8006C248 00183403 */   sra   $a2, $t8, 0x10
/* 06CE4C 8006C24C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06CE50 8006C250 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06CE54 8006C254 8C620000 */  lw    $v0, ($v1)
/* 06CE58 8006C258 3C180D01 */  lui   $t8, %hi(D_0D008E48) # $t8, 0xd01
/* 06CE5C 8006C25C 3C058016 */  lui   $a1, %hi(D_80164AF0) # $a1, 0x8016
/* 06CE60 8006C260 244F0008 */  addiu $t7, $v0, 8
/* 06CE64 8006C264 AC6F0000 */  sw    $t7, ($v1)
/* 06CE68 8006C268 27188E48 */  addiu $t8, %lo(D_0D008E48) # addiu $t8, $t8, -0x71b8
/* 06CE6C 8006C26C 3C190600 */  lui   $t9, 0x600
/* 06CE70 8006C270 24A54AF0 */  addiu $a1, %lo(D_80164AF0) # addiu $a1, $a1, 0x4af0
/* 06CE74 8006C274 AC590000 */  sw    $t9, ($v0)
/* 06CE78 8006C278 AC580004 */  sw    $t8, 4($v0)
/* 06CE7C 8006C27C 84AE0000 */  lh    $t6, ($a1)
/* 06CE80 8006C280 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06CE84 8006C284 27BD0058 */  addiu $sp, $sp, 0x58
/* 06CE88 8006C288 25CF0001 */  addiu $t7, $t6, 1
/* 06CE8C 8006C28C 03E00008 */  jr    $ra
/* 06CE90 8006C290 A4AF0000 */   sh    $t7, ($a1)

/* 06CE94 8006C294 27BDFF98 */  addiu $sp, $sp, -0x68
/* 06CE98 8006C298 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06CE9C 8006C29C AFA40068 */  sw    $a0, 0x68($sp)
/* 06CEA0 8006C2A0 AFA60070 */  sw    $a2, 0x70($sp)
/* 06CEA4 8006C2A4 AFA70074 */  sw    $a3, 0x74($sp)
/* 06CEA8 8006C2A8 C4840000 */  lwc1  $f4, ($a0)
/* 06CEAC 8006C2AC 3C0F800E */  lui   $t7, %hi(D_800DDB40) # $t7, 0x800e
/* 06CEB0 8006C2B0 8DEFDB40 */  lw    $t7, %lo(D_800DDB40)($t7)
/* 06CEB4 8006C2B4 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 06CEB8 8006C2B8 C4860004 */  lwc1  $f6, 4($a0)
/* 06CEBC 8006C2BC 44856000 */  mtc1  $a1, $f12
/* 06CEC0 8006C2C0 27A50054 */  addiu $a1, $sp, 0x54
/* 06CEC4 8006C2C4 E7A60060 */  swc1  $f6, 0x60($sp)
/* 06CEC8 8006C2C8 C4880008 */  lwc1  $f8, 8($a0)
/* 06CECC 8006C2CC A7A00054 */  sh    $zero, 0x54($sp)
/* 06CED0 8006C2D0 44066000 */  mfc1  $a2, $f12
/* 06CED4 8006C2D4 E7A80064 */  swc1  $f8, 0x64($sp)
/* 06CED8 8006C2D8 85F80026 */  lh    $t8, 0x26($t7)
/* 06CEDC 8006C2DC A7A00058 */  sh    $zero, 0x58($sp)
/* 06CEE0 8006C2E0 27A4005C */  addiu $a0, $sp, 0x5c
/* 06CEE4 8006C2E4 0C0194B5 */  jal   func_800652D4
/* 06CEE8 8006C2E8 A7B80056 */   sh    $t8, 0x56($sp)
/* 06CEEC 8006C2EC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06CEF0 8006C2F0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06CEF4 8006C2F4 8C620000 */  lw    $v0, ($v1)
/* 06CEF8 8006C2F8 3C0F0D01 */  lui   $t7, %hi(D_0D008D58) # $t7, 0xd01
/* 06CEFC 8006C2FC 25EF8D58 */  addiu $t7, %lo(D_0D008D58) # addiu $t7, $t7, -0x72a8
/* 06CF00 8006C300 24590008 */  addiu $t9, $v0, 8
/* 06CF04 8006C304 AC790000 */  sw    $t9, ($v1)
/* 06CF08 8006C308 3C0E0600 */  lui   $t6, 0x600
/* 06CF0C 8006C30C AC4E0000 */  sw    $t6, ($v0)
/* 06CF10 8006C310 AC4F0004 */  sw    $t7, 4($v0)
/* 06CF14 8006C314 8C620000 */  lw    $v0, ($v1)
/* 06CF18 8006C318 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 06CF1C 8006C31C 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 06CF20 8006C320 24580008 */  addiu $t8, $v0, 8
/* 06CF24 8006C324 AC780000 */  sw    $t8, ($v1)
/* 06CF28 8006C328 AC400004 */  sw    $zero, 4($v0)
/* 06CF2C 8006C32C AC590000 */  sw    $t9, ($v0)
/* 06CF30 8006C330 8C620000 */  lw    $v0, ($v1)
/* 06CF34 8006C334 3C0FFD70 */  lui   $t7, 0xfd70
/* 06CF38 8006C338 3C188019 */  lui   $t8, %hi(D_8018D488) # $t8, 0x8019
/* 06CF3C 8006C33C 244E0008 */  addiu $t6, $v0, 8
/* 06CF40 8006C340 AC6E0000 */  sw    $t6, ($v1)
/* 06CF44 8006C344 AC4F0000 */  sw    $t7, ($v0)
/* 06CF48 8006C348 8F18D488 */  lw    $t8, %lo(D_8018D488)($t8)
/* 06CF4C 8006C34C 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 06CF50 8006C350 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 06CF54 8006C354 AC580004 */  sw    $t8, 4($v0)
/* 06CF58 8006C358 8C620000 */  lw    $v0, ($v1)
/* 06CF5C 8006C35C 3C0EF570 */  lui   $t6, 0xf570
/* 06CF60 8006C360 24590008 */  addiu $t9, $v0, 8
/* 06CF64 8006C364 AC790000 */  sw    $t9, ($v1)
/* 06CF68 8006C368 AC4F0004 */  sw    $t7, 4($v0)
/* 06CF6C 8006C36C AC4E0000 */  sw    $t6, ($v0)
/* 06CF70 8006C370 8C620000 */  lw    $v0, ($v1)
/* 06CF74 8006C374 3C19E600 */  lui   $t9, 0xe600
/* 06CF78 8006C378 3C0FF300 */  lui   $t7, 0xf300
/* 06CF7C 8006C37C 24580008 */  addiu $t8, $v0, 8
/* 06CF80 8006C380 AC780000 */  sw    $t8, ($v1)
/* 06CF84 8006C384 AC400004 */  sw    $zero, 4($v0)
/* 06CF88 8006C388 AC590000 */  sw    $t9, ($v0)
/* 06CF8C 8006C38C 8C620000 */  lw    $v0, ($v1)
/* 06CF90 8006C390 3C18071F */  lui   $t8, (0x071FF200 >> 16) # lui $t8, 0x71f
/* 06CF94 8006C394 3718F200 */  ori   $t8, (0x071FF200 & 0xFFFF) # ori $t8, $t8, 0xf200
/* 06CF98 8006C398 244E0008 */  addiu $t6, $v0, 8
/* 06CF9C 8006C39C AC6E0000 */  sw    $t6, ($v1)
/* 06CFA0 8006C3A0 AC580004 */  sw    $t8, 4($v0)
/* 06CFA4 8006C3A4 AC4F0000 */  sw    $t7, ($v0)
/* 06CFA8 8006C3A8 8C620000 */  lw    $v0, ($v1)
/* 06CFAC 8006C3AC 3C0EE700 */  lui   $t6, 0xe700
/* 06CFB0 8006C3B0 3C18F568 */  lui   $t8, (0xF5680800 >> 16) # lui $t8, 0xf568
/* 06CFB4 8006C3B4 24590008 */  addiu $t9, $v0, 8
/* 06CFB8 8006C3B8 AC790000 */  sw    $t9, ($v1)
/* 06CFBC 8006C3BC AC400004 */  sw    $zero, 4($v0)
/* 06CFC0 8006C3C0 AC4E0000 */  sw    $t6, ($v0)
/* 06CFC4 8006C3C4 8C620000 */  lw    $v0, ($v1)
/* 06CFC8 8006C3C8 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 06CFCC 8006C3CC 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 06CFD0 8006C3D0 244F0008 */  addiu $t7, $v0, 8
/* 06CFD4 8006C3D4 AC6F0000 */  sw    $t7, ($v1)
/* 06CFD8 8006C3D8 AFA2002C */  sw    $v0, 0x2c($sp)
/* 06CFDC 8006C3DC 37180800 */  ori   $t8, (0xF5680800 & 0xFFFF) # ori $t8, $t8, 0x800
/* 06CFE0 8006C3E0 AC580000 */  sw    $t8, ($v0)
/* 06CFE4 8006C3E4 AC4E0004 */  sw    $t6, 4($v0)
/* 06CFE8 8006C3E8 8C620000 */  lw    $v0, ($v1)
/* 06CFEC 8006C3EC 3C190007 */  lui   $t9, (0x0007C07C >> 16) # lui $t9, 7
/* 06CFF0 8006C3F0 3739C07C */  ori   $t9, (0x0007C07C & 0xFFFF) # ori $t9, $t9, 0xc07c
/* 06CFF4 8006C3F4 244F0008 */  addiu $t7, $v0, 8
/* 06CFF8 8006C3F8 AC6F0000 */  sw    $t7, ($v1)
/* 06CFFC 8006C3FC AFA20028 */  sw    $v0, 0x28($sp)
/* 06D000 8006C400 3C18F200 */  lui   $t8, 0xf200
/* 06D004 8006C404 AC580000 */  sw    $t8, ($v0)
/* 06D008 8006C408 AC590004 */  sw    $t9, 4($v0)
/* 06D00C 8006C40C 8FA60070 */  lw    $a2, 0x70($sp)
/* 06D010 8006C410 87A70076 */  lh    $a3, 0x76($sp)
/* 06D014 8006C414 0006C403 */  sra   $t8, $a2, 0x10
/* 06D018 8006C418 331900FF */  andi  $t9, $t8, 0xff
/* 06D01C 8006C41C 00197400 */  sll   $t6, $t9, 0x10
/* 06D020 8006C420 000E2403 */  sra   $a0, $t6, 0x10
/* 06D024 8006C424 0006CA03 */  sra   $t9, $a2, 8
/* 06D028 8006C428 332E00FF */  andi  $t6, $t9, 0xff
/* 06D02C 8006C42C 000EC400 */  sll   $t8, $t6, 0x10
/* 06D030 8006C430 00182C03 */  sra   $a1, $t8, 0x10
/* 06D034 8006C434 30CE00FF */  andi  $t6, $a2, 0xff
/* 06D038 8006C438 000EC400 */  sll   $t8, $t6, 0x10
/* 06D03C 8006C43C 0C012CD7 */  jal   func_8004B35C
/* 06D040 8006C440 00183403 */   sra   $a2, $t8, 0x10
/* 06D044 8006C444 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06D048 8006C448 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06D04C 8006C44C 8C620000 */  lw    $v0, ($v1)
/* 06D050 8006C450 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 06D054 8006C454 3C180050 */  lui   $t8, (0x00504B50 >> 16) # lui $t8, 0x50
/* 06D058 8006C458 244F0008 */  addiu $t7, $v0, 8
/* 06D05C 8006C45C AC6F0000 */  sw    $t7, ($v1)
/* 06D060 8006C460 37184B50 */  ori   $t8, (0x00504B50 & 0xFFFF) # ori $t8, $t8, 0x4b50
/* 06D064 8006C464 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 06D068 8006C468 AC4E0000 */  sw    $t6, ($v0)
/* 06D06C 8006C46C AC580004 */  sw    $t8, 4($v0)
/* 06D070 8006C470 8C620000 */  lw    $v0, ($v1)
/* 06D074 8006C474 3C0E800F */  lui   $t6, %hi(D_800E87C0) # $t6, 0x800f
/* 06D078 8006C478 3C0F0400 */  lui   $t7, (0x0400103F >> 16) # lui $t7, 0x400
/* 06D07C 8006C47C 24590008 */  addiu $t9, $v0, 8
/* 06D080 8006C480 AC790000 */  sw    $t9, ($v1)
/* 06D084 8006C484 35EF103F */  ori   $t7, (0x0400103F & 0xFFFF) # ori $t7, $t7, 0x103f
/* 06D088 8006C488 25CE87C0 */  addiu $t6, %lo(D_800E87C0) # addiu $t6, $t6, -0x7840
/* 06D08C 8006C48C AC4E0004 */  sw    $t6, 4($v0)
/* 06D090 8006C490 AC4F0000 */  sw    $t7, ($v0)
/* 06D094 8006C494 8C620000 */  lw    $v0, ($v1)
/* 06D098 8006C498 3C0F0D01 */  lui   $t7, %hi(D_0D008DA0) # $t7, 0xd01
/* 06D09C 8006C49C 3C078016 */  lui   $a3, %hi(D_80164AF0) # $a3, 0x8016
/* 06D0A0 8006C4A0 24580008 */  addiu $t8, $v0, 8
/* 06D0A4 8006C4A4 AC780000 */  sw    $t8, ($v1)
/* 06D0A8 8006C4A8 25EF8DA0 */  addiu $t7, %lo(D_0D008DA0) # addiu $t7, $t7, -0x7260
/* 06D0AC 8006C4AC 3C190600 */  lui   $t9, 0x600
/* 06D0B0 8006C4B0 24E74AF0 */  addiu $a3, %lo(D_80164AF0) # addiu $a3, $a3, 0x4af0
/* 06D0B4 8006C4B4 AC590000 */  sw    $t9, ($v0)
/* 06D0B8 8006C4B8 AC4F0004 */  sw    $t7, 4($v0)
/* 06D0BC 8006C4BC 84EE0000 */  lh    $t6, ($a3)
/* 06D0C0 8006C4C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06D0C4 8006C4C4 27BD0068 */  addiu $sp, $sp, 0x68
/* 06D0C8 8006C4C8 25D80001 */  addiu $t8, $t6, 1
/* 06D0CC 8006C4CC 03E00008 */  jr    $ra
/* 06D0D0 8006C4D0 A4F80000 */   sh    $t8, ($a3)

/* 06D0D4 8006C4D4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 06D0D8 8006C4D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06D0DC 8006C4DC AFA40058 */  sw    $a0, 0x58($sp)
/* 06D0E0 8006C4E0 AFA60060 */  sw    $a2, 0x60($sp)
/* 06D0E4 8006C4E4 AFA70064 */  sw    $a3, 0x64($sp)
/* 06D0E8 8006C4E8 C4840000 */  lwc1  $f4, ($a0)
/* 06D0EC 8006C4EC 3C0F800E */  lui   $t7, %hi(D_800DDB40) # $t7, 0x800e
/* 06D0F0 8006C4F0 8DEFDB40 */  lw    $t7, %lo(D_800DDB40)($t7)
/* 06D0F4 8006C4F4 E7A4004C */  swc1  $f4, 0x4c($sp)
/* 06D0F8 8006C4F8 C4860004 */  lwc1  $f6, 4($a0)
/* 06D0FC 8006C4FC 44856000 */  mtc1  $a1, $f12
/* 06D100 8006C500 27A50044 */  addiu $a1, $sp, 0x44
/* 06D104 8006C504 E7A60050 */  swc1  $f6, 0x50($sp)
/* 06D108 8006C508 C4880008 */  lwc1  $f8, 8($a0)
/* 06D10C 8006C50C A7A00044 */  sh    $zero, 0x44($sp)
/* 06D110 8006C510 44066000 */  mfc1  $a2, $f12
/* 06D114 8006C514 E7A80054 */  swc1  $f8, 0x54($sp)
/* 06D118 8006C518 85F80026 */  lh    $t8, 0x26($t7)
/* 06D11C 8006C51C A7A00048 */  sh    $zero, 0x48($sp)
/* 06D120 8006C520 27A4004C */  addiu $a0, $sp, 0x4c
/* 06D124 8006C524 0C0194B5 */  jal   func_800652D4
/* 06D128 8006C528 A7B80046 */   sh    $t8, 0x46($sp)
/* 06D12C 8006C52C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06D130 8006C530 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06D134 8006C534 8C620000 */  lw    $v0, ($v1)
/* 06D138 8006C538 3C0F0D01 */  lui   $t7, %hi(D_0D008DB8) # $t7, 0xd01
/* 06D13C 8006C53C 25EF8DB8 */  addiu $t7, %lo(D_0D008DB8) # addiu $t7, $t7, -0x7248
/* 06D140 8006C540 24590008 */  addiu $t9, $v0, 8
/* 06D144 8006C544 AC790000 */  sw    $t9, ($v1)
/* 06D148 8006C548 3C0E0600 */  lui   $t6, 0x600
/* 06D14C 8006C54C AC4E0000 */  sw    $t6, ($v0)
/* 06D150 8006C550 AC4F0004 */  sw    $t7, 4($v0)
/* 06D154 8006C554 8C620000 */  lw    $v0, ($v1)
/* 06D158 8006C558 3C19FD90 */  lui   $t9, 0xfd90
/* 06D15C 8006C55C 24580008 */  addiu $t8, $v0, 8
/* 06D160 8006C560 AC780000 */  sw    $t8, ($v1)
/* 06D164 8006C564 AC590000 */  sw    $t9, ($v0)
/* 06D168 8006C568 87AE006A */  lh    $t6, 0x6a($sp)
/* 06D16C 8006C56C 3C180D03 */  lui   $t8, %hi(D_0D02AC58) # $t8, 0xd03
/* 06D170 8006C570 2718AC58 */  addiu $t8, %lo(D_0D02AC58) # addiu $t8, $t8, -0x53a8
/* 06D174 8006C574 000E7A80 */  sll   $t7, $t6, 0xa
/* 06D178 8006C578 01F8C821 */  addu  $t9, $t7, $t8
/* 06D17C 8006C57C AC590004 */  sw    $t9, 4($v0)
/* 06D180 8006C580 8C620000 */  lw    $v0, ($v1)
/* 06D184 8006C584 3C180700 */  lui   $t8, 0x700
/* 06D188 8006C588 3C0FF590 */  lui   $t7, 0xf590
/* 06D18C 8006C58C 244E0008 */  addiu $t6, $v0, 8
/* 06D190 8006C590 AC6E0000 */  sw    $t6, ($v1)
/* 06D194 8006C594 AC580004 */  sw    $t8, 4($v0)
/* 06D198 8006C598 AC4F0000 */  sw    $t7, ($v0)
/* 06D19C 8006C59C 8C620000 */  lw    $v0, ($v1)
/* 06D1A0 8006C5A0 3C0EE600 */  lui   $t6, 0xe600
/* 06D1A4 8006C5A4 3C18F300 */  lui   $t8, 0xf300
/* 06D1A8 8006C5A8 24590008 */  addiu $t9, $v0, 8
/* 06D1AC 8006C5AC AC790000 */  sw    $t9, ($v1)
/* 06D1B0 8006C5B0 AC400004 */  sw    $zero, 4($v0)
/* 06D1B4 8006C5B4 AC4E0000 */  sw    $t6, ($v0)
/* 06D1B8 8006C5B8 8C620000 */  lw    $v0, ($v1)
/* 06D1BC 8006C5BC 3C19071F */  lui   $t9, (0x071FF200 >> 16) # lui $t9, 0x71f
/* 06D1C0 8006C5C0 3739F200 */  ori   $t9, (0x071FF200 & 0xFFFF) # ori $t9, $t9, 0xf200
/* 06D1C4 8006C5C4 244F0008 */  addiu $t7, $v0, 8
/* 06D1C8 8006C5C8 AC6F0000 */  sw    $t7, ($v1)
/* 06D1CC 8006C5CC AC590004 */  sw    $t9, 4($v0)
/* 06D1D0 8006C5D0 AC580000 */  sw    $t8, ($v0)
/* 06D1D4 8006C5D4 8C620000 */  lw    $v0, ($v1)
/* 06D1D8 8006C5D8 3C0FE700 */  lui   $t7, 0xe700
/* 06D1DC 8006C5DC 3C19F588 */  lui   $t9, (0xF5880800 >> 16) # lui $t9, 0xf588
/* 06D1E0 8006C5E0 244E0008 */  addiu $t6, $v0, 8
/* 06D1E4 8006C5E4 AC6E0000 */  sw    $t6, ($v1)
/* 06D1E8 8006C5E8 AC400004 */  sw    $zero, 4($v0)
/* 06D1EC 8006C5EC AC4F0000 */  sw    $t7, ($v0)
/* 06D1F0 8006C5F0 8C620000 */  lw    $v0, ($v1)
/* 06D1F4 8006C5F4 37390800 */  ori   $t9, (0xF5880800 & 0xFFFF) # ori $t9, $t9, 0x800
/* 06D1F8 8006C5F8 3C0FF200 */  lui   $t7, 0xf200
/* 06D1FC 8006C5FC 24580008 */  addiu $t8, $v0, 8
/* 06D200 8006C600 AC780000 */  sw    $t8, ($v1)
/* 06D204 8006C604 AC400004 */  sw    $zero, 4($v0)
/* 06D208 8006C608 AC590000 */  sw    $t9, ($v0)
/* 06D20C 8006C60C 8C620000 */  lw    $v0, ($v1)
/* 06D210 8006C610 3C190007 */  lui   $t9, (0x0007C07C >> 16) # lui $t9, 7
/* 06D214 8006C614 3739C07C */  ori   $t9, (0x0007C07C & 0xFFFF) # ori $t9, $t9, 0xc07c
/* 06D218 8006C618 244E0008 */  addiu $t6, $v0, 8
/* 06D21C 8006C61C AC6E0000 */  sw    $t6, ($v1)
/* 06D220 8006C620 AFA2001C */  sw    $v0, 0x1c($sp)
/* 06D224 8006C624 AC590004 */  sw    $t9, 4($v0)
/* 06D228 8006C628 AC4F0000 */  sw    $t7, ($v0)
/* 06D22C 8006C62C 8FA60060 */  lw    $a2, 0x60($sp)
/* 06D230 8006C630 87A70066 */  lh    $a3, 0x66($sp)
/* 06D234 8006C634 00067C03 */  sra   $t7, $a2, 0x10
/* 06D238 8006C638 31F900FF */  andi  $t9, $t7, 0xff
/* 06D23C 8006C63C 0019C400 */  sll   $t8, $t9, 0x10
/* 06D240 8006C640 00182403 */  sra   $a0, $t8, 0x10
/* 06D244 8006C644 0006CA03 */  sra   $t9, $a2, 8
/* 06D248 8006C648 333800FF */  andi  $t8, $t9, 0xff
/* 06D24C 8006C64C 00187C00 */  sll   $t7, $t8, 0x10
/* 06D250 8006C650 000F2C03 */  sra   $a1, $t7, 0x10
/* 06D254 8006C654 30D800FF */  andi  $t8, $a2, 0xff
/* 06D258 8006C658 00187C00 */  sll   $t7, $t8, 0x10
/* 06D25C 8006C65C 0C012D05 */  jal   func_8004B414
/* 06D260 8006C660 000F3403 */   sra   $a2, $t7, 0x10
/* 06D264 8006C664 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06D268 8006C668 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06D26C 8006C66C 8C620000 */  lw    $v0, ($v1)
/* 06D270 8006C670 3C0F0D01 */  lui   $t7, %hi(D_0D008E48) # $t7, 0xd01
/* 06D274 8006C674 3C058016 */  lui   $a1, %hi(D_80164AF0) # $a1, 0x8016
/* 06D278 8006C678 244E0008 */  addiu $t6, $v0, 8
/* 06D27C 8006C67C AC6E0000 */  sw    $t6, ($v1)
/* 06D280 8006C680 25EF8E48 */  addiu $t7, %lo(D_0D008E48) # addiu $t7, $t7, -0x71b8
/* 06D284 8006C684 3C180600 */  lui   $t8, 0x600
/* 06D288 8006C688 24A54AF0 */  addiu $a1, %lo(D_80164AF0) # addiu $a1, $a1, 0x4af0
/* 06D28C 8006C68C AC580000 */  sw    $t8, ($v0)
/* 06D290 8006C690 AC4F0004 */  sw    $t7, 4($v0)
/* 06D294 8006C694 84B90000 */  lh    $t9, ($a1)
/* 06D298 8006C698 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06D29C 8006C69C 27BD0058 */  addiu $sp, $sp, 0x58
/* 06D2A0 8006C6A0 272E0001 */  addiu $t6, $t9, 1
/* 06D2A4 8006C6A4 03E00008 */  jr    $ra
/* 06D2A8 8006C6A8 A4AE0000 */   sh    $t6, ($a1)
