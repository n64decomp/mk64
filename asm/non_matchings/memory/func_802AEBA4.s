glabel func_802AEBA4
/* 1181B4 802AEBA4 00807025 */  move  $t6, $a0
/* 1181B8 802AEBA8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1181BC 802AEBAC 31CAFF00 */  andi  $t2, $t6, 0xff00
/* 1181C0 802AEBB0 AFA5005C */  sw    $a1, 0x5c($sp)
/* 1181C4 802AEBB4 3C0300FF */  lui   $v1, 0xff
/* 1181C8 802AEBB8 000A5A02 */  srl   $t3, $t2, 8
/* 1181CC 802AEBBC 8FAA005C */  lw    $t2, 0x5c($sp)
/* 1181D0 802AEBC0 00837824 */  and   $t7, $a0, $v1
/* 1181D4 802AEBC4 3C028016 */  lui   $v0, %hi(D_8015F668) # $v0, 0x8016
/* 1181D8 802AEBC8 000FC402 */  srl   $t8, $t7, 0x10
/* 1181DC 802AEBCC 000B6042 */  srl   $t4, $t3, 1
/* 1181E0 802AEBD0 2442F668 */  addiu $v0, %lo(D_8015F668) # addiu $v0, $v0, -0x998
/* 1181E4 802AEBD4 000C6880 */  sll   $t5, $t4, 2
/* 1181E8 802AEBD8 0018C842 */  srl   $t9, $t8, 1
/* 1181EC 802AEBDC 004D7821 */  addu  $t7, $v0, $t5
/* 1181F0 802AEBE0 01435824 */  and   $t3, $t2, $v1
/* 1181F4 802AEBE4 00194080 */  sll   $t0, $t9, 2
/* 1181F8 802AEBE8 000B6402 */  srl   $t4, $t3, 0x10
/* 1181FC 802AEBEC 00484821 */  addu  $t1, $v0, $t0
/* 118200 802AEBF0 8DE50000 */  lw    $a1, ($t7)
/* 118204 802AEBF4 31D800FF */  andi  $t8, $t6, 0xff
/* 118208 802AEBF8 000C6842 */  srl   $t5, $t4, 1
/* 11820C 802AEBFC AFA40058 */  sw    $a0, 0x58($sp)
/* 118210 802AEC00 0018C842 */  srl   $t9, $t8, 1
/* 118214 802AEC04 000D7880 */  sll   $t7, $t5, 2
/* 118218 802AEC08 8D240000 */  lw    $a0, ($t1)
/* 11821C 802AEC0C 00194080 */  sll   $t0, $t9, 2
/* 118220 802AEC10 004F7021 */  addu  $t6, $v0, $t7
/* 118224 802AEC14 8DD80000 */  lw    $t8, ($t6)
/* 118228 802AEC18 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11822C 802AEC1C AFA60060 */  sw    $a2, 0x60($sp)
/* 118230 802AEC20 AFA70064 */  sw    $a3, 0x64($sp)
/* 118234 802AEC24 00484821 */  addu  $t1, $v0, $t0
/* 118238 802AEC28 8D260000 */  lw    $a2, ($t1)
/* 11823C 802AEC2C 3159FF00 */  andi  $t9, $t2, 0xff00
/* 118240 802AEC30 00194202 */  srl   $t0, $t9, 8
/* 118244 802AEC34 314F00FF */  andi  $t7, $t2, 0xff
/* 118248 802AEC38 00084842 */  srl   $t1, $t0, 1
/* 11824C 802AEC3C 000F7042 */  srl   $t6, $t7, 1
/* 118250 802AEC40 AFB80028 */  sw    $t8, 0x28($sp)
/* 118254 802AEC44 00095880 */  sll   $t3, $t1, 2
/* 118258 802AEC48 000EC080 */  sll   $t8, $t6, 2
/* 11825C 802AEC4C 004B6021 */  addu  $t4, $v0, $t3
/* 118260 802AEC50 0058C821 */  addu  $t9, $v0, $t8
/* 118264 802AEC54 8D8D0000 */  lw    $t5, ($t4)
/* 118268 802AEC58 8F280000 */  lw    $t0, ($t9)
/* 11826C 802AEC5C 97A90066 */  lhu   $t1, 0x66($sp)
/* 118270 802AEC60 83A70063 */  lb    $a3, 0x63($sp)
/* 118274 802AEC64 AFAD0024 */  sw    $t5, 0x24($sp)
/* 118278 802AEC68 AFA80020 */  sw    $t0, 0x20($sp)
/* 11827C 802AEC6C 0C0AB90D */  jal   func_802AE434
/* 118280 802AEC70 AFA90010 */   sw    $t1, 0x10($sp)
/* 118284 802AEC74 97AB0066 */  lhu   $t3, 0x66($sp)
/* 118288 802AEC78 8FA40028 */  lw    $a0, 0x28($sp)
/* 11828C 802AEC7C 8FA50024 */  lw    $a1, 0x24($sp)
/* 118290 802AEC80 8FA60020 */  lw    $a2, 0x20($sp)
/* 118294 802AEC84 83A70063 */  lb    $a3, 0x63($sp)
/* 118298 802AEC88 0C0AB90D */  jal   func_802AE434
/* 11829C 802AEC8C AFAB0010 */   sw    $t3, 0x10($sp)
/* 1182A0 802AEC90 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1182A4 802AEC94 27BD0058 */  addiu $sp, $sp, 0x58
/* 1182A8 802AEC98 03E00008 */  jr    $ra
/* 1182AC 802AEC9C 00000000 */   nop   
