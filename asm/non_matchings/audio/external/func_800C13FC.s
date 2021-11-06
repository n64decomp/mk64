glabel func_800C13FC
/* 0C1FFC 800C13FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C2000 800C1400 AFA40038 */  sw    $a0, 0x38($sp)
/* 0C2004 800C1404 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C2008 800C1408 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C200C 800C140C 3C04800F */  lui   $a0, %hi(D_800EA3B4) # $a0, 0x800f
/* 0C2010 800C1410 03A0F025 */  move  $fp, $sp
/* 0C2014 800C1414 8C84A3B4 */  lw    $a0, %lo(D_800EA3B4)($a0)
/* 0C2018 800C1418 27A50034 */  addiu $a1, $sp, 0x34
/* 0C201C 800C141C 0C0335D4 */  jal   osRecvMesg
/* 0C2020 800C1420 00003025 */   move  $a2, $zero
/* 0C2024 800C1424 3C04800F */  lui   $a0, %hi(D_800EA3B0) # $a0, 0x800f
/* 0C2028 800C1428 8C84A3B0 */  lw    $a0, %lo(D_800EA3B0)($a0)
/* 0C202C 800C142C 8FC50038 */  lw    $a1, 0x38($fp)
/* 0C2030 800C1430 0C033630 */  jal   osSendMesg
/* 0C2034 800C1434 00003025 */   move  $a2, $zero
/* 0C2038 800C1438 3C04800F */  lui   $a0, %hi(D_800EA3B4) # $a0, 0x800f
/* 0C203C 800C143C 8C84A3B4 */  lw    $a0, %lo(D_800EA3B4)($a0)
/* 0C2040 800C1440 27C50034 */  addiu $a1, $fp, 0x34
/* 0C2044 800C1444 0C0335D4 */  jal   osRecvMesg
/* 0C2048 800C1448 24060001 */   li    $a2, 1
/* 0C204C 800C144C 8FCE0034 */  lw    $t6, 0x34($fp)
/* 0C2050 800C1450 8FCF0038 */  lw    $t7, 0x38($fp)
/* 0C2054 800C1454 3C04800F */  lui   $a0, %hi(D_800EA3B4) # $a0, 0x800f
/* 0C2058 800C1458 27C50034 */  addiu $a1, $fp, 0x34
/* 0C205C 800C145C 11CF0003 */  beq   $t6, $t7, .L800C146C
/* 0C2060 800C1460 24060001 */   li    $a2, 1
/* 0C2064 800C1464 0C0335D4 */  jal   osRecvMesg
/* 0C2068 800C1468 8C84A3B4 */   lw    $a0, %lo(D_800EA3B4)($a0)
.L800C146C:
/* 0C206C 800C146C 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C2070 800C1470 03C0E825 */  move  $sp, $fp
/* 0C2074 800C1474 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C2078 800C1478 03E00008 */  jr    $ra
/* 0C207C 800C147C 27BD0038 */   addiu $sp, $sp, 0x38
