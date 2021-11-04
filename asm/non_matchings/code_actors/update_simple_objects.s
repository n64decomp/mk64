glabel update_simple_objects
/* 10CB58 802A3548 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 10CB5C 802A354C AFB00018 */  sw    $s0, 0x18($sp)
/* 10CB60 802A3550 3C108016 */  lui   $s0, %hi(D_8015F9B8) # $s0, 0x8016
/* 10CB64 802A3554 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10CB68 802A3558 2610F9B8 */  addiu $s0, %lo(D_8015F9B8) # addiu $s0, $s0, -0x648
/* 10CB6C 802A355C 860E0002 */  lh    $t6, 2($s0)
.L802A3560:
/* 10CB70 802A3560 11C00063 */  beqz  $t6, .L802A36F0
/* 10CB74 802A3564 00000000 */   nop   
/* 10CB78 802A3568 860F0000 */  lh    $t7, ($s0)
/* 10CB7C 802A356C 25F8FFFE */  addiu $t8, $t7, -2
/* 10CB80 802A3570 2F01002C */  sltiu $at, $t8, 0x2c
/* 10CB84 802A3574 1020005E */  beqz  $at, .L802A36F0
/* 10CB88 802A3578 0018C080 */   sll   $t8, $t8, 2
/* 10CB8C 802A357C 3C01802C */  lui   $at, %hi(D_802B9AF4)
/* 10CB90 802A3580 00380821 */  addu  $at, $at, $t8
/* 10CB94 802A3584 8C389AF4 */  lw    $t8, %lo(D_802B9AF4)($at)
/* 10CB98 802A3588 03000008 */  jr    $t8
/* 10CB9C 802A358C 00000000 */   nop   
glabel L802A3590
/* 10CBA0 802A3590 0C0A7462 */  jal   update_obj_falling_rocks
/* 10CBA4 802A3594 02002025 */   move  $a0, $s0
/* 10CBA8 802A3598 10000055 */  b     .L802A36F0
/* 10CBAC 802A359C 00000000 */   nop   
glabel L802A35A0
/* 10CBB0 802A35A0 0C0ACCB1 */  jal   update_obj_green_shell
/* 10CBB4 802A35A4 02002025 */   move  $a0, $s0
/* 10CBB8 802A35A8 10000051 */  b     .L802A36F0
/* 10CBBC 802A35AC 00000000 */   nop   
glabel L802A35B0
/* 10CBC0 802A35B0 0C0AD086 */  jal   update_obj_red_blue_shell
/* 10CBC4 802A35B4 02002025 */   move  $a0, $s0
/* 10CBC8 802A35B8 1000004D */  b     .L802A36F0
/* 10CBCC 802A35BC 00000000 */   nop   
glabel L802A35C0
/* 10CBD0 802A35C0 0C0AD086 */  jal   update_obj_red_blue_shell
/* 10CBD4 802A35C4 02002025 */   move  $a0, $s0
/* 10CBD8 802A35C8 10000049 */  b     .L802A36F0
/* 10CBDC 802A35CC 00000000 */   nop   
glabel L802A35D0
/* 10CBE0 802A35D0 0C0A5F57 */  jal   update_obj_kiwano_fruit
/* 10CBE4 802A35D4 02002025 */   move  $a0, $s0
/* 10CBE8 802A35D8 10000045 */  b     .L802A36F0
/* 10CBEC 802A35DC 00000000 */   nop   
glabel L802A35E0
/* 10CBF0 802A35E0 0C0AC80D */  jal   update_obj_banana
/* 10CBF4 802A35E4 02002025 */   move  $a0, $s0
/* 10CBF8 802A35E8 10000041 */  b     .L802A36F0
/* 10CBFC 802A35EC 00000000 */   nop   
glabel L802A35F0
/* 10CC00 802A35F0 0C0A605B */  jal   update_obj_paddle_wheel
/* 10CC04 802A35F4 02002025 */   move  $a0, $s0
/* 10CC08 802A35F8 1000003D */  b     .L802A36F0
/* 10CC0C 802A35FC 00000000 */   nop   
glabel L802A3600
/* 10CC10 802A3600 0C0A605F */  jal   update_obj_train_engine
/* 10CC14 802A3604 02002025 */   move  $a0, $s0
/* 10CC18 802A3608 10000039 */  b     .L802A36F0
/* 10CC1C 802A360C 00000000 */   nop   
glabel L802A3610
/* 10CC20 802A3610 0C0A6073 */  jal   update_obj_train_car1
/* 10CC24 802A3614 02002025 */   move  $a0, $s0
/* 10CC28 802A3618 10000035 */  b     .L802A36F0
/* 10CC2C 802A361C 00000000 */   nop   
glabel L802A3620
/* 10CC30 802A3620 0C0A6077 */  jal   update_obj_train_car2
/* 10CC34 802A3624 02002025 */   move  $a0, $s0
/* 10CC38 802A3628 10000031 */  b     .L802A36F0
/* 10CC3C 802A362C 00000000 */   nop   
glabel L802A3630
/* 10CC40 802A3630 0C0A8580 */  jal   update_obj_item_box
/* 10CC44 802A3634 02002025 */   move  $a0, $s0
/* 10CC48 802A3638 1000002D */  b     .L802A36F0
/* 10CC4C 802A363C 00000000 */   nop   
glabel L802A3640
/* 10CC50 802A3640 0C0A855B */  jal   update_obj_item_box_hot_air_balloon
/* 10CC54 802A3644 02002025 */   move  $a0, $s0
/* 10CC58 802A3648 10000029 */  b     .L802A36F0
/* 10CC5C 802A364C 00000000 */   nop   
glabel L802A3650
/* 10CC60 802A3650 0C0A843C */  jal   update_obj_fake_item_box
/* 10CC64 802A3654 02002025 */   move  $a0, $s0
/* 10CC68 802A3658 10000025 */  b     .L802A36F0
/* 10CC6C 802A365C 00000000 */   nop   
glabel L802A3660
/* 10CC70 802A3660 0C0A607B */  jal   update_obj_piranha_plant
/* 10CC74 802A3664 02002025 */   move  $a0, $s0
/* 10CC78 802A3668 10000021 */  b     .L802A36F0
/* 10CC7C 802A366C 00000000 */   nop   
glabel L802A3670
/* 10CC80 802A3670 0C0AC28A */  jal   update_obj_banana_bunch
/* 10CC84 802A3674 02002025 */   move  $a0, $s0
/* 10CC88 802A3678 1000001D */  b     .L802A36F0
/* 10CC8C 802A367C 00000000 */   nop   
glabel L802A3680
/* 10CC90 802A3680 02002025 */  move  $a0, $s0
/* 10CC94 802A3684 0C0AC3A6 */  jal   update_obj_triple_shell
/* 10CC98 802A3688 24050007 */   li    $a1, 7
/* 10CC9C 802A368C 10000018 */  b     .L802A36F0
/* 10CCA0 802A3690 00000000 */   nop   
glabel L802A3694
/* 10CCA4 802A3694 02002025 */  move  $a0, $s0
/* 10CCA8 802A3698 0C0AC3A6 */  jal   update_obj_triple_shell
/* 10CCAC 802A369C 24050008 */   li    $a1, 8
/* 10CCB0 802A36A0 10000013 */  b     .L802A36F0
/* 10CCB4 802A36A4 00000000 */   nop   
glabel L802A36A8
/* 10CCB8 802A36A8 0C0A6AD8 */  jal   update_obj_mario_raceway_sign
/* 10CCBC 802A36AC 02002025 */   move  $a0, $s0
/* 10CCC0 802A36B0 1000000F */  b     .L802A36F0
/* 10CCC4 802A36B4 00000000 */   nop   
glabel L802A36B8
/* 10CCC8 802A36B8 0C0A6AB2 */  jal   update_obj_wario_stadium_sign
/* 10CCCC 802A36BC 02002025 */   move  $a0, $s0
/* 10CCD0 802A36C0 1000000B */  b     .L802A36F0
/* 10CCD4 802A36C4 00000000 */   nop   
glabel L802A36C8
/* 10CCD8 802A36C8 0C0A6AB6 */  jal   update_obj_railroad_crossing
/* 10CCDC 802A36CC 02002025 */   move  $a0, $s0
/* 10CCE0 802A36D0 10000007 */  b     .L802A36F0
/* 10CCE4 802A36D4 00000000 */   nop   
glabel L802A36D8
/* 10CCE8 802A36D8 0C0A5F41 */  jal   update_obj_trees_cacti_shrubs
/* 10CCEC 802A36DC 02002025 */   move  $a0, $s0
/* 10CCF0 802A36E0 10000003 */  b     .L802A36F0
/* 10CCF4 802A36E4 00000000 */   nop   
glabel L802A36E8
/* 10CCF8 802A36E8 0C0A5EFF */  jal   update_obj_yoshi_valley_egg
/* 10CCFC 802A36EC 02002025 */   move  $a0, $s0
.L802A36F0:
glabel L802A36F0
/* 10CD00 802A36F0 3C198016 */  lui   $t9, %hi(D_80162578) # $t9, 0x8016
/* 10CD04 802A36F4 27392578 */  addiu $t9, %lo(D_80162578) # addiu $t9, $t9, 0x2578
/* 10CD08 802A36F8 26100070 */  addiu $s0, $s0, 0x70
/* 10CD0C 802A36FC 5619FF98 */  bnel  $s0, $t9, .L802A3560
/* 10CD10 802A3700 860E0002 */   lh    $t6, 2($s0)
/* 10CD14 802A3704 0C0A8391 */  jal   func_802A0E44
/* 10CD18 802A3708 00000000 */   nop   
/* 10CD1C 802A370C 0C0ACC3B */  jal   func_802B30EC
/* 10CD20 802A3710 00000000 */   nop   
/* 10CD24 802A3714 8FBF001C */  lw    $ra, 0x1c($sp)
/* 10CD28 802A3718 8FB00018 */  lw    $s0, 0x18($sp)
/* 10CD2C 802A371C 27BD0020 */  addiu $sp, $sp, 0x20
/* 10CD30 802A3720 03E00008 */  jr    $ra
/* 10CD34 802A3724 00000000 */   nop   

/* 10CD38 802A3728 00000000 */  nop   
/* 10CD3C 802A372C 00000000 */  nop   
