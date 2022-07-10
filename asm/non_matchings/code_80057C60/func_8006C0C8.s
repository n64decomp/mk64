glabel func_8006C0C8
/* 06CCC8 8006C0C8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 06CCCC 8006C0CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 06CCD0 8006C0D0 AFA40058 */  sw    $a0, 0x58($sp)
/* 06CCD4 8006C0D4 AFA60060 */  sw    $a2, 0x60($sp)
/* 06CCD8 8006C0D8 AFA70064 */  sw    $a3, 0x64($sp)
/* 06CCDC 8006C0DC C4840000 */  lwc1  $f4, ($a0)
/* 06CCE0 8006C0E0 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 06CCE4 8006C0E4 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
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
