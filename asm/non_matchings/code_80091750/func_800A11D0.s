glabel func_800A11D0
/* 0A1DD0 800A11D0 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 0A1DD4 800A11D4 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 0A1DD8 800A11D8 8D420000 */  lw    $v0, ($t2)
/* 0A1DDC 800A11DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A1DE0 800A11E0 3C19800E */  lui   $t9, %hi(D_800E74A8) # $t9, 0x800e
/* 0A1DE4 800A11E4 244E0008 */  addiu $t6, $v0, 8
/* 0A1DE8 800A11E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1DEC 800A11EC AFA40018 */  sw    $a0, 0x18($sp)
/* 0A1DF0 800A11F0 AD4E0000 */  sw    $t6, ($t2)
/* 0A1DF4 800A11F4 273974A8 */  addiu $t9, %lo(D_800E74A8) # addiu $t9, $t9, 0x74a8
/* 0A1DF8 800A11F8 3C0FFA00 */  lui   $t7, 0xfa00
/* 0A1DFC 800A11FC 0005C0C0 */  sll   $t8, $a1, 3
/* 0A1E00 800A1200 03191821 */  addu  $v1, $t8, $t9
/* 0A1E04 800A1204 AC4F0000 */  sw    $t7, ($v0)
/* 0A1E08 800A1208 946E0002 */  lhu   $t6, 2($v1)
/* 0A1E0C 800A120C 946C0000 */  lhu   $t4, ($v1)
/* 0A1E10 800A1210 946B0004 */  lhu   $t3, 4($v1)
/* 0A1E14 800A1214 31CF00FF */  andi  $t7, $t6, 0xff
/* 0A1E18 800A1218 000FC400 */  sll   $t8, $t7, 0x10
/* 0A1E1C 800A121C 000C6E00 */  sll   $t5, $t4, 0x18
/* 0A1E20 800A1220 01B8C825 */  or    $t9, $t5, $t8
/* 0A1E24 800A1224 946D0006 */  lhu   $t5, 6($v1)
/* 0A1E28 800A1228 316C00FF */  andi  $t4, $t3, 0xff
/* 0A1E2C 800A122C 000C7200 */  sll   $t6, $t4, 8
/* 0A1E30 800A1230 032E7825 */  or    $t7, $t9, $t6
/* 0A1E34 800A1234 31B800FF */  andi  $t8, $t5, 0xff
/* 0A1E38 800A1238 01F85825 */  or    $t3, $t7, $t8
/* 0A1E3C 800A123C AC4B0004 */  sw    $t3, 4($v0)
/* 0A1E40 800A1240 8D420000 */  lw    $v0, ($t2)
/* 0A1E44 800A1244 30C700FF */  andi  $a3, $a2, 0xff
/* 0A1E48 800A1248 00077600 */  sll   $t6, $a3, 0x18
/* 0A1E4C 800A124C 244C0008 */  addiu $t4, $v0, 8
/* 0A1E50 800A1250 AD4C0000 */  sw    $t4, ($t2)
/* 0A1E54 800A1254 00076C00 */  sll   $t5, $a3, 0x10
/* 0A1E58 800A1258 01CD7825 */  or    $t7, $t6, $t5
/* 0A1E5C 800A125C 0007C200 */  sll   $t8, $a3, 8
/* 0A1E60 800A1260 01F85825 */  or    $t3, $t7, $t8
/* 0A1E64 800A1264 3C19FB00 */  lui   $t9, 0xfb00
/* 0A1E68 800A1268 00056080 */  sll   $t4, $a1, 2
/* 0A1E6C 800A126C 3C04800F */  lui   $a0, %hi(D_800E82B4) # 0x800f
/* 0A1E70 800A1270 008C2021 */  addu  $a0, $a0, $t4
/* 0A1E74 800A1274 AC590000 */  sw    $t9, ($v0)
/* 0A1E78 800A1278 AC4B0004 */  sw    $t3, 4($v0)
/* 0A1E7C 800A127C 0C026449 */  jal   segmented_to_virtual
/* 0A1E80 800A1280 8C8482B4 */   lw    $a0, %lo(D_800E82B4)($a0) # -0x7d4c($a0)
/* 0A1E84 800A1284 8FA30018 */  lw    $v1, 0x18($sp)
/* 0A1E88 800A1288 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 0A1E8C 800A128C 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 0A1E90 800A1290 8D440000 */  lw    $a0, ($t2)
/* 0A1E94 800A1294 00402825 */  move  $a1, $v0
/* 0A1E98 800A1298 8C66000C */  lw    $a2, 0xc($v1)
/* 0A1E9C 800A129C 0C026E9D */  jal   func_8009BA74
/* 0A1EA0 800A12A0 8C670010 */   lw    $a3, 0x10($v1)
/* 0A1EA4 800A12A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1EA8 800A12A8 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 0A1EAC 800A12AC 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 0A1EB0 800A12B0 AD420000 */  sw    $v0, ($t2)
/* 0A1EB4 800A12B4 03E00008 */  jr    $ra
/* 0A1EB8 800A12B8 27BD0018 */   addiu $sp, $sp, 0x18
