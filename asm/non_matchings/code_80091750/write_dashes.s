# Originally func_800A78E0
glabel write_dashes
/* 0A84E0 800A78E0 2402002D */  li    $v0, 45
/* 0A84E4 800A78E4 A0820000 */  sb    $v0, ($a0)
/* 0A84E8 800A78E8 A0820001 */  sb    $v0, 1($a0)
/* 0A84EC 800A78EC 03E00008 */  jr    $ra
/* 0A84F0 800A78F0 A0800002 */   sb    $zero, 2($a0)
