glabel func_802AECA0
/* 1182B0 802AECA0 00807025 */  move  $t6, $a0
/* 1182B4 802AECA4 3C0100FF */  lui   $at, 0xff
/* 1182B8 802AECA8 00817824 */  and   $t7, $a0, $at
/* 1182BC 802AECAC 31CAFF00 */  andi  $t2, $t6, 0xff00
/* 1182C0 802AECB0 3C028016 */  lui   $v0, %hi(D_8015F668) # $v0, 0x8016
/* 1182C4 802AECB4 000FC402 */  srl   $t8, $t7, 0x10
/* 1182C8 802AECB8 000A5A02 */  srl   $t3, $t2, 8
/* 1182CC 802AECBC 2442F668 */  addiu $v0, %lo(D_8015F668) # addiu $v0, $v0, -0x998
/* 1182D0 802AECC0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1182D4 802AECC4 0018C842 */  srl   $t9, $t8, 1
/* 1182D8 802AECC8 000B6042 */  srl   $t4, $t3, 1
/* 1182DC 802AECCC 3C01FF00 */  lui   $at, 0xff00
/* 1182E0 802AECD0 00194080 */  sll   $t0, $t9, 2
/* 1182E4 802AECD4 000C6880 */  sll   $t5, $t4, 2
/* 1182E8 802AECD8 01C15024 */  and   $t2, $t6, $at
/* 1182EC 802AECDC 00484821 */  addu  $t1, $v0, $t0
/* 1182F0 802AECE0 004D7821 */  addu  $t7, $v0, $t5
/* 1182F4 802AECE4 31D800FF */  andi  $t8, $t6, 0xff
/* 1182F8 802AECE8 000A5E02 */  srl   $t3, $t2, 0x18
/* 1182FC 802AECEC AFA40048 */  sw    $a0, 0x48($sp)
/* 118300 802AECF0 AFA5004C */  sw    $a1, 0x4c($sp)
/* 118304 802AECF4 0018C842 */  srl   $t9, $t8, 1
/* 118308 802AECF8 000B6042 */  srl   $t4, $t3, 1
/* 11830C 802AECFC 8D240000 */  lw    $a0, ($t1)
/* 118310 802AED00 AFBF001C */  sw    $ra, 0x1c($sp)
/* 118314 802AED04 AFA60050 */  sw    $a2, 0x50($sp)
/* 118318 802AED08 8DE50000 */  lw    $a1, ($t7)
/* 11831C 802AED0C 00194080 */  sll   $t0, $t9, 2
/* 118320 802AED10 000C6880 */  sll   $t5, $t4, 2
/* 118324 802AED14 00484821 */  addu  $t1, $v0, $t0
/* 118328 802AED18 004D7821 */  addu  $t7, $v0, $t5
/* 11832C 802AED1C 8D260000 */  lw    $a2, ($t1)
/* 118330 802AED20 8DF80000 */  lw    $t8, ($t7)
/* 118334 802AED24 97B90052 */  lhu   $t9, 0x52($sp)
/* 118338 802AED28 83A7004F */  lb    $a3, 0x4f($sp)
/* 11833C 802AED2C AFA4002C */  sw    $a0, 0x2c($sp)
/* 118340 802AED30 AFA60024 */  sw    $a2, 0x24($sp)
/* 118344 802AED34 AFB80020 */  sw    $t8, 0x20($sp)
/* 118348 802AED38 0C0AB90D */  jal   func_802AE434
/* 11834C 802AED3C AFB90010 */   sw    $t9, 0x10($sp)
/* 118350 802AED40 97A80052 */  lhu   $t0, 0x52($sp)
/* 118354 802AED44 8FA4002C */  lw    $a0, 0x2c($sp)
/* 118358 802AED48 8FA50024 */  lw    $a1, 0x24($sp)
/* 11835C 802AED4C 8FA60020 */  lw    $a2, 0x20($sp)
/* 118360 802AED50 83A7004F */  lb    $a3, 0x4f($sp)
/* 118364 802AED54 0C0AB90D */  jal   func_802AE434
/* 118368 802AED58 AFA80010 */   sw    $t0, 0x10($sp)
/* 11836C 802AED5C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 118370 802AED60 27BD0048 */  addiu $sp, $sp, 0x48
/* 118374 802AED64 03E00008 */  jr    $ra
/* 118378 802AED68 00000000 */   nop   
