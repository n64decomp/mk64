glabel func_802A41D4
/* 10D7E4 802A41D4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10D7E8 802A41D8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10D7EC 802A41DC 8C620000 */  lw    $v0, ($v1)
/* 10D7F0 802A41E0 3C0FFF10 */  lui   $t7, (0xFF10013F >> 16) # lui $t7, 0xff10
/* 10D7F4 802A41E4 35EF013F */  ori   $t7, (0xFF10013F & 0xFFFF) # ori $t7, $t7, 0x13f
/* 10D7F8 802A41E8 244E0008 */  addiu $t6, $v0, 8
/* 10D7FC 802A41EC AC6E0000 */  sw    $t6, ($v1)
/* 10D800 802A41F0 3C18800E */  lui   $t8, %hi(sRenderingFramebuffer) # $t8, 0x800e
/* 10D804 802A41F4 AC4F0000 */  sw    $t7, ($v0)
/* 10D808 802A41F8 9718C560 */  lhu   $t8, %lo(sRenderingFramebuffer)($t8)
/* 10D80C 802A41FC 3C0D8015 */  lui   $t5, %hi(gPhysicalFramebuffers) # 0x8015
/* 10D810 802A4200 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10D814 802A4204 0018C880 */  sll   $t9, $t8, 2
/* 10D818 802A4208 01B96821 */  addu  $t5, $t5, $t9
/* 10D81C 802A420C 8DAD02A8 */  lw    $t5, %lo(gPhysicalFramebuffers)($t5)
/* 10D820 802A4210 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10D824 802A4214 3C18F700 */  lui   $t8, 0xf700
/* 10D828 802A4218 01A17024 */  and   $t6, $t5, $at
/* 10D82C 802A421C AC4E0004 */  sw    $t6, 4($v0)
/* 10D830 802A4220 8C620000 */  lw    $v0, ($v1)
/* 10D834 802A4224 3C19800E */  lui   $t9, %hi(D_800DC5D0) # $t9, 0x800e
/* 10D838 802A4228 3C0CE700 */  lui   $t4, 0xe700
/* 10D83C 802A422C 244F0008 */  addiu $t7, $v0, 8
/* 10D840 802A4230 AC6F0000 */  sw    $t7, ($v1)
/* 10D844 802A4234 3C0F800E */  lui   $t7, %hi(D_800DC5D4) # $t7, 0x800e
/* 10D848 802A4238 AC580000 */  sw    $t8, ($v0)
/* 10D84C 802A423C 8DEFC5D4 */  lw    $t7, %lo(D_800DC5D4)($t7)
/* 10D850 802A4240 8F39C5D0 */  lw    $t9, %lo(D_800DC5D0)($t9)
/* 10D854 802A4244 000FC0C0 */  sll   $t8, $t7, 3
/* 10D858 802A4248 3C0F800E */  lui   $t7, %hi(D_800DC5D8) # $t7, 0x800e
/* 10D85C 802A424C 8DEFC5D8 */  lw    $t7, %lo(D_800DC5D8)($t7)
/* 10D860 802A4250 00196A00 */  sll   $t5, $t9, 8
/* 10D864 802A4254 331907C0 */  andi  $t9, $t8, 0x7c0
/* 10D868 802A4258 31AEF800 */  andi  $t6, $t5, 0xf800
/* 10D86C 802A425C 01D96825 */  or    $t5, $t6, $t9
/* 10D870 802A4260 000FC083 */  sra   $t8, $t7, 2
/* 10D874 802A4264 330E003E */  andi  $t6, $t8, 0x3e
/* 10D878 802A4268 01AE3025 */  or    $a2, $t5, $t6
/* 10D87C 802A426C 34D90001 */  ori   $t9, $a2, 1
/* 10D880 802A4270 00197C00 */  sll   $t7, $t9, 0x10
/* 10D884 802A4274 01F9C025 */  or    $t8, $t7, $t9
/* 10D888 802A4278 AC580004 */  sw    $t8, 4($v0)
/* 10D88C 802A427C 8C620000 */  lw    $v0, ($v1)
/* 10D890 802A4280 3C0F0050 */  lui   $t7, (0x005003C0 >> 16) # lui $t7, 0x50
/* 10D894 802A4284 35EF03C0 */  ori   $t7, (0x005003C0 & 0xFFFF) # ori $t7, $t7, 0x3c0
/* 10D898 802A4288 244D0008 */  addiu $t5, $v0, 8
/* 10D89C 802A428C AC6D0000 */  sw    $t5, ($v1)
/* 10D8A0 802A4290 AC400004 */  sw    $zero, 4($v0)
/* 10D8A4 802A4294 AC4C0000 */  sw    $t4, ($v0)
/* 10D8A8 802A4298 8C620000 */  lw    $v0, ($v1)
/* 10D8AC 802A429C 3C19ED00 */  lui   $t9, 0xed00
/* 10D8B0 802A42A0 3C0DF64F */  lui   $t5, (0xF64FC3BC >> 16) # lui $t5, 0xf64f
/* 10D8B4 802A42A4 244E0008 */  addiu $t6, $v0, 8
/* 10D8B8 802A42A8 AC6E0000 */  sw    $t6, ($v1)
/* 10D8BC 802A42AC AC4F0004 */  sw    $t7, 4($v0)
/* 10D8C0 802A42B0 AC590000 */  sw    $t9, ($v0)
/* 10D8C4 802A42B4 8C620000 */  lw    $v0, ($v1)
/* 10D8C8 802A42B8 35ADC3BC */  ori   $t5, (0xF64FC3BC & 0xFFFF) # ori $t5, $t5, 0xc3bc
/* 10D8CC 802A42BC 3C0FBA00 */  lui   $t7, (0xBA001402 >> 16) # lui $t7, 0xba00
/* 10D8D0 802A42C0 24580008 */  addiu $t8, $v0, 8
/* 10D8D4 802A42C4 AC780000 */  sw    $t8, ($v1)
/* 10D8D8 802A42C8 AC400004 */  sw    $zero, 4($v0)
/* 10D8DC 802A42CC AC4D0000 */  sw    $t5, ($v0)
/* 10D8E0 802A42D0 8C620000 */  lw    $v0, ($v1)
/* 10D8E4 802A42D4 35EF1402 */  ori   $t7, (0xBA001402 & 0xFFFF) # ori $t7, $t7, 0x1402
/* 10D8E8 802A42D8 244E0008 */  addiu $t6, $v0, 8
/* 10D8EC 802A42DC AC6E0000 */  sw    $t6, ($v1)
/* 10D8F0 802A42E0 AC400004 */  sw    $zero, 4($v0)
/* 10D8F4 802A42E4 AC4C0000 */  sw    $t4, ($v0)
/* 10D8F8 802A42E8 8C620000 */  lw    $v0, ($v1)
/* 10D8FC 802A42EC 24590008 */  addiu $t9, $v0, 8
/* 10D900 802A42F0 AC790000 */  sw    $t9, ($v1)
/* 10D904 802A42F4 AC400004 */  sw    $zero, 4($v0)
/* 10D908 802A42F8 03E00008 */  jr    $ra
/* 10D90C 802A42FC AC4F0000 */   sw    $t7, ($v0)
