glabel func_8028DF38
/* 0F7548 8028DF38 3C04800F */  lui   $a0, %hi(D_800F6914) # $a0, 0x800f
/* 0F754C 8028DF3C 3C0E802C */  lui   $t6, %hi(D_802BA040) # $t6, 0x802c
/* 0F7550 8028DF40 85CEA040 */  lh    $t6, %lo(D_802BA040)($t6)
/* 0F7554 8028DF44 94846914 */  lhu   $a0, %lo(D_800F6914)($a0)
/* 0F7558 8028DF48 3C01800F */  lui   $at, %hi(D_800F6916) # $at, 0x800f
/* 0F755C 8028DF4C 3C02800F */  lui   $v0, %hi(gPlayer2Controller) # $v0, 0x800f
/* 0F7560 8028DF50 01C47826 */  xor   $t7, $t6, $a0
/* 0F7564 8028DF54 01E4C024 */  and   $t8, $t7, $a0
/* 0F7568 8028DF58 A4386916 */  sh    $t8, %lo(D_800F6916)($at)
/* 0F756C 8028DF5C 01C4C826 */  xor   $t9, $t6, $a0
/* 0F7570 8028DF60 3C01800F */  lui   $at, %hi(D_800F6918) # $at, 0x800f
/* 0F7574 8028DF64 032E4024 */  and   $t0, $t9, $t6
/* 0F7578 8028DF68 A4286918 */  sh    $t0, %lo(D_800F6918)($at)
/* 0F757C 8028DF6C 3C01800F */  lui   $at, %hi(D_800F6914) # $at, 0x800f
/* 0F7580 8028DF70 3C09802C */  lui   $t1, %hi(D_802BA042) # $t1, 0x802c
/* 0F7584 8028DF74 24426920 */  addiu $v0, %lo(gPlayer2Controller) # addiu $v0, $v0, 0x6920
/* 0F7588 8028DF78 A42E6914 */  sh    $t6, %lo(D_800F6914)($at)
/* 0F758C 8028DF7C 94430004 */  lhu   $v1, 4($v0)
/* 0F7590 8028DF80 8529A042 */  lh    $t1, %lo(D_802BA042)($t1)
/* 0F7594 8028DF84 3C0C802C */  lui   $t4, %hi(D_802BA042) # $t4, 0x802c
/* 0F7598 8028DF88 3C18802C */  lui   $t8, %hi(D_802BA042) # $t8, 0x802c
/* 0F759C 8028DF8C 01235026 */  xor   $t2, $t1, $v1
/* 0F75A0 8028DF90 01435824 */  and   $t3, $t2, $v1
/* 0F75A4 8028DF94 A44B0006 */  sh    $t3, 6($v0)
/* 0F75A8 8028DF98 858CA042 */  lh    $t4, %lo(D_802BA042)($t4)
/* 0F75AC 8028DF9C 3C19802C */  lui   $t9, %hi(D_802BA044) # $t9, 0x802c
/* 0F75B0 8028DFA0 3C09802C */  lui   $t1, %hi(D_802BA044) # $t1, 0x802c
/* 0F75B4 8028DFA4 01836826 */  xor   $t5, $t4, $v1
/* 0F75B8 8028DFA8 01AC7824 */  and   $t7, $t5, $t4
/* 0F75BC 8028DFAC A44F0008 */  sh    $t7, 8($v0)
/* 0F75C0 8028DFB0 8718A042 */  lh    $t8, %lo(D_802BA042)($t8)
/* 0F75C4 8028DFB4 94430014 */  lhu   $v1, 0x14($v0)
/* 0F75C8 8028DFB8 3C0D802C */  lui   $t5, %hi(D_802BA044) # $t5, 0x802c
/* 0F75CC 8028DFBC A4580004 */  sh    $t8, 4($v0)
/* 0F75D0 8028DFC0 8739A044 */  lh    $t9, %lo(D_802BA044)($t9)
/* 0F75D4 8028DFC4 3C0C802C */  lui   $t4, %hi(D_802BA046) # $t4, 0x802c
/* 0F75D8 8028DFC8 24420020 */  addiu $v0, $v0, 0x20
/* 0F75DC 8028DFCC 03234026 */  xor   $t0, $t9, $v1
/* 0F75E0 8028DFD0 01037024 */  and   $t6, $t0, $v1
/* 0F75E4 8028DFD4 A44EFFF6 */  sh    $t6, -0xa($v0)
/* 0F75E8 8028DFD8 8529A044 */  lh    $t1, %lo(D_802BA044)($t1)
/* 0F75EC 8028DFDC 3C19802C */  lui   $t9, %hi(D_802BA046) # $t9, 0x802c
/* 0F75F0 8028DFE0 01235026 */  xor   $t2, $t1, $v1
/* 0F75F4 8028DFE4 01495824 */  and   $t3, $t2, $t1
/* 0F75F8 8028DFE8 A44BFFF8 */  sh    $t3, -8($v0)
/* 0F75FC 8028DFEC 85ADA044 */  lh    $t5, %lo(D_802BA044)($t5)
/* 0F7600 8028DFF0 94430004 */  lhu   $v1, 4($v0)
/* 0F7604 8028DFF4 3C0A802C */  lui   $t2, %hi(D_802BA046) # $t2, 0x802c
/* 0F7608 8028DFF8 A44DFFF4 */  sh    $t5, -0xc($v0)
/* 0F760C 8028DFFC 858CA046 */  lh    $t4, %lo(D_802BA046)($t4)
/* 0F7610 8028E000 01837826 */  xor   $t7, $t4, $v1
/* 0F7614 8028E004 01E3C024 */  and   $t8, $t7, $v1
/* 0F7618 8028E008 A4580006 */  sh    $t8, 6($v0)
/* 0F761C 8028E00C 8739A046 */  lh    $t9, %lo(D_802BA046)($t9)
/* 0F7620 8028E010 03234026 */  xor   $t0, $t9, $v1
/* 0F7624 8028E014 01197024 */  and   $t6, $t0, $t9
/* 0F7628 8028E018 A44E0008 */  sh    $t6, 8($v0)
/* 0F762C 8028E01C 854AA046 */  lh    $t2, %lo(D_802BA046)($t2)
/* 0F7630 8028E020 03E00008 */  jr    $ra
/* 0F7634 8028E024 A44A0004 */   sh    $t2, 4($v0)
