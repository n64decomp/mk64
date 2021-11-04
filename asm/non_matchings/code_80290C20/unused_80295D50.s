glabel unused_80295D50
/* 0FF360 80295D50 3C018016 */  lui   $at, %hi(D_8015F6F4) # $at, 0x8016
/* 0FF364 80295D54 A425F6F4 */  sh    $a1, %lo(D_8015F6F4)($at)
/* 0FF368 80295D58 3C018016 */  lui   $at, %hi(D_8015F6F6)
/* 0FF36C 80295D5C AFA40000 */  sw    $a0, ($sp)
/* 0FF370 80295D60 AFA50004 */  sw    $a1, 4($sp)
/* 0FF374 80295D64 03E00008 */  jr    $ra
/* 0FF378 80295D68 A424F6F6 */   sh    $a0, %lo(D_8015F6F6)($at)
