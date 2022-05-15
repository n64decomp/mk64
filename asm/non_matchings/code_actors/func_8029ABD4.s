glabel func_8029ABD4
/* 1041E4 8029ABD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1041E8 8029ABD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1041EC 8029ABDC AFA5001C */  sw    $a1, 0x1c($sp)
/* 1041F0 8029ABE0 3C018015 */  lui   $at, %hi(D_80150110) # $at, 0x8015
/* 1041F4 8029ABE4 A4200110 */  sh    $zero, %lo(D_80150110)($at)
/* 1041F8 8029ABE8 0C0A7B4E */  jal   func_8029ED38
/* 1041FC 8029ABEC 24050014 */   li    $a1, 20
/* 104200 8029ABF0 000278C0 */  sll   $t7, $v0, 3
/* 104204 8029ABF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 104208 8029ABF8 01E27823 */  subu  $t7, $t7, $v0
/* 10420C 8029ABFC 87AE001E */  lh    $t6, 0x1e($sp)
/* 104210 8029AC00 000F7900 */  sll   $t7, $t7, 4
/* 104214 8029AC04 3C018016 */  lui   $at, %hi(gActorList) # 0x8016
/* 104218 8029AC08 002F0821 */  addu  $at, $at, $t7
/* 10421C 8029AC0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 104220 8029AC10 03E00008 */  jr    $ra
/* 104224 8029AC14 A42EF9BE */   sh    $t6, %lo(gActorList+6)($at) # -0x642($at)
