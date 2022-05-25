80000000: lui   $k0, 0x800D
80000004: addiu $k0, $k0, 0x11C0
80000008: jr    $k0
8000000C: nop

80000010: lui   $at, 0xA460
80000014: and   $t1, $t1, $t2
80000018: sw    $t1, 0x0000 ($at)
8000001C: lui   $t0, 0xA460
80000020: lw    $t0, 0x0010 ($t0)
80000024: andi  $t0, $t0, 0x0002
80000028: bnel  $t0, $zero, 0x80000020
8000002C: lui   $t0, 0xA460
80000030: addiu $t0, $zero, 0x1000
80000034: add   $t0, $t0, $t3
80000038: and   $t0, $t0, $t2
8000003C: lui   $at, 0xA460
80000040: sw    $t0, 0x0004 ($at)
80000044: lui   $t2, 0x0010
80000048: addiu $t2, $t2, 0xFFFF
8000004C: lui   $at, 0xA460
80000050: sw    $t2, 0x000C ($at)
80000054: nop
80000058: nop
8000005C: nop
80000060: nop
80000064: nop
80000068: nop
8000006C: nop
80000070: nop
80000074: nop
80000078: nop
8000007C: nop
80000080: lui   $k0, 0x800D
80000084: addiu $k0, $k0, 0x11C0
80000088: jr    $k0
8000008C: nop

80000090: nop
80000094: nop
80000098: nop
8000009C: nop
800000A0: nop
800000A4: nop
800000A8: nop
800000AC: nop
800000B0: nop
800000B4: nop
800000B8: nop
800000BC: nop
800000C0: nop
800000C4: lui   $t3, 0xA460
800000C8: lw    $t3, 0x0010 ($t3)
800000CC: andi  $t3, $t3, 0x0001
800000D0: bnez  $t3, 0x80000054
800000D4: nop
800000D8: lui   $t3, 0xB000
800000DC: lw    $a0, 0x0008 ($t3)
800000E0: or    $a1, $s6, $zero
800000E4: lui   $at, 0x5D58
800000E8: ori   $at, $at, 0x8B65
800000EC: multu $a1, $at
800000F0: addiu $sp, $sp, 0xFFE0
800000F4: sw    $ra, 0x001C ($sp)
800000F8: sw    $s0, 0x0014 ($sp)
800000FC: lui   $ra, 0x0010
80000100: lui   $k0, 0x800D
80000104: addiu $k0, $k0, 0x11C0
80000108: jr    $k0
8000010C: nop

80000110: mflo  $v0
80000114: addiu $v0, $v0, 0x0001
80000118: or    $a3, $v0, $zero
8000011C: or    $t2, $v0, $zero
80000120: or    $t3, $v0, $zero
80000124: or    $s0, $v0, $zero
80000128: or    $a2, $v0, $zero
8000012C: or    $t4, $v0, $zero
80000130: lw    $v0, 0x0000 ($t1)
80000134: addu  $v1, $a3, $v0
80000138: sltu  $at, $v1, $a3
8000013C: beq   $at, $zero, 0x80000148
80000140: or    $a1, $v1, $zero
80000144: addiu $t2, $t2, 0x0001
80000148: andi  $v1, $v0, 0x001F
8000014C: subu  $t7, $t5, $v1
80000150: srlv  $t8, $v0, $t7
80000154: sllv  $t6, $v0, $v1
80000158: or    $a0, $t6, $t8
8000015C: sltu  $at, $a2, $v0
80000160: or    $a3, $a1, $zero
80000164: xor   $t3, $t3, $v0
80000168: beq   $at, $zero, 0x8000017C
8000016C: addu  $s0, $s0, $a0
80000170: xor   $t9, $a3, $v0
80000174: beq   $zero, $zero, 0x80000180
80000178: xor   $a2, $t9, $a2
8000017C: xor   $a2, $a2, $a0

80000180: lui   $k0, 0x800D
80000184: addiu $k0, $k0, 0x11C0
80000188: jr    $k0
8000018C: nop

80000190: addu  $t4, $t7, $t4
80000194: xor   $t6, $a3, $t2
80000198: xor   $a3, $t6, $t3
8000019C: xor   $t8, $s0, $a2
800001A0: xor   $s0, $t8, $t4
800001A4: lui   $t3, 0xB000
800001A8: lw    $t0, 0x0010 ($t3)
800001AC: bne   $a3, $t0, 0x800001C8
800001B0: nop
800001B4: lw    $t0, 0x0014 ($t3)
800001B8: bne   $s0, $t0, 0x800001C8
800001BC: nop
800001C0: bgezal $zero, 0x800001D0
800001C4: nop
800001C8: bgezal $zero, 0x800001C8
800001CC: nop

800001D0: lui   $t1, 0xA408
800001D4: lw    $t1, 0x0000 ($t1)
800001D8: lw    $s0, 0x0014 ($sp)
800001DC: lw    $ra, 0x001C ($sp)
800001E0: beq   $t1, $zero, 0x800001FC
800001E4: addiu $sp, $sp, 0x0020
800001E8: addiu $t2, $zero, 0x0041
800001EC: lui   $at, 0xA404
800001F0: sw    $t2, 0x0010 ($at)
800001F4: lui   $at, 0xA408
800001F8: sw    $zero, 0x0000 ($at)
800001FC: lui   $t3, 0x00AA
80000200: ori   $t3, $t3, 0xAAAE
80000204: lui   $at, 0xA404
80000208: sw    $t3, 0x0010 ($at)
8000020C: lui   $at, 0xA430
80000210: addiu $t0, $zero, 0x0555
80000214: sw    $t0, 0x000C ($at)
80000218: lui   $at, 0xA480
8000021C: sw    $zero, 0x0018 ($at)
80000220: lui   $at, 0xA450
80000224: sw    $zero, 0x000C ($at)
80000228: lui   $at, 0xA430
8000022C: addiu $t1, $zero, 0x0800
80000230: sw    $t1, 0x0000 ($at)
80000234: addiu $t1, $zero, 0x0002
80000238: lui   $at, 0xA460
8000023C: lui   $t0, 0xA000
80000240: ori   $t0, $t0, 0x0300
80000244: sw    $t1, 0x0010 ($at)
80000248: sw    $s7, 0x0014 ($t0)
8000024C: sw    $s5, 0x000C ($t0)
80000250: sw    $s3, 0x0004 ($t0)
80000254: beq   $s3, $zero, 0x80000268
80000258: sw    $s4, 0x0000 ($t0)
8000025C: lui   $t1, 0xA600
80000260: beq   $zero, $zero, 0x80000270
80000264: addiu $t1, $t1, 0x0000
80000268: lui   $t1, 0xB000
8000026C: addiu $t1, $t1, 0x0000
80000270: sw    $t1, 0x0008 ($t0)
80000274: lui   $t0, 0xA400
80000278: addiu $t0, $t0, 0x0000
8000027C: addi  $t1, $t0, 0x1000
80000280: addiu $t0, $t0, 0x0004
80000284: bne   $t0, $t1, 0x80000280
80000288: sw    $zero, 0xFFFC ($t0)
8000028C: lui   $t0, 0xA400
80000290: addiu $t0, $t0, 0x1000
80000294: addi  $t1, $t0, 0x1000
80000298: addiu $t0, $t0, 0x0004
8000029C: bne   $t0, $t1, 0x80000298
800002A0: sw    $zero, 0xFFFC ($t0)
800002A4: lui   $t3, 0xB000
800002A8: lw    $t1, 0x0008 ($t3)
800002AC: jr    $t1
800002B0: nop

800002B4: nop
800002B8: nop
800002BC: nop
800002C0: nop
800002C4: nop
800002C8: nop
800002CC: nop
800002D0: nop
800002D4: nop
800002D8: nop
800002DC: nop
800002E0: nop
800002E4: nop
800002E8: nop
800002EC: nop
800002F0: nop
800002F4: nop
800002F8: nop
800002FC: nop
80000300: u32 tv_type
80000304: u32 rom_type
80000308: u32 rom_base
8000030C: u32 reset_type
80000310: u32 cic_id
80000314: u32 version
80000318: u32 mem_size
8000031C: u8 app_nmi_buffer[64]

8000035C: u8 unused_blank[0xA4]

_start:
    80000400: lui   $t0, 0x800F
    80000404: lui   $t1, 0x000A
    80000408: addiu $t0, $t0, 0x6910
    8000040C: ori   $t1, $t1, 0x0FC0

    .loop:
        80000410: addi  $t1, $t1, 0xFFF8
        80000414: sw    $zero, 0x0000 ($t0)
        80000418: sw    $zero, 0x0004 ($t0)
        8000041C: bnez  $t1, .loop
        80000420: addi  $t0, $t0, 0x0008

    80000424: lui   $t2, 0x8000
    80000428: lui   $sp, 0x8015
    8000042C: addiu $t2, $t2, 0x0484
    80000430: jr    $t2
    80000434: addiu $sp, $sp, 0x2300

    80000438: nop
    8000043C: nop
    80000440: nop
    80000444: nop
    80000448: nop
    8000044C: nop

CreateThread:
    80000450: addiu $sp, $sp, 0xFFE0
    80000454: sw    $ra, 0x001C ($sp)
    80000458: sw    $zero, 0x0000 ($a0)
    8000045C: sw    $zero, 0x0008 ($a0)
    80000460: lw    $t7, 0x0034 ($sp)
    80000464: lw    $t6, 0x0030 ($sp)
    80000468: sw    $t7, 0x0014 ($sp)
    8000046C: jal   osCreateThread
    80000470: sw    $t6, 0x0010 ($sp)

    80000474: lw    $ra, 0x001C ($sp)
    80000478: addiu $sp, $sp, 0x0020
    8000047C: jr    $ra
    80000480: nop

main:
    80000484: addiu $sp, $sp, 0xFFE0
    80000488: sw    $ra, 0x001C ($sp)
    8000048C: jal   osInitialize
    80000490: nop
    80000494: lui   $t6, 0x8015
    80000498: addiu $t6, $t6, 0x4670
    8000049C: lui   $a0, 0x8015
    800004A0: lui   $a2, 0x8000
    800004A4: addiu $t7, $zero, 0x0064
    800004A8: sw    $t7, 0x0014 ($sp)
    800004AC: addiu $a2, $a2, 0x04E0
    800004B0: addiu $a0, $a0, 0x24C0
    800004B4: sw    $t6, 0x0010 ($sp)
    800004B8: addiu $a1, $zero, 0x0001
    800004BC: jal   CreateThread
    800004C0: or    $a3, $zero, $zero
    800004C4: lui   $a0, 0x8015
    800004C8: jal   osStartThread
    800004CC: addiu $a0, $a0, 0x24C0
    800004D0: lw    $ra, 0x001C ($sp)
    800004D4: addiu $sp, $sp, 0x0020
    800004D8: jr    $ra
    800004DC: nop

thread1_main:
    800004E0: addiu $sp, $sp, 0xFFE0
    800004E4: sw    $ra, 0x001C ($sp)
    800004E8: sw    $a0, 0x0020 ($sp)
    800004EC: jal   osCreateViManager
    800004F0: addiu $a0, $zero, 0x00FE
    800004F4: lui   $t6, 0x8000
    800004F8: lw    $t6, 0x0300 ($t6)
    800004FC: addiu $at, $zero, 0x0001
    80000500: lui   $a0, 0x800F
    80000504: bne   $t6, $at, 0x80000520
    80000508: nop
    8000050C: lui   $a0, 0x800F
    80000510: jal   osViSetMode
    80000514: addiu $a0, $a0, 0xA6C0
    80000518: beq   $zero, $zero, 0x80000528
    8000051C: nop
    80000520: jal   osViSetMode
    80000524: addiu $a0, $a0, 0xAF80
    80000528: jal   osViBlack
    8000052C: addiu $a0, $zero, 0x0001
    80000530: jal   osViSetSpecialFeatures
    80000534: addiu $a0, $zero, 0x0002
    80000538: lui   $a1, 0x8016
    8000053C: lui   $a2, 0x8016
    80000540: addiu $a2, $a2, 0xF3E0
    80000544: addiu $a1, $a1, 0xF460
    80000548: addiu $a0, $zero, 0x0096
    8000054C: jal   osCreatePiManager
    80000550: addiu $a3, $zero, 0x0020
    80000554: lui   $t7, 0x8000
    80000558: lw    $t7, 0x030C ($t7)
    8000055C: lui   $at, 0x8015
    80000560: jal   0x800046B8
    80000564: sh    $t7, 0x011C ($at)
    80000568: jal   0x80004718
    8000056C: nop
    80000570: lui   $t8, 0x8015
    80000574: addiu $t8, $t8, 0x6820
    80000578: lui   $a0, 0x8015
    8000057C: lui   $a2, 0x8000
    80000580: addiu $t9, $zero, 0x0064
    80000584: sw    $t9, 0x0014 ($sp)
    80000588: addiu $a2, $a2, 0x23E4
    8000058C: addiu $a0, $a0, 0x4670
    80000590: sw    $t8, 0x0010 ($sp)
    80000594: addiu $a1, $zero, 0x0003
    80000598: jal   CreateThread
    8000059C: lw    $a3, 0x0020 ($sp)
    800005A0: lui   $a0, 0x8015
    800005A4: jal   osStartThread
    800005A8: addiu $a0, $a0, 0x4670
    800005AC: or    $a0, $zero, $zero
    800005B0: jal   osSetThreadPri
    800005B4: or    $a1, $zero, $zero
    800005B8: beq   $zero, $zero, 0x800005B8
    800005BC: nop
    800005C0: nop
    800005C4: nop
    800005C8: nop
    800005CC: nop
    800005D0: lw    $ra, 0x001C ($sp)
    800005D4: addiu $sp, $sp, 0x0020
    800005D8: jr    $ra
    800005DC: nop

SetupMessageQueues:
    800005E0: addiu $sp, $sp, 0xFFE8
    800005E4: sw    $ra, 0x0014 ($sp)
    800005E8: lui   $a0, 0x8015
    800005EC: lui   $a1, 0x8015
    800005F0: addiu $a1, $a1, 0xF004
    800005F4: addiu $a0, $a0, 0xEF58
    800005F8: jal   osCreateMesgQueue
    800005FC: addiu $a2, $zero, 0x0001
    80000600: lui   $a0, 0x8015
    80000604: lui   $a1, 0x8015
    80000608: addiu $a1, $a1, 0xF058
    8000060C: addiu $a0, $a0, 0xEFD0
    80000610: jal   osCreateMesgQueue
    80000614: addiu $a2, $zero, 0x0010
    80000618: lui   $a0, 0x8015
    8000061C: lui   $a1, 0x8015
    80000620: addiu $a1, $a1, 0xF018
    80000624: addiu $a0, $a0, 0xEFB8
    80000628: jal   osCreateMesgQueue
    8000062C: addiu $a2, $zero, 0x0010
    80000630: lui   $a0, 0x8015
    80000634: addiu $a0, $a0, 0xEFB8
    80000638: addiu $a1, $zero, 0x0066
    8000063C: jal   osViSetEventMsg
    80000640: addiu $a2, $zero, 0x0001
    80000644: lui   $a1, 0x8015
    80000648: addiu $a1, $a1, 0xEFB8
    8000064C: addiu $a0, $zero, 0x0004
    80000650: jal   osSetEventMsg
    80000654: addiu $a2, $zero, 0x0064
    80000658: lui   $a1, 0x8015
    8000065C: addiu $a1, $a1, 0xEFB8
    80000660: addiu $a0, $zero, 0x0009
    80000664: jal   osSetEventMsg
    80000668: addiu $a2, $zero, 0x0065
    8000066C: lw    $ra, 0x0014 ($sp)
    80000670: addiu $sp, $sp, 0x0018
    80000674: jr    $ra
    80000678: nop

8000067C: addiu $sp, $sp, 0xFFE8
80000680: addiu $at, $zero, 0x0002
80000684: bne   $a0, $at, 0x800006A0
80000688: sw    $ra, 0x0014 ($sp)
8000068C: lui   $t6, 0x800E
80000690: lw    $t6, 0xC4AC ($t6)
80000694: lui   $at, 0x800E
80000698: beq   $zero, $zero, 0x800006B0
8000069C: sw    $t6, 0xC4A8 ($at)
800006A0: lui   $t7, 0x800E
800006A4: lw    $t7, 0xC4B0 ($t7)
800006A8: lui   $at, 0x800E
800006AC: sw    $t7, 0xC4A8 ($at)
800006B0: lui   $a0, 0x800E
800006B4: jal   osSpTaskLoad
800006B8: lw    $a0, 0xC4A8 ($a0)
800006BC: lui   $a0, 0x800E
800006C0: jal   osSpTaskStartGo
800006C4: lw    $a0, 0xC4A8 ($a0)
800006C8: lui   $t9, 0x800E
800006CC: lw    $t9, 0xC4A8 ($t9)
800006D0: addiu $t8, $zero, 0x0001
800006D4: sw    $t8, 0x0048 ($t9)
800006D8: lw    $ra, 0x0014 ($sp)
800006DC: addiu $sp, $sp, 0x0018
800006E0: jr    $ra
800006E4: nop

800006E8: lui   $v0, 0x8015
800006EC: addiu $v0, $v0, 0x029C
800006F0: lw    $t7, 0x0000 ($v0)
800006F4: addiu $sp, $sp, 0xFFE8
800006F8: lui   $t6, 0x8015
800006FC: sw    $ra, 0x0014 ($sp)
80000700: addiu $t6, $t6, 0xEF88
80000704: sw    $t6, 0x0040 ($t7)
80000708: lw    $t9, 0x0000 ($v0)
8000070C: addiu $t8, $zero, 0x0002
80000710: addiu $t0, $zero, 0x0001
80000714: sw    $t8, 0x0044 ($t9)
80000718: lw    $t1, 0x0000 ($v0)
8000071C: addiu $a0, $zero, 0x0002
80000720: lui   $v1, 0x800E
80000724: sw    $t0, 0x0000 ($t1)
80000728: lw    $t2, 0x0000 ($v0)
8000072C: addiu $v1, $v1, 0x8F70
80000730: lui   $t4, 0x800E
80000734: sw    $a0, 0x0004 ($t2)
80000738: lw    $t3, 0x0000 ($v0)
8000073C: addiu $t4, $t4, 0x9040
80000740: subu  $t5, $t4, $v1
80000744: sw    $v1, 0x0008 ($t3)
80000748: lw    $t6, 0x0000 ($v0)
8000074C: lui   $t7, 0x800E
80000750: addiu $at, $zero, 0x0004
80000754: sw    $t5, 0x000C ($t6)
80000758: lw    $t7, 0xC50C ($t7)
8000075C: lui   $t8, 0x800E
80000760: lui   $t9, 0x800E
80000764: bnel  $t7, $at, 0x80000780
80000768: lw    $t0, 0x0000 ($v0)
8000076C: lw    $t8, 0xC538 ($t8)
80000770: addiu $at, $zero, 0x0001
80000774: bnel  $t8, $at, 0x800007A0
80000778: lw    $t4, 0x0000 ($v0)
8000077C: lw    $t0, 0x0000 ($v0)
80000780: addiu $t9, $t9, 0x9040
80000784: lui   $t1, 0x800F
80000788: sw    $t9, 0x0010 ($t0)
8000078C: lw    $t2, 0x0000 ($v0)
80000790: addiu $t1, $t1, 0x3D00
80000794: beq   $zero, $zero, 0x800007BC
80000798: sw    $t1, 0x0018 ($t2)
8000079C: lw    $t4, 0x0000 ($v0)
800007A0: lui   $t3, 0x800E
800007A4: addiu $t3, $t3, 0xA420
800007A8: sw    $t3, 0x0010 ($t4)
800007AC: lw    $t6, 0x0000 ($v0)
800007B0: lui   $t5, 0x800F
800007B4: addiu $t5, $t5, 0x4500
800007B8: sw    $t5, 0x0018 ($t6)
800007BC: lw    $t7, 0x0000 ($v0)
800007C0: addiu $t9, $zero, 0x1000
800007C4: addiu $t1, $zero, 0x0800
800007C8: sw    $zero, 0x0004 ($t7)
800007CC: lw    $t8, 0x0000 ($v0)
800007D0: lui   $t3, 0x8016
800007D4: addiu $t3, $t3, 0xEFE0
800007D8: sw    $a0, 0x0004 ($t8)
800007DC: lw    $t0, 0x0000 ($v0)
800007E0: addiu $t5, $zero, 0x0400
800007E4: lui   $t7, 0x8039
800007E8: sw    $t9, 0x0014 ($t0)
800007EC: lw    $t2, 0x0000 ($v0)
800007F0: addiu $t7, $t7, 0xFF80
800007F4: lui   $t9, 0x803B
800007F8: sw    $t1, 0x001C ($t2)
800007FC: lw    $t4, 0x0000 ($v0)
80000800: lui   $v1, 0x8015
80000804: addiu $t9, $t9, 0xF780
80000808: sw    $t3, 0x0020 ($t4)
8000080C: lw    $t6, 0x0000 ($v0)
80000810: addiu $v1, $v1, 0xEF40
80000814: lui   $at, 0x0001
80000818: sw    $t5, 0x0024 ($t6)
8000081C: lw    $t8, 0x0000 ($v0)
80000820: ori   $at, $at, 0xA0C0
80000824: lui   $t4, 0x8015
80000828: sw    $t7, 0x0028 ($t8)
8000082C: lw    $t0, 0x0000 ($v0)
80000830: sw    $t9, 0x002C ($t0)
80000834: lw    $t1, 0x0000 ($v1)
80000838: lw    $t3, 0x0000 ($v0)
8000083C: addu  $t2, $t1, $at
80000840: sw    $t2, 0x0030 ($t3)
80000844: lw    $t5, 0x0000 ($v1)
80000848: lw    $t4, 0x0298 ($t4)
8000084C: lui   $at, 0xFFFE
80000850: ori   $at, $at, 0x5F40
80000854: subu  $t6, $t4, $t5
80000858: addu  $t7, $t6, $at
8000085C: lw    $t0, 0x0000 ($v0)
80000860: sra   $t8, $t7, 0x3
80000864: sll   $t9, $t8, 0x3
80000868: jal   0x8008C214
8000086C: sw    $t9, 0x0034 ($t0)
80000870: lui   $v0, 0x8015
80000874: addiu $v0, $v0, 0x029C
80000878: lw    $t2, 0x0000 ($v0)
8000087C: lui   $t1, 0x8016
80000880: addiu $t1, $t1, 0xDEE0
80000884: sw    $t1, 0x0038 ($t2)
80000888: lw    $t4, 0x0000 ($v0)
8000088C: addiu $t3, $zero, 0x0D00
80000890: sw    $t3, 0x003C ($t4)
80000894: lw    $ra, 0x0014 ($sp)
80000898: addiu $sp, $sp, 0x0018
8000089C: jr    $ra
800008A0: nop

_InitControllers:
    800008A4: addiu $sp, $sp, 0xFFE8
    800008A8: sw    $ra, 0x0014 ($sp)
    800008AC: lui   $a0, 0x8015
    800008B0: lui   $a1, 0x8015
    800008B4: addiu $a1, $a1, 0xF0D0
    800008B8: addiu $a0, $a0, 0xF0B8
    800008BC: jal   osCreateMesgQueue
    800008C0: addiu $a2, $zero, 0x0003
    800008C4: lui   $a1, 0x8015
    800008C8: lui   $a2, 0x3333
    800008CC: ori   $a2, $a2, 0x3333
    800008D0: addiu $a1, $a1, 0xF0B8
    800008D4: jal   osSetEventMsg
    800008D8: addiu $a0, $zero, 0x0005
    800008DC: lui   $a0, 0x8015
    800008E0: lui   $a1, 0x8015
    800008E4: lui   $a2, 0x8015
    800008E8: addiu $a2, $a2, 0xF0E0
    800008EC: addiu $a1, $a1, 0xF108
    800008F0: jal   osContInit
    800008F4: addiu $a0, $a0, 0xF0B8
    800008F8: lui   $t6, 0x8015
    800008FC: lbu    $t6, 0xF108 ($t6)
    80000900: addiu $t8, $zero, 0x0001
    80000904: lui   $at, 0x8016
    80000908: andi  $t7, $t6, 0x0001
    8000090C: bnez  $t7, 0x80000920
    80000910: nop
    80000914: lui   $at, 0x8016
    80000918: beq   $zero, $zero, 0x80000924
    8000091C: sh    $t8, 0x25EA ($at)
    80000920: sh    $zero, 0x25EA ($at)
    80000924: lw    $ra, 0x0014 ($sp)
    80000928: addiu $sp, $sp, 0x0018
    8000092C: jr    $ra
    80000930: nop

80000934: lui   $t6, 0x8016
80000938: lh    $t6, 0x25EA ($t6)
8000093C: sll   $t7, $a0, 0x4
80000940: lui   $t8, 0x800F
80000944: bnez  $t6, 0x80000A20
80000948: sll   $t9, $a0, 0x2
8000094C: subu  $t9, $t9, $a0
80000950: lui   $t0, 0x8015
80000954: addiu $t0, $t0, 0xF0F0
80000958: sll   $t9, $t9, 0x1
8000095C: addu  $v1, $t9, $t0
80000960: lb    $t1, 0x0002 ($v1)
80000964: addiu $t8, $t8, 0x6910
80000968: addu  $v0, $t7, $t8
8000096C: sh    $t1, 0x0000 ($v0)
80000970: lb    $t2, 0x0003 ($v1)
80000974: sh    $t2, 0x0002 ($v0)
80000978: lhu   $a1, 0x0000 ($v1)
8000097C: andi  $t3, $a1, 0x0004
80000980: beq   $t3, $zero, 0x80000990
80000984: ori   $t4, $a1, 0x2000
80000988: sh    $t4, 0x0000 ($v1)
8000098C: andi  $a1, $t4, 0xFFFF
80000990: lhu   $a3, 0x0004 ($v0)
80000994: lh    $a2, 0x0000 ($v0)
80000998: or    $a0, $zero, $zero
8000099C: xor   $t5, $a1, $a3
800009A0: and   $t6, $t5, $a1
800009A4: sh    $t6, 0x0006 ($v0)
800009A8: lhu   $t7, 0x0000 ($v1)
800009AC: slti  $at, $a2, 0xFFCE
800009B0: xor   $t8, $t7, $a3
800009B4: and   $t9, $t8, $a3
800009B8: sh    $t9, 0x0008 ($v0)
800009BC: lhu   $t0, 0x0000 ($v1)
800009C0: beq   $at, $zero, 0x800009CC
800009C4: sh    $t0, 0x0004 ($v0)
800009C8: addiu $a0, $zero, 0x0200
800009CC: slti  $at, $a2, 0x0033
800009D0: bnez  $at, 0x800009DC
800009D4: ori   $t1, $a0, 0x0100
800009D8: andi  $a0, $t1, 0xFFFF
800009DC: lh    $v1, 0x0002 ($v0)
800009E0: ori   $t3, $a0, 0x0400
800009E4: slti  $at, $v1, 0xFFCE
800009E8: beql  $at, $zero, 0x800009F8
800009EC: slti  $at, $v1, 0x0033
800009F0: andi  $a0, $t3, 0xFFFF
800009F4: slti  $at, $v1, 0x0033
800009F8: bnez  $at, 0x80000A04
800009FC: ori   $t5, $a0, 0x0800
80000A00: andi  $a0, $t5, 0xFFFF
80000A04: lhu   $a1, 0x000A ($v0)
80000A08: sh    $a0, 0x000A ($v0)
80000A0C: xor   $a2, $a0, $a1
80000A10: and   $t7, $a0, $a2
80000A14: and   $t8, $a1, $a2
80000A18: sh    $t7, 0x000C ($v0)
80000A1C: sh    $t8, 0x000E ($v0)
80000A20: jr    $ra
80000A24: nop

80000A28: addiu $sp, $sp, 0xFFE0
80000A2C: sw    $ra, 0x0014 ($sp)
80000A30: lui   $a0, 0x8015
80000A34: jal   osContStartReadData
80000A38: addiu $a0, $a0, 0xF0B8
80000A3C: lui   $a0, 0x8015
80000A40: addiu $a0, $a0, 0xF0B8
80000A44: addiu $a1, $sp, 0x001C
80000A48: jal   osRecvMesg
80000A4C: addiu $a2, $zero, 0x0001
80000A50: lui   $a0, 0x8015
80000A54: jal   osContGetReadData
80000A58: addiu $a0, $a0, 0xF0F0
80000A5C: jal   0x80000934
80000A60: or    $a0, $zero, $zero
80000A64: jal   0x80000934
80000A68: addiu $a0, $zero, 0x0001
80000A6C: jal   0x80000934
80000A70: addiu $a0, $zero, 0x0002
80000A74: jal   0x80000934
80000A78: addiu $a0, $zero, 0x0003
80000A7C: lui   $v1, 0x800E
80000A80: lui   $a0, 0x800E
80000A84: addiu $a0, $a0, 0xC4C0
80000A88: addiu $v1, $v1, 0xC4BC
80000A8C: lui   $a1, 0x800E
80000A90: lw    $t6, 0x0000 ($v1)
80000A94: lw    $t8, 0x0000 ($a0)
80000A98: addiu $a1, $a1, 0xC4C4
80000A9C: lui   $a2, 0x800E
80000AA0: lw    $t1, 0x0000 ($a1)
80000AA4: addiu $a2, $a2, 0xC4C8
80000AA8: lw    $t4, 0x0000 ($a2)
80000AAC: lhu   $t7, 0x0004 ($t6)
80000AB0: lhu   $t9, 0x0004 ($t8)
80000AB4: lhu   $t2, 0x0004 ($t1)
80000AB8: lui   $v0, 0x800E
80000ABC: lhu   $t5, 0x0004 ($t4)
80000AC0: addiu $v0, $v0, 0xC4CC
80000AC4: lw    $t8, 0x0000 ($v0)
80000AC8: or    $t0, $t7, $t9
80000ACC: or    $t3, $t0, $t2
80000AD0: or    $t6, $t3, $t5
80000AD4: sh    $t6, 0x0004 ($t8)
80000AD8: lw    $t1, 0x0000 ($a0)
80000ADC: lw    $t7, 0x0000 ($v1)
80000AE0: lw    $t4, 0x0000 ($a1)
80000AE4: lw    $t6, 0x0000 ($a2)
80000AE8: lhu   $t0, 0x0006 ($t1)
80000AEC: lhu   $t9, 0x0006 ($t7)
80000AF0: lhu   $t3, 0x0006 ($t4)
80000AF4: lhu   $t8, 0x0006 ($t6)
80000AF8: lw    $t1, 0x0000 ($v0)
80000AFC: or    $t2, $t9, $t0
80000B00: or    $t5, $t2, $t3
80000B04: or    $t7, $t5, $t8
80000B08: sh    $t7, 0x0006 ($t1)
80000B0C: lw    $t4, 0x0000 ($a0)
80000B10: lw    $t9, 0x0000 ($v1)
80000B14: lw    $t6, 0x0000 ($a1)
80000B18: lw    $t7, 0x0000 ($a2)
80000B1C: lhu   $t2, 0x0008 ($t4)
80000B20: lhu   $t0, 0x0008 ($t9)
80000B24: lhu   $t5, 0x0008 ($t6)
80000B28: lhu   $t1, 0x0008 ($t7)
80000B2C: lw    $t4, 0x0000 ($v0)
80000B30: or    $t3, $t0, $t2
80000B34: or    $t8, $t3, $t5
80000B38: or    $t9, $t8, $t1
80000B3C: sh    $t9, 0x0008 ($t4)
80000B40: lw    $t6, 0x0000 ($a0)
80000B44: lw    $t0, 0x0000 ($v1)
80000B48: lw    $t7, 0x0000 ($a1)
80000B4C: lw    $t9, 0x0000 ($a2)
80000B50: lhu   $t3, 0x000A ($t6)
80000B54: lhu   $t2, 0x000A ($t0)
80000B58: lhu   $t8, 0x000A ($t7)
80000B5C: lhu   $t4, 0x000A ($t9)
80000B60: lw    $t6, 0x0000 ($v0)
80000B64: or    $t5, $t2, $t3
80000B68: or    $t1, $t5, $t8
80000B6C: or    $t0, $t1, $t4
80000B70: sh    $t0, 0x000A ($t6)
80000B74: lw    $t7, 0x0000 ($a0)
80000B78: lw    $t2, 0x0000 ($v1)
80000B7C: lw    $t9, 0x0000 ($a1)
80000B80: lw    $t0, 0x0000 ($a2)
80000B84: lhu   $t5, 0x000C ($t7)
80000B88: lhu   $t3, 0x000C ($t2)
80000B8C: lhu   $t1, 0x000C ($t9)
80000B90: lhu   $t6, 0x000C ($t0)
80000B94: lw    $t7, 0x0000 ($v0)
80000B98: or    $t8, $t3, $t5
80000B9C: or    $t4, $t8, $t1
80000BA0: or    $t2, $t4, $t6
80000BA4: sh    $t2, 0x000C ($t7)
80000BA8: lw    $t9, 0x0000 ($a0)
80000BAC: lw    $t3, 0x0000 ($v1)
80000BB0: lw    $t0, 0x0000 ($a1)
80000BB4: lw    $t2, 0x0000 ($a2)
80000BB8: lhu   $t8, 0x000E ($t9)
80000BBC: lhu   $t5, 0x000E ($t3)
80000BC0: lhu   $t4, 0x000E ($t0)
80000BC4: lhu   $t7, 0x000E ($t2)
80000BC8: lw    $t9, 0x0000 ($v0)
80000BCC: or    $t1, $t5, $t8
80000BD0: or    $t6, $t1, $t4
80000BD4: or    $t3, $t6, $t7
80000BD8: sh    $t3, 0x000E ($t9)
80000BDC: lw    $ra, 0x0014 ($sp)
80000BE0: addiu $sp, $sp, 0x0020
80000BE4: jr    $ra
80000BE8: nop

80000BEC: lui   $t6, 0x8030
80000BF0: lui   $at, 0x1FFF
80000BF4: ori   $at, $at, 0xFFFF
80000BF8: addiu $t6, $t6, 0x9F80
80000BFC: and   $t7, $t6, $at
80000C00: lui   $at, 0x8015
80000C04: jr    $ra
80000C08: sw    $t7, 0x02B4 ($at)

80000C0C: addiu $sp, $sp, 0xFFE8
80000C10: sw    $ra, 0x0014 ($sp)
80000C14: jal   osWriteBackDCacheAll
80000C18: sw    $a0, 0x0018 ($sp)
80000C1C: lui   $a0, 0x8015
80000C20: addiu $a0, $a0, 0xEFD0
80000C24: lw    $a1, 0x0018 ($sp)
80000C28: jal   osSendMesg
80000C2C: or    $a2, $zero, $zero
80000C30: lw    $ra, 0x0014 ($sp)
80000C34: addiu $sp, $sp, 0x0018
80000C38: jr    $ra
80000C3C: nop

80000C40: addiu $sp, $sp, 0xFFE8
80000C44: sw    $ra, 0x0014 ($sp)
80000C48: jal   osWriteBackDCacheAll
80000C4C: sw    $a0, 0x0018 ($sp)
80000C50: lw    $a3, 0x0018 ($sp)
80000C54: lui   $v0, 0x800E
80000C58: addiu $v0, $v0, 0xC4B0
80000C5C: sw    $zero, 0x0048 ($a3)
80000C60: lw    $t6, 0x0000 ($v0)
80000C64: lui   $a0, 0x8015
80000C68: addiu $a0, $a0, 0xEFB8
80000C6C: bnez  $t6, 0x80000C94
80000C70: lui   $at, 0x800E
80000C74: sw    $a3, 0x0000 ($v0)
80000C78: lui   $at, 0x800E
80000C7C: sw    $zero, 0xC4B8 ($at)
80000C80: addiu $a1, $zero, 0x0067
80000C84: jal   osSendMesg
80000C88: or    $a2, $zero, $zero
80000C8C: beq   $zero, $zero, 0x80000C9C
80000C90: lw    $ra, 0x0014 ($sp)
80000C94: sw    $a3, 0xC4B8 ($at)
80000C98: lw    $ra, 0x0014 ($sp)
80000C9C: addiu $sp, $sp, 0x0018
80000CA0: jr    $ra
80000CA4: nop

80000CA8: addiu $sp, $sp, 0xFFE8
80000CAC: sw    $ra, 0x0014 ($sp)
80000CB0: jal   0x802A7C08
80000CB4: nop
80000CB8: jal   0x802A3E3C
80000CBC: nop
80000CC0: jal   0x802A4160
80000CC4: nop
80000CC8: jal   0x802A41D4
80000CCC: nop
80000CD0: jal   0x802A3CB0
80000CD4: nop
80000CD8: lw    $ra, 0x0014 ($sp)
80000CDC: addiu $sp, $sp, 0x0018
80000CE0: jr    $ra
80000CE4: nop

80000CE8: lui   $a1, 0x8015
80000CEC: addiu $a1, $a1, 0x0298
80000CF0: lw    $v0, 0x0000 ($a1)
80000CF4: addiu $sp, $sp, 0xFFE8
80000CF8: sw    $ra, 0x0014 ($sp)
80000CFC: addiu $t6, $v0, 0x0008
80000D00: sw    $t6, 0x0000 ($a1)
80000D04: lui   $t7, 0xE900
80000D08: sw    $t7, 0x0000 ($v0)
80000D0C: sw    $zero, 0x0004 ($v0)
80000D10: lw    $v0, 0x0000 ($a1)
80000D14: lui   $t9, 0xB800
80000D18: addiu $t8, $v0, 0x0008
80000D1C: sw    $t8, 0x0000 ($a1)
80000D20: sw    $zero, 0x0004 ($v0)
80000D24: jal   0x800006E8
80000D28: sw    $t9, 0x0000 ($v0)
80000D2C: lw    $ra, 0x0014 ($sp)
80000D30: addiu $sp, $sp, 0x0018
80000D34: jr    $ra
80000D38: nop

80000D3C: lui   $t3, 0x8015
80000D40: addiu $t3, $t3, 0x0298
80000D44: lw    $v0, 0x0000 ($t3)
80000D48: lui   $t4, 0xE700
80000D4C: lui   $t8, 0xB900
80000D50: addiu $t6, $v0, 0x0008
80000D54: sw    $t6, 0x0000 ($t3)
80000D58: sw    $zero, 0x0004 ($v0)
80000D5C: sw    $t4, 0x0000 ($v0)
80000D60: lw    $v1, 0x0000 ($t3)
80000D64: lui   $t9, 0x0F0A
80000D68: ori   $t9, $t9, 0x4000
80000D6C: addiu $t7, $v1, 0x0008
80000D70: sw    $t7, 0x0000 ($t3)
80000D74: ori   $t8, $t8, 0x031D
80000D78: sw    $t8, 0x0000 ($v1)
80000D7C: sw    $t9, 0x0004 ($v1)
80000D80: lw    $v1, 0x0000 ($t3)
80000D84: lui   $t5, 0xBA00
80000D88: ori   $t5, $t5, 0x1402
80000D8C: addiu $t6, $v1, 0x0008
80000D90: sw    $t6, 0x0000 ($t3)
80000D94: lui   $t7, 0x0030
80000D98: sw    $t7, 0x0004 ($v1)
80000D9C: sw    $t5, 0x0000 ($v1)
80000DA0: lw    $v1, 0x0000 ($t3)
80000DA4: lui   $t9, 0xF700
80000DA8: lui   $t7, 0xF64F
80000DAC: addiu $t8, $v1, 0x0008
80000DB0: sw    $t8, 0x0000 ($t3)
80000DB4: sw    $a0, 0x0004 ($v1)
80000DB8: sw    $t9, 0x0000 ($v1)
80000DBC: lw    $v1, 0x0000 ($t3)
80000DC0: ori   $t7, $t7, 0xC3BC
80000DC4: addiu $t6, $v1, 0x0008
80000DC8: sw    $t6, 0x0000 ($t3)
80000DCC: sw    $zero, 0x0004 ($v1)
80000DD0: sw    $t7, 0x0000 ($v1)
80000DD4: lw    $v1, 0x0000 ($t3)
80000DD8: addiu $t8, $v1, 0x0008
80000DDC: sw    $t8, 0x0000 ($t3)
80000DE0: sw    $zero, 0x0004 ($v1)
80000DE4: sw    $t4, 0x0000 ($v1)
80000DE8: lw    $v1, 0x0000 ($t3)
80000DEC: addiu $t9, $v1, 0x0008
80000DF0: sw    $t9, 0x0000 ($t3)
80000DF4: sw    $zero, 0x0004 ($v1)
80000DF8: jr    $ra
80000DFC: sw    $t5, 0x0000 ($v1)

80000E00: addiu $sp, $sp, 0xFFE8
80000E04: lui   $v0, 0x8015
80000E08: lui   $t6, 0x8010
80000E0C: addiu $v0, $v0, 0xEF40
80000E10: sw    $ra, 0x0014 ($sp)
80000E14: addiu $a1, $t6, 0xD860
80000E18: sw    $a1, 0x0000 ($v0)
80000E1C: jal   SetSegmentBase
80000E20: addiu $a0, $zero, 0x0001
80000E24: lui   $v0, 0x8015
80000E28: lw    $v0, 0xEF40 ($v0)
80000E2C: lui   $at, 0x0002
80000E30: ori   $at, $at, 0x8B20
80000E34: addu  $t7, $v0, $at
80000E38: lui   $at, 0x8015
80000E3C: sw    $t7, 0x029C ($at)
80000E40: lui   $at, 0x0001
80000E44: ori   $at, $at, 0xA0C0
80000E48: addu  $t8, $v0, $at
80000E4C: lui   $at, 0x8015
80000E50: jal   0x80000CA8
80000E54: sw    $t8, 0x0298 ($at)
80000E58: jal   0x80000D3C
80000E5C: or    $a0, $zero, $zero
80000E60: jal   0x80000CE8
80000E64: nop
80000E68: lui   $a0, 0x8015
80000E6C: lw    $a0, 0xEF40 ($a0)
80000E70: lui   $at, 0x0002
80000E74: ori   $at, $at, 0x8B20
80000E78: jal   0x80000C40
80000E7C: addu  $a0, $a0, $at
80000E80: lui   $v0, 0x800E
80000E84: lui   $v1, 0x800E
80000E88: addiu $v1, $v1, 0xC54C
80000E8C: addiu $v0, $v0, 0xC560
80000E90: lhu   $t9, 0x0000 ($v0)
80000E94: lw    $t1, 0x0000 ($v1)
80000E98: lw    $ra, 0x0014 ($sp)
80000E9C: addiu $t0, $t9, 0x0001
80000EA0: addiu $t2, $t1, 0x0001
80000EA4: sh    $t0, 0x0000 ($v0)
80000EA8: sw    $t2, 0x0000 ($v1)
80000EAC: jr    $ra
80000EB0: addiu $sp, $sp, 0x0018

80000EB4: lui   $t6, 0x800E
80000EB8: lw    $t6, 0xC54C ($t6)
80000EBC: lui   $at, 0x0002
80000EC0: ori   $at, $at, 0x8B70
80000EC4: andi  $t7, $t6, 0x0001
80000EC8: multu $t7, $at
80000ECC: lui   $t9, 0x8010
80000ED0: addiu $sp, $sp, 0xFFE8
80000ED4: lui   $v0, 0x8015
80000ED8: addiu $t9, $t9, 0xD860
80000EDC: addiu $v0, $v0, 0xEF40
80000EE0: sw    $ra, 0x0014 ($sp)
80000EE4: addiu $a0, $zero, 0x0001
80000EE8: mflo  $t8
80000EEC: addu  $a1, $t8, $t9
80000EF0: jal   SetSegmentBase
80000EF4: sw    $a1, 0x0000 ($v0)
80000EF8: lui   $v0, 0x8015
80000EFC: lw    $v0, 0xEF40 ($v0)
80000F00: lui   $at, 0x0001
80000F04: ori   $at, $at, 0xA0C0
80000F08: addu  $t1, $v0, $at
80000F0C: lui   $at, 0x8015
80000F10: sw    $t1, 0x0298 ($at)
80000F14: lui   $at, 0x0002
80000F18: lw    $ra, 0x0014 ($sp)
80000F1C: ori   $at, $at, 0x8B20
80000F20: addu  $t2, $v0, $at
80000F24: lui   $at, 0x8015
80000F28: sw    $t2, 0x029C ($at)
80000F2C: jr    $ra
80000F30: addiu $sp, $sp, 0x0018

80000F34: addiu $sp, $sp, 0xFFE0
80000F38: sw    $ra, 0x001C ($sp)
80000F3C: sw    $s0, 0x0018 ($sp)
80000F40: jal   0x80003550
80000F44: addiu $a0, $zero, 0x0002
80000F48: lui   $a0, 0x8015
80000F4C: lui   $a1, 0x8015
80000F50: addiu $a1, $a1, 0xF098
80000F54: addiu $a0, $a0, 0xEF88
80000F58: jal   osRecvMesg
80000F5C: addiu $a2, $zero, 0x0001
80000F60: lui   $a0, 0x8015
80000F64: lw    $a0, 0xEF40 ($a0)
80000F68: lui   $at, 0x0002
80000F6C: ori   $at, $at, 0x8B20
80000F70: jal   0x80000C40
80000F74: addu  $a0, $a0, $at
80000F78: jal   0x80003550
80000F7C: addiu $a0, $zero, 0x0003
80000F80: lui   $a0, 0x8015
80000F84: lui   $a1, 0x8015
80000F88: addiu $a1, $a1, 0xF098
80000F8C: addiu $a0, $a0, 0xEF70
80000F90: jal   osRecvMesg
80000F94: addiu $a2, $zero, 0x0001
80000F98: lui   $s0, 0x800E
80000F9C: addiu $s0, $s0, 0xC55C
80000FA0: lhu   $t6, 0x0000 ($s0)
80000FA4: lui   $a0, 0x8015
80000FA8: lui   $at, 0x8000
80000FAC: sll   $t7, $t6, 0x2
80000FB0: addu  $a0, $a0, $t7
80000FB4: lw    $a0, 0x02A8 ($a0)
80000FB8: or    $t8, $a0, $at
80000FBC: jal   osViSwapBuffer
80000FC0: or    $a0, $t8, $zero
80000FC4: jal   0x80003550
80000FC8: addiu $a0, $zero, 0x0004
80000FCC: lui   $a0, 0x8015
80000FD0: lui   $a1, 0x8015
80000FD4: addiu $a1, $a1, 0xF098
80000FD8: addiu $a0, $a0, 0xEF70
80000FDC: jal   osRecvMesg
80000FE0: addiu $a2, $zero, 0x0001
80000FE4: lhu   $t9, 0x0000 ($s0)
80000FE8: lui   $a0, 0x8015
80000FEC: sll   $t0, $t9, 0x2
80000FF0: addu  $a0, $a0, $t0
80000FF4: jal   0x800046AC
80000FF8: lw    $a0, 0x02A8 ($a0)
80000FFC: lhu   $t1, 0x0000 ($s0)
80001000: addiu $v1, $zero, 0x0003
80001004: lui   $v0, 0x800E
80001008: addiu $t2, $t1, 0x0001
8000100C: andi  $t3, $t2, 0xFFFF
80001010: bne   $v1, $t3, 0x8000101C
80001014: sh    $t2, 0x0000 ($s0)
80001018: sh    $zero, 0x0000 ($s0)
8000101C: addiu $v0, $v0, 0xC560
80001020: lhu   $t4, 0x0000 ($v0)
80001024: addiu $t5, $t4, 0x0001
80001028: andi  $t6, $t5, 0xFFFF
8000102C: bne   $v1, $t6, 0x80001038
80001030: sh    $t5, 0x0000 ($v0)
80001034: sh    $zero, 0x0000 ($v0)
80001038: lui   $v0, 0x800E
8000103C: addiu $v0, $v0, 0xC54C
80001040: lw    $t7, 0x0000 ($v0)
80001044: lw    $ra, 0x001C ($sp)
80001048: lw    $s0, 0x0018 ($sp)
8000104C: addiu $t8, $t7, 0x0001
80001050: sw    $t8, 0x0000 ($v0)
80001054: jr    $ra
80001058: addiu $sp, $sp, 0x0020

8000105C: addiu $sp, $sp, 0xFFE8
80001060: sw    $ra, 0x0014 ($sp)
80001064: lui   $a0, 0x8028
80001068: jal   bzero
8000106C: ori   $a1, $zero, 0xDF00
80001070: jal   osWriteBackDCacheAll
80001074: nop
80001078: lui   $a1, 0x0012
8000107C: lui   $t6, 0x0013
80001080: addiu $a1, $a1, 0x3640
80001084: addiu $t6, $t6, 0xAAE0
80001088: subu  $a2, $t6, $a1
8000108C: addiu $a2, $a2, 0x000F
80001090: addiu $at, $zero, 0xFFF0
80001094: and   $t7, $a2, $at
80001098: or    $a2, $t7, $zero
8000109C: jal   dmaCopy
800010A0: lui   $a0, 0x8028
800010A4: lui   $a0, 0x8028
800010A8: jal   osInvalCache
800010AC: ori   $a1, $zero, 0xDF00
800010B0: lui   $a0, 0x8028
800010B4: jal   osInvalDCache
800010B8: ori   $a1, $zero, 0xDF00
800010BC: lw    $ra, 0x0014 ($sp)
800010C0: addiu $sp, $sp, 0x0018
800010C4: jr    $ra
800010C8: nop

800010CC: addiu $sp, $sp, 0xFFE8
800010D0: sw    $ra, 0x0014 ($sp)
800010D4: lui   $a0, 0x8028
800010D8: lui   $a1, 0x0002
800010DC: ori   $a1, $a1, 0xC470
800010E0: jal   bzero
800010E4: ori   $a0, $a0, 0xDF00
800010E8: jal   osWriteBackDCacheAll
800010EC: nop
800010F0: lui   $a1, 0x000F
800010F4: lui   $t6, 0x0012
800010F8: addiu $a1, $a1, 0x7510
800010FC: addiu $t6, $t6, 0x3640
80001100: subu  $a2, $t6, $a1
80001104: addiu $a2, $a2, 0x000F
80001108: addiu $at, $zero, 0xFFF0
8000110C: and   $t7, $a2, $at
80001110: lui   $a0, 0x8028
80001114: ori   $a0, $a0, 0xDF00
80001118: jal   dmaCopy
8000111C: or    $a2, $t7, $zero
80001120: lui   $a0, 0x8028
80001124: lui   $a1, 0x0002
80001128: ori   $a1, $a1, 0xC470
8000112C: jal   osInvalCache
80001130: ori   $a0, $a0, 0xDF00
80001134: lui   $a0, 0x8028
80001138: lui   $a1, 0x0002
8000113C: ori   $a1, $a1, 0xC470
80001140: jal   osInvalDCache
80001144: ori   $a0, $a0, 0xDF00
80001148: lw    $ra, 0x0014 ($sp)
8000114C: addiu $sp, $sp, 0x0018
80001150: jr    $ra
80001154: nop

dmaCopy:
    80001158: addiu $sp, $sp, 0xFFC0
    8000115C: sw    $s2, 0x002C ($sp)
    80001160: or    $s2, $a1, $zero
    80001164: sw    $ra, 0x003C ($sp)
    80001168: sw    $s1, 0x0028 ($sp)
    8000116C: sw    $s0, 0x0024 ($sp)
    80001170: or    $s0, $a2, $zero
    80001174: or    $s1, $a0, $zero
    80001178: sw    $s5, 0x0038 ($sp)
    8000117C: sw    $s4, 0x0034 ($sp)
    80001180: sw    $s3, 0x0030 ($sp)
    80001184: jal   osInvalDCache
    80001188: or    $a1, $a2, $zero
    8000118C: sltiu $at, $s0, 0x0101
    80001190: bnez  $at, 0x800011F4
    80001194: lui   $s5, 0x8015
    80001198: lui   $s4, 0x8015
    8000119C: lui   $s3, 0x8015
    800011A0: addiu $s3, $s3, 0xEF58
    800011A4: addiu $s4, $s4, 0xF0A0
    800011A8: addiu $s5, $s5, 0xF098
    800011AC: addiu $t6, $zero, 0x0100
    800011B0: sw    $t6, 0x0014 ($sp)
    800011B4: or    $a0, $s4, $zero
    800011B8: or    $a1, $zero, $zero
    800011BC: or    $a2, $zero, $zero
    800011C0: or    $a3, $s2, $zero
    800011C4: sw    $s1, 0x0010 ($sp)
    800011C8: jal   osPiStartDma
    800011CC: sw    $s3, 0x0018 ($sp)
    800011D0: or    $a0, $s3, $zero
    800011D4: or    $a1, $s5, $zero
    800011D8: jal   osRecvMesg
    800011DC: addiu $a2, $zero, 0x0001
    800011E0: addiu $s0, $s0, 0xFF00
    800011E4: sltiu $at, $s0, 0x0101
    800011E8: addiu $s2, $s2, 0x0100
    800011EC: beq   $at, $zero, 0x800011AC
    800011F0: addiu $s1, $s1, 0x0100
    800011F4: lui   $s3, 0x8015
    800011F8: lui   $s4, 0x8015
    800011FC: lui   $s5, 0x8015
    80001200: addiu $s5, $s5, 0xF098
    80001204: addiu $s4, $s4, 0xF0A0
    80001208: beq   $s0, $zero, 0x80001240
    8000120C: addiu $s3, $s3, 0xEF58
    80001210: or    $a0, $s4, $zero
    80001214: or    $a1, $zero, $zero
    80001218: or    $a2, $zero, $zero
    8000121C: or    $a3, $s2, $zero
    80001220: sw    $s1, 0x0010 ($sp)
    80001224: sw    $s0, 0x0014 ($sp)
    80001228: jal   osPiStartDma
    8000122C: sw    $s3, 0x0018 ($sp)
    80001230: or    $a0, $s3, $zero
    80001234: or    $a1, $s5, $zero
    80001238: jal   osRecvMesg
    8000123C: addiu $a2, $zero, 0x0001
    80001240: lw    $ra, 0x003C ($sp)
    80001244: lw    $s0, 0x0024 ($sp)
    80001248: lw    $s1, 0x0028 ($sp)
    8000124C: lw    $s2, 0x002C ($sp)
    80001250: lw    $s3, 0x0030 ($sp)
    80001254: lw    $s4, 0x0034 ($sp)
    80001258: lw    $s5, 0x0038 ($sp)
    8000125C: jr    $ra
    80001260: addiu $sp, $sp, 0x0040

80001264: addiu $sp, $sp, 0xFFB0
80001268: sw    $ra, 0x0024 ($sp)
8000126C: jal   0x800010CC
80001270: nop
80001274: lui   $t6, 0x8028
80001278: ori   $t6, $t6, 0xDF00
8000127C: lui   $at, 0x8016
80001280: sw    $t6, 0xF72C ($at)
80001284: or    $a0, $zero, $zero
80001288: jal   SetSegmentBase
8000128C: lui   $a1, 0x8000
80001290: lui   $a0, 0x8019
80001294: lui   $a1, 0x8024
80001298: ori   $a1, $a1, 0x2F00
8000129C: jal   0x802A7CF0
800012A0: addiu $a0, $a0, 0x78D0
800012A4: jal   0x80000BEC
800012A8: nop
800012AC: lui   $a0, 0x802B
800012B0: ori   $a0, $a0, 0xA370
800012B4: jal   osInvalDCache
800012B8: addiu $a1, $zero, 0x5810
800012BC: lui   $t7, 0x802B
800012C0: lui   $t9, 0x8015
800012C4: addiu $t9, $t9, 0xEF58
800012C8: ori   $t7, $t7, 0xA370
800012CC: lui   $a0, 0x8015
800012D0: lui   $a3, 0x0072
800012D4: addiu $t8, $zero, 0x5810
800012D8: sw    $t8, 0x0014 ($sp)
800012DC: addiu $a3, $a3, 0x4220
800012E0: addiu $a0, $a0, 0xF0A0
800012E4: sw    $t7, 0x0010 ($sp)
800012E8: sw    $t9, 0x0018 ($sp)
800012EC: or    $a1, $zero, $zero
800012F0: jal   osPiStartDma
800012F4: or    $a2, $zero, $zero
800012F8: lui   $a0, 0x8015
800012FC: lui   $a1, 0x8015
80001300: addiu $a1, $a1, 0xF098
80001304: addiu $a0, $a0, 0xEF58
80001308: jal   osRecvMesg
8000130C: addiu $a2, $zero, 0x0001
80001310: lui   $a0, 0x0013
80001314: lui   $a1, 0x0013
80001318: addiu $a1, $a1, 0x2B50
8000131C: jal   0x802A7D70
80001320: addiu $a0, $a0, 0xAAE0
80001324: addiu $a0, $zero, 0x0002
80001328: jal   SetSegmentBase
8000132C: or    $a1, $v0, $zero
80001330: lui   $a3, 0x0013
80001334: lui   $t1, 0x0014
80001338: addiu $t1, $t1, 0x5470
8000133C: addiu $a3, $a3, 0x2B50
80001340: subu  $v1, $t1, $a3
80001344: addiu $v1, $v1, 0x000F
80001348: addiu $at, $zero, 0xFFF0
8000134C: lui   $t3, 0x8028
80001350: ori   $t3, $t3, 0xDF00
80001354: and   $t2, $v1, $at
80001358: lui   $t4, 0x8015
8000135C: addiu $t4, $t4, 0xEF58
80001360: subu  $t0, $t3, $t2
80001364: lui   $a0, 0x8015
80001368: addiu $a0, $a0, 0xF0A0
8000136C: sw    $t0, 0x0010 ($sp)
80001370: sw    $t0, 0x002C ($sp)
80001374: sw    $t4, 0x0018 ($sp)
80001378: or    $v1, $t2, $zero
8000137C: sw    $t2, 0x0014 ($sp)
80001380: or    $a1, $zero, $zero
80001384: jal   osPiStartDma
80001388: or    $a2, $zero, $zero
8000138C: lui   $a0, 0x8015
80001390: lui   $a1, 0x8015
80001394: addiu $a1, $a1, 0xF098
80001398: addiu $a0, $a0, 0xEF58
8000139C: jal   osRecvMesg
800013A0: addiu $a2, $zero, 0x0001
800013A4: lw    $a0, 0x002C ($sp)
800013A8: lui   $a1, 0x8016
800013AC: lw    $a1, 0xF728 ($a1)
800013B0: lw    $v1, 0x0004 ($a0)
800013B4: addiu $at, $zero, 0xFFF0
800013B8: sw    $a1, 0x0038 ($sp)
800013BC: addiu $v1, $v1, 0x000F
800013C0: and   $t5, $v1, $at
800013C4: jal   mio0Decode
800013C8: sw    $t5, 0x0040 ($sp)
800013CC: lw    $a1, 0x0038 ($sp)
800013D0: jal   SetSegmentBase
800013D4: addiu $a0, $zero, 0x000D
800013D8: lui   $a0, 0x8016
800013DC: addiu $a0, $a0, 0xF728
800013E0: lw    $v1, 0x0040 ($sp)
800013E4: lw    $t6, 0x0000 ($a0)
800013E8: lw    $ra, 0x0024 ($sp)
800013EC: lui   $at, 0x8016
800013F0: addu  $t7, $t6, $v1
800013F4: sw    $t7, 0x0000 ($a0)
800013F8: sw    $t7, 0xF734 ($at)
800013FC: jr    $ra
80001400: addiu $sp, $sp, 0x0050

80001404: addiu $sp, $sp, 0xFFE8
80001408: sw    $ra, 0x0014 ($sp)
8000140C: lui   $at, 0x800E
80001410: sw    $zero, 0xC524 ($at)
80001414: jal   0x80000D3C
80001418: or    $a0, $zero, $zero
8000141C: lw    $ra, 0x0014 ($sp)
80001420: addiu $sp, $sp, 0x0018
80001424: jr    $ra
80001428: nop

8000142C: addiu $sp, $sp, 0xFFD8
80001430: lui   $at, 0x8015
80001434: sw    $s0, 0x001C ($sp)
80001438: sh    $zero, 0x0112 ($at)
8000143C: lui   $s0, 0x800E
80001440: lui   $at, 0x8016
80001444: addiu $s0, $s0, 0xC5FC
80001448: sh    $zero, 0x4AF0 ($at)
8000144C: lhu   $t6, 0x0000 ($s0)
80001450: sw    $ra, 0x0024 ($sp)
80001454: sw    $s1, 0x0020 ($sp)
80001458: beq   $t6, $zero, 0x80001468
8000145C: sdc1  F20, 0x0010 ($sp)
80001460: jal   0x80290B14
80001464: nop
80001468: lui   $t7, 0x800E
8000146C: lhu   $t7, 0xC5C0 ($t7)
80001470: lui   $v1, 0x800E
80001474: addiu $v1, $v1, 0xC58C
80001478: beql  $t7, $zero, 0x80001494
8000147C: lh    $v0, 0x0000 ($v1)
80001480: jal   0x802A38B4
80001484: nop
80001488: beq   $zero, $zero, 0x80001EB8
8000148C: lw    $ra, 0x0024 ($sp)
80001490: lh    $v0, 0x0000 ($v1)
80001494: addiu $t8, $zero, 0x0005
80001498: addiu $t9, $zero, 0x0001
8000149C: slti  $at, $v0, 0x0006
800014A0: bnez  $at, 0x800014B0
800014A4: nop
800014A8: sh    $t8, 0x0000 ($v1)
800014AC: lh    $v0, 0x0000 ($v1)
800014B0: bgez  $v0, 0x800014BC
800014B4: nop
800014B8: sh    $t9, 0x0000 ($v1)
800014BC: jal   0x802A4EF4
800014C0: nop
800014C4: lui   $v0, 0x800E
800014C8: lw    $v0, 0xC52C ($v0)
800014CC: addiu $t1, $zero, 0x0002
800014D0: lui   $at, 0x8015
800014D4: beq   $v0, $zero, 0x8000150C
800014D8: nop
800014DC: addiu $at, $zero, 0x0001
800014E0: beq   $v0, $at, 0x80001940
800014E4: lui   $t3, 0x800E
800014E8: addiu $a0, $zero, 0x0002
800014EC: beq   $v0, $a0, 0x8000179C
800014F0: lui   $t3, 0x800E
800014F4: addiu $v1, $zero, 0x0003
800014F8: beq   $v0, $v1, 0x80001AE8
800014FC: lui   $t4, 0x800E
80001500: lui   $a0, 0x800E
80001504: beq   $zero, $zero, 0x80001DC4
80001508: lhu   $a0, 0xC520 ($a0)
8000150C: jal   0x80005F44
80001510: sw    $t1, 0x0114 ($at)
80001514: lhu   $t2, 0x0000 ($s0)
80001518: lui   $t3, 0x8015
8000151C: bnez  $t2, 0x800015EC
80001520: nop
80001524: lw    $t3, 0x0114 ($t3)
80001528: or    $s0, $zero, $zero
8000152C: lui   $at, 0x800F
80001530: blez  $t3, 0x800015E4
80001534: lui   $s1, 0x800E
80001538: ldc1  F20, 0xB5F8 ($at)
8000153C: addiu $s1, $s1, 0xC598
80001540: lui   $t4, 0x8015
80001544: lhu   $t4, 0x011E ($t4)
80001548: beq   $t4, $zero, 0x80001564
8000154C: nop
80001550: lwc1  F4, 0x0000 ($s1)
80001554: cvt.d.s F6, F4
80001558: add.d F8, F6, F20
8000155C: cvt.s.d F10, F8
80001560: swc1  F10, 0x0000 ($s1)
80001564: jal   0x802909F0
80001568: nop
8000156C: jal   0x802A0D54
80001570: nop
80001574: jal   0x800382DC
80001578: nop
8000157C: lui   $a0, 0x800E
80001580: lui   $a1, 0x800E
80001584: lw    $a1, 0xDB40 ($a1)
80001588: lw    $a0, 0xC4FC ($a0)
8000158C: jal   0x8001EE98
80001590: or    $a2, $zero, $zero
80001594: jal   0x80028F70
80001598: nop
8000159C: jal   0x8028F474
800015A0: nop
800015A4: jal   0x80059AC8
800015A8: nop
800015AC: jal   UpdateSimpleObjects
800015B0: nop
800015B4: jal   0x802966A0
800015B8: nop
800015BC: jal   0x8028FCBC
800015C0: nop
800015C4: lui   $t7, 0x8015
800015C8: lw    $t7, 0x0114 ($t7)
800015CC: addiu $s0, $s0, 0x0001
800015D0: sll   $t5, $s0, 0x10
800015D4: sra   $s0, $t5, 0x10
800015D8: slt   $at, $s0, $t7
800015DC: bnez  $at, 0x80001540
800015E0: nop
800015E4: jal   0x80022744
800015E8: nop
800015EC: jal   0x8005A070
800015F0: nop
800015F4: lui   $at, 0x800E
800015F8: sh    $zero, 0xC58C ($at)
800015FC: jal   0x80003550
80001600: addiu $a0, $zero, 0x0001
80001604: lui   $at, 0x8016
80001608: jal   0x802A59A4
8000160C: sw    $zero, 0xF788 ($at)
80001610: lui   $a0, 0x800E
80001614: lhu   $a0, 0xC520 ($a0)
80001618: lui   $a1, 0x800E
8000161C: addiu $a1, $a1, 0xC514
80001620: bnel  $a0, $zero, 0x8000163C
80001624: lhu   $t8, 0x0000 ($a1)
80001628: lui   $a1, 0x800E
8000162C: addiu $a1, $a1, 0xC514
80001630: beq   $zero, $zero, 0x80001DC4
80001634: sh    $zero, 0x0000 ($a1)
80001638: lhu   $t8, 0x0000 ($a1)
8000163C: lui   $t0, 0x8016
80001640: lui   $t4, 0x800E
80001644: beq   $t8, $zero, 0x80001768
80001648: lui   $v1, 0x800E
8000164C: lui   $v1, 0x800E
80001650: lw    $v1, 0xC4BC ($v1)
80001654: lui   $a2, 0x800F
80001658: addiu $a2, $a2, 0xB5D0
8000165C: lhu   $t9, 0x0006 ($v1)
80001660: addiu $a0, $zero, 0x0028
80001664: andi  $t1, $t9, 0x0010
80001668: beq   $t1, $zero, 0x8000168C
8000166C: nop
80001670: lhu   $v0, 0x0004 ($v1)
80001674: andi  $t2, $v0, 0x8000
80001678: beq   $t2, $zero, 0x8000168C
8000167C: andi  $t3, $v0, 0x4000
80001680: beq   $t3, $zero, 0x8000168C
80001684: nop
80001688: sh    $zero, 0x0000 ($a1)
8000168C: lw    $t4, 0xDB40 ($t4)
80001690: lui   $t5, 0x800E
80001694: lw    $t5, 0xC5EC ($t5)
80001698: lhu   $v0, 0x0026 ($t4)
8000169C: addiu $t0, $t0, 0x25E8
800016A0: lh    $t6, 0x0038 ($t5)
800016A4: slti  $at, $v0, 0x2000
800016A8: beq   $at, $zero, 0x800016C4
800016AC: sh    $t6, 0x0000 ($t0)
800016B0: addiu $a1, $zero, 0x0064
800016B4: jal   0x80057A50
800016B8: lh    $a3, 0x0000 ($t0)
800016BC: beq   $zero, $zero, 0x8000175C
800016C0: nop
800016C4: slti  $at, $v0, 0x6000
800016C8: beq   $at, $zero, 0x800016EC
800016CC: addiu $a0, $zero, 0x0028
800016D0: lui   $a2, 0x800F
800016D4: addiu $a2, $a2, 0xB5D8
800016D8: addiu $a1, $zero, 0x0064
800016DC: jal   0x80057A50
800016E0: lh    $a3, 0x0000 ($t0)
800016E4: beq   $zero, $zero, 0x8000175C
800016E8: nop
800016EC: ori   $at, $zero, 0xA000
800016F0: slt   $at, $v0, $at
800016F4: beq   $at, $zero, 0x80001718
800016F8: addiu $a0, $zero, 0x0028
800016FC: lui   $a2, 0x800F
80001700: addiu $a2, $a2, 0xB5E0
80001704: addiu $a1, $zero, 0x0064
80001708: jal   0x80057A50
8000170C: lh    $a3, 0x0000 ($t0)
80001710: beq   $zero, $zero, 0x8000175C
80001714: nop
80001718: ori   $at, $zero, 0xE000
8000171C: slt   $at, $v0, $at
80001720: beq   $at, $zero, 0x80001748
80001724: addiu $a0, $zero, 0x0028
80001728: lui   $a2, 0x800F
8000172C: addiu $a2, $a2, 0xB5E8
80001730: addiu $a0, $zero, 0x0028
80001734: addiu $a1, $zero, 0x0064
80001738: jal   0x80057A50
8000173C: lh    $a3, 0x0000 ($t0)
80001740: beq   $zero, $zero, 0x8000175C
80001744: nop
80001748: lui   $a2, 0x800F
8000174C: addiu $a2, $a2, 0xB5F0
80001750: addiu $a1, $zero, 0x0064
80001754: jal   0x80057A50
80001758: lh    $a3, 0x0000 ($t0)
8000175C: lui   $a0, 0x800E
80001760: beq   $zero, $zero, 0x80001DC4
80001764: lhu   $a0, 0xC520 ($a0)
80001768: lw    $v1, 0xC4BC ($v1)
8000176C: lhu   $t7, 0x0006 ($v1)
80001770: andi  $t8, $t7, 0x0020
80001774: beq   $t8, $zero, 0x80001DC4
80001778: nop
8000177C: lhu   $v0, 0x0004 ($v1)
80001780: andi  $t9, $v0, 0x8000
80001784: beq   $t9, $zero, 0x80001DC4
80001788: andi  $t1, $v0, 0x4000
8000178C: beq   $t1, $zero, 0x80001DC4
80001790: addiu $t2, $zero, 0x0001
80001794: beq   $zero, $zero, 0x80001DC4
80001798: sh    $t2, 0x0000 ($a1)
8000179C: lh    $t3, 0xC5A0 ($t3)
800017A0: addiu $at, $zero, 0x0012
800017A4: addiu $v1, $zero, 0x0003
800017A8: bne   $t3, $at, 0x800017BC
800017AC: lui   $t5, 0x8015
800017B0: lui   $at, 0x8015
800017B4: beq   $zero, $zero, 0x800017C4
800017B8: sw    $v1, 0x0114 ($at)
800017BC: lui   $at, 0x8015
800017C0: sw    $a0, 0x0114 ($at)
800017C4: lhu   $t4, 0x0000 ($s0)
800017C8: bnez  $t4, 0x800018B8
800017CC: nop
800017D0: lw    $t5, 0x0114 ($t5)
800017D4: or    $s0, $zero, $zero
800017D8: lui   $at, 0x800F
800017DC: blez  $t5, 0x800018B0
800017E0: lui   $s1, 0x800E
800017E4: ldc1  F20, 0xB600 ($at)
800017E8: addiu $s1, $s1, 0xC598
800017EC: lui   $t6, 0x8015
800017F0: lhu   $t6, 0x011E ($t6)
800017F4: beq   $t6, $zero, 0x80001810
800017F8: nop
800017FC: lwc1  F16, 0x0000 ($s1)
80001800: cvt.d.s F18, F16
80001804: add.d   F4, F18, F20
80001808: cvt.s.d F6, F4
8000180C: swc1  F6, 0x0000 ($s1)
80001810: jal   0x802909F0
80001814: nop
80001818: jal   0x802A0D54
8000181C: nop
80001820: jal   0x800382DC
80001824: nop
80001828: lui   $a0, 0x800E
8000182C: lui   $a1, 0x800E
80001830: lw    $a1, 0xDB40 ($a1)
80001834: lw    $a0, 0xC4FC ($a0)
80001838: jal   0x8001EE98
8000183C: or    $a2, $zero, $zero
80001840: jal   0x80029060
80001844: nop
80001848: lui   $a0, 0x800E
8000184C: lui   $a1, 0x800E
80001850: lw    $a1, 0xDB44 ($a1)
80001854: lw    $a0, 0xC500 ($a0)
80001858: jal   0x8001EE98
8000185C: addiu $a2, $zero, 0x0001
80001860: jal   0x80029150
80001864: nop
80001868: jal   0x8028F474
8000186C: nop
80001870: jal   0x80059AC8
80001874: nop
80001878: jal   UpdateSimpleObjects
8000187C: nop
80001880: jal   0x802966A0
80001884: nop
80001888: jal   0x8028FCBC
8000188C: nop
80001890: lui   $t9, 0x8015
80001894: lw    $t9, 0x0114 ($t9)
80001898: addiu $s0, $s0, 0x0001
8000189C: sll   $t7, $s0, 0x10
800018A0: sra   $s0, $t7, 0x10
800018A4: slt   $at, $s0, $t9
800018A8: bnez  $at, 0x800017EC
800018AC: nop
800018B0: jal   0x80022744
800018B4: nop
800018B8: jal   0x8005A070
800018BC: nop
800018C0: jal   0x80003550
800018C4: addiu $a0, $zero, 0x0001
800018C8: lui   $at, 0x800E
800018CC: jal   0x802A7C08
800018D0: sh    $zero, 0xC58C ($at)
800018D4: jal   0x802A3E3C
800018D8: nop
800018DC: lui   $t1, 0x800E
800018E0: lhu   $t1, 0xC5B0 ($t1)
800018E4: beq   $t1, $zero, 0x800018F4
800018E8: nop
800018EC: jal   0x802A41D4
800018F0: nop
800018F4: lui   $t2, 0x800E
800018F8: lw    $t2, 0xC5E8 ($t2)
800018FC: lui   $at, 0x8016
80001900: sw    $zero, 0xF788 ($at)
80001904: bnez  $t2, 0x80001924
80001908: nop
8000190C: jal   0x802A5FAC
80001910: nop
80001914: jal   0x802A5CB4
80001918: nop
8000191C: beq   $zero, $zero, 0x80001934
80001920: nop
80001924: jal   0x802A5CB4
80001928: nop
8000192C: jal   0x802A5FAC
80001930: nop
80001934: lui   $a0, 0x800E
80001938: beq   $zero, $zero, 0x80001DC4
8000193C: lhu   $a0, 0xC520 ($a0)
80001940: lh    $t3, 0xC5A0 ($t3)
80001944: addiu $at, $zero, 0x0012
80001948: addiu $v1, $zero, 0x0003
8000194C: bne   $t3, $at, 0x80001960
80001950: addiu $t4, $zero, 0x0002
80001954: lui   $at, 0x8015
80001958: beq   $zero, $zero, 0x80001968
8000195C: sw    $v1, 0x0114 ($at)
80001960: lui   $at, 0x8015
80001964: sw    $t4, 0x0114 ($at)
80001968: lhu   $t5, 0x0000 ($s0)
8000196C: lui   $t6, 0x8015
80001970: bnez  $t5, 0x80001A60
80001974: nop
80001978: lw    $t6, 0x0114 ($t6)
8000197C: or    $s0, $zero, $zero
80001980: lui   $at, 0x800F
80001984: blez  $t6, 0x80001A58
80001988: lui   $s1, 0x800E
8000198C: ldc1  F20, 0xB608 ($at)
80001990: addiu $s1, $s1, 0xC598
80001994: lui   $t7, 0x8015
80001998: lhu   $t7, 0x011E ($t7)
8000199C: beq   $t7, $zero, 0x800019B8
800019A0: nop
800019A4: lwc1  F8, 0x0000 ($s1)
800019A8: cvt.d.s F10, F8
800019AC: add.d F16, F10, F20
800019B0: cvt.s.d F18, F16
800019B4: swc1  F18, 0x0000 ($s1)
800019B8: jal   0x802909F0
800019BC: nop
800019C0: jal   0x802A0D54
800019C4: nop
800019C8: jal   0x800382DC
800019CC: nop
800019D0: lui   $a0, 0x800E
800019D4: lui   $a1, 0x800E
800019D8: lw    $a1, 0xDB40 ($a1)
800019DC: lw    $a0, 0xC4FC ($a0)
800019E0: jal   0x8001EE98
800019E4: or    $a2, $zero, $zero
800019E8: jal   0x80029060
800019EC: nop
800019F0: lui   $a0, 0x800E
800019F4: lui   $a1, 0x800E
800019F8: lw    $a1, 0xDB44 ($a1)
800019FC: lw    $a0, 0xC500 ($a0)
80001A00: jal   0x8001EE98
80001A04: addiu $a2, $zero, 0x0001
80001A08: jal   0x80029150
80001A0C: nop
80001A10: jal   0x8028F474
80001A14: nop
80001A18: jal   0x80059AC8
80001A1C: nop
80001A20: jal   UpdateSimpleObjects
80001A24: nop
80001A28: jal   0x802966A0
80001A2C: nop
80001A30: jal   0x8028FCBC
80001A34: nop
80001A38: lui   $t1, 0x8015
80001A3C: lw    $t1, 0x0114 ($t1)
80001A40: addiu $s0, $s0, 0x0001
80001A44: sll   $t8, $s0, 0x10
80001A48: sra   $s0, $t8, 0x10
80001A4C: slt   $at, $s0, $t1
80001A50: bnez  $at, 0x80001994
80001A54: nop
80001A58: jal   0x80022744
80001A5C: nop
80001A60: jal   0x80003550
80001A64: addiu $a0, $zero, 0x0001
80001A68: lui   $at, 0x800E
80001A6C: jal   0x8005A070
80001A70: sh    $zero, 0xC58C ($at)
80001A74: jal   0x802A7C08
80001A78: nop
80001A7C: jal   0x802A3E3C
80001A80: nop
80001A84: lui   $t2, 0x800E
80001A88: lhu   $t2, 0xC5B0 ($t2)
80001A8C: beq   $t2, $zero, 0x80001A9C
80001A90: nop
80001A94: jal   0x802A41D4
80001A98: nop
80001A9C: lui   $t3, 0x800E
80001AA0: lw    $t3, 0xC5E8 ($t3)
80001AA4: lui   $at, 0x8016
80001AA8: sw    $zero, 0xF788 ($at)
80001AAC: bnez  $t3, 0x80001ACC
80001AB0: nop
80001AB4: jal   0x802A65B8
80001AB8: nop
80001ABC: jal   0x802A62A4
80001AC0: nop
80001AC4: beq   $zero, $zero, 0x80001ADC
80001AC8: nop
80001ACC: jal   0x802A62A4
80001AD0: nop
80001AD4: jal   0x802A65B8
80001AD8: nop
80001ADC: lui   $a0, 0x800E
80001AE0: beq   $zero, $zero, 0x80001DC4
80001AE4: lhu   $a0, 0xC520 ($a0)
80001AE8: lw    $t4, 0xC538 ($t4)
80001AEC: lui   $v0, 0x800E
80001AF0: lui   $t7, 0x8015
80001AF4: bne   $v1, $t4, 0x80001B3C
80001AF8: nop
80001AFC: lui   $v0, 0x800E
80001B00: lh    $v0, 0xC5A0 ($v0)
80001B04: addiu $at, $zero, 0x0009
80001B08: beq   $v0, $a0, 0x80001B30
80001B0C: nop
80001B10: beq   $v0, $at, 0x80001B30
80001B14: addiu $at, $zero, 0x0010
80001B18: beq   $v0, $at, 0x80001B30
80001B1C: addiu $at, $zero, 0x0012
80001B20: beq   $v0, $at, 0x80001B30
80001B24: lui   $at, 0x8015
80001B28: beq   $zero, $zero, 0x80001B84
80001B2C: sw    $a0, 0x0114 ($at)
80001B30: lui   $at, 0x8015
80001B34: beq   $zero, $zero, 0x80001B84
80001B38: sw    $v1, 0x0114 ($at)
80001B3C: lh    $v0, 0xC5A0 ($v0)
80001B40: addiu $at, $zero, 0x000F
80001B44: beq   $v0, $at, 0x80001B70
80001B48: addiu $at, $zero, 0x0011
80001B4C: beq   $v0, $at, 0x80001B70
80001B50: addiu $at, $zero, 0x0012
80001B54: beq   $v0, $at, 0x80001B7C
80001B58: addiu $t5, $zero, 0x0004
80001B5C: addiu $at, $zero, 0x0013
80001B60: beq   $v0, $at, 0x80001B70
80001B64: lui   $at, 0x8015
80001B68: beq   $zero, $zero, 0x80001B84
80001B6C: sw    $v1, 0x0114 ($at)
80001B70: lui   $at, 0x8015
80001B74: beq   $zero, $zero, 0x80001B84
80001B78: sw    $a0, 0x0114 ($at)
80001B7C: lui   $at, 0x8015
80001B80: sw    $t5, 0x0114 ($at)
80001B84: lhu   $t6, 0x0000 ($s0)
80001B88: bnez  $t6, 0x80001CB8
80001B8C: nop
80001B90: lw    $t7, 0x0114 ($t7)
80001B94: or    $s0, $zero, $zero
80001B98: lui   $at, 0x800F
80001B9C: blez  $t7, 0x80001CB0
80001BA0: lui   $s1, 0x800E
80001BA4: ldc1  F20, 0xB610 ($at)
80001BA8: addiu $s1, $s1, 0xC598
80001BAC: lui   $t8, 0x8015
80001BB0: lhu   $t8, 0x011E ($t8)
80001BB4: beq   $t8, $zero, 0x80001BD0
80001BB8: nop
80001BBC: lwc1  F4, 0x0000 ($s1)
80001BC0: cvt.d.s F6, F4
80001BC4: add.d F8, F6, F20
80001BC8: cvt.s.d F10, F8
80001BCC: swc1  F10, 0x0000 ($s1)
80001BD0: jal   0x802909F0
80001BD4: nop
80001BD8: jal   0x802A0D54
80001BDC: nop
80001BE0: jal   0x800382DC
80001BE4: nop
80001BE8: lui   $a0, 0x800E
80001BEC: lui   $a1, 0x800E
80001BF0: lw    $a1, 0xDB40 ($a1)
80001BF4: lw    $a0, 0xC4FC ($a0)
80001BF8: jal   0x8001EE98
80001BFC: or    $a2, $zero, $zero
80001C00: jal   0x80029158
80001C04: nop
80001C08: lui   $a0, 0x800E
80001C0C: lui   $a1, 0x800E
80001C10: lw    $a1, 0xDB44 ($a1)
80001C14: lw    $a0, 0xC4E0 ($a0)
80001C18: jal   0x8001EE98
80001C1C: addiu $a2, $zero, 0x0001
80001C20: jal   0x800291E8
80001C24: nop
80001C28: lui   $a0, 0x800E
80001C2C: lui   $a1, 0x800E
80001C30: lw    $a1, 0xDB48 ($a1)
80001C34: lw    $a0, 0xC4E4 ($a0)
80001C38: jal   0x8001EE98
80001C3C: addiu $a2, $zero, 0x0002
80001C40: jal   0x800291F0
80001C44: nop
80001C48: lui   $a0, 0x800E
80001C4C: lui   $a1, 0x800E
80001C50: lw    $a1, 0xDB4C ($a1)
80001C54: lw    $a0, 0xC4E8 ($a0)
80001C58: jal   0x8001EE98
80001C5C: addiu $a2, $zero, 0x0003
80001C60: jal   0x800291F8
80001C64: nop
80001C68: jal   0x8028F474
80001C6C: nop
80001C70: jal   0x80059AC8
80001C74: nop
80001C78: jal   UpdateSimpleObjects
80001C7C: nop
80001C80: jal   0x802966A0
80001C84: nop
80001C88: jal   0x8028FCBC
80001C8C: nop
80001C90: lui   $t2, 0x8015
80001C94: lw    $t2, 0x0114 ($t2)
80001C98: addiu $s0, $s0, 0x0001
80001C9C: sll   $t9, $s0, 0x10
80001CA0: sra   $s0, $t9, 0x10
80001CA4: slt   $at, $s0, $t2
80001CA8: bnez  $at, 0x80001BAC
80001CAC: nop
80001CB0: jal   0x80022744
80001CB4: nop
80001CB8: jal   0x8005A070
80001CBC: nop
80001CC0: lui   $at, 0x800E
80001CC4: sh    $zero, 0xC58C ($at)
80001CC8: jal   0x80003550
80001CCC: addiu $a0, $zero, 0x0001
80001CD0: jal   0x802A7C08
80001CD4: nop
80001CD8: jal   0x802A3E3C
80001CDC: nop
80001CE0: lui   $t3, 0x800E
80001CE4: lhu   $t3, 0xC5B0 ($t3)
80001CE8: beq   $t3, $zero, 0x80001CF8
80001CEC: nop
80001CF0: jal   0x802A41D4
80001CF4: nop
80001CF8: lui   $v0, 0x800E
80001CFC: lw    $v0, 0xC5E8 ($v0)
80001D00: lui   $at, 0x8016
80001D04: sw    $zero, 0xF788 ($at)
80001D08: bnez  $v0, 0x80001D38
80001D0C: addiu $at, $zero, 0x0001
80001D10: jal   0x802A6BB0
80001D14: nop
80001D18: jal   0x802A6E94
80001D1C: nop
80001D20: jal   0x802A7178
80001D24: nop
80001D28: jal   0x802A68CC
80001D2C: nop
80001D30: beq   $zero, $zero, 0x80001DBC
80001D34: nop
80001D38: bnel  $v0, $at, 0x80001D6C
80001D3C: addiu $at, $zero, 0x0002
80001D40: jal   0x802A68CC
80001D44: nop
80001D48: jal   0x802A6E94
80001D4C: nop
80001D50: jal   0x802A7178
80001D54: nop
80001D58: jal   0x802A6BB0
80001D5C: nop
80001D60: beq   $zero, $zero, 0x80001DBC
80001D64: nop
80001D68: addiu $at, $zero, 0x0002
80001D6C: bne   $v0, $at, 0x80001D9C
80001D70: nop
80001D74: jal   0x802A68CC
80001D78: nop
80001D7C: jal   0x802A6BB0
80001D80: nop
80001D84: jal   0x802A7178
80001D88: nop
80001D8C: jal   0x802A6E94
80001D90: nop
80001D94: beq   $zero, $zero, 0x80001DBC
80001D98: nop
80001D9C: jal   0x802A68CC
80001DA0: nop
80001DA4: jal   0x802A6BB0
80001DA8: nop
80001DAC: jal   0x802A6E94
80001DB0: nop
80001DB4: jal   0x802A7178
80001DB8: nop
80001DBC: lui   $a0, 0x800E
80001DC0: lhu   $a0, 0xC520 ($a0)
80001DC4: bnez  $a0, 0x80001DDC
80001DC8: lui   $s0, 0x800E
80001DCC: lui   $s0, 0x800E
80001DD0: addiu $s0, $s0, 0xC660
80001DD4: beq   $zero, $zero, 0x80001E64
80001DD8: sw    $zero, 0x0000 ($s0)
80001DDC: addiu $s0, $s0, 0xC660
80001DE0: lw    $t4, 0x0000 ($s0)
80001DE4: lui   $v1, 0x800E
80001DE8: beq   $t4, $zero, 0x80001E30
80001DEC: nop
80001DF0: jal   resourceDisplay
80001DF4: nop
80001DF8: lui   $v1, 0x800E
80001DFC: lw    $v1, 0xC4BC ($v1)
80001E00: lhu   $v0, 0x0004 ($v1)
80001E04: andi  $t5, $v0, 0x0020
80001E08: bnez  $t5, 0x80001E64
80001E0C: andi  $t6, $v0, 0x0010
80001E10: beq   $t6, $zero, 0x80001E64
80001E14: nop
80001E18: lhu   $t7, 0x0006 ($v1)
80001E1C: andi  $t8, $t7, 0x4000
80001E20: beq   $t8, $zero, 0x80001E64
80001E24: nop
80001E28: beq   $zero, $zero, 0x80001E64
80001E2C: sw    $zero, 0x0000 ($s0)
80001E30: lw    $v1, 0xC4BC ($v1)
80001E34: lhu   $v0, 0x0004 ($v1)
80001E38: andi  $t9, $v0, 0x0020
80001E3C: bnez  $t9, 0x80001E64
80001E40: andi  $t1, $v0, 0x0010
80001E44: beq   $t1, $zero, 0x80001E64
80001E48: nop
80001E4C: lhu   $t2, 0x0006 ($v1)
80001E50: addiu $t4, $zero, 0x0001
80001E54: andi  $t3, $t2, 0x4000
80001E58: beq   $t3, $zero, 0x80001E64
80001E5C: nop
80001E60: sw    $t4, 0x0000 ($s0)
80001E64: jal   0x802A4300
80001E68: nop
80001E6C: jal   0x800591B4
80001E70: nop
80001E74: jal   0x80093E20
80001E78: nop
80001E7C: lui   $a1, 0x8015
80001E80: addiu $a1, $a1, 0x0298
80001E84: lw    $v0, 0x0000 ($a1)
80001E88: lui   $t6, 0xE900
80001E8C: lui   $t8, 0xB800
80001E90: addiu $t5, $v0, 0x0008
80001E94: sw    $t5, 0x0000 ($a1)
80001E98: sw    $zero, 0x0004 ($v0)
80001E9C: sw    $t6, 0x0000 ($v0)
80001EA0: lw    $v0, 0x0000 ($a1)
80001EA4: addiu $t7, $v0, 0x0008
80001EA8: sw    $t7, 0x0000 ($a1)
80001EAC: sw    $zero, 0x0004 ($v0)
80001EB0: sw    $t8, 0x0000 ($v0)
80001EB4: lw    $ra, 0x0024 ($sp)
80001EB8: ldc1  F20, 0x0010 ($sp)
80001EBC: lw    $s0, 0x001C ($sp)
80001EC0: lw    $s1, 0x0020 ($sp)
80001EC4: jr    $ra
80001EC8: addiu $sp, $sp, 0x0028

80001ECC: lui   $t6, 0x800E
80001ED0: lw    $t6, 0xC50C ($t6)
80001ED4: addiu $sp, $sp, 0xFFE8
80001ED8: sw    $ra, 0x0014 ($sp)
80001EDC: sltiu $at, $t6, 0x000A
80001EE0: beq   $at, $zero, 0x80001F60
80001EE4: sll   $t6, $t6, 0x2
80001EE8: lui   $at, 0x800F
80001EEC: addu  $at, $at, $t6
80001EF0: lw    $t6, 0xB618 ($at)
80001EF4: jr    $t6
80001EF8: nop
80001EFC: jal   0x80001404
80001F00: nop
80001F04: beq   $zero, $zero, 0x80001F64
80001F08: lw    $ra, 0x0014 ($sp)
80001F0C: jal   osViBlack
80001F10: or    $a0, $zero, $zero
80001F14: jal   0x800B0350
80001F18: nop
80001F1C: jal   0x80000CA8
80001F20: nop
80001F24: lui   $a0, 0x8015
80001F28: jal   0x80094A64
80001F2C: lw    $a0, 0xEF40 ($a0)
80001F30: beq   $zero, $zero, 0x80001F64
80001F34: lw    $ra, 0x0014 ($sp)
80001F38: jal   0x8000142C
80001F3C: nop
80001F40: beq   $zero, $zero, 0x80001F64
80001F44: lw    $ra, 0x0014 ($sp)
80001F48: jal   0x80281548
80001F4C: nop
80001F50: beq   $zero, $zero, 0x80001F64
80001F54: lw    $ra, 0x0014 ($sp)
80001F58: jal   0x802802AC
80001F5C: nop
80001F60: lw    $ra, 0x0014 ($sp)
80001F64: addiu $sp, $sp, 0x0018
80001F68: jr    $ra
80001F6C: nop

80001F70: lui   $v0, 0x800E
80001F74: lw    $v0, 0xC4A8 ($v0)
80001F78: addiu $sp, $sp, 0xFFE8
80001F7C: sw    $ra, 0x0014 ($sp)
80001F80: lw    $t6, 0x0000 ($v0)
80001F84: addiu $at, $zero, 0x0001
80001F88: addiu $t7, $zero, 0x0002
80001F8C: bnel  $t6, $at, 0x80001FA0
80001F90: lw    $ra, 0x0014 ($sp)
80001F94: jal   osSpTaskYield
80001F98: sw    $t7, 0x0048 ($v0)
80001F9C: lw    $ra, 0x0014 ($sp)
80001FA0: addiu $sp, $sp, 0x0018
80001FA4: jr    $ra
80001FA8: nop

80001FAC: addiu $sp, $sp, 0xFFB8
80001FB0: sw    $s4, 0x0028 ($sp)
80001FB4: lui   $s4, 0x8015
80001FB8: sw    $s5, 0x002C ($sp)
80001FBC: addiu $s5, $sp, 0x0040
80001FC0: addiu $s4, $s4, 0xEFD0
80001FC4: sw    $ra, 0x0034 ($sp)
80001FC8: sw    $s6, 0x0030 ($sp)
80001FCC: sw    $s3, 0x0024 ($sp)
80001FD0: sw    $s2, 0x0020 ($sp)
80001FD4: sw    $s1, 0x001C ($sp)
80001FD8: sw    $s0, 0x0018 ($sp)
80001FDC: or    $a0, $s4, $zero
80001FE0: or    $a1, $s5, $zero
80001FE4: jal   osRecvMesg
80001FE8: or    $a2, $zero, $zero
80001FEC: addiu $s0, $zero, 0xFFFF
80001FF0: beq   $v0, $s0, 0x80002054
80001FF4: lui   $s6, 0x800E
80001FF8: lui   $s3, 0x800E
80001FFC: addiu $s3, $s3, 0xC4B4
80002000: addiu $s6, $s6, 0xC4B8
80002004: addiu $s2, $zero, 0x0002
80002008: addiu $s1, $zero, 0x0001
8000200C: lw    $t6, 0x0040 ($sp)
80002010: or    $a0, $s4, $zero
80002014: or    $a1, $s5, $zero
80002018: sw    $zero, 0x0048 ($t6)
8000201C: lw    $t7, 0x0040 ($sp)
80002020: lw    $t9, 0x0040 ($sp)
80002024: lw    $v0, 0x0000 ($t7)
80002028: beql  $v0, $s1, 0x80002044
8000202C: sw    $t9, 0x0000 ($s6)
80002030: bne   $v0, $s2, 0x80002044
80002034: lw    $t8, 0x0040 ($sp)
80002038: beq   $zero, $zero, 0x80002044
8000203C: sw    $t8, 0x0000 ($s3)
80002040: sw    $t9, 0x0000 ($s6)
80002044: jal   osRecvMesg
80002048: or    $a2, $zero, $zero
8000204C: bnel  $v0, $s0, 0x80002010
80002050: lw    $t6, 0x0040 ($sp)
80002054: lui   $v1, 0x800E
80002058: addiu $v1, $v1, 0xC4AC
8000205C: lw    $t0, 0x0000 ($v1)
80002060: lui   $s3, 0x800E
80002064: lui   $s6, 0x800E
80002068: addiu $s6, $s6, 0xC4B8
8000206C: bnez  $t0, 0x80002088
80002070: addiu $s3, $s3, 0xC4B4
80002074: lw    $v0, 0x0000 ($s3)
80002078: beq   $v0, $zero, 0x80002088
8000207C: nop
80002080: sw    $v0, 0x0000 ($v1)
80002084: sw    $zero, 0x0000 ($s3)
80002088: lui   $v1, 0x800E
8000208C: addiu $v1, $v1, 0xC4B0
80002090: lw    $t1, 0x0000 ($v1)
80002094: bnel  $t1, $zero, 0x800020B4
80002098: lw    $ra, 0x0034 ($sp)
8000209C: lw    $v0, 0x0000 ($s6)
800020A0: beql  $v0, $zero, 0x800020B4
800020A4: lw    $ra, 0x0034 ($sp)
800020A8: sw    $v0, 0x0000 ($v1)
800020AC: sw    $zero, 0x0000 ($s6)
800020B0: lw    $ra, 0x0034 ($sp)
800020B4: lw    $s0, 0x0018 ($sp)
800020B8: lw    $s1, 0x001C ($sp)
800020BC: lw    $s2, 0x0020 ($sp)
800020C0: lw    $s3, 0x0024 ($sp)
800020C4: lw    $s4, 0x0028 ($sp)
800020C8: lw    $s5, 0x002C ($sp)
800020CC: lw    $s6, 0x0030 ($sp)
800020D0: jr    $ra
800020D4: addiu $sp, $sp, 0x0048

800020D8: addiu $at, $zero, 0x0001
800020DC: sw    $a2, 0x0000 ($a1)
800020E0: beq   $a0, $at, 0x800020FC
800020E4: sw    $a3, 0x0004 ($a1)
800020E8: addiu $at, $zero, 0x0002
800020EC: beq   $a0, $at, 0x80002108
800020F0: nop
800020F4: jr    $ra
800020F8: nop

800020FC: lui   $at, 0x800E
80002100: jr    $ra
80002104: sw    $a1, 0xC4A0 ($at)

80002108: lui   $at, 0x800E
8000210C: sw    $a1, 0xC4A4 ($at)
80002110: jr    $ra
80002114: nop

80002118: lui   $t6, 0x800E
8000211C: lw    $t6, 0xC4A8 ($t6)
80002120: addiu $sp, $sp, 0xFFE8
80002124: sw    $ra, 0x0014 ($sp)
80002128: bnez  $t6, 0x80002158
8000212C: lui   $v0, 0x800E
80002130: lw    $v0, 0xC4B0 ($v0)
80002134: beql  $v0, $zero, 0x8000215C
80002138: lw    $ra, 0x0014 ($sp)
8000213C: lw    $t7, 0x0048 ($v0)
80002140: bnel  $t7, $zero, 0x8000215C
80002144: lw    $ra, 0x0014 ($sp)
80002148: jal   0x8000365C
8000214C: or    $a0, $zero, $zero
80002150: jal   0x8000067C
80002154: addiu $a0, $zero, 0x0001
80002158: lw    $ra, 0x0014 ($sp)
8000215C: addiu $sp, $sp, 0x0018
80002160: jr    $ra
80002164: nop

80002168: lui   $v0, 0x800E
8000216C: addiu $v0, $v0, 0xC594
80002170: lwc1  F4, 0x0000 ($v0)
80002174: lui   $at, 0x800F
80002178: ldc1  F8, 0xB640 ($at)
8000217C: cvt.d.s F6, F4
80002180: lui   $v1, 0x800E
80002184: add.d F10, F6, F8
80002188: addiu $v1, $v1, 0xC58C
8000218C: lh    $t6, 0x0000 ($v1)
80002190: addiu $sp, $sp, 0xFFE8
80002194: cvt.s.d F16, F10
80002198: sw    $ra, 0x0014 ($sp)
8000219C: addiu $t7, $t6, 0x0001
800021A0: sh    $t7, 0x0000 ($v1)
800021A4: jal   0x80001FAC
800021A8: swc1  F16, 0x0000 ($v0)
800021AC: lui   $t8, 0x800E
800021B0: lw    $t8, 0xC4AC ($t8)
800021B4: lui   $t9, 0x800E
800021B8: lui   $t0, 0x800E
800021BC: beq   $t8, $zero, 0x800021F8
800021C0: nop
800021C4: lw    $t9, 0xC4A8 ($t9)
800021C8: beq   $t9, $zero, 0x800021E0
800021CC: nop
800021D0: jal   0x80001F70
800021D4: nop
800021D8: beq   $zero, $zero, 0x80002234
800021DC: nop
800021E0: jal   0x800036EC
800021E4: nop
800021E8: jal   0x8000067C
800021EC: addiu $a0, $zero, 0x0002
800021F0: beq   $zero, $zero, 0x80002234
800021F4: nop
800021F8: lw    $t0, 0xC4A8 ($t0)
800021FC: lui   $v0, 0x800E
80002200: bnez  $t0, 0x80002234
80002204: nop
80002208: lw    $v0, 0xC4B0 ($v0)
8000220C: beq   $v0, $zero, 0x80002234
80002210: nop
80002214: lw    $t1, 0x0048 ($v0)
80002218: addiu $at, $zero, 0x0003
8000221C: beq   $t1, $at, 0x80002234
80002220: nop
80002224: jal   0x8000365C
80002228: or    $a0, $zero, $zero
8000222C: jal   0x8000067C
80002230: addiu $a0, $zero, 0x0001
80002234: lui   $v0, 0x800E
80002238: lw    $v0, 0xC4A0 ($v0)
8000223C: or    $a2, $zero, $zero
80002240: beq   $v0, $zero, 0x80002254
80002244: nop
80002248: lw    $a0, 0x0000 ($v0)
8000224C: jal   osSendMesg
80002250: lw    $a1, 0x0004 ($v0)
80002254: lui   $v0, 0x800E
80002258: lw    $v0, 0xC4A4 ($v0)
8000225C: or    $a2, $zero, $zero
80002260: beql  $v0, $zero, 0x80002278
80002264: lw    $ra, 0x0014 ($sp)
80002268: lw    $a0, 0x0000 ($v0)
8000226C: jal   osSendMesg
80002270: lw    $a1, 0x0004 ($v0)
80002274: lw    $ra, 0x0014 ($sp)
80002278: addiu $sp, $sp, 0x0018
8000227C: jr    $ra
80002280: nop

80002284: lui   $v0, 0x800E
80002288: lw    $v0, 0xC4B0 ($v0)
8000228C: addiu $sp, $sp, 0xFFE8
80002290: sw    $ra, 0x0014 ($sp)
80002294: lw    $a0, 0x0040 ($v0)
80002298: or    $a2, $zero, $zero
8000229C: beq   $a0, $zero, 0x800022AC
800022A0: nop
800022A4: jal   osSendMesg
800022A8: lw    $a1, 0x0044 ($v0)
800022AC: jal   0x8000365C
800022B0: addiu $a0, $zero, 0x0002
800022B4: lui   $t7, 0x800E
800022B8: lw    $t7, 0xC4B0 ($t7)
800022BC: addiu $t6, $zero, 0x0004
800022C0: lui   $at, 0x800E
800022C4: sw    $t6, 0x0048 ($t7)
800022C8: lw    $ra, 0x0014 ($sp)
800022CC: sw    $zero, 0xC4B0 ($at)
800022D0: addiu $sp, $sp, 0x0018
800022D4: jr    $ra
800022D8: nop

800022DC: lui   $v0, 0x800E
800022E0: addiu $v0, $v0, 0xC4A8
800022E4: lw    $a3, 0x0000 ($v0)
800022E8: addiu $sp, $sp, 0xFFE0
800022EC: sw    $ra, 0x0014 ($sp)
800022F0: sw    $zero, 0x0000 ($v0)
800022F4: lw    $t6, 0x0048 ($a3)
800022F8: addiu $at, $zero, 0x0002
800022FC: or    $a0, $a3, $zero
80002300: bnel  $t6, $at, 0x80002344
80002304: lw    $t9, 0x0000 ($a3)
80002308: jal   0x800CDD60
8000230C: sw    $a3, 0x001C ($sp)
80002310: bnez  $v0, 0x80002328
80002314: lw    $a3, 0x001C ($sp)
80002318: addiu $t7, $zero, 0x0003
8000231C: sw    $t7, 0x0048 ($a3)
80002320: jal   0x8000365C
80002324: addiu $a0, $zero, 0x0001
80002328: jal   0x800036EC
8000232C: nop
80002330: jal   0x8000067C
80002334: addiu $a0, $zero, 0x0002
80002338: beq   $zero, $zero, 0x800023D8
8000233C: lw    $ra, 0x0014 ($sp)
80002340: lw    $t9, 0x0000 ($a3)
80002344: addiu $t8, $zero, 0x0003
80002348: addiu $at, $zero, 0x0002
8000234C: bne   $t9, $at, 0x800023CC
80002350: sw    $t8, 0x0048 ($a3)
80002354: jal   0x800036EC
80002358: sw    $a3, 0x001C ($sp)
8000235C: lui   $v0, 0x800E
80002360: lw    $v0, 0xC4B0 ($v0)
80002364: lw    $a3, 0x001C ($sp)
80002368: beq   $v0, $zero, 0x800023A4
8000236C: nop
80002370: lw    $v1, 0x0048 ($v0)
80002374: addiu $at, $zero, 0x0003
80002378: beq   $v1, $at, 0x800023A4
8000237C: addiu $at, $zero, 0x0002
80002380: beq   $v1, $at, 0x80002394
80002384: or    $a0, $zero, $zero
80002388: jal   0x8000365C
8000238C: sw    $a3, 0x001C ($sp)
80002390: lw    $a3, 0x001C ($sp)
80002394: addiu $a0, $zero, 0x0001
80002398: jal   0x8000067C
8000239C: sw    $a3, 0x001C ($sp)
800023A0: lw    $a3, 0x001C ($sp)
800023A4: lui   $at, 0x800E
800023A8: sw    $zero, 0xC4AC ($at)
800023AC: lw    $a0, 0x0040 ($a3)
800023B0: or    $a2, $zero, $zero
800023B4: beql  $a0, $zero, 0x800023D8
800023B8: lw    $ra, 0x0014 ($sp)
800023BC: jal   osSendMesg
800023C0: lw    $a1, 0x0044 ($a3)
800023C4: beq   $zero, $zero, 0x800023D8
800023C8: lw    $ra, 0x0014 ($sp)
800023CC: jal   0x8000365C
800023D0: addiu $a0, $zero, 0x0001
800023D4: lw    $ra, 0x0014 ($sp)
800023D8: addiu $sp, $sp, 0x0020
800023DC: jr    $ra
800023E0: nop

thread3_main:
    800023E4: addiu $sp, $sp, 0xFFA0
    800023E8: lui   $v1, 0x8015
    800023EC: addiu $v1, $v1, 0x02A8
    800023F0: lui   $t6, 0x8032
    800023F4: lui   $t7, 0x8034
    800023F8: lui   $t8, 0x8037
    800023FC: addiu $t6, $t6, 0xF780
    80002400: addiu $t7, $t7, 0x4F80
    80002404: addiu $t8, $t8, 0xA780
    80002408: sw    $t6, 0x0000 ($v1)
    8000240C: sw    $t7, 0x0004 ($v1)
    80002410: sw    $t8, 0x0008 ($v1)
    80002414: lui   $v1, 0x8037
    80002418: lui   $v0, 0x8034
    8000241C: sw    $ra, 0x0034 ($sp)
    80002420: sw    $s5, 0x0030 ($sp)
    80002424: sw    $s4, 0x002C ($sp)
    80002428: sw    $s3, 0x0028 ($sp)
    8000242C: sw    $s2, 0x0024 ($sp)
    80002430: sw    $s1, 0x0020 ($sp)
    80002434: sw    $s0, 0x001C ($sp)
    80002438: sw    $a0, 0x0060 ($sp)
    8000243C: addiu $v0, $v0, 0x4F80
    80002440: addiu $v1, $v1, 0xA780
    80002444: addiu $t2, $zero, 0x0000
    80002448: addiu $t3, $zero, 0x0000
    8000244C: addiu $t4, $zero, 0x0000
    80002450: addiu $t5, $zero, 0x0000
    80002454: addiu $t6, $zero, 0x0000
    80002458: addiu $t7, $zero, 0x0000
    8000245C: addiu $v0, $v0, 0x0020
    80002460: addiu $t0, $zero, 0x0000
    80002464: addiu $t1, $zero, 0x0000
    80002468: sw    $t7, 0xFFFC ($v0)
    8000246C: sw    $t6, 0xFFF8 ($v0)
    80002470: sw    $t5, 0xFFF4 ($v0)
    80002474: sw    $t4, 0xFFF0 ($v0)
    80002478: sw    $t3, 0xFFEC ($v0)
    8000247C: sw    $t2, 0xFFE8 ($v0)
    80002480: sw    $t1, 0xFFE4 ($v0)
    80002484: bne   $v0, $v1, 0x80002444
    80002488: sw    $t0, 0xFFE0 ($v0)
    8000248C: jal   SetupMessageQueues
    80002490: nop
    80002494: jal   0x80001264
    80002498: nop
    8000249C: lui   $s0, 0x8016
    800024A0: lui   $t9, 0x8016
    800024A4: addiu $s0, $s0, 0xAB80
    800024A8: addiu $t9, $t9, 0xCD30
    800024AC: lui   $a2, 0x8000
    800024B0: addiu $t8, $zero, 0x0014
    800024B4: sw    $t8, 0x0014 ($sp)
    800024B8: addiu $a2, $a2, 0x28E4
    800024BC: sw    $t9, 0x0010 ($sp)
    800024C0: or    $a0, $s0, $zero
    800024C4: addiu $a1, $zero, 0x0004
    800024C8: jal   CreateThread
    800024CC: or    $a3, $zero, $zero
    800024D0: jal   osStartThread
    800024D4: or    $a0, $s0, $zero
    800024D8: lui   $s0, 0x8016
    800024DC: lui   $t0, 0x8016
    800024E0: addiu $s0, $s0, 0x89D0
    800024E4: addiu $t0, $t0, 0xAB80
    800024E8: lui   $a2, 0x8000
    800024EC: addiu $t1, $zero, 0x000A
    800024F0: sw    $t1, 0x0014 ($sp)
    800024F4: addiu $a2, $a2, 0x277C
    800024F8: sw    $t0, 0x0010 ($sp)
    800024FC: or    $a0, $s0, $zero
    80002500: addiu $a1, $zero, 0x0005
    80002504: jal   CreateThread
    80002508: or    $a3, $zero, $zero
    8000250C: jal   osStartThread
    80002510: or    $a0, $s0, $zero
    80002514: lui   $s0, 0x8015
    80002518: addiu $s0, $s0, 0xEFB8
    8000251C: addiu $s5, $zero, 0x0067
    80002520: addiu $s4, $zero, 0x0066
    80002524: addiu $s3, $zero, 0x0065
    80002528: addiu $s2, $zero, 0x0064
    8000252C: addiu $s1, $sp, 0x0054
    80002530: or    $a0, $s0, $zero
    80002534: or    $a1, $s1, $zero
    80002538: jal   osRecvMesg
    8000253C: addiu $a2, $zero, 0x0001
    80002540: lw    $v0, 0x0054 ($sp)
    80002544: beq   $v0, $s2, 0x8000257C
    80002548: nop
    8000254C: beq   $v0, $s3, 0x8000258C
    80002550: nop
    80002554: beq   $v0, $s4, 0x8000256C
    80002558: nop
    8000255C: beq   $v0, $s5, 0x8000259C
    80002560: nop
    80002564: beq   $zero, $zero, 0x80002534
    80002568: or    $a0, $s0, $zero
    8000256C: jal   0x80002168
    80002570: nop
    80002574: beq   $zero, $zero, 0x80002534
    80002578: or    $a0, $s0, $zero
    8000257C: jal   0x800022DC
    80002580: nop
    80002584: beq   $zero, $zero, 0x80002534
    80002588: or    $a0, $s0, $zero
    8000258C: jal   0x80002284
    80002590: nop
    80002594: beq   $zero, $zero, 0x80002534
    80002598: or    $a0, $s0, $zero
    8000259C: jal   0x80002118
    800025A0: nop
    800025A4: beq   $zero, $zero, 0x80002534
    800025A8: or    $a0, $s0, $zero
    800025AC: nop
    800025B0: lw    $ra, 0x0034 ($sp)
    800025B4: lw    $s0, 0x001C ($sp)
    800025B8: lw    $s1, 0x0020 ($sp)
    800025BC: lw    $s2, 0x0024 ($sp)
    800025C0: lw    $s3, 0x0028 ($sp)
    800025C4: lw    $s4, 0x002C ($sp)
    800025C8: lw    $s5, 0x0030 ($sp)
    800025CC: jr    $ra
    800025D0: addiu $sp, $sp, 0x0060

800025D4: addiu $sp, $sp, 0xFFE8
800025D8: sw    $ra, 0x0014 ($sp)
800025DC: jal   0x80091B78
800025E0: nop
800025E4: lui   $at, 0x800E
800025E8: jal   0x802A4D18
800025EC: sw    $zero, 0xC52C ($at)
800025F0: lw    $ra, 0x0014 ($sp)
800025F4: addiu $sp, $sp, 0x0018
800025F8: jr    $ra
800025FC: nop

80002600: addiu $sp, $sp, 0xFFE8
80002604: sw    $ra, 0x0014 ($sp)
80002608: jal   0x80091B78
8000260C: nop
80002610: lui   $at, 0x800E
80002614: jal   0x802A4D18
80002618: sw    $zero, 0xC52C ($at)
8000261C: lw    $ra, 0x0014 ($sp)
80002620: addiu $sp, $sp, 0x0018
80002624: jr    $ra
80002628: nop

8000262C: addiu $sp, $sp, 0xFFE8
80002630: sw    $ra, 0x0014 ($sp)
80002634: jal   0x80091B78
80002638: nop
8000263C: lui   $at, 0x800E
80002640: jal   0x802A4D18
80002644: sw    $zero, 0xC52C ($at)
80002648: lw    $ra, 0x0014 ($sp)
8000264C: addiu $sp, $sp, 0x0018
80002650: jr    $ra
80002654: nop

80002658: addiu $sp, $sp, 0xFFE8
8000265C: sw    $ra, 0x0014 ($sp)
80002660: jal   0x80091B78
80002664: nop
80002668: lui   $at, 0x800E
8000266C: jal   0x802A4D18
80002670: sw    $zero, 0xC52C ($at)
80002674: lw    $ra, 0x0014 ($sp)
80002678: addiu $sp, $sp, 0x0018
8000267C: jr    $ra
80002680: nop

80002684: lui   $t6, 0x800E
80002688: lw    $t6, 0xC50C ($t6)
8000268C: addiu $sp, $sp, 0xFFE8
80002690: sw    $ra, 0x0014 ($sp)
80002694: sltiu $at, $t6, 0x000A
80002698: beq   $at, $zero, 0x8000276C
8000269C: sll   $t6, $t6, 0x2
800026A0: lui   $at, 0x800F
800026A4: addu  $at, $at, $t6
800026A8: lw    $t6, 0xB648 ($at)
800026AC: jr    $t6
800026B0: nop
800026B4: jal   0x80002658
800026B8: nop
800026BC: addiu $t7, $zero, 0x00FF
800026C0: lui   $at, 0x800E
800026C4: beq   $zero, $zero, 0x8000276C
800026C8: sh    $t7, 0xC5A4 ($at)
800026CC: jal   0x800025D4
800026D0: nop
800026D4: addiu $t8, $zero, 0x00FF
800026D8: lui   $at, 0x800E
800026DC: beq   $zero, $zero, 0x8000276C
800026E0: sh    $t8, 0xC5A4 ($at)
800026E4: jal   0x80002600
800026E8: nop
800026EC: addiu $t9, $zero, 0x00FF
800026F0: lui   $at, 0x800E
800026F4: beq   $zero, $zero, 0x8000276C
800026F8: sh    $t9, 0xC5A4 ($at)
800026FC: jal   0x8000262C
80002700: nop
80002704: addiu $t0, $zero, 0x00FF
80002708: lui   $at, 0x800E
8000270C: beq   $zero, $zero, 0x8000276C
80002710: sh    $t0, 0xC5A4 ($at)
80002714: jal   0x800010CC
80002718: nop
8000271C: jal   0x80002A18
80002720: nop
80002724: beq   $zero, $zero, 0x80002770
80002728: lw    $ra, 0x0014 ($sp)
8000272C: addiu $t1, $zero, 0x00FF
80002730: lui   $at, 0x800E
80002734: jal   0x8000105C
80002738: sh    $t1, 0xC5A4 ($at)
8000273C: jal   0x80281968
80002740: nop
80002744: beq   $zero, $zero, 0x80002770
80002748: lw    $ra, 0x0014 ($sp)
8000274C: addiu $t2, $zero, 0x00FF
80002750: lui   $at, 0x800E
80002754: jal   0x800010CC
80002758: sh    $t2, 0xC5A4 ($at)
8000275C: jal   0x8000105C
80002760: nop
80002764: jal   0x80280420
80002768: nop
8000276C: lw    $ra, 0x0014 ($sp)
80002770: addiu $sp, $sp, 0x0018
80002774: jr    $ra
80002778: nop

thread5_main:
    8000277C: addiu $sp, $sp, 0xFFE0
    80002780: sw    $a0, 0x0020 ($sp)
    80002784: sw    $ra, 0x001C ($sp)
    80002788: lui   $a0, 0x8015
    8000278C: lui   $a1, 0x8015
    80002790: sw    $s1, 0x0018 ($sp)
    80002794: sw    $s0, 0x0014 ($sp)
    80002798: addiu $a1, $a1, 0xF00C
    8000279C: addiu $a0, $a0, 0xEF88
    800027A0: jal   osCreateMesgQueue
    800027A4: addiu $a2, $zero, 0x0001
    800027A8: lui   $s0, 0x8015
    800027AC: addiu $s0, $s0, 0xEF70
    800027B0: lui   $a1, 0x8015
    800027B4: addiu $a1, $a1, 0xF008
    800027B8: or    $a0, $s0, $zero
    800027BC: jal   osCreateMesgQueue
    800027C0: addiu $a2, $zero, 0x0001
    800027C4: jal   _InitControllers
    800027C8: nop
    800027CC: lui   $t6, 0x8015
    800027D0: lhu   $t6, 0x011C ($t6)
    800027D4: bnez  $t6, 0x800027E4
    800027D8: nop
    800027DC: jal   0x80003010
    800027E0: nop
    800027E4: lui   $a1, 0x8015
    800027E8: addiu $a1, $a1, 0xEF48
    800027EC: addiu $a0, $zero, 0x0002
    800027F0: or    $a2, $s0, $zero
    800027F4: jal   0x800020D8
    800027F8: addiu $a3, $zero, 0x0001
    800027FC: lui   $v0, 0x800E
    80002800: lw    $v0, 0xC600 ($v0)
    80002804: lui   $at, 0x8016
    80002808: sw    $v0, 0xF8B8 ($at)
    8000280C: lui   $at, 0x8016
    80002810: addiu $t7, $v0, 0x0002
    80002814: sw    $t7, 0xF8BC ($at)
    80002818: lui   $at, 0x8016
    8000281C: addiu $t8, $v0, 0x000B
    80002820: sw    $t8, 0xF8C0 ($at)
    80002824: lui   $at, 0x8016
    80002828: addiu $t9, $v0, 0x0017
    8000282C: sw    $t9, 0xF8C4 ($at)
    80002830: lui   $at, 0x8016
    80002834: addiu $t0, $v0, 0x0019
    80002838: sw    $t0, 0xF8C8 ($at)
    8000283C: lui   $at, 0x8016
    80002840: addiu $t1, $v0, 0x001C
    80002844: jal   0x80000E00
    80002848: sw    $t1, 0xF8CC ($at)
    8000284C: jal   0x80000A28
    80002850: nop
    80002854: jal   0x800C5CB8
    80002858: nop
    8000285C: lui   $s1, 0x800E
    80002860: lui   $s0, 0x800E
    80002864: addiu $s0, $s0, 0xC50C
    80002868: addiu $s1, $s1, 0xC524
    8000286C: jal   0x800CB2C4
    80002870: nop
    80002874: lw    $v0, 0x0000 ($s1)
    80002878: lw    $t2, 0x0000 ($s0)
    8000287C: beq   $t2, $v0, 0x8000288C
    80002880: nop
    80002884: jal   0x80002684
    80002888: sw    $v0, 0x0000 ($s0)
    8000288C: jal   0x80003550
    80002890: or    $a0, $zero, $zero
    80002894: jal   0x80000EB4
    80002898: nop
    8000289C: jal   0x80000A28
    800028A0: nop
    800028A4: jal   0x80001ECC
    800028A8: nop
    800028AC: jal   0x80000CE8
    800028B0: nop
    800028B4: jal   0x80000F34
    800028B8: nop
    800028BC: beq   $zero, $zero, 0x8000286C
    800028C0: nop
    800028C4: nop
    800028C8: nop
    800028CC: nop
    800028D0: lw    $ra, 0x001C ($sp)
    800028D4: lw    $s0, 0x0014 ($sp)
    800028D8: lw    $s1, 0x0018 ($sp)
    800028DC: jr    $ra
    800028E0: addiu $sp, $sp, 0x0020

thread4_main:
    800028E4: addiu $sp, $sp, 0xFFC8
    800028E8: sw    $ra, 0x001C ($sp)
    800028EC: sw    $s1, 0x0018 ($sp)
    800028F0: sw    $s0, 0x0014 ($sp)
    800028F4: jal   0x800BC0DC
    800028F8: sw    $a0, 0x0038 ($sp)
    800028FC: lui   $s1, 0x8015
    80002900: addiu $s1, $s1, 0xEFE8
    80002904: lui   $a1, 0x8015
    80002908: addiu $a1, $a1, 0xF000
    8000290C: or    $a0, $s1, $zero
    80002910: jal   osCreateMesgQueue
    80002914: addiu $a2, $zero, 0x0001
    80002918: lui   $a1, 0x8015
    8000291C: addiu $a1, $a1, 0xEF50
    80002920: addiu $a0, $zero, 0x0001
    80002924: or    $a2, $s1, $zero
    80002928: jal   0x800020D8
    8000292C: addiu $a3, $zero, 0x0200
    80002930: addiu $s0, $sp, 0x0028
    80002934: or    $a0, $s1, $zero
    80002938: or    $a1, $s0, $zero
    8000293C: jal   osRecvMesg
    80002940: addiu $a2, $zero, 0x0001
    80002944: jal   0x800035E0
    80002948: nop
    8000294C: jal   0x800CB330
    80002950: nop
    80002954: beq   $v0, $zero, 0x80002964
    80002958: or    $a0, $v0, $zero
    8000295C: jal   0x80000C0C
    80002960: nop
    80002964: jal   0x800035E0
    80002968: nop
    8000296C: beq   $zero, $zero, 0x80002938
    80002970: or    $a0, $s1, $zero
    80002974: nop
    80002978: nop
    8000297C: nop
    80002980: nop
    80002984: nop
    80002988: nop
    8000298C: nop
    80002990: lw    $ra, 0x001C ($sp)
    80002994: lw    $s0, 0x0014 ($sp)
    80002998: lw    $s1, 0x0018 ($sp)
    8000299C: jr    $ra
    800029A0: addiu $sp, $sp, 0x0038

800029A4: nop
800029A8: nop
800029AC: nop
800029B0: lui   $v0, 0x800E
800029B4: lhu   $v0, 0xC5A8 ($v0)
800029B8: addiu $sp, $sp, 0xFFE8
800029BC: sw    $ra, 0x0014 ($sp)
800029C0: beq   $v0, $zero, 0x800029E0
800029C4: addiu $at, $zero, 0x0001
800029C8: beq   $v0, $at, 0x800029F0
800029CC: addiu $at, $zero, 0x0002
800029D0: beq   $v0, $at, 0x80002A00
800029D4: nop
800029D8: beq   $zero, $zero, 0x80002A0C
800029DC: lw    $ra, 0x0014 ($sp)
800029E0: jal   0x800C8F44
800029E4: addiu $a0, $zero, 0x007F
800029E8: beq   $zero, $zero, 0x80002A0C
800029EC: lw    $ra, 0x0014 ($sp)
800029F0: jal   0x800C8F44
800029F4: addiu $a0, $zero, 0x004B
800029F8: beq   $zero, $zero, 0x80002A0C
800029FC: lw    $ra, 0x0014 ($sp)
80002A00: jal   0x800C8F44
80002A04: or    $a0, $zero, $zero
80002A08: lw    $ra, 0x0014 ($sp)
80002A0C: addiu $sp, $sp, 0x0018
80002A10: jr    $ra
80002A14: nop

80002A18: lui   $t6, 0x8019
80002A1C: lb    $t6, 0xEDF3 ($t6)
80002A20: lui   $t7, 0x800E
80002A24: lw    $t7, 0xC50C ($t7)
80002A28: lui   $at, 0x800E
80002A2C: sw    $t6, 0xC538 ($at)
80002A30: addiu $sp, $sp, 0xFFE8
80002A34: addiu $at, $zero, 0x0004
80002A38: beq   $t7, $at, 0x80002A48
80002A3C: sw    $ra, 0x0014 ($sp)
80002A40: lui   $at, 0x800E
80002A44: sw    $zero, 0xC604 ($at)
80002A48: lui   $t8, 0x800E
80002A4C: lw    $t8, 0xC604 ($t8)
80002A50: lui   $v0, 0x800E
80002A54: lui   $t9, 0x800E
80002A58: beq   $t8, $zero, 0x80002A74
80002A5C: addiu $v0, $v0, 0xC5A4
80002A60: lui   $at, 0xBF80
80002A64: mtc1  $at, F4
80002A68: lui   $at, 0x8016
80002A6C: beq   $zero, $zero, 0x80002A84
80002A70: swc1  F4, 0xF784 ($at)
80002A74: lui   $at, 0x3F80
80002A78: mtc1  $at, F6
80002A7C: lui   $at, 0x8016
80002A80: swc1  F6, 0xF784 ($at)
80002A84: lw    $t9, 0xC53C ($t9)
80002A88: lui   $t6, 0x800E
80002A8C: lui   $a0, 0x800E
80002A90: bnez  $t9, 0x80002AC4
80002A94: lui   $t0, 0x8019
80002A98: lui   $t2, 0x8019
80002A9C: lb    $t2, 0xEE0B ($t2)
80002AA0: lb    $t0, 0xEE09 ($t0)
80002AA4: lui   $t5, 0x800F
80002AA8: sll   $t3, $t2, 0x1
80002AAC: sll   $t1, $t0, 0x3
80002AB0: addu  $t4, $t1, $t3
80002AB4: addu  $t5, $t5, $t4
80002AB8: lh    $t5, 0x2BB4 ($t5)
80002ABC: lui   $at, 0x800E
80002AC0: sh    $t5, 0xC5A0 ($at)
80002AC4: lw    $t6, 0xC530 ($t6)
80002AC8: lui   $at, 0x800E
80002ACC: lh    $a0, 0xC5A0 ($a0)
80002AD0: sw    $t6, 0xC52C ($at)
80002AD4: lh    $t7, 0x0000 ($v0)
80002AD8: beq   $t7, $a0, 0x80002B18
80002ADC: lui   $at, 0x8015
80002AE0: sw    $zero, 0x0120 ($at)
80002AE4: sh    $a0, 0x0000 ($v0)
80002AE8: lui   $t8, 0x8016
80002AEC: lw    $t8, 0xF734 ($t8)
80002AF0: lui   $at, 0x8016
80002AF4: jal   LoadLevel
80002AF8: sw    $t8, 0xF728 ($at)
80002AFC: jal   0x80295D88
80002B00: nop
80002B04: lui   $t9, 0x8016
80002B08: lw    $t9, 0xF728 ($t9)
80002B0C: lui   $at, 0x8016
80002B10: beq   $zero, $zero, 0x80002B28
80002B14: sw    $t9, 0xF730 ($at)
80002B18: lui   $t0, 0x8016
80002B1C: lw    $t0, 0xF730 ($t0)
80002B20: lui   $at, 0x8016
80002B24: sw    $t0, 0xF728 ($at)
80002B28: jal   0x802969F8
80002B2C: nop
80002B30: jal   0x80005310
80002B34: nop
80002B38: jal   0x8003D080
80002B3C: nop
80002B40: jal   0x8006E9C0
80002B44: nop
80002B48: lui   $at, 0x800E
80002B4C: sw    $zero, 0xC510 ($at)
80002B50: lui   $at, 0x8016
80002B54: sh    $zero, 0xF6FE ($at)
80002B58: lui   $at, 0x800E
80002B5C: sh    $zero, 0xC5B8 ($at)
80002B60: lui   $at, 0x8015
80002B64: sh    $zero, 0x2308 ($at)
80002B68: lui   $at, 0x802C
80002B6C: addiu $t2, $zero, 0xFFFF
80002B70: sw    $t2, 0xA038 ($at)
80002B74: lui   $at, 0x802C
80002B78: jal   0x802A74BC
80002B7C: sh    $zero, 0xA048 ($at)
80002B80: jal   0x802A4D18
80002B84: nop
80002B88: jal   0x80091FA4
80002B8C: nop
80002B90: jal   0x8029E158
80002B94: nop
80002B98: lui   $t1, 0x800E
80002B9C: lw    $t1, 0xC53C ($t1)
80002BA0: addiu $at, $zero, 0x0003
80002BA4: lui   $v0, 0x8016
80002BA8: beq   $t1, $at, 0x80002CC4
80002BAC: lui   $a1, 0x800E
80002BB0: lw    $v0, 0x4490 ($v0)
80002BB4: lui   $v1, 0x8016
80002BB8: addiu $v1, $v1, 0xF8D0
80002BBC: lh    $t3, 0x0002 ($v0)
80002BC0: lui   $a0, 0x800E
80002BC4: addiu $at, $zero, 0x000A
80002BC8: addiu $t4, $t3, 0xFFF1
80002BCC: mtc1  $t4, F8
80002BD0: lui   $t6, 0x800E
80002BD4: cvt.s.w F10, F8
80002BD8: swc1  F10, 0x0004 ($v1)
80002BDC: lh    $t5, 0x0004 ($v0)
80002BE0: mtc1  $t5, F16
80002BE4: nop
80002BE8: cvt.s.w F18, F16
80002BEC: swc1  F18, 0x0008 ($v1)
80002BF0: lh    $a0, 0xC5A0 ($a0)
80002BF4: bnel  $a0, $at, 0x80002C54
80002BF8: addiu $at, $zero, 0x000E
80002BFC: lw    $t6, 0xC604 ($t6)
80002C00: beql  $t6, $zero, 0x80002C30
80002C04: lh    $t8, 0x0000 ($v0)
80002C08: lh    $t7, 0x0000 ($v0)
80002C0C: lui   $at, 0x430A
80002C10: mtc1  $at, F8
80002C14: mtc1  $t7, F4
80002C18: nop
80002C1C: cvt.s.w F6, F4
80002C20: add.s F10, F6, F8
80002C24: beq   $zero, $zero, 0x80002CC4
80002C28: swc1  F10, 0x0000 ($v1)
80002C2C: lh    $t8, 0x0000 ($v0)
80002C30: lui   $at, 0x430A
80002C34: mtc1  $at, F4
80002C38: mtc1  $t8, F16
80002C3C: nop
80002C40: cvt.s.w F18, F16
80002C44: sub.s F6, F18, F4
80002C48: beq   $zero, $zero, 0x80002CC4
80002C4C: swc1  F6, 0x0000 ($v1)
80002C50: addiu $at, $zero, 0x000E
80002C54: bne   $a0, $at, 0x80002CB0
80002C58: lui   $t9, 0x800E
80002C5C: lw    $t9, 0xC604 ($t9)
80002C60: beql  $t9, $zero, 0x80002C90
80002C64: lh    $t2, 0x0000 ($v0)
80002C68: lh    $t0, 0x0000 ($v0)
80002C6C: lui   $at, 0x4140
80002C70: mtc1  $at, F16
80002C74: mtc1  $t0, F8
80002C78: nop
80002C7C: cvt.s.w F10, F8
80002C80: add.s F18, F10, F16
80002C84: beq   $zero, $zero, 0x80002CC4
80002C88: swc1  F18, 0x0000 ($v1)
80002C8C: lh    $t2, 0x0000 ($v0)
80002C90: lui   $at, 0x4140
80002C94: mtc1  $at, F8
80002C98: mtc1  $t2, F4
80002C9C: nop
80002CA0: cvt.s.w F6, F4
80002CA4: sub.s F10, F6, F8
80002CA8: beq   $zero, $zero, 0x80002CC4
80002CAC: swc1  F10, 0x0000 ($v1)
80002CB0: lh    $t1, 0x0000 ($v0)
80002CB4: mtc1  $t1, F16
80002CB8: nop
80002CBC: cvt.s.w F18, F16
80002CC0: swc1  F18, 0x0000 ($v1)
80002CC4: lui   $t3, 0x800E
80002CC8: lhu   $t3, 0xC51C ($t3)
80002CCC: lui   $a0, 0x800E
80002CD0: bnez  $t3, 0x80002D04
80002CD4: nop
80002CD8: lw    $a0, 0xC538 ($a0)
80002CDC: lh    $a1, 0xC5A0 ($a1)
80002CE0: addiu $a0, $a0, 0xFFFF
80002CE4: addiu $a1, $a1, 0x0004
80002CE8: andi  $t5, $a1, 0x00FF
80002CEC: andi  $t4, $a0, 0x00FF
80002CF0: or    $a0, $t4, $zero
80002CF4: jal   0x800CA008
80002CF8: or    $a1, $t5, $zero
80002CFC: jal   0x800CB2C4
80002D00: nop
80002D04: lui   $v0, 0x800E
80002D08: lw    $v0, 0xC4BC ($v0)
80002D0C: sh    $zero, 0x0000 ($v0)
80002D10: sh    $zero, 0x0002 ($v0)
80002D14: sh    $zero, 0x0006 ($v0)
80002D18: sh    $zero, 0x0008 ($v0)
80002D1C: sh    $zero, 0x0004 ($v0)
80002D20: sh    $zero, 0x0010 ($v0)
80002D24: sh    $zero, 0x0012 ($v0)
80002D28: sh    $zero, 0x0016 ($v0)
80002D2C: sh    $zero, 0x0018 ($v0)
80002D30: sh    $zero, 0x0014 ($v0)
80002D34: sh    $zero, 0x0020 ($v0)
80002D38: sh    $zero, 0x0022 ($v0)
80002D3C: sh    $zero, 0x0026 ($v0)
80002D40: sh    $zero, 0x0028 ($v0)
80002D44: sh    $zero, 0x0024 ($v0)
80002D48: sh    $zero, 0x0040 ($v0)
80002D4C: sh    $zero, 0x0042 ($v0)
80002D50: sh    $zero, 0x0046 ($v0)
80002D54: sh    $zero, 0x0048 ($v0)
80002D58: sh    $zero, 0x0044 ($v0)
80002D5C: sh    $zero, 0x0050 ($v0)
80002D60: sh    $zero, 0x0052 ($v0)
80002D64: sh    $zero, 0x0056 ($v0)
80002D68: sh    $zero, 0x0058 ($v0)
80002D6C: sh    $zero, 0x0054 ($v0)
80002D70: sh    $zero, 0x0064 ($v0)
80002D74: sh    $zero, 0x0068 ($v0)
80002D78: sh    $zero, 0x0066 ($v0)
80002D7C: sh    $zero, 0x0062 ($v0)
80002D80: sh    $zero, 0x0060 ($v0)
80002D84: sh    $zero, 0x0030 ($v0)
80002D88: sh    $zero, 0x0032 ($v0)
80002D8C: sh    $zero, 0x0036 ($v0)
80002D90: sh    $zero, 0x0038 ($v0)
80002D94: sh    $zero, 0x0034 ($v0)
80002D98: lw    $ra, 0x0014 ($sp)
80002D9C: addiu $sp, $sp, 0x0018
80002DA0: addiu $v0, $v0, 0x0060
80002DA4: jr    $ra
80002DA8: nop

80002DAC: lui   $t6, 0x800E
80002DB0: lhu   $t6, 0xC5A0 ($t6)
80002DB4: addiu $sp, $sp, 0xFFE8
80002DB8: sw    $ra, 0x0014 ($sp)
80002DBC: sltiu $at, $t6, 0x0013
80002DC0: beq   $at, $zero, 0x80003000
80002DC4: sll   $t6, $t6, 0x2
80002DC8: lui   $at, 0x800F
80002DCC: addu  $at, $at, $t6
80002DD0: lw    $t6, 0xB670 ($at)
80002DD4: jr    $t6
80002DD8: nop
80002DDC: lui   $a0, 0x8016
80002DE0: addiu $a0, $a0, 0xF748
80002DE4: lui   $a1, 0xC35F
80002DE8: lui   $a2, 0x42BC
80002DEC: jal   loadGiantEgg
80002DF0: lui   $a3, 0xC31B
80002DF4: lui   $a0, 0x8016
80002DF8: lui   $a1, 0x802C
80002DFC: lui   $a2, 0x5103
80002E00: ori   $a2, $a2, 0x700B
80002E04: addiu $a1, $a1, 0x91C8
80002E08: jal   0x800C9D80
80002E0C: addiu $a0, $a0, 0xF748
80002E10: beq   $zero, $zero, 0x80003004
80002E14: lw    $ra, 0x0014 ($sp)
80002E18: lui   $a0, 0x8016
80002E1C: lui   $a3, 0xC3C4
80002E20: ori   $a3, $a3, 0x8000
80002E24: addiu $a0, $a0, 0xF748
80002E28: lui   $a1, 0x4331
80002E2C: jal   loadGiantEgg
80002E30: lui   $a2, 0x42AE
80002E34: lui   $a0, 0x8016
80002E38: lui   $a1, 0x802C
80002E3C: lui   $a2, 0x5103
80002E40: ori   $a2, $a2, 0x700B
80002E44: addiu $a1, $a1, 0x91C8
80002E48: jal   0x800C9D80
80002E4C: addiu $a0, $a0, 0xF748
80002E50: beq   $zero, $zero, 0x80003004
80002E54: lw    $ra, 0x0014 ($sp)
80002E58: lui   $a0, 0x8016
80002E5C: addiu $a0, $a0, 0xF748
80002E60: lui   $a1, 0x42AA
80002E64: lui   $a2, 0x41A8
80002E68: jal   loadGiantEgg
80002E6C: lui   $a3, 0xC35B
80002E70: lui   $a0, 0x8016
80002E74: lui   $a1, 0x802C
80002E78: lui   $a2, 0x5103
80002E7C: ori   $a2, $a2, 0x700B
80002E80: addiu $a1, $a1, 0x91C8
80002E84: jal   0x800C9D80
80002E88: addiu $a0, $a0, 0xF748
80002E8C: beq   $zero, $zero, 0x80003004
80002E90: lw    $ra, 0x0014 ($sp)
80002E94: lui   $a0, 0x8016
80002E98: lui   $a3, 0xC454
80002E9C: ori   $a3, $a3, 0x8000
80002EA0: addiu $a0, $a0, 0xF748
80002EA4: lui   $a1, 0x4395
80002EA8: jal   loadGiantEgg
80002EAC: lui   $a2, 0x434A
80002EB0: lui   $a0, 0x8016
80002EB4: lui   $a1, 0x802C
80002EB8: lui   $a2, 0x5103
80002EBC: ori   $a2, $a2, 0x700B
80002EC0: addiu $a1, $a1, 0x91C8
80002EC4: jal   0x800C9D80
80002EC8: addiu $a0, $a0, 0xF748
80002ECC: lui   $a0, 0x8016
80002ED0: lui   $a3, 0xC517
80002ED4: ori   $a3, $a3, 0xE000
80002ED8: addiu $a0, $a0, 0xF758
80002EDC: lui   $a1, 0xC4C8
80002EE0: jal   loadGiantEgg
80002EE4: lui   $a2, 0x434A
80002EE8: lui   $a0, 0x8016
80002EEC: lui   $a1, 0x802C
80002EF0: lui   $a2, 0x5103
80002EF4: ori   $a2, $a2, 0x700B
80002EF8: addiu $a1, $a1, 0x91C8
80002EFC: jal   0x800C9D80
80002F00: addiu $a0, $a0, 0xF758
80002F04: lui   $a0, 0x8016
80002F08: lui   $a1, 0xC529
80002F0C: lui   $a3, 0x44DC
80002F10: ori   $a3, $a3, 0x4000
80002F14: ori   $a1, $a1, 0x4000
80002F18: addiu $a0, $a0, 0xF768
80002F1C: jal   loadGiantEgg
80002F20: lui   $a2, 0x434A
80002F24: lui   $a0, 0x8016
80002F28: lui   $a1, 0x802C
80002F2C: lui   $a2, 0x5103
80002F30: ori   $a2, $a2, 0x700B
80002F34: addiu $a1, $a1, 0x91C8
80002F38: jal   0x800C9D80
80002F3C: addiu $a0, $a0, 0xF768
80002F40: lui   $a0, 0x8016
80002F44: lui   $a1, 0xC441
80002F48: lui   $a3, 0x44F1
80002F4C: ori   $a3, $a3, 0x4000
80002F50: ori   $a1, $a1, 0xC000
80002F54: addiu $a0, $a0, 0xF778
80002F58: jal   loadGiantEgg
80002F5C: lui   $a2, 0x434A
80002F60: lui   $a0, 0x8016
80002F64: lui   $a1, 0x802C
80002F68: lui   $a2, 0x5103
80002F6C: ori   $a2, $a2, 0x700B
80002F70: addiu $a1, $a1, 0x91C8
80002F74: jal   0x800C9D80
80002F78: addiu $a0, $a0, 0xF778
80002F7C: beq   $zero, $zero, 0x80003004
80002F80: lw    $ra, 0x0014 ($sp)
80002F84: lui   $a0, 0x8016
80002F88: lui   $a3, 0x4510
80002F8C: ori   $a3, $a3, 0xF000
80002F90: addiu $a0, $a0, 0xF738
80002F94: lui   $a1, 0x4319
80002F98: jal   loadGiantEgg
80002F9C: addiu $a2, $zero, 0x0000
80002FA0: lui   $a0, 0x8016
80002FA4: lui   $a1, 0x802C
80002FA8: lui   $a2, 0x5102
80002FAC: ori   $a2, $a2, 0x8001
80002FB0: addiu $a1, $a1, 0x91C8
80002FB4: jal   0x800C9D80
80002FB8: addiu $a0, $a0, 0xF738
80002FBC: beq   $zero, $zero, 0x80003004
80002FC0: lw    $ra, 0x0014 ($sp)
80002FC4: lui   $a0, 0x8016
80002FC8: lui   $a1, 0xC445
80002FCC: lui   $a3, 0xC3DF
80002FD0: ori   $a3, $a3, 0x8000
80002FD4: ori   $a1, $a1, 0x8000
80002FD8: addiu $a0, $a0, 0xF738
80002FDC: jal   loadGiantEgg
80002FE0: lui   $a2, 0xC37F
80002FE4: lui   $a0, 0x8016
80002FE8: lui   $a1, 0x802C
80002FEC: lui   $a2, 0x5102
80002FF0: ori   $a2, $a2, 0x8001
80002FF4: addiu $a1, $a1, 0x91C8
80002FF8: jal   0x800C9D80
80002FFC: addiu $a0, $a0, 0xF738
80003000: lw    $ra, 0x0014 ($sp)
80003004: addiu $sp, $sp, 0x0018
80003008: jr    $ra
8000300C: nop

80003010: lui   $v1, 0x8000
80003014: lui   $v0, 0x8000
80003018: addiu $v0, $v0, 0x035C
8000301C: addiu $v1, $v1, 0x031C
80003020: addiu $v1, $v1, 0x0010
80003024: sw    $zero, 0xFFF4 ($v1)
80003028: sw    $zero, 0xFFF8 ($v1)
8000302C: sw    $zero, 0xFFFC ($v1)
80003030: bne   $v1, $v0, 0x80003020
80003034: sw    $zero, 0xFFF0 ($v1)
80003038: jr    $ra
8000303C: nop

80003040: addiu $sp, $sp, 0xFFC0
80003044: lui   $t7, 0x800E
80003048: sw    $ra, 0x001C ($sp)
8000304C: addiu $t7, $t7, 0xC64C
80003050: lw    $at, 0x0000 ($t7)
80003054: addiu $t6, $sp, 0x0028
80003058: lw    $t0, 0x0004 ($t7)
8000305C: sw    $at, 0x0000 ($t6)
80003060: lw    $at, 0x0008 ($t7)
80003064: lui   $t2, 0x800E
80003068: addiu $t2, $t2, 0xC658
8000306C: sw    $t0, 0x0004 ($t6)
80003070: sw    $at, 0x0008 ($t6)
80003074: lw    $at, 0x0000 ($t2)
80003078: addiu $t1, $sp, 0x0020
8000307C: addiu $t9, $zero, 0x0001
80003080: sw    $at, 0x0000 ($t1)
80003084: lhu   $at, 0x0004 ($t2)
80003088: lui   $a1, 0x8016
8000308C: addiu $a0, $zero, 0x0003
80003090: sh    $at, 0x0004 ($t1)
80003094: lui   $at, 0x800E
80003098: sh    $zero, 0xC5BC ($at)
8000309C: lui   $at, 0x800E
800030A0: sh    $zero, 0xC5C8 ($at)
800030A4: lui   $at, 0x8015
800030A8: sh    $zero, 0x0110 ($at)
800030AC: lui   $at, 0x800E
800030B0: sw    $zero, 0xC604 ($at)
800030B4: lui   $at, 0x3F80
800030B8: mtc1  $at, F4
800030BC: lui   $at, 0x8016
800030C0: lw    $a1, 0xF728 ($a1)
800030C4: swc1  F4, 0xF784 ($at)
800030C8: lui   $at, 0x800E
800030CC: sw    $t9, 0xC538 ($at)
800030D0: lui   $at, 0xFFFF
800030D4: ori   $at, $at, 0x7000
800030D8: jal   SetSegmentBase
800030DC: addu  $a1, $a1, $at
800030E0: jal   0x8029DAB8
800030E4: nop
800030E8: lui   $t8, 0x800E
800030EC: lhu   $t8, 0xC5A0 ($t8)
800030F0: sltiu $at, $t8, 0x0013
800030F4: beq   $at, $zero, 0x80003528
800030F8: sll   $t8, $t8, 0x2
800030FC: lui   $at, 0x800F
80003100: addu  $at, $at, $t8
80003104: lw    $t8, 0xB6BC ($at)
80003108: jr    $t8
8000310C: nop
80003110: lui   $a0, 0x0F05
80003114: addiu $a0, $a0, 0xF45C
80003118: addiu $a1, $zero, 0x035B
8000311C: jal   loadSomeCourseObject
80003120: addiu $a2, $zero, 0x0800
80003124: lui   $a0, 0x0601
80003128: jal   PlaceSegment06
8000312C: addiu $a0, $a0, 0x9570
80003130: beq   $zero, $zero, 0x8000352C
80003134: lw    $ra, 0x001C ($sp)
80003138: lui   $a0, 0x0700
8000313C: ori   $a0, $a0, 0x1350
80003140: addiu $a1, $zero, 0x0032
80003144: or    $a2, $zero, $zero
80003148: or    $a3, $zero, $zero
8000314C: jal   0x802AF8BC
80003150: sw    $zero, 0x0010 ($sp)
80003154: beq   $zero, $zero, 0x8000352C
80003158: lw    $ra, 0x001C ($sp)
8000315C: lui   $a0, 0x0700
80003160: ori   $a0, $a0, 0x0878
80003164: addiu $a1, $zero, 0xFF80
80003168: or    $a2, $zero, $zero
8000316C: or    $a3, $zero, $zero
80003170: jal   0x802AF8BC
80003174: sw    $zero, 0x0010 ($sp)
80003178: beq   $zero, $zero, 0x8000352C
8000317C: lw    $ra, 0x001C ($sp)
80003180: lui   $a1, 0xC50F
80003184: lui   $a3, 0x441E
80003188: ori   $a3, $a3, 0x8000
8000318C: ori   $a1, $a1, 0xC000
80003190: addiu $a0, $sp, 0x0034
80003194: jal   loadGiantEgg
80003198: addiu $a2, $zero, 0x0000
8000319C: lui   $at, 0x8016
800031A0: lwc1  F8, 0xF784 ($at)
800031A4: lwc1  F6, 0x0034 ($sp)
800031A8: addiu $a0, $sp, 0x0034
800031AC: addiu $a1, $sp, 0x0020
800031B0: mul.s F10, F6, F8
800031B4: addiu $a2, $sp, 0x0028
800031B8: addiu $a3, $zero, 0x0009
800031BC: jal   0x8029EC88
800031C0: swc1  F10, 0x0034 ($sp)
800031C4: beq   $zero, $zero, 0x8000352C
800031C8: lw    $ra, 0x001C ($sp)
800031CC: lui   $a0, 0x0F05
800031D0: addiu $a0, $a0, 0xFE28
800031D4: addiu $a1, $zero, 0x03E8
800031D8: jal   loadSomeCourseObject
800031DC: addiu $a2, $zero, 0x0800
800031E0: lui   $a0, 0x0F05
800031E4: addiu $a0, $a0, 0x0118
800031E8: addiu $a1, $zero, 0x03E8
800031EC: jal   loadSomeCourseObject
800031F0: addiu $a2, $zero, 0x0800
800031F4: lui   $a0, 0x0F05
800031F8: addiu $a0, $a0, 0x1C54
800031FC: addiu $a1, $zero, 0x0400
80003200: jal   loadSomeCourseObject
80003204: addiu $a2, $zero, 0x0800
80003208: lui   $a0, 0x0F05
8000320C: addiu $a0, $a0, 0x1FD8
80003210: addiu $a1, $zero, 0x0400
80003214: jal   loadSomeCourseObject
80003218: addiu $a2, $zero, 0x0800
8000321C: lui   $a0, 0x0F05
80003220: addiu $a0, $a0, 0x232C
80003224: addiu $a1, $zero, 0x0400
80003228: jal   loadSomeCourseObject
8000322C: addiu $a2, $zero, 0x0800
80003230: lui   $a0, 0x0F05
80003234: addiu $a0, $a0, 0x26B8
80003238: addiu $a1, $zero, 0x0400
8000323C: jal   loadSomeCourseObject
80003240: addiu $a2, $zero, 0x0800
80003244: lui   $a0, 0x0F05
80003248: addiu $a0, $a0, 0x2A20
8000324C: addiu $a1, $zero, 0x0400
80003250: jal   loadSomeCourseObject
80003254: addiu $a2, $zero, 0x0800
80003258: lui   $a0, 0x0F05
8000325C: addiu $a0, $a0, 0x2D3C
80003260: addiu $a1, $zero, 0x0400
80003264: jal   loadSomeCourseObject
80003268: addiu $a2, $zero, 0x0800
8000326C: lui   $a0, 0x0F05
80003270: addiu $a0, $a0, 0x300C
80003274: addiu $a1, $zero, 0x0400
80003278: jal   loadSomeCourseObject
8000327C: addiu $a2, $zero, 0x0800
80003280: lui   $a0, 0x0F05
80003284: addiu $a0, $a0, 0x32F8
80003288: addiu $a1, $zero, 0x0400
8000328C: jal   loadSomeCourseObject
80003290: addiu $a2, $zero, 0x0800
80003294: lui   $a0, 0x0F05
80003298: addiu $a0, $a0, 0x363C
8000329C: addiu $a1, $zero, 0x0400
800032A0: jal   loadSomeCourseObject
800032A4: addiu $a2, $zero, 0x0800
800032A8: lui   $a0, 0x0F05
800032AC: addiu $a0, $a0, 0x3950
800032B0: addiu $a1, $zero, 0x0400
800032B4: jal   loadSomeCourseObject
800032B8: addiu $a2, $zero, 0x0800
800032BC: lui   $a0, 0x0601
800032C0: jal   PlaceSegment06
800032C4: addiu $a0, $a0, 0x4330
800032C8: beq   $zero, $zero, 0x8000352C
800032CC: lw    $ra, 0x001C ($sp)
800032D0: lui   $a0, 0x0700
800032D4: addiu $t6, $zero, 0x00FF
800032D8: sw    $t6, 0x0010 ($sp)
800032DC: ori   $a0, $a0, 0x1EB8
800032E0: addiu $a1, $zero, 0xFFB4
800032E4: addiu $a2, $zero, 0x00FF
800032E8: jal   0x802AF8BC
800032EC: addiu $a3, $zero, 0x00FF
800032F0: lui   $a0, 0x0700
800032F4: addiu $t7, $zero, 0x00FF
800032F8: sw    $t7, 0x0010 ($sp)
800032FC: ori   $a0, $a0, 0x2308
80003300: addiu $a1, $zero, 0xFF96
80003304: addiu $a2, $zero, 0x00FF
80003308: jal   0x802AF8BC
8000330C: addiu $a3, $zero, 0x00FF
80003310: beq   $zero, $zero, 0x8000352C
80003314: lw    $ra, 0x001C ($sp)
80003318: lui   $a0, 0x0700
8000331C: addiu $t0, $zero, 0x00FF
80003320: sw    $t0, 0x0010 ($sp)
80003324: ori   $a0, $a0, 0x2068
80003328: addiu $a1, $zero, 0xFF96
8000332C: addiu $a2, $zero, 0x00FF
80003330: jal   0x802AF8BC
80003334: addiu $a3, $zero, 0x00FF
80003338: lui   $a0, 0x0700
8000333C: addiu $t4, $zero, 0x00FF
80003340: sw    $t4, 0x0010 ($sp)
80003344: ori   $a0, $a0, 0x1E18
80003348: addiu $a1, $zero, 0xFF96
8000334C: addiu $a2, $zero, 0x00FF
80003350: jal   0x802AF8BC
80003354: addiu $a3, $zero, 0x00FF
80003358: lui   $a0, 0x0700
8000335C: ori   $a0, $a0, 0x1318
80003360: addiu $a1, $zero, 0xFFFF
80003364: addiu $a2, $zero, 0x00FF
80003368: addiu $a3, $zero, 0x00FF
8000336C: jal   0x802AF8BC
80003370: sw    $zero, 0x0010 ($sp)
80003374: beq   $zero, $zero, 0x8000352C
80003378: lw    $ra, 0x001C ($sp)
8000337C: addiu $a0, $sp, 0x0034
80003380: lui   $a1, 0xC303
80003384: lui   $a2, 0x42A6
80003388: jal   loadGiantEgg
8000338C: lui   $a3, 0x438F
80003390: addiu $a0, $sp, 0x0034
80003394: addiu $a1, $sp, 0x0020
80003398: addiu $a2, $sp, 0x0028
8000339C: jal   0x8029EC88
800033A0: addiu $a3, $zero, 0x0023
800033A4: lui   $a1, 0xC513
800033A8: ori   $a1, $a1, 0x1000
800033AC: addiu $a0, $sp, 0x0034
800033B0: lui   $a2, 0x4290
800033B4: jal   loadGiantEgg
800033B8: lui   $a3, 0xC4C9
800033BC: addiu $a0, $sp, 0x0034
800033C0: addiu $a1, $sp, 0x0020
800033C4: addiu $a2, $sp, 0x0028
800033C8: jal   0x8029EC88
800033CC: addiu $a3, $zero, 0x0023
800033D0: lui   $a1, 0xC523
800033D4: lui   $a3, 0x4438
800033D8: ori   $a3, $a3, 0xC000
800033DC: ori   $a1, $a1, 0xE000
800033E0: addiu $a0, $sp, 0x0034
800033E4: jal   loadGiantEgg
800033E8: lui   $a2, 0x429E
800033EC: addiu $a0, $sp, 0x0034
800033F0: addiu $a1, $sp, 0x0020
800033F4: addiu $a2, $sp, 0x0028
800033F8: jal   0x8029EC88
800033FC: addiu $a3, $zero, 0x0023
80003400: lui   $a0, 0x0700
80003404: addiu $t3, $zero, 0x00FF
80003408: sw    $t3, 0x0010 ($sp)
8000340C: ori   $a0, $a0, 0x0C50
80003410: addiu $a1, $zero, 0x0064
80003414: addiu $a2, $zero, 0x00FF
80003418: jal   0x802AF8BC
8000341C: addiu $a3, $zero, 0x00FF
80003420: lui   $a0, 0x0700
80003424: addiu $t1, $zero, 0x00FF
80003428: sw    $t1, 0x0010 ($sp)
8000342C: ori   $a0, $a0, 0x0BD8
80003430: addiu $a1, $zero, 0x0064
80003434: addiu $a2, $zero, 0x00FF
80003438: jal   0x802AF8BC
8000343C: addiu $a3, $zero, 0x00FF
80003440: lui   $a0, 0x0700
80003444: addiu $t2, $zero, 0x00FF
80003448: sw    $t2, 0x0010 ($sp)
8000344C: ori   $a0, $a0, 0x0B60
80003450: addiu $a1, $zero, 0x0064
80003454: addiu $a2, $zero, 0x00FF
80003458: jal   0x802AF8BC
8000345C: addiu $a3, $zero, 0x00FF
80003460: lui   $a0, 0x0700
80003464: addiu $t5, $zero, 0x00FF
80003468: sw    $t5, 0x0010 ($sp)
8000346C: ori   $a0, $a0, 0x0AE8
80003470: addiu $a1, $zero, 0x0064
80003474: addiu $a2, $zero, 0x00FF
80003478: jal   0x802AF8BC
8000347C: addiu $a3, $zero, 0x00FF
80003480: lui   $a0, 0x0700
80003484: addiu $t9, $zero, 0x00FF
80003488: sw    $t9, 0x0010 ($sp)
8000348C: ori   $a0, $a0, 0x0CC8
80003490: addiu $a1, $zero, 0x0064
80003494: addiu $a2, $zero, 0x00FF
80003498: jal   0x802AF8BC
8000349C: addiu $a3, $zero, 0x00FF
800034A0: lui   $a0, 0x0700
800034A4: addiu $t8, $zero, 0x00FF
800034A8: sw    $t8, 0x0010 ($sp)
800034AC: ori   $a0, $a0, 0x0D50
800034B0: addiu $a1, $zero, 0x0064
800034B4: addiu $a2, $zero, 0x00FF
800034B8: jal   0x802AF8BC
800034BC: addiu $a3, $zero, 0x00FF
800034C0: lui   $a0, 0x0700
800034C4: addiu $t6, $zero, 0x00FF
800034C8: sw    $t6, 0x0010 ($sp)
800034CC: ori   $a0, $a0, 0x0DD0
800034D0: addiu $a1, $zero, 0x0064
800034D4: addiu $a2, $zero, 0x00FF
800034D8: jal   0x802AF8BC
800034DC: addiu $a3, $zero, 0x00FF
800034E0: lui   $a0, 0x0700
800034E4: addiu $t7, $zero, 0x00FF
800034E8: sw    $t7, 0x0010 ($sp)
800034EC: ori   $a0, $a0, 0x0E48
800034F0: addiu $a1, $zero, 0x0064
800034F4: addiu $a2, $zero, 0x00FF
800034F8: jal   0x802AF8BC
800034FC: addiu $a3, $zero, 0x00FF
80003500: beq   $zero, $zero, 0x8000352C
80003504: lw    $ra, 0x001C ($sp)
80003508: lui   $a0, 0x0700
8000350C: addiu $t0, $zero, 0x00FF
80003510: sw    $t0, 0x0010 ($sp)
80003514: ori   $a0, $a0, 0x3FA8
80003518: addiu $a1, $zero, 0x0078
8000351C: addiu $a2, $zero, 0x00FF
80003520: jal   0x802AF8BC
80003524: addiu $a3, $zero, 0x00FF
80003528: lw    $ra, 0x001C ($sp)
8000352C: lui   $t4, 0x8015
80003530: lhu   $t4, 0x0110 ($t4)
80003534: lui   $at, 0x8016
80003538: addiu $sp, $sp, 0x0040
8000353C: jr    $ra
80003540: sh    $t4, 0xF900 ($at)

80003544: nop
80003548: nop
8000354C: nop
80003550: addiu $sp, $sp, 0xFFE8
80003554: sw    $ra, 0x0014 ($sp)
80003558: jal   osGetTime
8000355C: sw    $a0, 0x0018 ($sp)
80003560: lui   $a1, 0x800E
80003564: addiu $a1, $a1, 0xC668
80003568: lh    $a0, 0x0000 ($a1)
8000356C: lw    $a2, 0x0018 ($sp)
80003570: lui   $a3, 0x8016
80003574: sll   $t6, $a0, 0x2
80003578: subu  $t6, $t6, $a0
8000357C: sll   $t6, $t6, 0x3
80003580: addu  $t6, $t6, $a0
80003584: sll   $t6, $t6, 0x3
80003588: addiu $a3, $a3, 0x2600
8000358C: addu  $t7, $a3, $t6
80003590: sll   $t8, $a2, 0x3
80003594: addu  $t9, $t7, $t8
80003598: addiu $at, $zero, 0x0004
8000359C: sw    $v0, 0x0008 ($t9)
800035A0: bne   $a2, $at, 0x800035D0
800035A4: sw    $v1, 0x000C ($t9)
800035A8: Xori   $t0, $a0, 0x0001
800035AC: sh    $t0, 0x0000 ($a1)
800035B0: lh    $t1, 0x0000 ($a1)
800035B4: sll   $t2, $t1, 0x2
800035B8: subu  $t2, $t2, $t1
800035BC: sll   $t2, $t2, 0x3
800035C0: addu  $t2, $t2, $t1
800035C4: sll   $t2, $t2, 0x3
800035C8: addu  $t3, $a3, $t2
800035CC: sh    $zero, 0x0000 ($t3)
800035D0: lw    $ra, 0x0014 ($sp)
800035D4: addiu $sp, $sp, 0x0018
800035D8: jr    $ra
800035DC: nop

800035E0: lui   $t6, 0x800E
800035E4: lh    $t6, 0xC668 ($t6)
800035E8: lui   $t8, 0x8016
800035EC: addiu $sp, $sp, 0xFFE0
800035F0: sll   $t7, $t6, 0x2
800035F4: subu  $t7, $t7, $t6
800035F8: sll   $t7, $t7, 0x3
800035FC: addu  $t7, $t7, $t6
80003600: sll   $t7, $t7, 0x3
80003604: addiu $t8, $t8, 0x2600
80003608: sw    $ra, 0x0014 ($sp)
8000360C: addu  $a0, $t7, $t8
80003610: lh    $t9, 0x0000 ($a0)
80003614: slti  $at, $t9, 0x0008
80003618: beql  $at, $zero, 0x80003650
8000361C: lw    $ra, 0x0014 ($sp)
80003620: jal   osGetTime
80003624: sw    $a0, 0x001C ($sp)
80003628: lw    $a0, 0x001C ($sp)
8000362C: lh    $t0, 0x0000 ($a0)
80003630: sll   $t1, $t0, 0x3
80003634: addu  $t2, $a0, $t1
80003638: sw    $v0, 0x0048 ($t2)
8000363C: sw    $v1, 0x004C ($t2)
80003640: lh    $t3, 0x0000 ($a0)
80003644: addiu $t4, $t3, 0x0001
80003648: sh    $t4, 0x0000 ($a0)
8000364C: lw    $ra, 0x0014 ($sp)
80003650: addiu $sp, $sp, 0x0020
80003654: jr    $ra
80003658: nop

8000365C: addiu $sp, $sp, 0xFFE8
80003660: bnez  $a0, 0x800036A0
80003664: sw    $ra, 0x0014 ($sp)
80003668: lui   $v0, 0x800E
8000366C: addiu $v0, $v0, 0xC66C
80003670: lh    $t6, 0x0000 ($v0)
80003674: lui   $at, 0x8016
80003678: Xori   $t7, $t6, 0x0001
8000367C: sh    $t7, 0x0000 ($v0)
80003680: lh    $t8, 0x0000 ($v0)
80003684: sll   $t9, $t8, 0x2
80003688: subu  $t9, $t9, $t8
8000368C: sll   $t9, $t9, 0x3
80003690: addu  $t9, $t9, $t8
80003694: sll   $t9, $t9, 0x3
80003698: addu  $at, $at, $t9
8000369C: sh    $zero, 0x2602 ($at)
800036A0: jal   osGetTime
800036A4: sw    $a0, 0x0018 ($sp)
800036A8: lui   $t0, 0x800E
800036AC: lh    $t0, 0xC66C ($t0)
800036B0: lw    $a0, 0x0018 ($sp)
800036B4: lw    $ra, 0x0014 ($sp)
800036B8: sll   $t1, $t0, 0x2
800036BC: subu  $t1, $t1, $t0
800036C0: sll   $t1, $t1, 0x3
800036C4: addu  $t1, $t1, $t0
800036C8: sll   $t1, $t1, 0x3
800036CC: sll   $t2, $a0, 0x3
800036D0: addu  $t3, $t1, $t2
800036D4: lui   $at, 0x8016
800036D8: addu  $at, $at, $t3
800036DC: sw    $v0, 0x2630 ($at)
800036E0: sw    $v1, 0x2634 ($at)
800036E4: jr    $ra
800036E8: addiu $sp, $sp, 0x0018

800036EC: lui   $t6, 0x800E
800036F0: lh    $t6, 0xC66C ($t6)
800036F4: lui   $t8, 0x8016
800036F8: addiu $sp, $sp, 0xFFE0
800036FC: sll   $t7, $t6, 0x2
80003700: subu  $t7, $t7, $t6
80003704: sll   $t7, $t7, 0x3
80003708: addu  $t7, $t7, $t6
8000370C: sll   $t7, $t7, 0x3
80003710: addiu $t8, $t8, 0x2600
80003714: sw    $ra, 0x0014 ($sp)
80003718: addu  $a0, $t7, $t8
8000371C: lh    $t9, 0x0002 ($a0)
80003720: slti  $at, $t9, 0x0008
80003724: beql  $at, $zero, 0x8000375C
80003728: lw    $ra, 0x0014 ($sp)
8000372C: jal   osGetTime
80003730: sw    $a0, 0x001C ($sp)
80003734: lw    $a0, 0x001C ($sp)
80003738: lh    $t0, 0x0002 ($a0)
8000373C: sll   $t1, $t0, 0x3
80003740: addu  $t2, $a0, $t1
80003744: sw    $v0, 0x0088 ($t2)
80003748: sw    $v1, 0x008C ($t2)
8000374C: lh    $t3, 0x0002 ($a0)
80003750: addiu $t4, $t3, 0x0001
80003754: sh    $t4, 0x0002 ($a0)
80003758: lw    $ra, 0x0014 ($sp)
8000375C: addiu $sp, $sp, 0x0020
80003760: jr    $ra
80003764: nop

80003768: addiu $sp, $sp, 0xFF98
8000376C: sltu  $at, $a3, $a1
80003770: subu  $t4, $a2, $a0
80003774: subu  $t4, $t4, $at
80003778: subu  $t5, $a3, $a1
8000377C: sw    $ra, 0x0014 ($sp)
80003780: sw    $a0, 0x0068 ($sp)
80003784: sw    $a1, 0x006C ($sp)
80003788: sw    $a2, 0x0070 ($sp)
8000378C: sw    $a3, 0x0074 ($sp)
80003790: sw    $t5, 0x001C ($sp)
80003794: sw    $t5, 0x0064 ($sp)
80003798: sw    $t4, 0x0018 ($sp)
8000379C: bgtz  $t4, 0x800037C0
800037A0: sw    $t4, 0x0060 ($sp)
800037A4: bltz  $t4, 0x800037B4
800037A8: addiu $t6, $zero, 0x0000
800037AC: beq   $zero, $zero, 0x800037C4
800037B0: lw    $t8, 0x0078 ($sp)
800037B4: addiu $t7, $zero, 0x0000
800037B8: sw    $t7, 0x0064 ($sp)
800037BC: sw    $t6, 0x0060 ($sp)
800037C0: lw    $t8, 0x0078 ($sp)
800037C4: lw    $t9, 0x007C ($sp)
800037C8: lw    $t4, 0x0068 ($sp)
800037CC: lw    $t5, 0x006C ($sp)
800037D0: addiu $a2, $zero, 0x0000
800037D4: subu  $t6, $t8, $t4
800037D8: sltu  $at, $t9, $t5
800037DC: subu  $t6, $t6, $at
800037E0: subu  $t7, $t9, $t5
800037E4: sw    $t7, 0x001C ($sp)
800037E8: sw    $t7, 0x005C ($sp)
800037EC: sw    $t6, 0x0018 ($sp)
800037F0: bgtz  $t6, 0x80003814
800037F4: sw    $t6, 0x0058 ($sp)
800037F8: bltz  $t6, 0x80003808
800037FC: addiu $t8, $zero, 0x0000
80003800: beq   $zero, $zero, 0x80003818
80003804: lui   $a3, 0x000F
80003808: addiu $t9, $zero, 0x0000
8000380C: sw    $t9, 0x005C ($sp)
80003810: sw    $t8, 0x0058 ($sp)
80003814: lui   $a3, 0x000F
80003818: ori   $a3, $a3, 0x4240
8000381C: lw    $a0, 0x0060 ($sp)
80003820: jal   __ll_mul
80003824: lw    $a1, 0x0064 ($sp)
80003828: lui   $a2, 0x800F
8000382C: lui   $a3, 0x800F
80003830: lw    $a3, 0xA5E4 ($a3)
80003834: lw    $a2, 0xA5E0 ($a2)
80003838: or    $a0, $v0, $zero
8000383C: jal   __ull_div
80003840: or    $a1, $v1, $zero
80003844: or    $a0, $v0, $zero
80003848: or    $a1, $v1, $zero
8000384C: addiu $a2, $zero, 0x0000
80003850: jal   __ll_mul
80003854: addiu $a3, $zero, 0x0003
80003858: or    $a0, $v0, $zero
8000385C: or    $a1, $v1, $zero
80003860: addiu $a2, $zero, 0x0000
80003864: jal   __ull_div
80003868: addiu $a3, $zero, 0x03E8
8000386C: addiu $t5, $v1, 0x001E
80003870: lui   $a3, 0x000F
80003874: sw    $t5, 0x0054 ($sp)
80003878: ori   $a3, $a3, 0x4240
8000387C: lw    $a0, 0x0058 ($sp)
80003880: lw    $a1, 0x005C ($sp)
80003884: jal   __ll_mul
80003888: addiu $a2, $zero, 0x0000
8000388C: lui   $a2, 0x800F
80003890: lui   $a3, 0x800F
80003894: lw    $a3, 0xA5E4 ($a3)
80003898: lw    $a2, 0xA5E0 ($a2)
8000389C: or    $a0, $v0, $zero
800038A0: jal   __ull_div
800038A4: or    $a1, $v1, $zero
800038A8: or    $a0, $v0, $zero
800038AC: or    $a1, $v1, $zero
800038B0: addiu $a2, $zero, 0x0000
800038B4: jal   __ll_mul
800038B8: addiu $a3, $zero, 0x0003
800038BC: or    $a0, $v0, $zero
800038C0: or    $a1, $v1, $zero
800038C4: addiu $a2, $zero, 0x0000
800038C8: jal   __ull_div
800038CC: addiu $a3, $zero, 0x03E8
800038D0: lw    $t2, 0x0054 ($sp)
800038D4: addiu $t0, $v1, 0x001E
800038D8: lui   $v1, 0x8015
800038DC: slt   $at, $t2, $t0
800038E0: beq   $at, $zero, 0x80003970
800038E4: addiu $v1, $v1, 0x0298
800038E8: lw    $v0, 0x0000 ($v1)
800038EC: lh    $t1, 0x0082 ($sp)
800038F0: lui   $t9, 0xE700
800038F4: addiu $t8, $v0, 0x0008
800038F8: sw    $t8, 0x0000 ($v1)
800038FC: sw    $zero, 0x0004 ($v0)
80003900: sw    $t9, 0x0000 ($v0)
80003904: lw    $v0, 0x0000 ($v1)
80003908: lui   $t5, 0xF700
8000390C: andi  $t8, $t0, 0x03FF
80003910: addiu $t4, $v0, 0x0008
80003914: sw    $t4, 0x0000 ($v1)
80003918: sw    $t5, 0x0000 ($v0)
8000391C: lhu   $a2, 0x0086 ($sp)
80003920: addiu $t5, $t1, 0x0002
80003924: sll   $t9, $t8, 0xE
80003928: sll   $t3, $a2, 0x10
8000392C: or    $t6, $t3, $a2
80003930: sw    $t6, 0x0004 ($v0)
80003934: lw    $v0, 0x0000 ($v1)
80003938: andi  $t3, $t5, 0x03FF
8000393C: lui   $at, 0xF600
80003940: or    $t4, $t9, $at
80003944: sll   $t6, $t3, 0x2
80003948: addiu $t7, $v0, 0x0008
8000394C: sw    $t7, 0x0000 ($v1)
80003950: andi  $t8, $t2, 0x03FF
80003954: andi  $t5, $t1, 0x03FF
80003958: sll   $t3, $t5, 0x2
8000395C: sll   $t9, $t8, 0xE
80003960: or    $t7, $t4, $t6
80003964: or    $t4, $t9, $t3
80003968: sw    $t4, 0x0004 ($v0)
8000396C: sw    $t7, 0x0000 ($v0)
80003970: lw    $ra, 0x0014 ($sp)
80003974: addiu $sp, $sp, 0x0068
80003978: jr    $ra
8000397C: nop

80003980: lui   $v1, 0x8015
80003984: addiu $v1, $v1, 0x0298
80003988: lw    $v0, 0x0000 ($v1)
8000398C: lui   $t7, 0xE700
80003990: lui   $t9, 0xF700
80003994: addiu $t6, $v0, 0x0008
80003998: sw    $t6, 0x0000 ($v1)
8000399C: sw    $zero, 0x0004 ($v0)
800039A0: sw    $t7, 0x0000 ($v0)
800039A4: lw    $v0, 0x0000 ($v1)
800039A8: lui   $t6, 0x2ABF
800039AC: ori   $t6, $t6, 0x2ABF
800039B0: addiu $t8, $v0, 0x0008
800039B4: sw    $t8, 0x0000 ($v1)
800039B8: sw    $t6, 0x0004 ($v0)
800039BC: sw    $t9, 0x0000 ($v0)
800039C0: lw    $v0, 0x0000 ($v1)
800039C4: lui   $t9, 0x0007
800039C8: lui   $t8, 0xF613
800039CC: addiu $t7, $v0, 0x0008
800039D0: sw    $t7, 0x0000 ($v1)
800039D4: ori   $t8, $t8, 0xC378
800039D8: ori   $t9, $t9, 0x8370
800039DC: sw    $t9, 0x0004 ($v0)
800039E0: sw    $t8, 0x0000 ($v0)
800039E4: lw    $v0, 0x0000 ($v1)
800039E8: lui   $t7, 0xE700
800039EC: lui   $t9, 0xF700
800039F0: addiu $t6, $v0, 0x0008
800039F4: sw    $t6, 0x0000 ($v1)
800039F8: sw    $zero, 0x0004 ($v0)
800039FC: sw    $t7, 0x0000 ($v0)
80003A00: lw    $v0, 0x0000 ($v1)
80003A04: lui   $t6, 0xFFCB
80003A08: ori   $t6, $t6, 0xFFCB
80003A0C: addiu $t8, $v0, 0x0008
80003A10: sw    $t8, 0x0000 ($v1)
80003A14: sw    $t6, 0x0004 ($v0)
80003A18: sw    $t9, 0x0000 ($v0)
80003A1C: lw    $v0, 0x0000 ($v1)
80003A20: lui   $t9, 0x0013
80003A24: lui   $t8, 0xF620
80003A28: addiu $t7, $v0, 0x0008
80003A2C: sw    $t7, 0x0000 ($v1)
80003A30: ori   $t8, $t8, 0x0378
80003A34: ori   $t9, $t9, 0xC370
80003A38: sw    $t9, 0x0004 ($v0)
80003A3C: sw    $t8, 0x0000 ($v0)
80003A40: lw    $v0, 0x0000 ($v1)
80003A44: lui   $t7, 0xE700
80003A48: lui   $t9, 0xF700
80003A4C: addiu $t6, $v0, 0x0008
80003A50: sw    $t6, 0x0000 ($v1)
80003A54: sw    $zero, 0x0004 ($v0)
80003A58: sw    $t7, 0x0000 ($v0)
80003A5C: lw    $v0, 0x0000 ($v1)
80003A60: lui   $t6, 0xFBCB
80003A64: ori   $t6, $t6, 0xFBCB
80003A68: addiu $t8, $v0, 0x0008
80003A6C: sw    $t8, 0x0000 ($v1)
80003A70: sw    $t6, 0x0004 ($v0)
80003A74: sw    $t9, 0x0000 ($v0)
80003A78: lw    $v0, 0x0000 ($v1)
80003A7C: lui   $t9, 0x0020
80003A80: lui   $t8, 0xF62C
80003A84: addiu $t7, $v0, 0x0008
80003A88: sw    $t7, 0x0000 ($v1)
80003A8C: ori   $t8, $t8, 0x4378
80003A90: ori   $t9, $t9, 0x0370
80003A94: sw    $t9, 0x0004 ($v0)
80003A98: sw    $t8, 0x0000 ($v0)
80003A9C: lw    $v0, 0x0000 ($v1)
80003AA0: lui   $t7, 0xE700
80003AA4: lui   $t9, 0xF700
80003AA8: addiu $t6, $v0, 0x0008
80003AAC: sw    $t6, 0x0000 ($v1)
80003AB0: sw    $zero, 0x0004 ($v0)
80003AB4: sw    $t7, 0x0000 ($v0)
80003AB8: lw    $v0, 0x0000 ($v1)
80003ABC: lui   $t6, 0xF94B
80003AC0: ori   $t6, $t6, 0xF94B
80003AC4: addiu $t8, $v0, 0x0008
80003AC8: sw    $t8, 0x0000 ($v1)
80003ACC: sw    $t6, 0x0004 ($v0)
80003AD0: sw    $t9, 0x0000 ($v0)
80003AD4: lw    $v0, 0x0000 ($v1)
80003AD8: lui   $t9, 0x002C
80003ADC: lui   $t8, 0xF638
80003AE0: addiu $t7, $v0, 0x0008
80003AE4: sw    $t7, 0x0000 ($v1)
80003AE8: ori   $t8, $t8, 0x8378
80003AEC: ori   $t9, $t9, 0x4370
80003AF0: sw    $t9, 0x0004 ($v0)
80003AF4: jr    $ra
80003AF8: sw    $t8, 0x0000 ($v0)

80003AFC: jr    $ra
80003B00: nop

80003B04: lui   $t6, 0x800E
80003B08: lh    $t6, 0xC668 ($t6)
80003B0C: lui   $t9, 0x8016
80003B10: addiu $sp, $sp, 0xFF68
80003B14: Xori   $t7, $t6, 0x0001
80003B18: sll   $t8, $t7, 0x2
80003B1C: subu  $t8, $t8, $t7
80003B20: sll   $t8, $t8, 0x3
80003B24: addu  $t8, $t8, $t7
80003B28: sll   $t8, $t8, 0x3
80003B2C: addiu $t9, $t9, 0x2600
80003B30: sw    $ra, 0x0024 ($sp)
80003B34: addu  $a1, $t8, $t9
80003B38: lw    $t0, 0x0048 ($a1)
80003B3C: lw    $t1, 0x004C ($a1)
80003B40: addiu $a2, $zero, 0x0000
80003B44: sw    $t0, 0x0030 ($sp)
80003B48: sw    $t1, 0x0034 ($sp)
80003B4C: lw    $t2, 0x0008 ($a1)
80003B50: lw    $t3, 0x000C ($a1)
80003B54: addiu $a3, $zero, 0x0000
80003B58: sltu  $at, $t0, $t2
80003B5C: sw    $t2, 0x0028 ($sp)
80003B60: or    $t6, $t2, $zero
80003B64: sw    $t3, 0x002C ($sp)
80003B68: bnez  $at, 0x80003B90
80003B6C: or    $t7, $t3, $zero
80003B70: sltu  $at, $t2, $t0
80003B74: bnez  $at, 0x80003B84
80003B78: sltu  $at, $t1, $t3
80003B7C: bnel  $at, $zero, 0x80003B94
80003B80: lw    $t8, 0x0030 ($sp)
80003B84: sw    $t6, 0x0088 ($sp)
80003B88: beq   $zero, $zero, 0x80003BA0
80003B8C: sw    $t7, 0x008C ($sp)
80003B90: lw    $t8, 0x0030 ($sp)
80003B94: lw    $t9, 0x0034 ($sp)
80003B98: sw    $t8, 0x0088 ($sp)
80003B9C: sw    $t9, 0x008C ($sp)
80003BA0: lw    $t0, 0x0010 ($a1)
80003BA4: lw    $t1, 0x0014 ($a1)
80003BA8: lw    $t2, 0x0088 ($sp)
80003BAC: lw    $t3, 0x008C ($sp)
80003BB0: or    $v1, $zero, $zero
80003BB4: subu  $t4, $t0, $t2
80003BB8: sltu  $at, $t1, $t3
80003BBC: subu  $t4, $t4, $at
80003BC0: subu  $t5, $t1, $t3
80003BC4: sw    $t5, 0x0084 ($sp)
80003BC8: sw    $t4, 0x0080 ($sp)
80003BCC: lw    $t9, 0x0014 ($a1)
80003BD0: lw    $t7, 0x001C ($a1)
80003BD4: lw    $t8, 0x0010 ($a1)
80003BD8: lw    $t6, 0x0018 ($a1)
80003BDC: sltu  $at, $t7, $t9
80003BE0: addiu $t3, $zero, 0x0000
80003BE4: subu  $t0, $t6, $t8
80003BE8: subu  $t0, $t0, $at
80003BEC: addiu $t2, $zero, 0x0000
80003BF0: subu  $t1, $t7, $t9
80003BF4: sw    $t1, 0x007C ($sp)
80003BF8: sw    $t0, 0x0078 ($sp)
80003BFC: sw    $t2, 0x0070 ($sp)
80003C00: sw    $t3, 0x0074 ($sp)
80003C04: lw    $t5, 0x0034 ($a1)
80003C08: lw    $t4, 0x0030 ($a1)
80003C0C: or    $v0, $a1, $zero
80003C10: sw    $t5, 0x0034 ($sp)
80003C14: sw    $t4, 0x0030 ($sp)
80003C18: lw    $t7, 0x003C ($a1)
80003C1C: lw    $t6, 0x0038 ($a1)
80003C20: sltu  $at, $t7, $t5
80003C24: subu  $t0, $t6, $t4
80003C28: subu  $t0, $t0, $at
80003C2C: subu  $t1, $t7, $t5
80003C30: sw    $t1, 0x006C ($sp)
80003C34: sw    $t0, 0x0068 ($sp)
80003C38: lw    $t3, 0x0044 ($a1)
80003C3C: lw    $t2, 0x0040 ($a1)
80003C40: addiu $t7, $zero, 0x0000
80003C44: sltu  $at, $t3, $t5
80003C48: subu  $t4, $t2, $t4
80003C4C: subu  $t4, $t4, $at
80003C50: addiu $t6, $zero, 0x0000
80003C54: subu  $t5, $t3, $t5
80003C58: sw    $t5, 0x0064 ($sp)
80003C5C: sw    $t4, 0x0060 ($sp)
80003C60: sw    $t6, 0x0058 ($sp)
80003C64: sw    $t7, 0x005C ($sp)
80003C68: lh    $t0, 0x0000 ($a1)
80003C6C: andi  $t1, $t0, 0xFFFE
80003C70: sh    $t1, 0x0000 ($a1)
80003C74: lh    $a0, 0x0000 ($a1)
80003C78: BLEZL $a0, 0x80003D94
80003C7C: andi  $t4, $a0, 0xFFFE
80003C80: lw    $t3, 0x0054 ($v0)
80003C84: lw    $t9, 0x004C ($v0)
80003C88: lw    $t2, 0x0050 ($v0)
80003C8C: lw    $t8, 0x0048 ($v0)
80003C90: lw    $t7, 0x0074 ($sp)
80003C94: sltu  $at, $t3, $t9
80003C98: lw    $t6, 0x0070 ($sp)
80003C9C: subu  $t1, $t3, $t9
80003CA0: subu  $t4, $t2, $t8
80003CA4: subu  $t0, $t4, $at
80003CA8: addu  $t3, $t7, $t1
80003CAC: sltu  $at, $t3, $t1
80003CB0: addu  $t2, $at, $t6
80003CB4: addu  $t2, $t2, $t0
80003CB8: sw    $t0, 0x0050 ($sp)
80003CBC: sw    $t1, 0x0054 ($sp)
80003CC0: sw    $t2, 0x0070 ($sp)
80003CC4: sw    $t3, 0x0074 ($sp)
80003CC8: lw    $t9, 0x004C ($v0)
80003CCC: lw    $t8, 0x0048 ($v0)
80003CD0: sw    $t9, 0x0034 ($sp)
80003CD4: sw    $t8, 0x0030 ($sp)
80003CD8: lw    $t6, 0x0010 ($a1)
80003CDC: lw    $t7, 0x0014 ($a1)
80003CE0: lw    $t4, 0x0030 ($sp)
80003CE4: sltu  $at, $t6, $t8
80003CE8: bnez  $at, 0x80003D24
80003CEC: sltu  $at, $t8, $t6
80003CF0: bnez  $at, 0x80003D04
80003CF4: lw    $t2, 0x0080 ($sp)
80003CF8: sltu  $at, $t9, $t7
80003CFC: beql  $at, $zero, 0x80003D28
80003D00: lw    $t6, 0x0018 ($a1)
80003D04: lw    $t3, 0x0084 ($sp)
80003D08: subu  $t8, $t2, $t0
80003D0C: sltu  $at, $t3, $t1
80003D10: subu  $t8, $t8, $at
80003D14: subu  $t9, $t3, $t1
80003D18: sw    $t9, 0x0084 ($sp)
80003D1C: beq   $zero, $zero, 0x80003D74
80003D20: sw    $t8, 0x0080 ($sp)
80003D24: lw    $t6, 0x0018 ($a1)
80003D28: lw    $t5, 0x0034 ($sp)
80003D2C: lw    $t7, 0x001C ($a1)
80003D30: sltu  $at, $t6, $t4
80003D34: bnez  $at, 0x80003D74
80003D38: sltu  $at, $t4, $t6
80003D3C: bnez  $at, 0x80003D50
80003D40: lw    $t2, 0x0078 ($sp)
80003D44: sltu  $at, $t5, $t7
80003D48: beql  $at, $zero, 0x80003D78
80003D4C: lh    $a0, 0x0000 ($a1)
80003D50: lw    $t3, 0x007C ($sp)
80003D54: lw    $t0, 0x0050 ($sp)
80003D58: lw    $t1, 0x0054 ($sp)
80003D5C: subu  $t8, $t2, $t0
80003D60: sltu  $at, $t3, $t1
80003D64: subu  $t8, $t8, $at
80003D68: subu  $t9, $t3, $t1
80003D6C: sw    $t9, 0x007C ($sp)
80003D70: sw    $t8, 0x0078 ($sp)
80003D74: lh    $a0, 0x0000 ($a1)
80003D78: addiu $v1, $v1, 0x0002
80003D7C: addiu $v0, $v0, 0x0010
80003D80: slt   $at, $v1, $a0
80003D84: bnel  $at, $zero, 0x80003C84
80003D88: lw    $t3, 0x0054 ($v0)
80003D8C: or    $v1, $zero, $zero
80003D90: andi  $t4, $a0, 0xFFFE
80003D94: sh    $t4, 0x0000 ($a1)
80003D98: lh    $t5, 0x0000 ($a1)
80003D9C: or    $v0, $a1, $zero
80003DA0: addiu $a0, $zero, 0x0000
80003DA4: BLEZL $t5, 0x80003E08
80003DA8: lw    $t0, 0x0070 ($sp)
80003DAC: lw    $t7, 0x0094 ($v0)
80003DB0: lw    $t3, 0x008C ($v0)
80003DB4: lw    $t6, 0x0090 ($v0)
80003DB8: lw    $t2, 0x0088 ($v0)
80003DBC: lw    $t9, 0x005C ($sp)
80003DC0: sltu  $at, $t7, $t3
80003DC4: subu  $t1, $t7, $t3
80003DC8: subu  $t0, $t6, $t2
80003DCC: lw    $t8, 0x0058 ($sp)
80003DD0: subu  $t0, $t0, $at
80003DD4: addu  $t5, $t1, $t9
80003DD8: sltu  $at, $t5, $t9
80003DDC: addu  $t4, $at, $t0
80003DE0: addu  $t4, $t4, $t8
80003DE4: sw    $t4, 0x0058 ($sp)
80003DE8: sw    $t5, 0x005C ($sp)
80003DEC: lh    $t6, 0x0000 ($a1)
80003DF0: addiu $v1, $v1, 0x0002
80003DF4: addiu $v0, $v0, 0x0010
80003DF8: slt   $at, $v1, $t6
80003DFC: bnel  $at, $zero, 0x80003DB0
80003E00: lw    $t7, 0x0094 ($v0)
80003E04: lw    $t0, 0x0070 ($sp)
80003E08: lw    $t1, 0x0074 ($sp)
80003E0C: addiu $t2, $zero, 0x0000
80003E10: addiu $t3, $zero, 0x0000
80003E14: addiu $t7, $zero, 0x00D4
80003E18: ori   $t8, $zero, 0xF94B
80003E1C: sw    $t3, 0x008C ($sp)
80003E20: sw    $t2, 0x0088 ($sp)
80003E24: sw    $t8, 0x001C ($sp)
80003E28: sw    $t7, 0x0018 ($sp)
80003E2C: addiu $a1, $zero, 0x0000
80003E30: sw    $t0, 0x0010 ($sp)
80003E34: jal   0x80003768
80003E38: sw    $t1, 0x0014 ($sp)
80003E3C: lw    $t5, 0x008C ($sp)
80003E40: lw    $t7, 0x0074 ($sp)
80003E44: lw    $t4, 0x0088 ($sp)
80003E48: lw    $t1, 0x0084 ($sp)
80003E4C: addu  $a3, $t5, $t7
80003E50: lw    $t6, 0x0070 ($sp)
80003E54: sltu  $at, $a3, $t7
80003E58: addu  $t2, $at, $t4
80003E5C: lw    $t0, 0x0080 ($sp)
80003E60: addu  $t9, $a3, $t1
80003E64: sltu  $at, $t9, $t1
80003E68: addu  $a2, $t2, $t6
80003E6C: addu  $t8, $at, $a2
80003E70: addiu $t4, $zero, 0x00D4
80003E74: ori   $t5, $zero, 0xFFCB
80003E78: addu  $t8, $t8, $t0
80003E7C: sw    $a2, 0x0088 ($sp)
80003E80: sw    $a3, 0x008C ($sp)
80003E84: sw    $t8, 0x0010 ($sp)
80003E88: sw    $t5, 0x001C ($sp)
80003E8C: sw    $t4, 0x0018 ($sp)
80003E90: sw    $t9, 0x0014 ($sp)
80003E94: addiu $a0, $zero, 0x0000
80003E98: jal   0x80003768
80003E9C: addiu $a1, $zero, 0x0000
80003EA0: lw    $t7, 0x008C ($sp)
80003EA4: lw    $t3, 0x0084 ($sp)
80003EA8: lw    $t6, 0x0088 ($sp)
80003EAC: lw    $t9, 0x007C ($sp)
80003EB0: addu  $a3, $t7, $t3
80003EB4: lw    $t2, 0x0080 ($sp)
80003EB8: sltu  $at, $a3, $t3
80003EBC: addu  $t0, $at, $t6
80003EC0: lw    $t8, 0x0078 ($sp)
80003EC4: addu  $t5, $a3, $t9
80003EC8: sltu  $at, $t5, $t9
80003ECC: addu  $a2, $t0, $t2
80003ED0: addu  $t4, $at, $a2
80003ED4: addiu $t6, $zero, 0x00D4
80003ED8: ori   $t7, $zero, 0xFBCB
80003EDC: addu  $t4, $t4, $t8
80003EE0: sw    $a2, 0x0088 ($sp)
80003EE4: sw    $a3, 0x008C ($sp)
80003EE8: sw    $t4, 0x0010 ($sp)
80003EEC: sw    $t7, 0x001C ($sp)
80003EF0: sw    $t6, 0x0018 ($sp)
80003EF4: sw    $t5, 0x0014 ($sp)
80003EF8: addiu $a0, $zero, 0x0000
80003EFC: jal   0x80003768
80003F00: addiu $a1, $zero, 0x0000
80003F04: lw    $t3, 0x008C ($sp)
80003F08: lw    $t1, 0x007C ($sp)
80003F0C: lw    $t7, 0x0064 ($sp)
80003F10: lui   $at, 0x800E
80003F14: addu  $t9, $t3, $t1
80003F18: lw    $t6, 0x0060 ($sp)
80003F1C: sw    $t9, 0xC568 ($at)
80003F20: lui   $at, 0x800E
80003F24: ori   $t3, $zero, 0xFBCB
80003F28: addiu $t2, $zero, 0x00D8
80003F2C: sw    $t2, 0x0018 ($sp)
80003F30: sw    $t3, 0x001C ($sp)
80003F34: addiu $a0, $zero, 0x0000
80003F38: addiu $a1, $zero, 0x0000
80003F3C: addiu $a2, $zero, 0x0000
80003F40: addiu $a3, $zero, 0x0000
80003F44: sw    $t7, 0xC56C ($at)
80003F48: sw    $t7, 0x0014 ($sp)
80003F4C: jal   0x80003768
80003F50: sw    $t6, 0x0010 ($sp)
80003F54: lw    $t0, 0x0068 ($sp)
80003F58: lw    $t1, 0x006C ($sp)
80003F5C: addiu $t8, $zero, 0x00D8
80003F60: ori   $t9, $zero, 0xFFCB
80003F64: sw    $t9, 0x001C ($sp)
80003F68: sw    $t8, 0x0018 ($sp)
80003F6C: addiu $a0, $zero, 0x0000
80003F70: addiu $a1, $zero, 0x0000
80003F74: addiu $a2, $zero, 0x0000
80003F78: addiu $a3, $zero, 0x0000
80003F7C: sw    $t0, 0x0010 ($sp)
80003F80: jal   0x80003768
80003F84: sw    $t1, 0x0014 ($sp)
80003F88: lw    $t4, 0x0058 ($sp)
80003F8C: lw    $t5, 0x005C ($sp)
80003F90: addiu $t6, $zero, 0x00D8
80003F94: ori   $t7, $zero, 0xF94B
80003F98: sw    $t7, 0x001C ($sp)
80003F9C: sw    $t6, 0x0018 ($sp)
80003FA0: addiu $a0, $zero, 0x0000
80003FA4: addiu $a1, $zero, 0x0000
80003FA8: addiu $a2, $zero, 0x0000
80003FAC: addiu $a3, $zero, 0x0000
80003FB0: sw    $t4, 0x0010 ($sp)
80003FB4: jal   0x80003768
80003FB8: sw    $t5, 0x0014 ($sp)
80003FBC: jal   0x80003980
80003FC0: nop
80003FC4: lw    $ra, 0x0024 ($sp)
80003FC8: addiu $sp, $sp, 0x0098
80003FCC: jr    $ra
80003FD0: nop

resourceDisplay:
    80003FD4: lui   $v1, 0x8015
    80003FD8: addiu $v1, $v1, 0x0298
    80003FDC: lw    $v0, 0x0000 ($v1)
    80003FE0: addiu $sp, $sp, 0xFFE8
    80003FE4: sw    $ra, 0x0014 ($sp)
    80003FE8: addiu $t6, $v0, 0x0008
    80003FEC: sw    $t6, 0x0000 ($v1)
    80003FF0: lui   $t7, 0xE700
    80003FF4: sw    $t7, 0x0000 ($v0)
    80003FF8: sw    $zero, 0x0004 ($v0)
    80003FFC: lw    $v0, 0x0000 ($v1)
    80004000: lui   $t1, 0x0050
    80004004: ori   $t1, $t1, 0x03C0
    80004008: addiu $t8, $v0, 0x0008
    8000400C: sw    $t8, 0x0000 ($v1)
    80004010: lui   $t9, 0xED00
    80004014: sw    $t9, 0x0000 ($v0)
    80004018: sw    $t1, 0x0004 ($v0)
    8000401C: lw    $v0, 0x0000 ($v1)
    80004020: lui   $t3, 0xB900
    80004024: lui   $t4, 0x0F0A
    80004028: addiu $t2, $v0, 0x0008
    8000402C: sw    $t2, 0x0000 ($v1)
    80004030: ori   $t4, $t4, 0x4000
    80004034: ori   $t3, $t3, 0x031D
    80004038: sw    $t3, 0x0000 ($v0)
    8000403C: sw    $t4, 0x0004 ($v0)
    80004040: lw    $v0, 0x0000 ($v1)
    80004044: lui   $t6, 0xBA00
    80004048: ori   $t6, $t6, 0x1402
    8000404C: addiu $t5, $v0, 0x0008
    80004050: sw    $t5, 0x0000 ($v1)
    80004054: lui   $t7, 0x0030
    80004058: sw    $t7, 0x0004 ($v0)
    8000405C: sw    $t6, 0x0000 ($v0)
    80004060: lw    $v0, 0x0000 ($v1)
    80004064: lui   $t9, 0xF700
    80004068: lui   $t1, 0x800E
    8000406C: addiu $t8, $v0, 0x0008
    80004070: sw    $t8, 0x0000 ($v1)
    80004074: sw    $zero, 0x0004 ($v0)
    80004078: sw    $t9, 0x0000 ($v0)
    8000407C: lw    $t1, 0xC4BC ($t1)
    80004080: lui   $v0, 0x800E
    80004084: addiu $v0, $v0, 0xC664
    80004088: lhu   $t2, 0x0006 ($t1)
    8000408C: andi  $t3, $t2, 0x0020
    80004090: beq   $t3, $zero, 0x800040A4
    80004094: nop
    80004098: lh    $t4, 0x0000 ($v0)
    8000409C: Xori   $t5, $t4, 0x0001
    800040A0: sh    $t5, 0x0000 ($v0)
    800040A4: jal   0x80003B04
    800040A8: nop
    800040AC: lw    $ra, 0x0014 ($sp)
    800040B0: addiu $sp, $sp, 0x0018
    800040B4: jr    $ra
    800040B8: nop

800040BC: nop
800040C0: addiu $sp, $sp, 0xFFF8
800040C4: sll   $t6, $a3, 0x3
800040C8: lui   $t7, 0x800E
800040CC: sw    $s0, 0x0004 ($sp)
800040D0: addiu $t7, $t7, 0xC674
800040D4: or    $s0, $a0, $zero
800040D8: addu  $t0, $t6, $t7
800040DC: addiu $a3, $zero, 0x0140
800040E0: or    $v0, $zero, $zero
800040E4: addiu $t2, $zero, 0x0008
800040E8: ori   $t1, $zero, 0xFFFF
800040EC: lbu    $v1, 0x0000 ($t0)
800040F0: addiu $a0, $zero, 0x0005
800040F4: andi  $t8, $v1, 0x0001
800040F8: beq   $t8, $zero, 0x8000411C
800040FC: addu  $t9, $a2, $v0
80004100: multu $t9, $a3
80004104: mflo  $t3
80004108: addu  $t4, $t3, $a1
8000410C: addu  $t5, $t4, $a0
80004110: sll   $t6, $t5, 0x1
80004114: addu  $t7, $s0, $t6
80004118: sh    $t1, 0x0000 ($t7)
8000411C: addiu $a0, $a0, 0xFFFF
80004120: sra   $t8, $v1, 0x1
80004124: bgez  $a0, 0x800040F4
80004128: or    $v1, $t8, $zero
8000412C: addiu $v0, $v0, 0x0001
80004130: bne   $v0, $t2, 0x800040EC
80004134: addiu $t0, $t0, 0x0001
80004138: lw    $s0, 0x0004 ($sp)
8000413C: jr    $ra
80004140: addiu $sp, $sp, 0x0008

80004144: addiu $sp, $sp, 0xFFD0
80004148: sw    $s4, 0x0028 ($sp)
8000414C: sw    $s3, 0x0024 ($sp)
80004150: sw    $s2, 0x0020 ($sp)
80004154: sw    $s0, 0x0018 ($sp)
80004158: or    $s3, $a0, $zero
8000415C: sw    $ra, 0x002C ($sp)
80004160: sw    $s1, 0x001C ($sp)
80004164: addiu $s0, $zero, 0x002E
80004168: addiu $s2, $zero, 0x0028
8000416C: addiu $s4, $zero, 0x002C
80004170: addiu $t5, $zero, 0x0006
80004174: addiu $t4, $zero, 0x0006
80004178: addiu $t3, $zero, 0x0006
8000417C: addiu $t2, $zero, 0x0006
80004180: addiu $t1, $zero, 0x0006
80004184: ori   $a3, $zero, 0xFFFF
80004188: ori   $a2, $zero, 0xF801
8000418C: slt   $at, $s2, $s0
80004190: beq   $at, $zero, 0x8000425C
80004194: or    $s1, $s2, $zero
80004198: slt   $at, $s2, $s0
8000419C: beq   $at, $zero, 0x80004250
800041A0: or    $v1, $s2, $zero
800041A4: sll   $t6, $s1, 0x2
800041A8: addu  $t6, $t6, $s1
800041AC: subu  $a0, $s0, $s2
800041B0: andi  $t0, $a0, 0x0003
800041B4: sll   $t7, $t6, 0x7
800041B8: beq   $t0, $zero, 0x800041EC
800041BC: addu  $ra, $s3, $t7
800041C0: sll   $t8, $v1, 0x1
800041C4: addu  $v0, $ra, $t8
800041C8: addu  $a1, $t0, $s2
800041CC: bne   $t1, $a0, 0x800041DC
800041D0: addiu $v1, $v1, 0x0001
800041D4: beq   $zero, $zero, 0x800041E0
800041D8: sh    $a2, 0x0000 ($v0)
800041DC: sh    $a3, 0x0000 ($v0)
800041E0: bne   $a1, $v1, 0x800041CC
800041E4: addiu $v0, $v0, 0x0002
800041E8: beq   $v1, $s0, 0x80004250
800041EC: sll   $a1, $v1, 0x1
800041F0: addu  $v0, $ra, $a1
800041F4: sll   $t0, $s0, 0x1
800041F8: bne   $t2, $a0, 0x80004208
800041FC: addiu $a1, $a1, 0x0008
80004200: beq   $zero, $zero, 0x8000420C
80004204: sh    $a2, 0x0000 ($v0)
80004208: sh    $a3, 0x0000 ($v0)
8000420C: bnel  $t3, $a0, 0x80004220
80004210: sh    $a3, 0x0002 ($v0)
80004214: beq   $zero, $zero, 0x80004220
80004218: sh    $a2, 0x0002 ($v0)
8000421C: sh    $a3, 0x0002 ($v0)
80004220: bnel  $t4, $a0, 0x80004234
80004224: sh    $a3, 0x0004 ($v0)
80004228: beq   $zero, $zero, 0x80004234
8000422C: sh    $a2, 0x0004 ($v0)
80004230: sh    $a3, 0x0004 ($v0)
80004234: bnel  $t5, $a0, 0x80004248
80004238: sh    $a3, 0x0006 ($v0)
8000423C: beq   $zero, $zero, 0x80004248
80004240: sh    $a2, 0x0006 ($v0)
80004244: sh    $a3, 0x0006 ($v0)
80004248: bne   $a1, $t0, 0x800041F8
8000424C: addiu $v0, $v0, 0x0008
80004250: addiu $s1, $s1, 0x0001
80004254: bnel  $s1, $s0, 0x8000419C
80004258: slt   $at, $s2, $s0
8000425C: addiu $s0, $s0, 0xFFFF
80004260: bne   $s4, $s0, 0x8000418C
80004264: addiu $s2, $s2, 0x0001
80004268: jal   osWriteBackDCacheAll
8000426C: nop
80004270: jal   osViSwapBuffer
80004274: or    $a0, $s3, $zero
80004278: lw    $ra, 0x002C ($sp)
8000427C: lw    $s0, 0x0018 ($sp)
80004280: lw    $s1, 0x001C ($sp)
80004284: lw    $s2, 0x0020 ($sp)
80004288: lw    $s3, 0x0024 ($sp)
8000428C: lw    $s4, 0x0028 ($sp)
80004290: jr    $ra
80004294: addiu $sp, $sp, 0x0030

80004298: addiu $sp, $sp, 0xFFD0
8000429C: sw    $s5, 0x0028 ($sp)
800042A0: sw    $s3, 0x0020 ($sp)
800042A4: or    $s3, $a1, $zero
800042A8: or    $s5, $a0, $zero
800042AC: lui   $t1, 0x800E
800042B0: sw    $ra, 0x002C ($sp)
800042B4: sw    $s4, 0x0024 ($sp)
800042B8: sw    $s2, 0x001C ($sp)
800042BC: sw    $s1, 0x0018 ($sp)
800042C0: sw    $s0, 0x0014 ($sp)
800042C4: addiu $t1, $t1, 0xC670
800042C8: addiu $a0, $zero, 0x0001
800042CC: addiu $a1, $zero, 0x0078
800042D0: or    $t0, $zero, $zero
800042D4: addiu $t2, $zero, 0x0018
800042D8: lw    $t6, 0x0000 ($t1)
800042DC: or    $a2, $zero, $zero
800042E0: multu $t6, $t2
800042E4: mflo  $t7
800042E8: addu  $v0, $t7, $t0
800042EC: addiu $v0, $v0, 0x0030
800042F0: sll   $t8, $v0, 0x2
800042F4: addu  $t8, $t8, $v0
800042F8: sll   $t9, $t8, 0x7
800042FC: addu  $a3, $s5, $t9
80004300: or    $v1, $zero, $zero
80004304: or    $v0, $a3, $zero
80004308: addiu $v1, $v1, 0x0004
8000430C: sh    $a0, 0x00CA ($v0)
80004310: sh    $a0, 0x00CC ($v0)
80004314: sh    $a0, 0x00CE ($v0)
80004318: addiu $v0, $v0, 0x0008
8000431C: bne   $v1, $a1, 0x80004308
80004320: sh    $a0, 0x00C0 ($v0)
80004324: addiu $a2, $a2, 0x0001
80004328: slti  $at, $a2, 0x0010
8000432C: bnez  $at, 0x80004300
80004330: addiu $a3, $a3, 0x0280
80004334: addiu $t0, $t0, 0x0014
80004338: slti  $at, $t0, 0x003C
8000433C: bnel  $at, $zero, 0x800042DC
80004340: lw    $t6, 0x0000 ($t1)
80004344: lw    $t3, 0x0000 ($t1)
80004348: lw    $a3, 0x0014 ($s3)
8000434C: or    $a0, $s5, $zero
80004350: multu $t3, $t2
80004354: andi  $t4, $a3, 0x000F
80004358: or    $a3, $t4, $zero
8000435C: addiu $a1, $zero, 0x006C
80004360: mflo  $v0
80004364: addiu $s0, $v0, 0x0035
80004368: jal   0x800040C0
8000436C: or    $a2, $s0, $zero
80004370: or    $a0, $s5, $zero
80004374: addiu $a1, $zero, 0x0074
80004378: or    $a2, $s0, $zero
8000437C: jal   0x800040C0
80004380: addiu $a3, $zero, 0x0010
80004384: addiu $s2, $s3, 0x0020
80004388: lw    $s4, 0x00FC ($s2)
8000438C: addiu $s1, $zero, 0x00B4
80004390: or    $a0, $s5, $zero
80004394: or    $a1, $s1, $zero
80004398: or    $a2, $s0, $zero
8000439C: jal   0x800040C0
800043A0: andi  $a3, $s4, 0x000F
800043A4: addiu $s1, $s1, 0xFFF8
800043A8: slti  $at, $s1, 0x007C
800043AC: srl   $t5, $s4, 0x4
800043B0: beq   $at, $zero, 0x80004390
800043B4: or    $s4, $t5, $zero
800043B8: lw    $s1, 0x0100 ($s2)
800043BC: or    $a0, $s5, $zero
800043C0: addiu $a1, $zero, 0x00BC
800043C4: srl   $t6, $s1, 0x2
800043C8: andi  $s1, $t6, 0x001F
800043CC: or    $a2, $s0, $zero
800043D0: jal   0x800040C0
800043D4: addiu $a3, $zero, 0x0010
800043D8: or    $a0, $s5, $zero
800043DC: addiu $a1, $zero, 0x00C4
800043E0: or    $a2, $s0, $zero
800043E4: jal   0x800040C0
800043E8: srl   $a3, $s1, 0x4
800043EC: or    $a0, $s5, $zero
800043F0: addiu $a1, $zero, 0x00CC
800043F4: or    $a2, $s0, $zero
800043F8: jal   0x800040C0
800043FC: andi  $a3, $s1, 0x000F
80004400: lw    $s4, 0x00E4 ($s2)
80004404: addiu $s1, $zero, 0x00B4
80004408: or    $a0, $s5, $zero
8000440C: or    $a1, $s1, $zero
80004410: addiu $a2, $zero, 0x0049
80004414: jal   0x800040C0
80004418: andi  $a3, $s4, 0x000F
8000441C: addiu $s1, $s1, 0xFFF8
80004420: slti  $at, $s1, 0x007C
80004424: srl   $t3, $s4, 0x4
80004428: beq   $at, $zero, 0x80004408
8000442C: or    $s4, $t3, $zero
80004430: lw    $v0, 0x00FC ($s2)
80004434: addiu $at, $zero, 0xFFFC
80004438: addiu $s1, $zero, 0x00B4
8000443C: and   $t4, $v0, $at
80004440: lui   $at, 0x8000
80004444: ori   $at, $at, 0x0001
80004448: sltu  $at, $t4, $at
8000444C: bnez  $at, 0x80004468
80004450: lui   $at, 0x803F
80004454: ori   $at, $at, 0xFF7F
80004458: sltu  $at, $t4, $at
8000445C: beq   $at, $zero, 0x80004468
80004460: nop
80004464: lw    $s4, 0x0000 ($t4)
80004468: or    $a0, $s5, $zero
8000446C: or    $a1, $s1, $zero
80004470: addiu $a2, $zero, 0x005D
80004474: jal   0x800040C0
80004478: andi  $a3, $s4, 0x000F
8000447C: addiu $s1, $s1, 0xFFF8
80004480: slti  $at, $s1, 0x007C
80004484: srl   $t5, $s4, 0x4
80004488: beq   $at, $zero, 0x80004468
8000448C: or    $s4, $t5, $zero
80004490: jal   osWriteBackDCacheAll
80004494: nop
80004498: jal   osViSwapBuffer
8000449C: or    $a0, $s5, $zero
800044A0: lw    $ra, 0x002C ($sp)
800044A4: lw    $s0, 0x0014 ($sp)
800044A8: lw    $s1, 0x0018 ($sp)
800044AC: lw    $s2, 0x001C ($sp)
800044B0: lw    $s3, 0x0020 ($sp)
800044B4: lw    $s4, 0x0024 ($sp)
800044B8: lw    $s5, 0x0028 ($sp)
800044BC: jr    $ra
800044C0: addiu $sp, $sp, 0x0030

# called by debug thread
800044C4: addiu $sp, $sp, 0xFFE8
800044C8: sw    $ra, 0x0014 ($sp)
800044CC: jal   0x800CE130 # returns u32 from 800EB3AC which points to thread5
800044D0: nop
800044D4: lw    $t6, 0x0004 ($v0) # get priority
800044D8: addiu $a0, $zero, 0xFFFF
800044DC: or    $v1, $v0, $zero
800044E0: beq   $a0, $t6, 0x80004524 # if priority == 0xFFFF, return 0
800044E4: lw    $ra, 0x0014 ($sp)

800044E8: lw    $v0, 0x0004 ($v0) # get priority
    800044EC: blez  $v0, 0x80004514
        800044F0: slti  $at, $v0, 0x0080
        800044F4: beql  $at, $zero, 0x80004518
        800044F8: lw    $v1, 0x000C ($v1) # get tlnext
            800044FC: lhu   $t7, 0x0012 ($v1) # get flags
            80004500: andi  $t8, $t7, 0x0003
            80004504: beql  $t8, $zero, 0x80004518
            80004508: lw    $v1, 0x000C ($v1) # get tlnext

            8000450C: beq   $zero, $zero, 0x80004528 # return tlnext
            80004510: or    $v0, $v1, $zero
    80004514: lw    $v1, 0x000C ($v1) # get tlnext
    80004518: lw    $v0, 0x0004 ($v1) # get tlnext->priority
8000451C: bne   $a0, $v0, 0x800044EC # priority == 0xFFFF?
80004520: nop

80004524: or    $v0, $zero, $zero
80004528: jr    $ra
8000452C: addiu $sp, $sp, 0x0018

thread9_main:
80004530: addiu $sp, $sp, 0xFFB8
80004534: sw    $s7, 0x0030 ($sp)
80004538: lui   $s7, 0x8016
8000453C: addiu $s7, $s7, 0x2D40
80004540: sw    $ra, 0x0034 ($sp)
80004544: sw    $a0, 0x0048 ($sp)
80004548: sw    $s6, 0x002C ($sp)
8000454C: sw    $s5, 0x0028 ($sp)
80004550: sw    $s4, 0x0024 ($sp)
80004554: sw    $s3, 0x0020 ($sp)
80004558: sw    $s2, 0x001C ($sp)
8000455C: sw    $s1, 0x0018 ($sp)
80004560: sw    $s0, 0x0014 ($sp)
80004564: addiu $a0, $zero, 0x000C
80004568: or    $a1, $s7, $zero
8000456C: jal   osSetEventMsg
80004570: addiu $a2, $zero, 0x0010
80004574: addiu $a0, $zero, 0x000A
80004578: or    $a1, $s7, $zero
8000457C: jal   osSetEventMsg
80004580: addiu $a2, $zero, 0x0010

80004584: lui   $s0, 0x8016
80004588: addiu $s0, $s0, 0x2D60
8000458C: lui   $s5, 0x8016
80004590: lui   $s4, 0x800E
80004594: lui   $s2, 0x800E
80004598: lui   $s1, 0x800E
8000459C: sw    $zero, 0x0000 ($s0)
800045A0: addiu $s1, $s1, 0xC6FC
800045A4: addiu $s2, $s2, 0xC4BC
800045A8: addiu $s4, $s4, 0xC670
800045AC: addiu $s5, $s5, 0x2D5C
800045B0: addiu $s6, $sp, 0x0044
800045B4: ori   $s3, $zero, 0xFFFF

800045B8: or    $a0, $s7, $zero
800045BC: or    $a1, $s6, $zero
800045C0: jal   osRecvMesg
800045C4: addiu $a2, $zero, 0x0001
800045C8: jal   0x800044C4
800045CC: nop
800045D0: lui   $at, 0x8016
800045D4: beq   $v0, $zero, 0x800045B8
800045D8: sw    $v0, 0x2D64 ($at)

800045DC: lw    $v0, 0x0000 ($s4)
800045E0: bnel  $v0, $zero, 0x80004660
800045E4: slti  $at, $v0, 0x0005

    800045E8: jal   0x80004144
    800045EC: lw    $a0, 0x0000 ($s5)
        800045F0: jal   0x80000A28
        800045F4: nop
        800045F8: lw    $t6, 0x0000 ($s2)
        800045FC: lhu   $v0, 0x0006 ($t6)
        80004600: beq   $v0, $zero, 0x800045F0
        80004604: nop
    80004608: lw    $v1, 0x0000 ($s0)
    8000460C: sll   $t7, $v1, 0x1
    80004610: addu  $t8, $s1, $t7
    80004614: lhu   $t9, 0x0000 ($t8)
    80004618: addiu $t0, $v1, 0x0001
    8000461C: bnel  $v0, $t9, 0x80004630
    80004620: sw    $zero, 0x0000 ($s0)
        80004624: beq   $zero, $zero, 0x80004630
        80004628: sw    $t0, 0x0000 ($s0)

    8000462C: sw    $zero, 0x0000 ($s0) # unreachable

    80004630: lw    $t1, 0x0000 ($s0)
    80004634: sll   $t2, $t1, 0x1
    80004638: addu  $t3, $s1, $t2
    8000463C: lhu   $t4, 0x0000 ($t3)
    80004640: bne   $s3, $t4, 0x800045F0
    80004644: nop

    80004648: lui   $a1, 0x8016
    8000464C: lw    $a1, 0x2D64 ($a1)
    80004650: jal   0x80004298
    80004654: lw    $a0, 0x0000 ($s5)
    80004658: lw    $v0, 0x0000 ($s4)
8000465C: slti  $at, $v0, 0x0005

80004660: beql  $at, $zero, 0x800045BC
80004664: or    $a0, $s7, $zero
80004668: addiu $t5, $v0, 0x0001
8000466C: beq   $zero, $zero, 0x800045B8
80004670: sw    $t5, 0x0000 ($s4)
80004674: nop
80004678: nop
8000467C: nop
80004680: lw    $ra, 0x0034 ($sp)
80004684: lw    $s0, 0x0014 ($sp)
80004688: lw    $s1, 0x0018 ($sp)
8000468C: lw    $s2, 0x001C ($sp)
80004690: lw    $s3, 0x0020 ($sp)
80004694: lw    $s4, 0x0024 ($sp)
80004698: lw    $s5, 0x0028 ($sp)
8000469C: lw    $s6, 0x002C ($sp)
800046A0: lw    $s7, 0x0030 ($sp)
800046A4: jr    $ra
800046A8: addiu $sp, $sp, 0x0048

800046AC: lui   $at, 0x8016
800046B0: jr    $ra
800046B4: sw    $a0, 0x2D5C ($at)

800046B8: addiu $sp, $sp, 0xFFE0
800046BC: sw    $ra, 0x001C ($sp)
800046C0: lui   $a0, 0x8016
800046C4: lui   $a1, 0x8016
800046C8: addiu $a1, $a1, 0x2D58
800046CC: addiu $a0, $a0, 0x2D40
800046D0: jal   osCreateMesgQueue
800046D4: addiu $a2, $zero, 0x0001

800046D8: lui   $t6, 0x8016
800046DC: addiu $t6, $t6, 0x2D40
800046E0: lui   $a0, 0x8016
800046E4: lui   $a2, 0x8000
800046E8: addiu $t7, $zero, 0x007F
800046EC: sw    $t7, 0x0014 ($sp)
800046F0: addiu $a2, $a2, 0x4530
800046F4: addiu $a0, $a0, 0x2790
800046F8: sw    $t6, 0x0010 ($sp)
800046FC: addiu $a1, $zero, 0x0009
80004700: jal   osCreateThread
80004704: or    $a3, $zero, $zero

80004708: lw    $ra, 0x001C ($sp)
8000470C: addiu $sp, $sp, 0x0020
80004710: jr    $ra
80004714: nop

80004718: addiu $sp, $sp, 0xFFE8
8000471C: sw    $ra, 0x0014 ($sp)
80004720: lui   $a0, 0x8016
80004724: jal   osStartThread
80004728: addiu $a0, $a0, 0x2790
8000472C: lw    $ra, 0x0014 ($sp)
80004730: addiu $sp, $sp, 0x0018
80004734: jr    $ra
80004738: nop

8000473C: nop
80004740: lui   $at, 0x4780
80004744: addiu $sp, $sp, 0xFFE8
80004748: or    $v0, $a0, $zero
8000474C: addiu $v1, $a0, 0x0020
80004750: or    $a2, $a1, $zero
80004754: mtc1  $at, F0
80004758: addiu $a1, $zero, 0x0010
8000475C: addiu $a0, $sp, 0x0014
80004760: or    $a3, $zero, $zero
80004764: lwc1  F16, 0x0000 ($a2)
80004768: addiu $a3, $a3, 0x0004
8000476C: mul.s F18, F16, F0
80004770: beql  $a3, $a1, 0x80004830
80004774: trunc.w.s F16, F18
80004778: trunc.w.s F16, F18
8000477C: addiu $a3, $a3, 0x0004
80004780: addiu $a2, $a2, 0x0010
80004784: addiu $v0, $v0, 0x0008
80004788: mfc1  $t7, F16
8000478C: addiu $v1, $v1, 0x0008
80004790: sw    $t7, 0x0014 ($sp)
80004794: lh    $t8, 0x0000 ($a0)
80004798: sh    $t8, 0xFFF8 ($v0)
8000479C: lh    $t9, 0x0002 ($a0)
800047A0: sh    $t9, 0xFFF8 ($v1)
800047A4: lwc1  F16, 0xFFF4 ($a2)
800047A8: mul.s F16, F16, F0
800047AC: trunc.w.s F16, F16
800047B0: mfc1  $t1, F16
800047B4: nop
800047B8: sw    $t1, 0x0014 ($sp)
800047BC: lh    $t2, 0x0000 ($a0)
800047C0: sh    $t2, 0xFFFA ($v0)
800047C4: lh    $t3, 0x0002 ($a0)
800047C8: sh    $t3, 0xFFFA ($v1)
800047CC: lwc1  F16, 0xFFF8 ($a2)
800047D0: mul.s F16, F16, F0
800047D4: trunc.w.s F16, F16
800047D8: mfc1  $t5, F16
800047DC: nop
800047E0: sw    $t5, 0x0014 ($sp)
800047E4: lh    $t6, 0x0000 ($a0)
800047E8: sh    $t6, 0xFFFC ($v0)
800047EC: lh    $t7, 0x0002 ($a0)
800047F0: sh    $t7, 0xFFFC ($v1)
800047F4: lwc1  F16, 0xFFFC ($a2)
800047F8: mul.s F16, F16, F0
800047FC: trunc.w.s F16, F16
80004800: mfc1  $t9, F16
80004804: nop
80004808: sw    $t9, 0x0014 ($sp)
8000480C: lh    $t0, 0x0000 ($a0)
80004810: sh    $t0, 0xFFFE ($v0)
80004814: lh    $t1, 0x0002 ($a0)
80004818: sh    $t1, 0xFFFE ($v1)
8000481C: lwc1  F16, 0x0000 ($a2)
80004820: mul.s F18, F16, F0
80004824: bnel  $a3, $a1, 0x8000477C
80004828: trunc.w.s F16, F18
8000482C: trunc.w.s F16, F18
80004830: addiu $a2, $a2, 0x0010
80004834: addiu $v0, $v0, 0x0008
80004838: addiu $v1, $v1, 0x0008
8000483C: mfc1  $t7, F16
80004840: nop
80004844: sw    $t7, 0x0014 ($sp)
80004848: lh    $t8, 0x0000 ($a0)
8000484C: sh    $t8, 0xFFF8 ($v0)
80004850: lh    $t9, 0x0002 ($a0)
80004854: sh    $t9, 0xFFF8 ($v1)
80004858: lwc1  F16, 0xFFF4 ($a2)
8000485C: mul.s F16, F16, F0
80004860: trunc.w.s F16, F16
80004864: mfc1  $t1, F16
80004868: nop
8000486C: sw    $t1, 0x0014 ($sp)
80004870: lh    $t2, 0x0000 ($a0)
80004874: sh    $t2, 0xFFFA ($v0)
80004878: lh    $t3, 0x0002 ($a0)
8000487C: sh    $t3, 0xFFFA ($v1)
80004880: lwc1  F16, 0xFFF8 ($a2)
80004884: mul.s F16, F16, F0
80004888: trunc.w.s F16, F16
8000488C: mfc1  $t5, F16
80004890: nop
80004894: sw    $t5, 0x0014 ($sp)
80004898: lh    $t6, 0x0000 ($a0)
8000489C: sh    $t6, 0xFFFC ($v0)
800048A0: lh    $t7, 0x0002 ($a0)
800048A4: sh    $t7, 0xFFFC ($v1)
800048A8: lwc1  F16, 0xFFFC ($a2)
800048AC: mul.s F16, F16, F0
800048B0: trunc.w.s F16, F16
800048B4: mfc1  $t9, F16
800048B8: nop
800048BC: sw    $t9, 0x0014 ($sp)
800048C0: lh    $t0, 0x0000 ($a0)
800048C4: sh    $t0, 0xFFFE ($v0)
800048C8: lh    $t1, 0x0002 ($a0)
800048CC: sh    $t1, 0xFFFE ($v1)
800048D0: jr    $ra
800048D4: addiu $sp, $sp, 0x0018

800048D8: addiu $sp, $sp, 0xFFB8
800048DC: sw    $s0, 0x0024 ($sp)
800048E0: or    $s0, $a0, $zero
800048E4: sw    $ra, 0x002C ($sp)
800048E8: sw    $s1, 0x0028 ($sp)
800048EC: sdc1  F22, 0x0018 ($sp)
800048F0: sdc1  F20, 0x0010 ($sp)
800048F4: sw    $a1, 0x004C ($sp)
800048F8: or    $s1, $a2, $zero
800048FC: jal   0x802B8018
80004900: lhu   $a0, 0x0000 ($a2)
80004904: mov.s F20, F0
80004908: jal   0x802B8038
8000490C: lhu   $a0, 0x0000 ($s1)
80004910: mov.s F22, F0
80004914: jal   0x802B8018
80004918: lhu   $a0, 0x0002 ($s1)
8000491C: swc1  F0, 0x003C ($sp)
80004920: jal   0x802B8038
80004924: lhu   $a0, 0x0002 ($s1)
80004928: lhu   $a0, 0x0004 ($s1)
8000492C: jal   0x802B8018
80004930: swc1  F0, 0x0038 ($sp)
80004934: lhu   $a0, 0x0004 ($s1)
80004938: jal   0x802B8038
8000493C: swc1  F0, 0x0034 ($sp)
80004940: lwc1  F14, 0x0038 ($sp)
80004944: lwc1  F2, 0x0034 ($sp)
80004948: lwc1  F18, 0x003C ($sp)
8000494C: mul.s F4, F14, F0
80004950: mtc1  $zero, F16
80004954: neg.s F8, F18
80004958: mul.s F6, F14, F2
8000495C: swc1  F8, 0x0008 ($s0)
80004960: swc1  F16, 0x000C ($s0)
80004964: mul.s F12, F20, F18
80004968: swc1  F4, 0x0000 ($s0)
8000496C: lui   $at, 0x3F80
80004970: swc1  F6, 0x0004 ($s0)
80004974: mul.s F10, F12, F0
80004978: nop
8000497C: mul.s F4, F22, F2
80004980: sub.s F6, F10, F4
80004984: mul.s F8, F12, F2
80004988: nop
8000498C: mul.s F10, F22, F0
80004990: swc1  F6, 0x0010 ($s0)
80004994: mul.s F6, F20, F14
80004998: nop
8000499C: mul.s F12, F22, F18
800049A0: add.s F4, F8, F10
800049A4: swc1  F6, 0x0018 ($s0)
800049A8: swc1  F4, 0x0014 ($s0)
800049AC: mul.s F8, F12, F0
800049B0: lw    $v0, 0x004C ($sp)
800049B4: swc1  F16, 0x001C ($s0)
800049B8: mul.s F10, F20, F2
800049BC: swc1  F16, 0x002C ($s0)
800049C0: mul.s F6, F12, F2
800049C4: add.s F4, F8, F10
800049C8: mul.s F8, F20, F0
800049CC: swc1  F4, 0x0020 ($s0)
800049D0: mul.s F4, F22, F14
800049D4: sub.s F10, F6, F8
800049D8: swc1  F4, 0x0028 ($s0)
800049DC: mtc1  $at, F4
800049E0: swc1  F10, 0x0024 ($s0)
800049E4: lwc1  F6, 0x0000 ($v0)
800049E8: swc1  F6, 0x0030 ($s0)
800049EC: lwc1  F8, 0x0004 ($v0)
800049F0: swc1  F8, 0x0034 ($s0)
800049F4: lwc1  F10, 0x0008 ($v0)
800049F8: swc1  F4, 0x003C ($s0)
800049FC: swc1  F10, 0x0038 ($s0)
80004A00: lw    $ra, 0x002C ($sp)
80004A04: lw    $s1, 0x0028 ($sp)
80004A08: lw    $s0, 0x0024 ($sp)
80004A0C: ldc1  F22, 0x0018 ($sp)
80004A10: ldc1  F20, 0x0010 ($sp)
80004A14: jr    $ra
80004A18: addiu $sp, $sp, 0x0048

80004A1C: addiu $sp, $sp, 0xFF60
80004A20: lui   $t1, 0x8016
80004A24: addiu $t1, $t1, 0x2D76
80004A28: lh    $t0, 0x0000 ($t1)
80004A2C: sw    $ra, 0x001C ($sp)
80004A30: sw    $s0, 0x0018 ($sp)
80004A34: sw    $a0, 0x00A0 ($sp)
80004A38: lw    $t7, 0x000C ($a0)
80004A3C: or    $s0, $a1, $zero
80004A40: bnez  $t0, 0x80004ABC
80004A44: sw    $t7, 0x003C ($sp)
80004A48: or    $v1, $a0, $zero
80004A4C: lui   $a0, 0x8016
80004A50: lui   $a1, 0x8016
80004A54: addiu $a1, $a1, 0x2D76
80004A58: addiu $a0, $a0, 0x2D70
80004A5C: addiu $v0, $sp, 0x0094
80004A60: addiu $a0, $a0, 0x0002
80004A64: lh    $t9, 0xFFFE ($a0)
80004A68: beq   $a0, $a1, 0x80004A98
80004A6C: lw    $t8, 0x0010 ($v1)
80004A70: addu  $t2, $t8, $t9
80004A74: mtc1  $t2, F18
80004A78: addiu $a0, $a0, 0x0002
80004A7C: addiu $v0, $v0, 0x0004
80004A80: cvt.s.w F18, F18
80004A84: addiu $v1, $v1, 0x0004
80004A88: lh    $t9, 0xFFFE ($a0)
80004A8C: swc1  F18, 0xFFFC ($v0)
80004A90: bne   $a0, $a1, 0x80004A70
80004A94: lw    $t8, 0x0010 ($v1)
80004A98: addu  $t2, $t8, $t9
80004A9C: mtc1  $t2, F18
80004AA0: addiu $v0, $v0, 0x0004
80004AA4: addiu $v1, $v1, 0x0004
80004AA8: cvt.s.w F18, F18
80004AAC: swc1  F18, 0xFFFC ($v0)
80004AB0: addiu $t3, $t0, 0x0001
80004AB4: beq   $zero, $zero, 0x80004B00
80004AB8: sh    $t3, 0x0000 ($t1)
80004ABC: addiu $v0, $sp, 0x0094
80004AC0: lw    $v1, 0x00A0 ($sp)
80004AC4: addiu $a0, $sp, 0x00A0
80004AC8: addiu $v0, $v0, 0x0004
80004ACC: beq   $v0, $a0, 0x80004AF0
80004AD0: lw    $t4, 0x0010 ($v1)
80004AD4: mtc1  $t4, F18
80004AD8: addiu $v0, $v0, 0x0004
80004ADC: addiu $v1, $v1, 0x0004
80004AE0: cvt.s.w F18, F18
80004AE4: swc1  F18, 0xFFF8 ($v0)
80004AE8: bne   $v0, $a0, 0x80004AD4
80004AEC: lw    $t4, 0x0010 ($v1)
80004AF0: mtc1  $t4, F18
80004AF4: addiu $v1, $v1, 0x0004
80004AF8: cvt.s.w F18, F18
80004AFC: swc1  F18, 0xFFFC ($v0)
80004B00: or    $v0, $a2, $zero
80004B04: addiu $v1, $sp, 0x008C
80004B08: addiu $a1, $sp, 0x0092
80004B0C: lhu   $t5, 0x0000 ($v0)
80004B10: or    $a0, $zero, $zero
80004B14: slt   $at, $a3, $t5
80004B18: beq   $at, $zero, 0x80004B28
80004B1C: nop
80004B20: beq   $zero, $zero, 0x80004B28
80004B24: or    $a0, $a3, $zero
80004B28: lhu   $t7, 0x0002 ($v0)
80004B2C: sll   $t9, $a0, 0x1
80004B30: addiu $v1, $v1, 0x0002
80004B34: sll   $t6, $t7, 0x1
80004B38: addu  $t8, $s0, $t6
80004B3C: addu  $t2, $t8, $t9
80004B40: lh    $t3, 0x0000 ($t2)
80004B44: addiu $v0, $v0, 0x0004
80004B48: bne   $v1, $a1, 0x80004B0C
80004B4C: sh    $t3, 0xFFFE ($v1)
80004B50: addiu $a0, $sp, 0x004C
80004B54: addiu $a1, $sp, 0x0094
80004B58: jal   0x800048D8
80004B5C: addiu $a2, $sp, 0x008C
80004B60: lui   $s0, 0x8019
80004B64: addiu $s0, $s0, 0xD120
80004B68: lw    $t5, 0x0000 ($s0)
80004B6C: lui   $t4, 0x8015
80004B70: lw    $t4, 0xEF40 ($t4)
80004B74: sll   $t7, $t5, 0x6
80004B78: addiu $a1, $sp, 0x004C
80004B7C: addu  $a0, $t4, $t7
80004B80: jal   0x80004740
80004B84: addiu $a0, $a0, 0x02C0
80004B88: lui   $a0, 0x8016
80004B8C: lui   $a1, 0x8015
80004B90: addiu $a1, $a1, 0x0298
80004B94: addiu $a0, $a0, 0x2D7A
80004B98: lh    $t6, 0x0000 ($a0)
80004B9C: lw    $v1, 0x0000 ($a1)
80004BA0: lui   $t2, 0x0104
80004BA4: addiu $t8, $t6, 0x0001
80004BA8: addiu $t9, $v1, 0x0008
80004BAC: lw    $a2, 0x003C ($sp)
80004BB0: sh    $t8, 0x0000 ($a0)
80004BB4: sw    $t9, 0x0000 ($a1)
80004BB8: ori   $t2, $t2, 0x0040
80004BBC: sw    $t2, 0x0000 ($v1)
80004BC0: lw    $t5, 0x0000 ($s0)
80004BC4: lui   $t3, 0x8015
80004BC8: lw    $t3, 0xEF40 ($t3)
80004BCC: lui   $at, 0x8000
80004BD0: sll   $t4, $t5, 0x6
80004BD4: ori   $at, $at, 0x02C0
80004BD8: addu  $t7, $t3, $t4
80004BDC: addu  $t6, $t7, $at
80004BE0: sw    $t6, 0x0004 ($v1)
80004BE4: lw    $t8, 0x0000 ($s0)
80004BE8: addiu $t9, $t8, 0x0001
80004BEC: beq   $a2, $zero, 0x80004C1C
80004BF0: sw    $t9, 0x0000 ($s0)
80004BF4: jal   doItemLookup
80004BF8: or    $a0, $a2, $zero
80004BFC: lui   $a1, 0x8015
80004C00: addiu $a1, $a1, 0x0298
80004C04: lw    $v1, 0x0000 ($a1)
80004C08: lui   $t5, 0x0600
80004C0C: addiu $t2, $v1, 0x0008
80004C10: sw    $t2, 0x0000 ($a1)
80004C14: sw    $v0, 0x0004 ($v1)
80004C18: sw    $t5, 0x0000 ($v1)
80004C1C: lw    $ra, 0x001C ($sp)
80004C20: lw    $s0, 0x0018 ($sp)
80004C24: addiu $sp, $sp, 0x00A0
80004C28: jr    $ra
80004C2C: nop

80004C30: addiu $sp, $sp, 0xFFB8
80004C34: sw    $s2, 0x0020 ($sp)
80004C38: or    $s2, $a0, $zero
80004C3C: sw    $ra, 0x003C ($sp)
80004C40: sw    $s8, 0x0038 ($sp)
80004C44: sw    $s7, 0x0034 ($sp)
80004C48: sw    $s6, 0x0030 ($sp)
80004C4C: sw    $s5, 0x002C ($sp)
80004C50: sw    $s4, 0x0028 ($sp)
80004C54: sw    $s3, 0x0024 ($sp)
80004C58: sw    $s1, 0x001C ($sp)
80004C5C: sw    $s0, 0x0018 ($sp)
80004C60: sw    $a2, 0x0050 ($sp)
80004C64: lw    $a0, 0x000C ($a1)
80004C68: or    $s0, $a1, $zero
80004C6C: jal   doItemLookup
80004C70: sh    $a2, 0x0052 ($sp)
80004C74: sw    $v0, 0x0040 ($sp)
80004C78: jal   doItemLookup
80004C7C: lw    $a0, 0x0010 ($s0)
80004C80: lui   $s3, 0x8016
80004C84: addiu $s3, $s3, 0x2D7A
80004C88: sh    $zero, 0x0000 ($s3)
80004C8C: lui   $at, 0x8016
80004C90: lui   $v1, 0x8016
80004C94: lui   $a2, 0x8016
80004C98: lh    $a3, 0x0052 ($sp)
80004C9C: sh    $zero, 0x2D76 ($at)
80004CA0: addiu $a2, $a2, 0x2D76
80004CA4: addiu $v1, $v1, 0x2D70
80004CA8: or    $a0, $v0, $zero
80004CAC: lw    $t0, 0x0040 ($sp)
80004CB0: lhu   $t7, 0x0000 ($a0)
80004CB4: or    $a1, $zero, $zero
80004CB8: slt   $at, $a3, $t7
80004CBC: beq   $at, $zero, 0x80004CCC
80004CC0: nop
80004CC4: beq   $zero, $zero, 0x80004CCC
80004CC8: or    $a1, $a3, $zero
80004CCC: lhu   $t8, 0x0002 ($a0)
80004CD0: sll   $t2, $a1, 0x1
80004CD4: addiu $v1, $v1, 0x0002
80004CD8: sll   $t9, $t8, 0x1
80004CDC: addu  $t1, $t0, $t9
80004CE0: addu  $t3, $t1, $t2
80004CE4: lh    $t4, 0x0000 ($t3)
80004CE8: addiu $a0, $a0, 0x0004
80004CEC: bne   $v1, $a2, 0x80004CB0
80004CF0: sh    $t4, 0xFFFE ($v1)
80004CF4: lui   $s5, 0x8016
80004CF8: addiu $s5, $s5, 0x2D78
80004CFC: lui   $s1, 0x8015
80004D00: addiu $s4, $v0, 0x000C
80004D04: sh    $zero, 0x0000 ($s5)
80004D08: addiu $s1, $s1, 0x0298
80004D0C: lui   $s8, 0xBD00
80004D10: addiu $s7, $zero, 0x0003
80004D14: addiu $s6, $zero, 0x0001
80004D18: lw    $s0, 0x0000 ($s2)
80004D1C: or    $a0, $s2, $zero
80004D20: or    $a2, $s4, $zero
80004D24: beql  $s0, $zero, 0x80004D7C
80004D28: lh    $t8, 0x0000 ($s5)
80004D2C: beq   $s0, $s6, 0x80004D4C
80004D30: addiu $at, $zero, 0x0002
80004D34: beql  $s0, $at, 0x80004D58
80004D38: lw    $v1, 0x0000 ($s1)
80004D3C: beql  $s0, $s7, 0x80004DC0
80004D40: lw    $t3, 0x0004 ($s2)
80004D44: beq   $zero, $zero, 0x80004DC0
80004D48: lw    $t3, 0x0004 ($s2)
80004D4C: beq   $zero, $zero, 0x80004DBC
80004D50: sh    $s6, 0x0000 ($s5)
80004D54: lw    $v1, 0x0000 ($s1)
80004D58: addiu $t5, $v1, 0x0008
80004D5C: sw    $t5, 0x0000 ($s1)
80004D60: sw    $zero, 0x0004 ($v1)
80004D64: sw    $s8, 0x0000 ($v1)
80004D68: lh    $t6, 0x0000 ($s3)
80004D6C: addiu $t7, $t6, 0xFFFF
80004D70: beq   $zero, $zero, 0x80004DBC
80004D74: sh    $t7, 0x0000 ($s3)
80004D78: lh    $t8, 0x0000 ($s5)
80004D7C: bnel  $t8, $zero, 0x80004DA8
80004D80: lw    $a1, 0x0040 ($sp)
80004D84: lw    $v1, 0x0000 ($s1)
80004D88: addiu $t9, $v1, 0x0008
80004D8C: sw    $t9, 0x0000 ($s1)
80004D90: sw    $zero, 0x0004 ($v1)
80004D94: sw    $s8, 0x0000 ($v1)
80004D98: lh    $t1, 0x0000 ($s3)
80004D9C: addiu $t2, $t1, 0xFFFF
80004DA0: sh    $t2, 0x0000 ($s3)
80004DA4: lw    $a1, 0x0040 ($sp)
80004DA8: jal   0x80004A1C
80004DAC: sh    $a3, 0x0052 ($sp)
80004DB0: lh    $a3, 0x0052 ($sp)
80004DB4: sh    $zero, 0x0000 ($s5)
80004DB8: addiu $s4, $s4, 0x000C
80004DBC: lw    $t3, 0x0004 ($s2)
80004DC0: sll   $t4, $t3, 0x2
80004DC4: bne   $s0, $s7, 0x80004D18
80004DC8: addu  $s2, $s2, $t4
80004DCC: lw    $ra, 0x003C ($sp)
80004DD0: lw    $s0, 0x0018 ($sp)
80004DD4: lw    $s1, 0x001C ($sp)
80004DD8: lw    $s2, 0x0020 ($sp)
80004DDC: lw    $s3, 0x0024 ($sp)
80004DE0: lw    $s4, 0x0028 ($sp)
80004DE4: lw    $s5, 0x002C ($sp)
80004DE8: lw    $s6, 0x0030 ($sp)
80004DEC: lw    $s7, 0x0034 ($sp)
80004DF0: lw    $s8, 0x0038 ($sp)
80004DF4: jr    $ra
80004DF8: addiu $sp, $sp, 0x0048

80004DFC: addiu $sp, $sp, 0xFFD8
80004E00: sw    $s0, 0x0018 ($sp)
80004E04: sll   $s0, $a3, 0x10
80004E08: sra   $t6, $s0, 0x10
80004E0C: sw    $ra, 0x001C ($sp)
80004E10: or    $s0, $t6, $zero
80004E14: sw    $a1, 0x002C ($sp)
80004E18: sw    $a2, 0x0030 ($sp)
80004E1C: jal   doItemLookup
80004E20: sw    $a3, 0x0034 ($sp)
80004E24: sw    $v0, 0x0024 ($sp)
80004E28: jal   doItemLookup
80004E2C: lw    $a0, 0x002C ($sp)
80004E30: lh    $t7, 0x0032 ($sp)
80004E34: sll   $t8, $t7, 0x2
80004E38: addu  $t9, $v0, $t8
80004E3C: jal   doItemLookup
80004E40: lw    $a0, 0x0000 ($t9)
80004E44: lh    $t0, 0x0008 ($v0)
80004E48: or    $a1, $v0, $zero
80004E4C: lw    $a0, 0x0024 ($sp)
80004E50: slt   $at, $s0, $t0
80004E54: bnel  $at, $zero, 0x80004E64
80004E58: sll   $a2, $s0, 0x10
80004E5C: or    $s0, $zero, $zero
80004E60: sll   $a2, $s0, 0x10
80004E64: sra   $t1, $a2, 0x10
80004E68: or    $a2, $t1, $zero
80004E6C: jal   0x80004C30
80004E70: sw    $a1, 0x0020 ($sp)
80004E74: lw    $a1, 0x0020 ($sp)
80004E78: addiu $s0, $s0, 0x0001
80004E7C: sll   $t2, $s0, 0x10
80004E80: lh    $t4, 0x0008 ($a1)
80004E84: sra   $s0, $t2, 0x10
80004E88: lw    $ra, 0x001C ($sp)
80004E8C: slt   $at, $s0, $t4
80004E90: bnel  $at, $zero, 0x80004EA0
80004E94: or    $v0, $s0, $zero
80004E98: or    $s0, $zero, $zero
80004E9C: or    $v0, $s0, $zero
80004EA0: lw    $s0, 0x0018 ($sp)
80004EA4: jr    $ra
80004EA8: addiu $sp, $sp, 0x0028

80004EAC: addiu $sp, $sp, 0xFFE8
80004EB0: sw    $ra, 0x0014 ($sp)
80004EB4: jal   doItemLookup
80004EB8: sw    $a1, 0x001C ($sp)
80004EBC: lh    $t6, 0x001E ($sp)
80004EC0: sll   $t7, $t6, 0x2
80004EC4: addu  $t8, $v0, $t7
80004EC8: jal   doItemLookup
80004ECC: lw    $a0, 0x0000 ($t8)
80004ED0: lh    $v0, 0x0008 ($v0)
80004ED4: lw    $ra, 0x0014 ($sp)
80004ED8: addiu $sp, $sp, 0x0018
80004EDC: addiu $v0, $v0, 0xFFFF
80004EE0: sll   $t9, $v0, 0x10
80004EE4: jr    $ra
80004EE8: sra   $v0, $t9, 0x10

80004EEC: nop
80004EF0: addiu $sp, $sp, 0xFFD8
80004EF4: lui   $v0, 0x8016
80004EF8: lui   $t6, 0x802D
80004EFC: addiu $v0, $v0, 0x2DA4
80004F00: sw    $ra, 0x0024 ($sp)
80004F04: addiu $a0, $t6, 0x2B80
80004F08: sw    $a0, 0x0000 ($v0)
80004F0C: jal   osInvalDCache
80004F10: addiu $a1, $zero, 0x4000
80004F14: lui   $t7, 0x8016
80004F18: lw    $t7, 0x2DC4 ($t7)
80004F1C: lui   $at, 0x00FF
80004F20: lui   $t0, 0x8016
80004F24: lw    $t0, 0x2DA4 ($t0)
80004F28: ori   $at, $at, 0xFFFF
80004F2C: lui   $t9, 0x0014
80004F30: lui   $t2, 0x8015
80004F34: addiu $t2, $t2, 0xEF58
80004F38: addiu $t9, $t9, 0x5470
80004F3C: lui   $a0, 0x8015
80004F40: addiu $t1, $zero, 0x4000
80004F44: and   $t8, $t7, $at
80004F48: addu  $a3, $t8, $t9
80004F4C: sw    $t1, 0x0014 ($sp)
80004F50: addiu $a0, $a0, 0xF0A0
80004F54: sw    $t2, 0x0018 ($sp)
80004F58: or    $a1, $zero, $zero
80004F5C: or    $a2, $zero, $zero
80004F60: jal   osPiStartDma
80004F64: sw    $t0, 0x0010 ($sp)
80004F68: lui   $a0, 0x8015
80004F6C: lui   $a1, 0x8015
80004F70: addiu $a1, $a1, 0xF098
80004F74: addiu $a0, $a0, 0xEF58
80004F78: jal   osRecvMesg
80004F7C: addiu $a2, $zero, 0x0001
80004F80: lui   $t3, 0x8016
80004F84: lw    $t3, 0x2DA4 ($t3)
80004F88: lui   $at, 0x00FF
80004F8C: lw    $ra, 0x0024 ($sp)
80004F90: lw    $t4, 0x0000 ($t3)
80004F94: addiu $sp, $sp, 0x0028
80004F98: and   $t5, $t4, $at
80004F9C: lui   $at, 0x8016
80004FA0: sw    $t5, 0x2D9C ($at)
80004FA4: lui   $at, 0x8016
80004FA8: jr    $ra
80004FAC: sh    $zero, 0x2DA0 ($at)

80004FB0: lui   $t6, 0x8016
80004FB4: lw    $t6, 0x2DD0 ($t6)
80004FB8: lui   $t9, 0x802C
80004FBC: lui   $v0, 0x8016
80004FC0: sll   $t7, $t6, 0xF
80004FC4: addiu $t8, $t7, 0x3000
80004FC8: addiu $t9, $t9, 0xFB80
80004FCC: addiu $v0, $v0, 0x2DB4
80004FD0: addu  $t0, $t8, $t9
80004FD4: sw    $t0, 0x0000 ($v0)
80004FD8: lw    $t2, 0x0000 ($t0)
80004FDC: lui   $at, 0x00FF
80004FE0: and   $t3, $t2, $at
80004FE4: lui   $at, 0x8016
80004FE8: sw    $t3, 0x2DAC ($at)
80004FEC: lui   $at, 0x8016
80004FF0: jr    $ra
80004FF4: sh    $zero, 0x2DB0 ($at)

80004FF8: lui   $t6, 0x8016
80004FFC: lw    $t6, 0x2DC8 ($t6)
80005000: lui   $t9, 0x802C
80005004: lui   $v0, 0x8016
80005008: sll   $t7, $t6, 0xF
8000500C: addiu $t8, $t7, 0x3000
80005010: addiu $t9, $t9, 0xFB80
80005014: addiu $v0, $v0, 0x2D94
80005018: addu  $t0, $t8, $t9
8000501C: sw    $t0, 0x0000 ($v0)
80005020: lw    $t2, 0x0000 ($t0)
80005024: lui   $at, 0x00FF
80005028: and   $t3, $t2, $at
8000502C: lui   $at, 0x8016
80005030: sw    $t3, 0x2D8C ($at)
80005034: lui   $at, 0x8016
80005038: jr    $ra
8000503C: sh    $zero, 0x2D90 ($at)

80005040: lui   $v0, 0x800E
80005044: lh    $v0, 0xC5A0 ($v0)
80005048: addiu $sp, $sp, 0xFFE8
8000504C: sw    $ra, 0x0014 ($sp)
80005050: beq   $v0, $zero, 0x80005070
80005054: addiu $at, $zero, 0x0007
80005058: beq   $v0, $at, 0x800050D4
8000505C: addiu $at, $zero, 0x0008
80005060: beq   $v0, $at, 0x8000513C
80005064: addiu $t0, $zero, 0x0001
80005068: beq   $zero, $zero, 0x800051A4
8000506C: lui   $at, 0x8016
80005070: jal   0x800B4E24
80005074: or    $a0, $zero, $zero
80005078: lui   $at, 0x000F
8000507C: ori   $at, $at, 0xFFFF
80005080: and   $t6, $v0, $at
80005084: sltiu $at, $t6, 0x2329
80005088: beq   $at, $zero, 0x800050A4
8000508C: lui   $t9, 0x0F50
80005090: lui   $at, 0x8016
80005094: sh    $zero, 0x2DD6 ($at)
80005098: lui   $at, 0x8016
8000509C: beq   $zero, $zero, 0x800050BC
800050A0: sw    $zero, 0x2DF4 ($at)
800050A4: addiu $t7, $zero, 0x0001
800050A8: lui   $at, 0x8016
800050AC: sh    $t7, 0x2DD6 ($at)
800050B0: lui   $at, 0x8016
800050B4: addiu $t8, $zero, 0x0001
800050B8: sw    $t8, 0x2DF4 ($at)
800050BC: addiu $t9, $t9, 0x8E10
800050C0: lui   $at, 0x8016
800050C4: sw    $t9, 0x2DC4 ($at)
800050C8: lui   $at, 0x8016
800050CC: beq   $zero, $zero, 0x800051B4
800050D0: sw    $zero, 0x2DE4 ($at)
800050D4: jal   0x800B4E24
800050D8: or    $a0, $zero, $zero
800050DC: lui   $at, 0x000F
800050E0: ori   $at, $at, 0xFFFF
800050E4: and   $t0, $v0, $at
800050E8: sltiu $at, $t0, 0x3E81
800050EC: beq   $at, $zero, 0x80005108
800050F0: lui   $t3, 0x0F50
800050F4: lui   $at, 0x8016
800050F8: sh    $zero, 0x2DD6 ($at)
800050FC: lui   $at, 0x8016
80005100: beq   $zero, $zero, 0x80005120
80005104: sw    $zero, 0x2DF4 ($at)
80005108: addiu $t1, $zero, 0x0001
8000510C: lui   $at, 0x8016
80005110: sh    $t1, 0x2DD6 ($at)
80005114: lui   $at, 0x8016
80005118: addiu $t2, $zero, 0x0001
8000511C: sw    $t2, 0x2DF4 ($at)
80005120: addiu $t3, $t3, 0xAD04
80005124: lui   $at, 0x8016
80005128: sw    $t3, 0x2DC4 ($at)
8000512C: lui   $at, 0x8016
80005130: addiu $t4, $zero, 0x0006
80005134: beq   $zero, $zero, 0x800051B4
80005138: sw    $t4, 0x2DE4 ($at)
8000513C: jal   0x800B4E24
80005140: or    $a0, $zero, $zero
80005144: lui   $at, 0x000F
80005148: ori   $at, $at, 0xFFFF
8000514C: and   $t5, $v0, $at
80005150: sltiu $at, $t5, 0x2BC1
80005154: beq   $at, $zero, 0x80005170
80005158: lui   $t8, 0x0F50
8000515C: lui   $at, 0x8016
80005160: sh    $zero, 0x2DD6 ($at)
80005164: lui   $at, 0x8016
80005168: beq   $zero, $zero, 0x80005188
8000516C: sw    $zero, 0x2DF4 ($at)
80005170: addiu $t6, $zero, 0x0001
80005174: lui   $at, 0x8016
80005178: sh    $t6, 0x2DD6 ($at)
8000517C: lui   $at, 0x8016
80005180: addiu $t7, $zero, 0x0001
80005184: sw    $t7, 0x2DF4 ($at)
80005188: addiu $t8, $t8, 0x9CAC
8000518C: lui   $at, 0x8016
80005190: sw    $t8, 0x2DC4 ($at)
80005194: lui   $at, 0x8016
80005198: addiu $t9, $zero, 0x0001
8000519C: beq   $zero, $zero, 0x800051B4
800051A0: sw    $t9, 0x2DE4 ($at)
800051A4: sh    $t0, 0x2DD6 ($at)
800051A8: lui   $at, 0x8016
800051AC: addiu $t1, $zero, 0x0001
800051B0: sw    $t1, 0x2DF4 ($at)
800051B4: lw    $ra, 0x0014 ($sp)
800051B8: addiu $sp, $sp, 0x0018
800051BC: jr    $ra
800051C0: nop

800051C4: lui   $v0, 0x8016
800051C8: lh    $v0, 0x2D84 ($v0)
800051CC: addiu $sp, $sp, 0xFFE8
800051D0: sw    $ra, 0x0014 ($sp)
800051D4: beq   $v0, $zero, 0x8000521C
800051D8: lui   $a0, 0x8016
800051DC: sll   $a1, $v0, 0x2
800051E0: lui   $a2, 0x800E
800051E4: lw    $a2, 0xC710 ($a2)
800051E8: addiu $a1, $a1, 0x0020
800051EC: jal   0x80040174
800051F0: lw    $a0, 0x2D80 ($a0)
800051F4: lui   $a1, 0x8016
800051F8: lh    $a1, 0x2D84 ($a1)
800051FC: lui   $a0, 0x800E
80005200: lui   $a2, 0x800E
80005204: sll   $t6, $a1, 0x2
80005208: addiu $a1, $t6, 0x0020
8000520C: lw    $a2, 0xC714 ($a2)
80005210: jal   mio0encode
80005214: lw    $a0, 0xC710 ($a0)
80005218: addiu $v0, $v0, 0x001E
8000521C: lw    $ra, 0x0014 ($sp)
80005220: addiu $sp, $sp, 0x0018
80005224: jr    $ra
80005228: nop

8000522C: lui   $t6, 0x8016
80005230: lw    $t6, 0x2DC8 ($t6)
80005234: lui   $t9, 0x802C
80005238: lui   $v0, 0x8016
8000523C: sll   $t7, $t6, 0xF
80005240: addiu $t8, $t7, 0x3000
80005244: addiu $t9, $t9, 0xFB80
80005248: addiu $v0, $v0, 0x2D94
8000524C: addiu $sp, $sp, 0xFFE8
80005250: addu  $a1, $t8, $t9
80005254: sw    $ra, 0x0014 ($sp)
80005258: sw    $a1, 0x0000 ($v0)
8000525C: lui   $a0, 0x800E
80005260: jal   mio0Decode
80005264: lw    $a0, 0xC714 ($a0)
80005268: lui   $t1, 0x8016
8000526C: lw    $t1, 0x2D94 ($t1)
80005270: lui   $at, 0x00FF
80005274: lw    $ra, 0x0014 ($sp)
80005278: lw    $t2, 0x0000 ($t1)
8000527C: addiu $t4, $zero, 0x0001
80005280: addiu $sp, $sp, 0x0018
80005284: and   $t3, $t2, $at
80005288: lui   $at, 0x8016
8000528C: sw    $t3, 0x2D8C ($at)
80005290: lui   $at, 0x8016
80005294: sh    $zero, 0x2D90 ($at)
80005298: lui   $at, 0x8016
8000529C: jr    $ra
800052A0: sw    $t4, 0x2E00 ($at)

800052A4: lui   $v1, 0x8016
800052A8: addiu $v1, $v1, 0x2DC8
800052AC: lw    $t6, 0x0000 ($v1)
800052B0: addiu $v0, $zero, 0x0001
800052B4: lui   $t0, 0x802C
800052B8: bne   $v0, $t6, 0x800052D0
800052BC: addiu $t0, $t0, 0xFB80
800052C0: sw    $zero, 0x0000 ($v1)
800052C4: lui   $at, 0x8016
800052C8: beq   $zero, $zero, 0x800052DC
800052CC: sw    $v0, 0x2DCC ($at)
800052D0: sw    $v0, 0x0000 ($v1)
800052D4: lui   $at, 0x8016
800052D8: sw    $zero, 0x2DCC ($at)
800052DC: lw    $t7, 0x0000 ($v1)
800052E0: lui   $v0, 0x8016
800052E4: lh    $v0, 0x2DB8 ($v0)
800052E8: sll   $t8, $t7, 0xF
800052EC: addiu $t9, $t8, 0x3000
800052F0: addu  $t1, $t9, $t0
800052F4: lui   $at, 0x8016
800052F8: sw    $t1, 0x2D80 ($at)
800052FC: lui   $at, 0x8016
80005300: sh    $v0, 0x2D84 ($at)
80005304: lui   $at, 0x8016
80005308: jr    $ra
8000530C: sh    $v0, 0x2D86 ($at)

80005310: lui   $t6, 0x800E
80005314: lw    $t6, 0xC53C ($t6)
80005318: addiu $sp, $sp, 0xFFE8
8000531C: addiu $v1, $zero, 0x0001
80005320: bne   $v1, $t6, 0x8000545C
80005324: sw    $ra, 0x0014 ($sp)
80005328: jal   0x80005040
8000532C: nop
80005330: lui   $a0, 0x8016
80005334: addiu $a0, $a0, 0x2DC0
80005338: lui   $v0, 0x800E
8000533C: lh    $v0, 0xC5A0 ($v0)
80005340: lhu   $t7, 0x0000 ($a0)
80005344: addiu $v1, $zero, 0x0001
80005348: addiu $t8, $zero, 0x0001
8000534C: beq   $v0, $t7, 0x8000535C
80005350: lui   $t9, 0x800E
80005354: lui   $at, 0x8016
80005358: sh    $t8, 0x2DD4 ($at)
8000535C: sh    $v0, 0x0000 ($a0)
80005360: lui   $at, 0x8016
80005364: sw    $zero, 0x2DF0 ($at)
80005368: lw    $t9, 0xC53C ($t9)
8000536C: lui   $at, 0x8016
80005370: sw    $zero, 0x2DEC ($at)
80005374: lui   $at, 0x8016
80005378: bne   $v1, $t9, 0x8000545C
8000537C: sw    $zero, 0x2DF8 ($at)
80005380: lui   $t0, 0x800E
80005384: lw    $t0, 0xC52C ($t0)
80005388: lui   $t1, 0x8016
8000538C: bnel  $t0, $zero, 0x80005460
80005390: lw    $ra, 0x0014 ($sp)
80005394: lhu   $t1, 0xF890 ($t1)
80005398: lui   $v0, 0x8016
8000539C: addiu $v0, $v0, 0x2DBC
800053A0: bne   $v1, $t1, 0x800053E8
800053A4: addiu $t4, $zero, 0x0001
800053A8: jal   0x80004FB0
800053AC: nop
800053B0: lui   $t2, 0x8016
800053B4: lhu   $t2, 0x2DD8 ($t2)
800053B8: bnez  $t2, 0x800053C8
800053BC: nop
800053C0: jal   0x80004FF8
800053C4: nop
800053C8: lui   $t3, 0x8016
800053CC: lhu   $t3, 0x2DD6 ($t3)
800053D0: bnel  $t3, $zero, 0x80005460
800053D4: lw    $ra, 0x0014 ($sp)
800053D8: jal   0x80004EF0
800053DC: nop
800053E0: beq   $zero, $zero, 0x80005460
800053E4: lw    $ra, 0x0014 ($sp)
800053E8: lui   $t5, 0x8016
800053EC: lw    $t5, 0x2DCC ($t5)
800053F0: lui   $at, 0x8016
800053F4: lui   $t8, 0x802C
800053F8: sll   $t6, $t5, 0xF
800053FC: sh    $t4, 0x2DD8 ($at)
80005400: addiu $t7, $t6, 0x3000
80005404: addiu $t8, $t8, 0xFB80
80005408: addu  $t9, $t7, $t8
8000540C: sw    $t9, 0x0000 ($v0)
80005410: addiu $t0, $zero, 0xFFFF
80005414: sw    $t0, 0x0000 ($t9)
80005418: lui   $at, 0x8016
8000541C: sh    $zero, 0x2DB8 ($at)
80005420: lui   $at, 0x8016
80005424: jal   0x80091EE4
80005428: sw    $zero, 0x2DDC ($at)
8000542C: lui   $t2, 0x8016
80005430: lhu   $t2, 0x2DD4 ($t2)
80005434: bnez  $t2, 0x80005444
80005438: nop
8000543C: jal   0x80004FF8
80005440: nop
80005444: lui   $t3, 0x8016
80005448: lhu   $t3, 0x2DD6 ($t3)
8000544C: bnel  $t3, $zero, 0x80005460
80005450: lw    $ra, 0x0014 ($sp)
80005454: jal   0x80004EF0
80005458: nop
8000545C: lw    $ra, 0x0014 ($sp)
80005460: addiu $sp, $sp, 0x0018
80005464: jr    $ra
80005468: nop

8000546C: lui   $t0, 0x8016
80005470: addiu $t0, $t0, 0x2DB0
80005474: lh    $v1, 0x0000 ($t0)
80005478: lui   $t1, 0x8016
8000547C: or    $v0, $zero, $zero
80005480: slti  $at, $v1, 0x1000
80005484: bnez  $at, 0x800054A0
80005488: addiu $t1, $t1, 0x2DB4
8000548C: lui   $t7, 0x800E
80005490: lw    $t7, 0xC4DC ($t7)
80005494: addiu $t6, $zero, 0x3800
80005498: jr    $ra
8000549C: sh    $t6, 0x0000 ($t7)

800054A0: lw    $t8, 0x0000 ($t1)
800054A4: sll   $t9, $v1, 0x2
800054A8: lui   $t2, 0x800E
800054AC: addu  $t5, $t8, $t9
800054B0: lw    $a0, 0x0000 ($t5)
800054B4: lui   $t3, 0x8016
800054B8: addiu $t2, $t2, 0xC4D8
800054BC: andi  $a1, $a0, 0x00FF
800054C0: sltiu $at, $a1, 0x0080
800054C4: beq   $at, $zero, 0x800054DC
800054C8: addiu $t3, $t3, 0x2DA8
800054CC: andi  $v1, $a1, 0x00FF
800054D0: sll   $t6, $v1, 0x10
800054D4: beq   $zero, $zero, 0x800054EC
800054D8: sra   $v1, $t6, 0x10
800054DC: addiu $at, $zero, 0xFF00
800054E0: or    $v1, $a1, $at
800054E4: sll   $t8, $v1, 0x10
800054E8: sra   $v1, $t8, 0x10
800054EC: andi  $a1, $a0, 0xFF00
800054F0: lw    $t5, 0x0000 ($t2)
800054F4: srl   $t6, $a1, 0x8
800054F8: sltiu $at, $t6, 0x0080
800054FC: or    $a1, $t6, $zero
80005500: beq   $at, $zero, 0x80005518
80005504: sh    $v1, 0x0000 ($t5)
80005508: andi  $v1, $t6, 0x00FF
8000550C: sll   $t7, $v1, 0x10
80005510: beq   $zero, $zero, 0x80005528
80005514: sra   $v1, $t7, 0x10
80005518: addiu $at, $zero, 0xFF00
8000551C: or    $v1, $a1, $at
80005520: sll   $t9, $v1, 0x10
80005524: sra   $v1, $t9, 0x10
80005528: lw    $t6, 0x0000 ($t2)
8000552C: sll   $t7, $a0, 0x0
80005530: bgez  $t7, 0x8000553C
80005534: sh    $v1, 0x0002 ($t6)
80005538: addiu $v0, $zero, 0x8000
8000553C: sll   $t8, $a0, 0x1
80005540: bgez  $t8, 0x80005554
80005544: sll   $t7, $a0, 0x2
80005548: ori   $t9, $v0, 0x4000
8000554C: sll   $t5, $t9, 0x10
80005550: sra   $v0, $t5, 0x10
80005554: bgez  $t7, 0x80005568
80005558: sll   $t6, $a0, 0x3
8000555C: ori   $t8, $v0, 0x2000
80005560: sll   $t9, $t8, 0x10
80005564: sra   $v0, $t9, 0x10
80005568: bgez  $t6, 0x80005578
8000556C: ori   $t7, $v0, 0x0010
80005570: sll   $t8, $t7, 0x10
80005574: sra   $v0, $t8, 0x10
80005578: lw    $v1, 0x0000 ($t2)
8000557C: lhu   $t7, 0x0000 ($t3)
80005580: lui   $t4, 0x8016
80005584: lhu   $a0, 0x0006 ($v1)
80005588: xor   $t8, $v0, $t7
8000558C: and   $t9, $v0, $t8
80005590: andi  $t6, $a0, 0x1F0F
80005594: or    $t5, $t9, $t6
80005598: sh    $t5, 0x0006 ($v1)
8000559C: lw    $v1, 0x0000 ($t2)
800055A0: lhu   $a1, 0x0000 ($t3)
800055A4: addiu $t4, $t4, 0x2DAC
800055A8: lhu   $a0, 0x0008 ($v1)
800055AC: xor   $t8, $v0, $a1
800055B0: and   $t9, $a1, $t8
800055B4: andi  $t7, $a0, 0x1F0F
800055B8: or    $t5, $t9, $t7
800055BC: sh    $t5, 0x0008 ($v1)
800055C0: lw    $t6, 0x0000 ($t2)
800055C4: sh    $v0, 0x0000 ($t3)
800055C8: sh    $v0, 0x0004 ($t6)
800055CC: lw    $a3, 0x0000 ($t4)
800055D0: bnel  $a3, $zero, 0x8000560C
800055D4: lui   $at, 0xFFFF
800055D8: lh    $t7, 0x0000 ($t0)
800055DC: lw    $t9, 0x0000 ($t1)
800055E0: lui   $at, 0x00FF
800055E4: addiu $t8, $t7, 0x0001
800055E8: sh    $t8, 0x0000 ($t0)
800055EC: lh    $t5, 0x0000 ($t0)
800055F0: sll   $t6, $t5, 0x2
800055F4: addu  $t7, $t9, $t6
800055F8: lw    $t8, 0x0000 ($t7)
800055FC: and   $t5, $t8, $at
80005600: jr    $ra
80005604: sw    $t5, 0x0000 ($t4)

80005608: lui   $at, 0xFFFF
8000560C: addu  $t9, $a3, $at
80005610: sw    $t9, 0x0000 ($t4)
80005614: jr    $ra
80005618: nop

8000561C: lui   $t3, 0x8016
80005620: addiu $t3, $t3, 0x2DA0
80005624: lh    $v1, 0x0000 ($t3)
80005628: addiu $sp, $sp, 0xFFE8
8000562C: sw    $ra, 0x0014 ($sp)
80005630: slti  $at, $v1, 0x1000
80005634: bnez  $at, 0x80005650
80005638: or    $a2, $zero, $zero
8000563C: lui   $a0, 0x800E
80005640: jal   0x80005AE8
80005644: lw    $a0, 0xC4E4 ($a0)
80005648: beq   $zero, $zero, 0x800057D0
8000564C: lw    $ra, 0x0014 ($sp)
80005650: lui   $t4, 0x8016
80005654: addiu $t4, $t4, 0x2DA4
80005658: lw    $t6, 0x0000 ($t4)
8000565C: sll   $t7, $v1, 0x2
80005660: lui   $t1, 0x800E
80005664: addu  $t8, $t6, $t7
80005668: lw    $a0, 0x0000 ($t8)
8000566C: lui   $a3, 0x8016
80005670: addiu $t1, $t1, 0xC4D4
80005674: andi  $v0, $a0, 0x00FF
80005678: sltiu $at, $v0, 0x0080
8000567C: beq   $at, $zero, 0x80005694
80005680: addiu $a3, $a3, 0x2D98
80005684: andi  $v1, $v0, 0x00FF
80005688: sll   $t9, $v1, 0x10
8000568C: beq   $zero, $zero, 0x800056A4
80005690: sra   $v1, $t9, 0x10
80005694: addiu $at, $zero, 0xFF00
80005698: or    $v1, $v0, $at
8000569C: sll   $t6, $v1, 0x10
800056A0: sra   $v1, $t6, 0x10
800056A4: andi  $v0, $a0, 0xFF00
800056A8: lw    $t8, 0x0000 ($t1)
800056AC: srl   $t9, $v0, 0x8
800056B0: sltiu $at, $t9, 0x0080
800056B4: or    $v0, $t9, $zero
800056B8: beq   $at, $zero, 0x800056D0
800056BC: sh    $v1, 0x0000 ($t8)
800056C0: andi  $v1, $t9, 0x00FF
800056C4: sll   $t5, $v1, 0x10
800056C8: beq   $zero, $zero, 0x800056E0
800056CC: sra   $v1, $t5, 0x10
800056D0: addiu $at, $zero, 0xFF00
800056D4: or    $v1, $v0, $at
800056D8: sll   $t7, $v1, 0x10
800056DC: sra   $v1, $t7, 0x10
800056E0: lw    $t9, 0x0000 ($t1)
800056E4: sll   $t5, $a0, 0x0
800056E8: bgez  $t5, 0x800056F4
800056EC: sh    $v1, 0x0002 ($t9)
800056F0: addiu $a2, $zero, 0x8000
800056F4: sll   $t6, $a0, 0x1
800056F8: bgez  $t6, 0x8000570C
800056FC: sll   $t5, $a0, 0x2
80005700: ori   $t7, $a2, 0x4000
80005704: sll   $t8, $t7, 0x10
80005708: sra   $a2, $t8, 0x10
8000570C: bgez  $t5, 0x80005720
80005710: sll   $t9, $a0, 0x3
80005714: ori   $t6, $a2, 0x2000
80005718: sll   $t7, $t6, 0x10
8000571C: sra   $a2, $t7, 0x10
80005720: bgez  $t9, 0x80005730
80005724: ori   $t5, $a2, 0x0010
80005728: sll   $t6, $t5, 0x10
8000572C: sra   $a2, $t6, 0x10
80005730: lw    $v0, 0x0000 ($t1)
80005734: lhu   $t5, 0x0000 ($a3)
80005738: lui   $t2, 0x8016
8000573C: lhu   $v1, 0x0006 ($v0)
80005740: xor   $t6, $a2, $t5
80005744: and   $t7, $a2, $t6
80005748: andi  $t9, $v1, 0x1F0F
8000574C: or    $t8, $t7, $t9
80005750: sh    $t8, 0x0006 ($v0)
80005754: lw    $v0, 0x0000 ($t1)
80005758: lhu   $a0, 0x0000 ($a3)
8000575C: addiu $t2, $t2, 0x2D9C
80005760: lhu   $v1, 0x0008 ($v0)
80005764: xor   $t6, $a2, $a0
80005768: and   $t7, $a0, $t6
8000576C: andi  $t5, $v1, 0x1F0F
80005770: or    $t8, $t7, $t5
80005774: sh    $t8, 0x0008 ($v0)
80005778: lw    $t9, 0x0000 ($t1)
8000577C: sh    $a2, 0x0000 ($a3)
80005780: sh    $a2, 0x0004 ($t9)
80005784: lw    $t0, 0x0000 ($t2)
80005788: bnel  $t0, $zero, 0x800057C4
8000578C: lui   $at, 0xFFFF
80005790: lh    $t5, 0x0000 ($t3)
80005794: lw    $t7, 0x0000 ($t4)
80005798: lui   $at, 0x00FF
8000579C: addiu $t6, $t5, 0x0001
800057A0: sh    $t6, 0x0000 ($t3)
800057A4: lh    $t8, 0x0000 ($t3)
800057A8: sll   $t9, $t8, 0x2
800057AC: addu  $t5, $t7, $t9
800057B0: lw    $t6, 0x0000 ($t5)
800057B4: and   $t8, $t6, $at
800057B8: beq   $zero, $zero, 0x800057CC
800057BC: sw    $t8, 0x0000 ($t2)
800057C0: lui   $at, 0xFFFF
800057C4: addu  $t7, $t0, $at
800057C8: sw    $t7, 0x0000 ($t2)
800057CC: lw    $ra, 0x0014 ($sp)
800057D0: addiu $sp, $sp, 0x0018
800057D4: jr    $ra
800057D8: nop

800057DC: lui   $t3, 0x8016
800057E0: addiu $t3, $t3, 0x2D90
800057E4: lh    $v1, 0x0000 ($t3)
800057E8: addiu $sp, $sp, 0xFFE8
800057EC: sw    $ra, 0x0014 ($sp)
800057F0: slti  $at, $v1, 0x1000
800057F4: bnez  $at, 0x80005810
800057F8: or    $a2, $zero, $zero
800057FC: lui   $a0, 0x800E
80005800: jal   0x80005AE8
80005804: lw    $a0, 0xC4E0 ($a0)
80005808: beq   $zero, $zero, 0x80005990
8000580C: lw    $ra, 0x0014 ($sp)
80005810: lui   $t4, 0x8016
80005814: addiu $t4, $t4, 0x2D94
80005818: lw    $t6, 0x0000 ($t4)
8000581C: sll   $t7, $v1, 0x2
80005820: lui   $t1, 0x800E
80005824: addu  $t8, $t6, $t7
80005828: lw    $a0, 0x0000 ($t8)
8000582C: lui   $a3, 0x8016
80005830: addiu $t1, $t1, 0xC4D0
80005834: andi  $v0, $a0, 0x00FF
80005838: sltiu $at, $v0, 0x0080
8000583C: beq   $at, $zero, 0x80005854
80005840: addiu $a3, $a3, 0x2D88
80005844: andi  $v1, $v0, 0x00FF
80005848: sll   $t9, $v1, 0x10
8000584C: beq   $zero, $zero, 0x80005864
80005850: sra   $v1, $t9, 0x10
80005854: addiu $at, $zero, 0xFF00
80005858: or    $v1, $v0, $at
8000585C: sll   $t6, $v1, 0x10
80005860: sra   $v1, $t6, 0x10
80005864: andi  $v0, $a0, 0xFF00
80005868: lw    $t8, 0x0000 ($t1)
8000586C: srl   $t9, $v0, 0x8
80005870: sltiu $at, $t9, 0x0080
80005874: or    $v0, $t9, $zero
80005878: beq   $at, $zero, 0x80005890
8000587C: sh    $v1, 0x0000 ($t8)
80005880: andi  $v1, $t9, 0x00FF
80005884: sll   $t5, $v1, 0x10
80005888: beq   $zero, $zero, 0x800058A0
8000588C: sra   $v1, $t5, 0x10
80005890: addiu $at, $zero, 0xFF00
80005894: or    $v1, $v0, $at
80005898: sll   $t7, $v1, 0x10
8000589C: sra   $v1, $t7, 0x10
800058A0: lw    $t9, 0x0000 ($t1)
800058A4: sll   $t5, $a0, 0x0
800058A8: bgez  $t5, 0x800058B4
800058AC: sh    $v1, 0x0002 ($t9)
800058B0: addiu $a2, $zero, 0x8000
800058B4: sll   $t6, $a0, 0x1
800058B8: bgez  $t6, 0x800058CC
800058BC: sll   $t5, $a0, 0x2
800058C0: ori   $t7, $a2, 0x4000
800058C4: sll   $t8, $t7, 0x10
800058C8: sra   $a2, $t8, 0x10
800058CC: bgez  $t5, 0x800058E0
800058D0: sll   $t9, $a0, 0x3
800058D4: ori   $t6, $a2, 0x2000
800058D8: sll   $t7, $t6, 0x10
800058DC: sra   $a2, $t7, 0x10
800058E0: bgez  $t9, 0x800058F0
800058E4: ori   $t5, $a2, 0x0010
800058E8: sll   $t6, $t5, 0x10
800058EC: sra   $a2, $t6, 0x10
800058F0: lw    $v0, 0x0000 ($t1)
800058F4: lhu   $t5, 0x0000 ($a3)
800058F8: lui   $t2, 0x8016
800058FC: lhu   $v1, 0x0006 ($v0)
80005900: xor   $t6, $a2, $t5
80005904: and   $t7, $a2, $t6
80005908: andi  $t9, $v1, 0x1F0F
8000590C: or    $t8, $t7, $t9
80005910: sh    $t8, 0x0006 ($v0)
80005914: lw    $v0, 0x0000 ($t1)
80005918: lhu   $a0, 0x0000 ($a3)
8000591C: addiu $t2, $t2, 0x2D8C
80005920: lhu   $v1, 0x0008 ($v0)
80005924: xor   $t6, $a2, $a0
80005928: and   $t7, $a0, $t6
8000592C: andi  $t5, $v1, 0x1F0F
80005930: or    $t8, $t7, $t5
80005934: sh    $t8, 0x0008 ($v0)
80005938: lw    $t9, 0x0000 ($t1)
8000593C: sh    $a2, 0x0000 ($a3)
80005940: sh    $a2, 0x0004 ($t9)
80005944: lw    $t0, 0x0000 ($t2)
80005948: bnel  $t0, $zero, 0x80005984
8000594C: lui   $at, 0xFFFF
80005950: lh    $t5, 0x0000 ($t3)
80005954: lw    $t7, 0x0000 ($t4)
80005958: lui   $at, 0x00FF
8000595C: addiu $t6, $t5, 0x0001
80005960: sh    $t6, 0x0000 ($t3)
80005964: lh    $t8, 0x0000 ($t3)
80005968: sll   $t9, $t8, 0x2
8000596C: addu  $t5, $t7, $t9
80005970: lw    $t6, 0x0000 ($t5)
80005974: and   $t8, $t6, $at
80005978: beq   $zero, $zero, 0x8000598C
8000597C: sw    $t8, 0x0000 ($t2)
80005980: lui   $at, 0xFFFF
80005984: addu  $t7, $t0, $at
80005988: sw    $t7, 0x0000 ($t2)
8000598C: lw    $ra, 0x0014 ($sp)
80005990: addiu $sp, $sp, 0x0018
80005994: jr    $ra
80005998: nop

8000599C: lui   $t1, 0x8016
800059A0: addiu $t1, $t1, 0x2DB8
800059A4: lh    $v0, 0x0000 ($t1)
800059A8: lui   $t6, 0x800E
800059AC: addiu $t9, $zero, 0x0001
800059B0: slti  $at, $v0, 0x1000
800059B4: beq   $at, $zero, 0x800059D8
800059B8: nop
800059BC: lw    $t6, 0xC4DC ($t6)
800059C0: lh    $v1, 0x00CA ($t6)
800059C4: andi  $t7, $v1, 0x0002
800059C8: bnez  $t7, 0x800059D8
800059CC: andi  $t8, $v1, 0x0008
800059D0: beq   $t8, $zero, 0x800059E4
800059D4: lui   $a0, 0x800E
800059D8: lui   $at, 0x8016
800059DC: jr    $ra
800059E0: sw    $t9, 0x2DF8 ($at)

800059E4: lw    $a0, 0xC4BC ($a0)
800059E8: or    $a3, $zero, $zero
800059EC: sll   $t4, $v0, 0x2
800059F0: lh    $v1, 0x0000 ($a0)
800059F4: lh    $a1, 0x0002 ($a0)
800059F8: lh    $a2, 0x0004 ($a0)
800059FC: andi  $t2, $v1, 0x00FF
80005A00: andi  $t3, $a1, 0x00FF
80005A04: andi  $t5, $a2, 0x8000
80005A08: or    $v1, $t2, $zero
80005A0C: beq   $t5, $zero, 0x80005A18
80005A10: sll   $a1, $t3, 0x8
80005A14: lui   $a3, 0x8000
80005A18: andi  $t6, $a2, 0x4000
80005A1C: beq   $t6, $zero, 0x80005A30
80005A20: andi  $t8, $a2, 0x2000
80005A24: lui   $at, 0x4000
80005A28: or    $t7, $a3, $at
80005A2C: or    $a3, $t7, $zero
80005A30: beq   $t8, $zero, 0x80005A44
80005A34: andi  $t2, $a2, 0x0010
80005A38: lui   $at, 0x2000
80005A3C: or    $t9, $a3, $at
80005A40: or    $a3, $t9, $zero
80005A44: beq   $t2, $zero, 0x80005A58
80005A48: lui   $a2, 0x8016
80005A4C: lui   $at, 0x1000
80005A50: or    $t3, $a3, $at
80005A54: or    $a3, $t3, $zero
80005A58: lw    $a2, 0x2DBC ($a2)
80005A5C: or    $a3, $a3, $v1
80005A60: addiu $at, $zero, 0xFFFF
80005A64: lw    $t5, 0x0000 ($a2)
80005A68: addu  $t0, $a2, $t4
80005A6C: or    $a3, $a3, $a1
80005A70: bne   $t5, $at, 0x80005A80
80005A74: lw    $a0, 0x0000 ($t0)
80005A78: jr    $ra
80005A7C: sw    $a3, 0x0000 ($t0)

80005A80: lui   $at, 0xFF00
80005A84: ori   $at, $at, 0xFFFF
80005A88: and   $t6, $a0, $at
80005A8C: bne   $t6, $a3, 0x80005ACC
80005A90: addiu $t4, $v0, 0x0001
80005A94: lui   $v1, 0x00FF
80005A98: and   $t7, $a0, $v1
80005A9C: bne   $v1, $t7, 0x80005ABC
80005AA0: addiu $t8, $v0, 0x0001
80005AA4: sh    $t8, 0x0000 ($t1)
80005AA8: lh    $t9, 0x0000 ($t1)
80005AAC: sll   $t2, $t9, 0x2
80005AB0: addu  $t3, $a2, $t2
80005AB4: jr    $ra
80005AB8: sw    $a3, 0x0000 ($t3)

80005ABC: lui   $at, 0x0001
80005AC0: addu  $a0, $a0, $at
80005AC4: jr    $ra
80005AC8: sw    $a0, 0x0000 ($t0)

80005ACC: sh    $t4, 0x0000 ($t1)
80005AD0: lh    $t5, 0x0000 ($t1)
80005AD4: sll   $t6, $t5, 0x2
80005AD8: addu  $t7, $a2, $t6
80005ADC: sw    $a3, 0x0000 ($t7)
80005AE0: jr    $ra
80005AE4: nop

80005AE8: lhu   $t6, 0x0000 ($a0)
80005AEC: lui   $t8, 0x800E
80005AF0: andi  $t7, $t6, 0x0100
80005AF4: beq   $t7, $zero, 0x80005B10
80005AF8: nop
80005AFC: lw    $t8, 0xC4DC ($t8)
80005B00: addiu $t9, $zero, 0x3800
80005B04: beq   $a0, $t8, 0x80005B10
80005B08: nop
80005B0C: sh    $t9, 0x0000 ($a0)
80005B10: jr    $ra
80005B14: nop

80005B18: lui   $a0, 0x800E
80005B1C: lw    $a0, 0xC53C ($a0)
80005B20: addiu $sp, $sp, 0xFFE8
80005B24: addiu $v1, $zero, 0x0001
80005B28: bne   $v1, $a0, 0x80005E5C
80005B2C: sw    $ra, 0x0014 ($sp)
80005B30: lui   $t0, 0x8016
80005B34: addiu $t0, $t0, 0x4390
80005B38: lw    $v0, 0x0000 ($t0)
80005B3C: addiu $a2, $zero, 0x0003
80005B40: lui   $a1, 0x8016
80005B44: bne   $a2, $v0, 0x80005D10
80005B48: addiu $a1, $a1, 0x2DDC
80005B4C: lw    $t6, 0x0000 ($a1)
80005B50: lui   $t7, 0x8016
80005B54: bnez  $t6, 0x80005D10
80005B58: nop
80005B5C: lw    $t7, 0x2DF8 ($t7)
80005B60: lui   $a3, 0x8016
80005B64: addiu $a3, $a3, 0x2DD4
80005B68: beq   $v1, $t7, 0x80005D10
80005B6C: nop
80005B70: lhu   $t8, 0x0000 ($a3)
80005B74: lui   $t9, 0x8016
80005B78: bnel  $v1, $t8, 0x80005C08
80005B7C: lw    $t4, 0x0004 ($t0)
80005B80: lw    $t9, 0x2DCC ($t9)
80005B84: lui   $at, 0x8016
80005B88: jal   0x800052A4
80005B8C: sw    $t9, 0x2DD0 ($at)
80005B90: lui   $a1, 0x8016
80005B94: lui   $a3, 0x8016
80005B98: addiu $a3, $a3, 0x2DD4
80005B9C: addiu $a1, $a1, 0x2DDC
80005BA0: addiu $v1, $zero, 0x0001
80005BA4: sh    $zero, 0x0000 ($a3)
80005BA8: sw    $v1, 0x0000 ($a1)
80005BAC: lui   $v0, 0x800E
80005BB0: lw    $v0, 0xC4DC ($v0)
80005BB4: lui   $at, 0x8016
80005BB8: lui   $t3, 0x8019
80005BBC: lhu   $t1, 0x0254 ($v0)
80005BC0: lw    $t3, 0xCA78 ($t3)
80005BC4: lui   $a0, 0x800E
80005BC8: sw    $t1, 0x2DE0 ($at)
80005BCC: lhu   $t2, 0x0254 ($v0)
80005BD0: lui   $at, 0x8016
80005BD4: lw    $a0, 0xC4E0 ($a0)
80005BD8: sw    $t2, 0x2DE8 ($at)
80005BDC: lui   $at, 0x8016
80005BE0: sw    $zero, 0x2E00 ($at)
80005BE4: lui   $at, 0x8016
80005BE8: jal   0x80005AE8
80005BEC: sw    $t3, 0x2DFC ($at)
80005BF0: lui   $a0, 0x800E
80005BF4: jal   0x80005AE8
80005BF8: lw    $a0, 0xC4E4 ($a0)
80005BFC: beq   $zero, $zero, 0x80005E60
80005C00: lw    $ra, 0x0014 ($sp)
80005C04: lw    $t4, 0x0004 ($t0)
80005C08: lui   $t3, 0x802C
80005C0C: addiu $t3, $t3, 0xFB80
80005C10: beq   $a2, $t4, 0x80005C94
80005C14: lui   $t9, 0x8016
80005C18: lui   $t5, 0x8016
80005C1C: lw    $t5, 0x2DCC ($t5)
80005C20: lui   $at, 0x8016
80005C24: jal   0x800052A4
80005C28: sw    $t5, 0x2DD0 ($at)
80005C2C: lui   $a1, 0x8016
80005C30: addiu $a1, $a1, 0x2DDC
80005C34: addiu $v1, $zero, 0x0001
80005C38: sw    $v1, 0x0000 ($a1)
80005C3C: lui   $v0, 0x800E
80005C40: lw    $v0, 0xC4DC ($v0)
80005C44: lui   $t7, 0x8019
80005C48: lw    $t7, 0xCA78 ($t7)
80005C4C: lhu   $t6, 0x0254 ($v0)
80005C50: lui   $at, 0x8016
80005C54: lui   $a0, 0x800E
80005C58: sw    $t6, 0x2DE0 ($at)
80005C5C: lui   $at, 0x8016
80005C60: sw    $t7, 0x2DFC ($at)
80005C64: lui   $at, 0x8016
80005C68: sw    $zero, 0x2E00 ($at)
80005C6C: lhu   $t8, 0x0254 ($v0)
80005C70: lui   $at, 0x8016
80005C74: lw    $a0, 0xC4E0 ($a0)
80005C78: jal   0x80005AE8
80005C7C: sw    $t8, 0x2DE8 ($at)
80005C80: lui   $a0, 0x800E
80005C84: jal   0x80005AE8
80005C88: lw    $a0, 0xC4E4 ($a0)
80005C8C: beq   $zero, $zero, 0x80005E60
80005C90: lw    $ra, 0x0014 ($sp)
80005C94: lw    $t9, 0x2DC8 ($t9)
80005C98: lui   $t5, 0x8016
80005C9C: lh    $t5, 0x2D86 ($t5)
80005CA0: sll   $t1, $t9, 0xF
80005CA4: addiu $t2, $t1, 0x3000
80005CA8: addu  $t4, $t2, $t3
80005CAC: lui   $at, 0x8016
80005CB0: sw    $t4, 0x2D80 ($at)
80005CB4: lui   $t6, 0x8016
80005CB8: lw    $t6, 0x2DCC ($t6)
80005CBC: lui   $at, 0x8016
80005CC0: lui   $t7, 0x800E
80005CC4: lw    $t7, 0xC4DC ($t7)
80005CC8: sh    $t5, 0x2D84 ($at)
80005CCC: lui   $at, 0x8016
80005CD0: sw    $t6, 0x2DD0 ($at)
80005CD4: lhu   $t8, 0x0254 ($t7)
80005CD8: lui   $at, 0x8016
80005CDC: lui   $a0, 0x800E
80005CE0: sw    $t8, 0x2DE8 ($at)
80005CE4: lui   $at, 0x8016
80005CE8: sh    $zero, 0x2DD8 ($at)
80005CEC: sh    $zero, 0x0000 ($a3)
80005CF0: sw    $v1, 0x0000 ($a1)
80005CF4: jal   0x80005AE8
80005CF8: lw    $a0, 0xC4E0 ($a0)
80005CFC: lui   $a0, 0x800E
80005D00: jal   0x80005AE8
80005D04: lw    $a0, 0xC4E4 ($a0)
80005D08: beq   $zero, $zero, 0x80005E60
80005D0C: lw    $ra, 0x0014 ($sp)
80005D10: lui   $a1, 0x8016
80005D14: bne   $a2, $v0, 0x80005D6C
80005D18: addiu $a1, $a1, 0x2DDC
80005D1C: lw    $t9, 0x0000 ($a1)
80005D20: lui   $t1, 0x8016
80005D24: bnez  $t9, 0x80005D6C
80005D28: nop
80005D2C: lw    $t1, 0x2DF8 ($t1)
80005D30: lui   $t5, 0x802C
80005D34: addiu $t5, $t5, 0xFB80
80005D38: bne   $v1, $t1, 0x80005D6C
80005D3C: lui   $t2, 0x8016
80005D40: lw    $t2, 0x2DC8 ($t2)
80005D44: lui   $t7, 0x8016
80005D48: lh    $t7, 0x2D86 ($t7)
80005D4C: sll   $t3, $t2, 0xF
80005D50: addiu $t4, $t3, 0x3000
80005D54: addu  $t6, $t4, $t5
80005D58: lui   $at, 0x8016
80005D5C: sw    $t6, 0x2D80 ($at)
80005D60: lui   $at, 0x8016
80005D64: sh    $t7, 0x2D84 ($at)
80005D68: sw    $v1, 0x0000 ($a1)
80005D6C: lui   $t8, 0x800E
80005D70: lw    $t8, 0xC4DC ($t8)
80005D74: addiu $at, $zero, 0x0800
80005D78: lui   $v0, 0x8016
80005D7C: lhu   $t9, 0x0000 ($t8)
80005D80: addiu $v0, $v0, 0x2DEC
80005D84: andi  $t1, $t9, 0x0800
80005D88: bnel  $t1, $at, 0x80005DB4
80005D8C: lw    $t2, 0x0000 ($v0)
80005D90: lui   $a0, 0x800E
80005D94: jal   0x80005AE8
80005D98: lw    $a0, 0xC4E0 ($a0)
80005D9C: lui   $a0, 0x800E
80005DA0: jal   0x80005AE8
80005DA4: lw    $a0, 0xC4E4 ($a0)
80005DA8: beq   $zero, $zero, 0x80005E60
80005DAC: lw    $ra, 0x0014 ($sp)
80005DB0: lw    $t2, 0x0000 ($v0)
80005DB4: addiu $t5, $zero, 0x0064
80005DB8: lui   $t6, 0x800E
80005DBC: addiu $t3, $t2, 0x0001
80005DC0: slti  $at, $t3, 0x0065
80005DC4: bnez  $at, 0x80005DD0
80005DC8: sw    $t3, 0x0000 ($v0)
80005DCC: sw    $t5, 0x0000 ($v0)
80005DD0: bnel  $v1, $a0, 0x80005E60
80005DD4: lw    $ra, 0x0014 ($sp)
80005DD8: lw    $t6, 0xC52C ($t6)
80005DDC: lui   $a3, 0x8016
80005DE0: addiu $a3, $a3, 0x2DD4
80005DE4: bnel  $t6, $zero, 0x80005E60
80005DE8: lw    $ra, 0x0014 ($sp)
80005DEC: lhu   $t7, 0x0000 ($a3)
80005DF0: bnez  $t7, 0x80005E18
80005DF4: nop
80005DF8: lw    $t8, 0x0004 ($t0)
80005DFC: beq   $a2, $t8, 0x80005E18
80005E00: nop
80005E04: jal   0x800057DC
80005E08: nop
80005E0C: lui   $t0, 0x8016
80005E10: addiu $t0, $t0, 0x4390
80005E14: addiu $a2, $zero, 0x0003
80005E18: lui   $t9, 0x8016
80005E1C: lhu   $t9, 0x2DD6 ($t9)
80005E20: bnez  $t9, 0x80005E3C
80005E24: nop
80005E28: lw    $t1, 0x0008 ($t0)
80005E2C: beq   $a2, $t1, 0x80005E3C
80005E30: nop
80005E34: jal   0x8000561C
80005E38: nop
80005E3C: lui   $t2, 0x800E
80005E40: lw    $t2, 0xC4DC ($t2)
80005E44: lhu   $t3, 0x0000 ($t2)
80005E48: andi  $t4, $t3, 0x0800
80005E4C: bnel  $t4, $zero, 0x80005E60
80005E50: lw    $ra, 0x0014 ($sp)
80005E54: jal   0x8000599C
80005E58: nop
80005E5C: lw    $ra, 0x0014 ($sp)
80005E60: addiu $sp, $sp, 0x0018
80005E64: jr    $ra
80005E68: nop

80005E6C: lui   $v0, 0x800E
80005E70: lw    $v0, 0xC53C ($v0)
80005E74: addiu $sp, $sp, 0xFFE8
80005E78: addiu $v1, $zero, 0x0001
80005E7C: bne   $v1, $v0, 0x80005F34
80005E80: sw    $ra, 0x0014 ($sp)
80005E84: bne   $v1, $v0, 0x80005F34
80005E88: lui   $t6, 0x800E
80005E8C: lw    $t6, 0xC52C ($t6)
80005E90: lui   $t7, 0x8016
80005E94: bnel  $t6, $zero, 0x80005F38
80005E98: lw    $ra, 0x0014 ($sp)
80005E9C: lhu   $t7, 0x2DD8 ($t7)
80005EA0: lui   $t8, 0x8016
80005EA4: bnez  $t7, 0x80005EC4
80005EA8: nop
80005EAC: lw    $t8, 0x4394 ($t8)
80005EB0: addiu $at, $zero, 0x0003
80005EB4: beq   $t8, $at, 0x80005EC4
80005EB8: nop
80005EBC: jal   0x800057DC
80005EC0: nop
80005EC4: lui   $t9, 0x8016
80005EC8: lhu   $t9, 0x2DD6 ($t9)
80005ECC: lui   $t0, 0x8016
80005ED0: bnez  $t9, 0x80005EF0
80005ED4: nop
80005ED8: lw    $t0, 0x4398 ($t0)
80005EDC: addiu $at, $zero, 0x0003
80005EE0: beq   $t0, $at, 0x80005EF0
80005EE4: nop
80005EE8: jal   0x8000561C
80005EEC: nop
80005EF0: lui   $t1, 0x800E
80005EF4: lw    $t1, 0xC4DC ($t1)
80005EF8: addiu $at, $zero, 0x0800
80005EFC: lui   $a0, 0x800E
80005F00: lhu   $t2, 0x0000 ($t1)
80005F04: andi  $t3, $t2, 0x0800
80005F08: beq   $t3, $at, 0x80005F20
80005F0C: nop
80005F10: jal   0x8000546C
80005F14: nop
80005F18: beq   $zero, $zero, 0x80005F38
80005F1C: lw    $ra, 0x0014 ($sp)
80005F20: jal   0x80005AE8
80005F24: lw    $a0, 0xC4E0 ($a0)
80005F28: lui   $a0, 0x800E
80005F2C: jal   0x80005AE8
80005F30: lw    $a0, 0xC4E4 ($a0)
80005F34: lw    $ra, 0x0014 ($sp)
80005F38: addiu $sp, $sp, 0x0018
80005F3C: jr    $ra
80005F40: nop

80005F44: lui   $t6, 0x8016
80005F48: lhu   $t6, 0xF890 ($t6)
80005F4C: addiu $sp, $sp, 0xFFE8
80005F50: addiu $v0, $zero, 0x0001
80005F54: bne   $v0, $t6, 0x80005F6C
80005F58: sw    $ra, 0x0014 ($sp)
80005F5C: jal   0x80005E6C
80005F60: nop
80005F64: beq   $zero, $zero, 0x80005F98
80005F68: lw    $ra, 0x0014 ($sp)
80005F6C: lui   $t7, 0x8016
80005F70: lw    $t7, 0x2DF0 ($t7)
80005F74: lui   $at, 0x8016
80005F78: bnez  $t7, 0x80005F90
80005F7C: nop
80005F80: jal   0x80005B18
80005F84: nop
80005F88: beq   $zero, $zero, 0x80005F98
80005F8C: lw    $ra, 0x0014 ($sp)
80005F90: sw    $v0, 0x2DF8 ($at)
80005F94: lw    $ra, 0x0014 ($sp)
80005F98: addiu $sp, $sp, 0x0018
80005F9C: jr    $ra
80005FA0: nop

80005FA4: nop
80005FA8: nop
80005FAC: nop
80005FB0: add   $a2, $a0, $a1
80005FB4: ori   $v1, $zero, 0xFFFF
80005FB8: jr    $ra
80005FBC: sltu  $v0, $v1, $a2

80005FC0: jr    $ra
80005FC4: slt   $v0, $a0, $a1

80005FC8: nop
80005FCC: nop
80005FD0: addiu $sp, $sp, 0xFFE8
80005FD4: sw    $ra, 0x0014 ($sp)
80005FD8: jal   0x802B5224
80005FDC: nop
80005FE0: lui   $t7, 0x800E
80005FE4: lw    $t7, 0xC604 ($t7)
80005FE8: sll   $v1, $v0, 0x10
80005FEC: sra   $t6, $v1, 0x10
80005FF0: beq   $t7, $zero, 0x80006004
80005FF4: or    $v1, $t6, $zero
80005FF8: subu  $v1, $zero, $v0
80005FFC: sll   $t9, $v1, 0x10
80006000: sra   $v1, $t9, 0x10
80006004: lw    $ra, 0x0014 ($sp)
80006008: addiu $sp, $sp, 0x0018
8000600C: or    $v0, $v1, $zero
80006010: jr    $ra
80006014: nop

80006018: addiu $sp, $sp, 0xFFE8
8000601C: sw    $a2, 0x0020 ($sp)
80006020: lwc1  F4, 0x0020 ($sp)
80006024: sw    $a3, 0x0024 ($sp)
80006028: lwc1  F8, 0x0024 ($sp)
8000602C: mul.s F6, F4, F4
80006030: sw    $ra, 0x0014 ($sp)
80006034: swc1  F12, 0x0018 ($sp)
80006038: mul.s F10, F8, F8
8000603C: swc1  F14, 0x001C ($sp)
80006040: jal   sqrtf
80006044: add.s F12, F6, F10
80006048: lui   $at, 0x800F
8000604C: lwc1  F4, 0xCF74 ($at)
80006050: lwc1  F8, 0x0020 ($sp)
80006054: lw    $ra, 0x0014 ($sp)
80006058: c.lt.s F0, F4
8000605C: nop
80006060: bc1fl 0x80006074
80006064: div.s F16, F8, F0
80006068: beq   $zero, $zero, 0x8000610C
8000606C: or    $v0, $zero, $zero
80006070: div.s F16, F8, F0
80006074: lwc1  F4, 0x0024 ($sp)
80006078: lwc1  F6, 0x0030 ($sp)
8000607C: lwc1  F10, 0x0018 ($sp)
80006080: lwc1  F8, 0x0034 ($sp)
80006084: or    $v0, $zero, $zero
80006088: sub.s F2, F6, F10
8000608C: lwc1  F6, 0x001C ($sp)
80006090: div.s F14, F4, F0
80006094: sub.s F12, F8, F6
80006098: mul.s F10, F16, F2
8000609C: lwc1  F8, 0x0028 ($sp)
800060A0: neg.s F6, F8
800060A4: mul.s F4, F14, F12
800060A8: add.s F18, F10, F4
800060AC: c.lt.s F6, F18
800060B0: nop
800060B4: bc1f  0x8000610C
800060B8: nop
800060BC: c.lt.s F18, F8
800060C0: nop
800060C4: bc1f  0x8000610C
800060C8: nop
800060CC: mul.s F10, F14, F2
800060D0: neg.s F4, F16
800060D4: lwc1  F8, 0x002C ($sp)
800060D8: mul.s F6, F4, F12
800060DC: neg.s F4, F8
800060E0: add.s F18, F10, F6
800060E4: c.lt.s F4, F18
800060E8: nop
800060EC: bc1f  0x8000610C
800060F0: nop
800060F4: c.lt.s F18, F8
800060F8: nop
800060FC: bc1f  0x8000610C
80006100: nop
80006104: beq   $zero, $zero, 0x8000610C
80006108: addiu $v0, $zero, 0x0001
8000610C: jr    $ra
80006110: addiu $sp, $sp, 0x0018

80006114: lui   $t8, 0x800E
80006118: lw    $t8, 0xC604 ($t8)
8000611C: addiu $sp, $sp, 0xFFC8
80006120: sll   $t6, $a2, 0x10
80006124: sra   $t7, $t6, 0x10
80006128: sw    $a2, 0x0040 ($sp)
8000612C: or    $a2, $t7, $zero
80006130: sw    $ra, 0x0014 ($sp)
80006134: beq   $t8, $zero, 0x80006148
80006138: or    $a3, $a0, $zero
8000613C: subu  $a2, $zero, $t7
80006140: sll   $t9, $a2, 0x10
80006144: sra   $a2, $t9, 0x10
80006148: lwc1  F4, 0x0000 ($a3)
8000614C: lwc1  F6, 0x0000 ($a1)
80006150: andi  $a0, $a2, 0xFFFF
80006154: sub.s F8, F4, F6
80006158: swc1  F8, 0x0034 ($sp)
8000615C: lwc1  F16, 0x0008 ($a1)
80006160: lwc1  F10, 0x0008 ($a3)
80006164: sw    $a3, 0x0038 ($sp)
80006168: sw    $a1, 0x003C ($sp)
8000616C: sub.s F18, F10, F16
80006170: sw    $a0, 0x001C ($sp)
80006174: jal   0x802B8018
80006178: swc1  F18, 0x0030 ($sp)
8000617C: lw    $a0, 0x001C ($sp)
80006180: jal   0x802B8038
80006184: swc1  F0, 0x0024 ($sp)
80006188: lwc1  F12, 0x0034 ($sp)
8000618C: lwc1  F2, 0x0024 ($sp)
80006190: lwc1  F14, 0x0030 ($sp)
80006194: mul.s F4, F12, F0
80006198: lw    $a1, 0x003C ($sp)
8000619C: lw    $a3, 0x0038 ($sp)
800061A0: mul.s F6, F14, F2
800061A4: lwc1  F10, 0x0000 ($a1)
800061A8: mul.s F18, F14, F0
800061AC: add.s F8, F4, F6
800061B0: mul.s F4, F12, F2
800061B4: add.s F16, F10, F8
800061B8: sub.s F6, F18, F4
800061BC: swc1  F16, 0x0000 ($a3)
800061C0: lwc1  F10, 0x0008 ($a1)
800061C4: add.s F8, F10, F6
800061C8: swc1  F8, 0x0008 ($a3)
800061CC: lw    $ra, 0x0014 ($sp)
800061D0: addiu $sp, $sp, 0x0038
800061D4: jr    $ra
800061D8: nop

800061DC: lui   $v0, 0x800E
800061E0: lw    $v0, 0xC52C ($v0)
800061E4: addiu $sp, $sp, 0xFFF0
800061E8: sdc1  F20, 0x0008 ($sp)
800061EC: mtc1  $a1, F20
800061F0: lwc1  F0, 0x0000 ($a0)
800061F4: beq   $v0, $zero, 0x80006220
800061F8: lwc1  F2, 0x0008 ($a0)
800061FC: addiu $at, $zero, 0x0001
80006200: beq   $v0, $at, 0x80006228
80006204: addiu $at, $zero, 0x0002
80006208: beq   $v0, $at, 0x80006228
8000620C: addiu $at, $zero, 0x0003
80006210: beq   $v0, $at, 0x80006230
80006214: nop
80006218: beq   $zero, $zero, 0x80006238
8000621C: addiu $v0, $zero, 0x0001
80006220: beq   $zero, $zero, 0x80006238
80006224: addiu $v0, $zero, 0x0001
80006228: beq   $zero, $zero, 0x80006238
8000622C: addiu $v0, $zero, 0x0002
80006230: lui   $v0, 0x8019
80006234: lb    $v0, 0xEDF3 ($v0)
80006238: lui   $t6, 0x800E
8000623C: lhu   $t6, 0xC51C ($t6)
80006240: or    $v1, $a2, $zero
80006244: lui   $a0, 0x800E
80006248: bnez  $t6, 0x80006310
8000624C: or    $a1, $zero, $zero
80006250: lui   $v0, 0x8019
80006254: lb    $v0, 0xEDF3 ($v0)
80006258: lui   $a0, 0x800E
8000625C: lw    $a0, 0xC4DC ($a0)
80006260: blez  $v0, 0x800065C0
80006264: or    $a1, $zero, $zero
80006268: lhu   $a2, 0x0000 ($a0)
8000626C: andi  $t7, $a2, 0x4000
80006270: beq   $t7, $zero, 0x800062F8
80006274: andi  $t8, $a2, 0x1000
80006278: bnel  $t8, $zero, 0x800062FC
8000627C: addiu $a1, $a1, 0x0001
80006280: lwc1  F12, 0x0014 ($a0)
80006284: addiu $t1, $zero, 0x0001
80006288: sllv  $t2, $t1, $a1
8000628C: sub.s F4, F12, F20
80006290: lwc1  F14, 0x001C ($a0)
80006294: Nor    $t3, $t2, $zero
80006298: c.lt.s F4, F0
8000629C: nop
800062A0: bc1fl 0x800062F8
800062A4: and   $v1, $v1, $t3
800062A8: add.s F6, F12, F20
800062AC: c.lt.s F0, F6
800062B0: nop
800062B4: bc1fl 0x800062F8
800062B8: and   $v1, $v1, $t3
800062BC: sub.s F8, F14, F20
800062C0: c.lt.s F8, F2
800062C4: nop
800062C8: bc1fl 0x800062F8
800062CC: and   $v1, $v1, $t3
800062D0: add.s F10, F14, F20
800062D4: addiu $t9, $zero, 0x0001
800062D8: sllv  $t0, $t9, $a1
800062DC: c.lt.s F2, F10
800062E0: nop
800062E4: bc1fl 0x800062F8
800062E8: and   $v1, $v1, $t3
800062EC: beq   $zero, $zero, 0x800062F8
800062F0: or    $v1, $v1, $t0
800062F4: and   $v1, $v1, $t3
800062F8: addiu $a1, $a1, 0x0001
800062FC: slt   $at, $a1, $v0
80006300: bnez  $at, 0x80006268
80006304: addiu $a0, $a0, 0x0DD8
80006308: beq   $zero, $zero, 0x800065C4
8000630C: ldc1  F20, 0x0008 ($sp)
80006310: blez  $v0, 0x800065C0
80006314: lw    $a0, 0xDB40 ($a0)
80006318: andi  $a3, $v0, 0x0003
8000631C: beq   $a3, $zero, 0x800063B0
80006320: or    $a2, $a3, $zero
80006324: lwc1  F14, 0x0000 ($a0)
80006328: addiu $t6, $zero, 0x0001
8000632C: sllv  $t7, $t6, $a1
80006330: sub.s F16, F14, F20
80006334: Nor    $t8, $t7, $zero
80006338: c.lt.s F16, F0
8000633C: nop
80006340: bc1fl 0x8000639C
80006344: and   $v1, $v1, $t8
80006348: add.s F18, F14, F20
8000634C: c.lt.s F0, F18
80006350: nop
80006354: bc1fl 0x8000639C
80006358: and   $v1, $v1, $t8
8000635C: lwc1  F12, 0x0008 ($a0)
80006360: sub.s F4, F12, F20
80006364: c.lt.s F4, F2
80006368: nop
8000636C: bc1fl 0x8000639C
80006370: and   $v1, $v1, $t8
80006374: add.s F6, F12, F20
80006378: addiu $t4, $zero, 0x0001
8000637C: sllv  $t5, $t4, $a1
80006380: c.lt.s F2, F6
80006384: nop
80006388: bc1fl 0x8000639C
8000638C: and   $v1, $v1, $t8
80006390: beq   $zero, $zero, 0x8000639C
80006394: or    $v1, $v1, $t5
80006398: and   $v1, $v1, $t8
8000639C: addiu $a1, $a1, 0x0001
800063A0: bne   $a2, $a1, 0x80006324
800063A4: addiu $a0, $a0, 0x00B8
800063A8: beql  $a1, $v0, 0x800065C4
800063AC: ldc1  F20, 0x0008 ($sp)
800063B0: lwc1  F14, 0x0000 ($a0)
800063B4: addiu $t1, $zero, 0x0001
800063B8: sllv  $t2, $t1, $a1
800063BC: sub.s F8, F14, F20
800063C0: addiu $t7, $a1, 0x0001
800063C4: addiu $t8, $zero, 0x0001
800063C8: Nor    $t3, $t2, $zero
800063CC: c.lt.s F8, F0
800063D0: nop
800063D4: bc1fl 0x80006430
800063D8: and   $v1, $v1, $t3
800063DC: add.s F10, F14, F20
800063E0: c.lt.s F0, F10
800063E4: nop
800063E8: bc1fl 0x80006430
800063EC: and   $v1, $v1, $t3
800063F0: lwc1  F12, 0x0008 ($a0)
800063F4: sub.s F16, F12, F20
800063F8: c.lt.s F16, F2
800063FC: nop
80006400: bc1fl 0x80006430
80006404: and   $v1, $v1, $t3
80006408: add.s F18, F12, F20
8000640C: addiu $t9, $zero, 0x0001
80006410: sllv  $t0, $t9, $a1
80006414: c.lt.s F2, F18
80006418: nop
8000641C: bc1fl 0x80006430
80006420: and   $v1, $v1, $t3
80006424: beq   $zero, $zero, 0x80006430
80006428: or    $v1, $v1, $t0
8000642C: and   $v1, $v1, $t3
80006430: lwc1  F14, 0x00B8 ($a0)
80006434: sllv  $t9, $t8, $t7
80006438: Nor    $t0, $t9, $zero
8000643C: sub.s F4, F14, F20
80006440: addiu $a0, $a0, 0x00B8
80006444: c.lt.s F4, F0
80006448: nop
8000644C: bc1fl 0x800064AC
80006450: and   $v1, $v1, $t0
80006454: add.s F6, F14, F20
80006458: c.lt.s F0, F6
8000645C: nop
80006460: bc1fl 0x800064AC
80006464: and   $v1, $v1, $t0
80006468: lwc1  F12, 0x0008 ($a0)
8000646C: sub.s F8, F12, F20
80006470: c.lt.s F8, F2
80006474: nop
80006478: bc1fl 0x800064AC
8000647C: and   $v1, $v1, $t0
80006480: add.s F10, F12, F20
80006484: addiu $t4, $a1, 0x0001
80006488: addiu $t5, $zero, 0x0001
8000648C: sllv  $t6, $t5, $t4
80006490: c.lt.s F2, F10
80006494: nop
80006498: bc1fl 0x800064AC
8000649C: and   $v1, $v1, $t0
800064A0: beq   $zero, $zero, 0x800064AC
800064A4: or    $v1, $v1, $t6
800064A8: and   $v1, $v1, $t0
800064AC: lwc1  F14, 0x00B8 ($a0)
800064B0: addiu $t5, $a1, 0x0002
800064B4: addiu $t4, $zero, 0x0001
800064B8: sub.s F16, F14, F20
800064BC: sllv  $t6, $t4, $t5
800064C0: Nor    $t8, $t6, $zero
800064C4: addiu $a0, $a0, 0x00B8
800064C8: c.lt.s F16, F0
800064CC: nop
800064D0: bc1fl 0x80006530
800064D4: and   $v1, $v1, $t8
800064D8: add.s F18, F14, F20
800064DC: c.lt.s F0, F18
800064E0: nop
800064E4: bc1fl 0x80006530
800064E8: and   $v1, $v1, $t8
800064EC: lwc1  F12, 0x0008 ($a0)
800064F0: sub.s F4, F12, F20
800064F4: c.lt.s F4, F2
800064F8: nop
800064FC: bc1fl 0x80006530
80006500: and   $v1, $v1, $t8
80006504: add.s F6, F12, F20
80006508: addiu $t1, $a1, 0x0002
8000650C: addiu $t2, $zero, 0x0001
80006510: sllv  $t3, $t2, $t1
80006514: c.lt.s F2, F6
80006518: nop
8000651C: bc1fl 0x80006530
80006520: and   $v1, $v1, $t8
80006524: beq   $zero, $zero, 0x80006530
80006528: or    $v1, $v1, $t3
8000652C: and   $v1, $v1, $t8
80006530: lwc1  F14, 0x00B8 ($a0)
80006534: addiu $t2, $a1, 0x0003
80006538: addiu $t1, $zero, 0x0001
8000653C: sub.s F8, F14, F20
80006540: sllv  $t3, $t1, $t2
80006544: Nor    $t4, $t3, $zero
80006548: addiu $a0, $a0, 0x00B8
8000654C: c.lt.s F8, F0
80006550: nop
80006554: bc1fl 0x800065B4
80006558: and   $v1, $v1, $t4
8000655C: add.s F10, F14, F20
80006560: c.lt.s F0, F10
80006564: nop
80006568: bc1fl 0x800065B4
8000656C: and   $v1, $v1, $t4
80006570: lwc1  F12, 0x0008 ($a0)
80006574: sub.s F16, F12, F20
80006578: c.lt.s F16, F2
8000657C: nop
80006580: bc1fl 0x800065B4
80006584: and   $v1, $v1, $t4
80006588: add.s F18, F12, F20
8000658C: addiu $t7, $a1, 0x0003
80006590: addiu $t9, $zero, 0x0001
80006594: sllv  $t0, $t9, $t7
80006598: c.lt.s F2, F18
8000659C: nop
800065A0: bc1fl 0x800065B4
800065A4: and   $v1, $v1, $t4
800065A8: beq   $zero, $zero, 0x800065B4
800065AC: or    $v1, $v1, $t0
800065B0: and   $v1, $v1, $t4
800065B4: addiu $a1, $a1, 0x0004
800065B8: bne   $a1, $v0, 0x800063B0
800065BC: addiu $a0, $a0, 0x00B8
800065C0: ldc1  F20, 0x0008 ($sp)
800065C4: addiu $sp, $sp, 0x0010
800065C8: jr    $ra
800065CC: or    $v0, $v1, $zero

800065D0: lh    $t6, 0x002E ($a1)
800065D4: addiu $t4, $zero, 0x00B6
800065D8: sll   $v0, $a0, 0x1
800065DC: div   $t6, $t4
800065E0: lui   $v1, 0x8016
800065E4: addu  $v1, $v1, $v0
800065E8: lh    $v1, 0x45B0 ($v1)
800065EC: lui   $a2, 0x8016
800065F0: addu  $a2, $a2, $v0
800065F4: lui   $t5, 0x8016
800065F8: sll   $t9, $v1, 0x2
800065FC: lhu   $a2, 0x4438 ($a2)
80006600: addu  $t5, $t5, $t9
80006604: mflo  $a3
80006608: lw    $t5, 0x4590 ($t5)
8000660C: bnez  $t4, 0x80006618
80006610: nop
80006614: break
80006618: addiu $at, $zero, 0xFFFF
8000661C: bne   $t4, $at, 0x80006630
80006620: lui   $at, 0x8000
80006624: bne   $t6, $at, 0x80006630
80006628: nop
8000662C: break
80006630: sll   $t7, $a3, 0x10
80006634: sra   $a3, $t7, 0x10
80006638: sll   $t6, $a2, 0x1
8000663C: addu  $t7, $t5, $t6
80006640: lh    $t8, 0x0000 ($t7)
80006644: sll   $v1, $a0, 0x2
80006648: lui   $a1, 0x8016
8000664C: div   $t8, $t4
80006650: mflo  $t0
80006654: sll   $t9, $t0, 0x10
80006658: sra   $t5, $t9, 0x10
8000665C: subu  $t2, $a3, $t5
80006660: sll   $t1, $t2, 0x10
80006664: sll   $t3, $t2, 0x10
80006668: sra   $t6, $t1, 0x10
8000666C: sra   $t7, $t3, 0x10
80006670: bnez  $t4, 0x8000667C
80006674: nop
80006678: break
8000667C: addiu $at, $zero, 0xFFFF
80006680: bne   $t4, $at, 0x80006694
80006684: lui   $at, 0x8000
80006688: bne   $t8, $at, 0x80006694
8000668C: nop
80006690: break
80006694: or    $t0, $t5, $zero
80006698: or    $t1, $t6, $zero
8000669C: bgez  $t7, 0x800066B0
800066A0: or    $t3, $t7, $zero
800066A4: subu  $t1, $zero, $t7
800066A8: sll   $t8, $t1, 0x10
800066AC: sra   $t1, $t8, 0x10
800066B0: lui   $t5, 0x8016
800066B4: addiu $t5, $t5, 0x3288
800066B8: addu  $a2, $v1, $t5
800066BC: addu  $a1, $a1, $v1
800066C0: lw    $a1, 0x4450 ($a1)
800066C4: lw    $t6, 0x0000 ($a2)
800066C8: slt   $at, $a1, $t6
800066CC: beq   $at, $zero, 0x80006758
800066D0: slti  $at, $t1, 0x0088
800066D4: bnez  $at, 0x80006758
800066D8: slti  $at, $t1, 0x00E1
800066DC: beq   $at, $zero, 0x80006758
800066E0: lui   $t7, 0x8016
800066E4: addiu $t7, $t7, 0x3258
800066E8: addu  $v1, $v0, $t7
800066EC: lhu   $t8, 0x0000 ($v1)
800066F0: addiu $t6, $zero, 0x0001
800066F4: addiu $t7, $zero, 0x0005
800066F8: addiu $t9, $t8, 0x0001
800066FC: andi  $t5, $t9, 0xFFFF
80006700: slti  $at, $t5, 0x0005
80006704: bnez  $at, 0x800067BC
80006708: sh    $t9, 0x0000 ($v1)
8000670C: sll   $t8, $a0, 0x3
80006710: subu  $t8, $t8, $a0
80006714: sll   $t8, $t8, 0x4
80006718: subu  $t8, $t8, $a0
8000671C: sll   $t8, $t8, 0x2
80006720: lui   $at, 0x8016
80006724: subu  $t8, $t8, $a0
80006728: lui   $t9, 0x800F
8000672C: addu  $at, $at, $v0
80006730: addiu $t9, $t9, 0x6990
80006734: sll   $t8, $t8, 0x3
80006738: sh    $t6, 0x3270 ($at)
8000673C: addu  $a3, $t8, $t9
80006740: lw    $t5, 0x00BC ($a3)
80006744: lui   $at, 0x0040
80006748: sh    $t7, 0x0000 ($v1)
8000674C: or    $t6, $t5, $at
80006750: beq   $zero, $zero, 0x800067BC
80006754: sw    $t6, 0x00BC ($a3)
80006758: slti  $at, $t1, 0x002D
8000675C: bnez  $at, 0x8000676C
80006760: sll   $t7, $a0, 0x3
80006764: slti  $at, $t1, 0x013C
80006768: bnez  $at, 0x800067BC
8000676C: subu  $t7, $t7, $a0
80006770: lui   $at, 0x8016
80006774: sll   $t7, $t7, 0x4
80006778: addu  $at, $at, $v0
8000677C: subu  $t7, $t7, $a0
80006780: sh    $zero, 0x3270 ($at)
80006784: sll   $t7, $t7, 0x2
80006788: lui   $at, 0x8016
8000678C: subu  $t7, $t7, $a0
80006790: lui   $t8, 0x800F
80006794: addu  $at, $at, $v0
80006798: addiu $t8, $t8, 0x6990
8000679C: sll   $t7, $t7, 0x3
800067A0: sh    $zero, 0x3258 ($at)
800067A4: addu  $a3, $t7, $t8
800067A8: lw    $t9, 0x00BC ($a3)
800067AC: lui   $at, 0xFFBF
800067B0: ori   $at, $at, 0xFFFF
800067B4: and   $t5, $t9, $at
800067B8: sw    $t5, 0x00BC ($a3)
800067BC: jr    $ra
800067C0: sw    $a1, 0x0000 ($a2)

SetPlaces:
    800067C4: lui   $v0, 0x800E
    800067C8: lw    $v0, 0xC53C ($v0)
    800067CC: addiu $sp, $sp, 0xFF58
    800067D0: sw    $s3, 0x0014 ($sp)
    800067D4: sw    $s2, 0x0010 ($sp)
    800067D8: sw    $s1, 0x000C ($sp)
    800067DC: beq   $v0, $zero, 0x8000680C
    800067E0: sw    $s0, 0x0008 ($sp)
    800067E4: addiu $at, $zero, 0x0001
    800067E8: beq   $v0, $at, 0x8000680C
    800067EC: addiu $at, $zero, 0x0002
    800067F0: beq   $v0, $at, 0x80006814
    800067F4: lui   $t4, 0x8019
    800067F8: addiu $at, $zero, 0x0003
    800067FC: beql  $v0, $at, 0x800070E0
    80006800: lw    $s0, 0x0008 ($sp)
    80006804: beq   $zero, $zero, 0x800070E0
    80006808: lw    $s0, 0x0008 ($sp)
    8000680C: beq   $zero, $zero, 0x80006818
    80006810: addiu $t4, $zero, 0x0008
    80006814: lb    $t4, 0xEDF3 ($t4)
    80006818: lui   $t6, 0x8016
    8000681C: lh    $t6, 0x348C ($t6)
    80006820: bnez  $t6, 0x80006958
    80006824: nop
    80006828: blez  $t4, 0x80006950
    8000682C: or    $t3, $zero, $zero
    80006830: andi  $t0, $t4, 0x0003
    80006834: beq   $t0, $zero, 0x800068A4
    80006838: or    $a2, $t0, $zero
    8000683C: lui   $t8, 0x8016
    80006840: sll   $a1, $zero, 0x2
    80006844: lui   $t6, 0x8016
    80006848: addiu $t6, $t6, 0x2FD8
    8000684C: addiu $t8, $t8, 0x4360
    80006850: sll   $t7, $zero, 0x1
    80006854: addiu $t9, $sp, 0x0080
    80006858: lui   $t5, 0x8016
    8000685C: addiu $t5, $t5, 0x44D0
    80006860: addu  $v0, $a1, $t9
    80006864: addu  $t2, $t7, $t8
    80006868: addu  $v1, $a1, $t6
    8000686C: addiu $t1, $zero, 0x0001
    80006870: lh    $a0, 0x0000 ($t2)
    80006874: or    $t3, $t1, $zero
    80006878: addiu $t2, $t2, 0x0002
    8000687C: sll   $t7, $a0, 0x2
    80006880: addu  $t8, $t5, $t7
    80006884: lwc1  F4, 0x0000 ($t8)
    80006888: addiu $v0, $v0, 0x0004
    8000688C: addiu $v1, $v1, 0x0004
    80006890: sw    $a0, 0xFFFC ($v0)
    80006894: swc1  F4, 0xFFFC ($v1)
    80006898: bne   $a2, $t1, 0x80006870
    8000689C: addiu $t1, $t1, 0x0001
    800068A0: beq   $t3, $t4, 0x8000694C
    800068A4: lui   $t6, 0x8016
    800068A8: addiu $t6, $t6, 0x4360
    800068AC: sll   $t9, $t3, 0x1
    800068B0: lui   $t8, 0x8016
    800068B4: addiu $t8, $t8, 0x2FD8
    800068B8: addu  $t2, $t9, $t6
    800068BC: sll   $a1, $t3, 0x2
    800068C0: sll   $t9, $t4, 0x2
    800068C4: lui   $t5, 0x8016
    800068C8: addiu $t7, $sp, 0x0080
    800068CC: addu  $v0, $a1, $t7
    800068D0: addiu $t5, $t5, 0x44D0
    800068D4: addu  $a2, $t9, $t8
    800068D8: addu  $v1, $a1, $t8
    800068DC: lh    $a0, 0x0000 ($t2)
    800068E0: addiu $v1, $v1, 0x0010
    800068E4: addiu $t2, $t2, 0x0008
    800068E8: sw    $a0, 0x0000 ($v0)
    800068EC: sll   $t6, $a0, 0x2
    800068F0: lh    $a0, 0xFFFA ($t2)
    800068F4: addu  $t7, $t5, $t6
    800068F8: lwc1  F6, 0x0000 ($t7)
    800068FC: sw    $a0, 0x0004 ($v0)
    80006900: sll   $t9, $a0, 0x2
    80006904: lh    $a0, 0xFFFC ($t2)
    80006908: addu  $t8, $t5, $t9
    8000690C: lwc1  F8, 0x0000 ($t8)
    80006910: sw    $a0, 0x0008 ($v0)
    80006914: sll   $t6, $a0, 0x2
    80006918: lh    $a0, 0xFFFE ($t2)
    8000691C: addu  $t7, $t5, $t6
    80006920: swc1  F6, 0xFFF0 ($v1)
    80006924: sll   $t9, $a0, 0x2
    80006928: addu  $t8, $t5, $t9
    8000692C: lwc1  F16, 0x0000 ($t8)
    80006930: lwc1  F10, 0x0000 ($t7)
    80006934: addiu $v0, $v0, 0x0010
    80006938: swc1  F8, 0xFFF4 ($v1)
    8000693C: sw    $a0, 0xFFFC ($v0)
    80006940: swc1  F16, 0xFFFC ($v1)
    80006944: bne   $v1, $a2, 0x800068DC
    80006948: swc1  F10, 0xFFF8 ($v1)
    8000694C: or    $t3, $zero, $zero
    80006950: beq   $zero, $zero, 0x80006A94
    80006954: nop
    80006958: blez  $t4, 0x80006A94
    8000695C: or    $t3, $zero, $zero
    80006960: andi  $t0, $t4, 0x0003
    80006964: beq   $t0, $zero, 0x800069D8
    80006968: or    $a2, $t0, $zero
    8000696C: lui   $t7, 0x8016
    80006970: sll   $a1, $zero, 0x2
    80006974: lui   $t8, 0x8016
    80006978: addiu $t8, $t8, 0x2FD8
    8000697C: addiu $t7, $t7, 0x4360
    80006980: sll   $t6, $zero, 0x1
    80006984: addiu $t9, $sp, 0x0080
    80006988: lui   $a3, 0x8016
    8000698C: addiu $a3, $a3, 0xF898
    80006990: addu  $v0, $a1, $t9
    80006994: addu  $t2, $t6, $t7
    80006998: addu  $v1, $a1, $t8
    8000699C: addiu $t1, $zero, 0x0001
    800069A0: lh    $a0, 0x0000 ($t2)
    800069A4: or    $t3, $t1, $zero
    800069A8: addiu $t2, $t2, 0x0002
    800069AC: sll   $t6, $a0, 0x2
    800069B0: addu  $t7, $a3, $t6
    800069B4: lwc1  F18, 0x0000 ($t7)
    800069B8: addiu $v0, $v0, 0x0004
    800069BC: addiu $v1, $v1, 0x0004
    800069C0: neg.s F4, F18
    800069C4: sw    $a0, 0xFFFC ($v0)
    800069C8: swc1  F4, 0xFFFC ($v1)
    800069CC: bne   $a2, $t1, 0x800069A0
    800069D0: addiu $t1, $t1, 0x0001
    800069D4: beq   $t3, $t4, 0x80006A90
    800069D8: lui   $t8, 0x8016
    800069DC: addiu $t8, $t8, 0x4360
    800069E0: sll   $t9, $t3, 0x1
    800069E4: lui   $t7, 0x8016
    800069E8: addiu $t7, $t7, 0x2FD8
    800069EC: addu  $t2, $t9, $t8
    800069F0: sll   $a1, $t3, 0x2
    800069F4: sll   $t9, $t4, 0x2
    800069F8: lui   $a3, 0x8016
    800069FC: addiu $t6, $sp, 0x0080
    80006A00: addu  $v0, $a1, $t6
    80006A04: addiu $a3, $a3, 0xF898
    80006A08: addu  $a2, $t9, $t7
    80006A0C: addu  $v1, $a1, $t7
    80006A10: lh    $a0, 0x0000 ($t2)
    80006A14: addiu $v1, $v1, 0x0010
    80006A18: addiu $t2, $t2, 0x0008
    80006A1C: sw    $a0, 0x0000 ($v0)
    80006A20: sll   $t8, $a0, 0x2
    80006A24: lh    $a0, 0xFFFA ($t2)
    80006A28: addu  $t6, $a3, $t8
    80006A2C: lwc1  F6, 0x0000 ($t6)
    80006A30: sw    $a0, 0x0004 ($v0)
    80006A34: sll   $t9, $a0, 0x2
    80006A38: lh    $a0, 0xFFFC ($t2)
    80006A3C: addu  $t7, $a3, $t9
    80006A40: lwc1  F10, 0x0000 ($t7)
    80006A44: sw    $a0, 0x0008 ($v0)
    80006A48: sll   $t8, $a0, 0x2
    80006A4C: lh    $a0, 0xFFFE ($t2)
    80006A50: neg.s F8, F6
    80006A54: addu  $t6, $a3, $t8
    80006A58: sll   $t9, $a0, 0x2
    80006A5C: addu  $t7, $a3, $t9
    80006A60: swc1  F8, 0xFFF0 ($v1)
    80006A64: lwc1  F6, 0x0000 ($t7)
    80006A68: lwc1  F18, 0x0000 ($t6)
    80006A6C: neg.s F16, F10
    80006A70: neg.s F8, F6
    80006A74: neg.s F4, F18
    80006A78: swc1  F8, 0xFFFC ($v1)
    80006A7C: swc1  F4, 0xFFF8 ($v1)
    80006A80: swc1  F16, 0xFFF4 ($v1)
    80006A84: addiu $v0, $v0, 0x0010
    80006A88: bne   $v1, $a2, 0x80006A10
    80006A8C: sw    $a0, 0xFFFC ($v0)
    80006A90: or    $t3, $zero, $zero
    80006A94: lui   $t5, 0x8016
    80006A98: addiu $t8, $t4, 0xFFFF
    80006A9C: addiu $t5, $t5, 0x44D0
    80006AA0: blez  $t8, 0x80006C7C
    80006AA4: sw    $t8, 0x0030 ($sp)
    80006AA8: lui   $t2, 0x8016
    80006AAC: lui   $t0, 0x8016
    80006AB0: lui   $a2, 0x800F
    80006AB4: addiu $a2, $a2, 0x6990
    80006AB8: addiu $t0, $t0, 0x4360
    80006ABC: addiu $t2, $t2, 0x4360
    80006AC0: addiu $t1, $zero, 0x0001
    80006AC4: addiu $a3, $zero, 0x0DD8
    80006AC8: addiu $a0, $sp, 0x0080
    80006ACC: lh    $t9, 0x0000 ($t2)
    80006AD0: slt   $at, $t1, $t4
    80006AD4: multu $t9, $a3
    80006AD8: mflo  $t7
    80006ADC: addu  $t8, $a2, $t7
    80006AE0: lhu   $t6, 0x0000 ($t8)
    80006AE4: andi  $t9, $t6, 0x0800
    80006AE8: bnel  $t9, $zero, 0x80006C6C
    80006AEC: lw    $t6, 0x0030 ($sp)
    80006AF0: beq   $at, $zero, 0x80006C68
    80006AF4: or    $s0, $t1, $zero
    80006AF8: lui   $t7, 0x8016
    80006AFC: subu  $s1, $t4, $t1
    80006B00: andi  $v0, $s1, 0x0001
    80006B04: addiu $t7, $t7, 0x2FD8
    80006B08: sll   $a1, $t3, 0x2
    80006B0C: beq   $v0, $zero, 0x80006B84
    80006B10: addu  $v1, $a1, $t7
    80006B14: sll   $t3, $t1, 0x2
    80006B18: addu  $s1, $t3, $t7
    80006B1C: lwc1  F2, 0x0000 ($s1)
    80006B20: lwc1  F0, 0x0000 ($v1)
    80006B24: sll   $t8, $t1, 0x1
    80006B28: addu  $t6, $t0, $t8
    80006B2C: c.lt.s F0, F2
    80006B30: nop
    80006B34: bc1fl 0x80006B80
    80006B38: addiu $s0, $t1, 0x0001
    80006B3C: lh    $t9, 0x0000 ($t6)
    80006B40: addu  $v0, $a0, $a1
    80006B44: addu  $s0, $a0, $t3
    80006B48: multu $t9, $a3
    80006B4C: mflo  $t7
    80006B50: addu  $t8, $a2, $t7
    80006B54: lhu   $t6, 0x0000 ($t8)
    80006B58: andi  $t9, $t6, 0x0800
    80006B5C: bnel  $t9, $zero, 0x80006B80
    80006B60: addiu $s0, $t1, 0x0001
    80006B64: lw    $t7, 0x0000 ($s0)
    80006B68: lw    $s2, 0x0000 ($v0)
    80006B6C: swc1  F2, 0x0000 ($v1)
    80006B70: sw    $t7, 0x0000 ($v0)
    80006B74: swc1  F0, 0x0000 ($s1)
    80006B78: sw    $s2, 0x0000 ($s0)
    80006B7C: addiu $s0, $t1, 0x0001
    80006B80: beq   $s0, $t4, 0x80006C68
    80006B84: lui   $t8, 0x8016
    80006B88: addiu $t8, $t8, 0x2FD8
    80006B8C: sll   $t3, $s0, 0x2
    80006B90: addu  $s1, $t3, $t8
    80006B94: lwc1  F0, 0x0000 ($v1)
    80006B98: lwc1  F2, 0x0000 ($s1)
    80006B9C: sll   $t6, $s0, 0x1
    80006BA0: addu  $t9, $t0, $t6
    80006BA4: c.lt.s F0, F2
    80006BA8: nop
    80006BAC: bc1fl 0x80006C00
    80006BB0: lwc1  F2, 0x0004 ($s1)
    80006BB4: lh    $t7, 0x0000 ($t9)
    80006BB8: addu  $v0, $a0, $a1
    80006BBC: addu  $s3, $a0, $t3
    80006BC0: multu $t7, $a3
    80006BC4: mflo  $t8
    80006BC8: addu  $t6, $a2, $t8
    80006BCC: lhu   $t9, 0x0000 ($t6)
    80006BD0: andi  $t7, $t9, 0x0800
    80006BD4: bnel  $t7, $zero, 0x80006C00
    80006BD8: lwc1  F2, 0x0004 ($s1)
    80006BDC: lw    $t8, 0x0000 ($s3)
    80006BE0: lw    $s2, 0x0000 ($v0)
    80006BE4: mov.s F12, F0
    80006BE8: swc1  F2, 0x0000 ($v1)
    80006BEC: swc1  F12, 0x0000 ($s1)
    80006BF0: sw    $t8, 0x0000 ($v0)
    80006BF4: lwc1  F0, 0x0000 ($v1)
    80006BF8: sw    $s2, 0x0000 ($s3)
    80006BFC: lwc1  F2, 0x0004 ($s1)
    80006C00: sll   $t6, $s0, 0x1
    80006C04: addu  $t9, $t0, $t6
    80006C08: c.lt.s F0, F2
    80006C0C: nop
    80006C10: bc1fl 0x80006C5C
    80006C14: addiu $s0, $s0, 0x0002
    80006C18: lh    $t7, 0x0002 ($t9)
    80006C1C: addu  $v0, $a0, $a1
    80006C20: addu  $s3, $a0, $t3
    80006C24: multu $t7, $a3
    80006C28: mflo  $t8
    80006C2C: addu  $t6, $a2, $t8
    80006C30: lhu   $t9, 0x0000 ($t6)
    80006C34: andi  $t7, $t9, 0x0800
    80006C38: bnel  $t7, $zero, 0x80006C5C
    80006C3C: addiu $s0, $s0, 0x0002
    80006C40: lw    $t8, 0x0004 ($s3)
    80006C44: lw    $s2, 0x0000 ($v0)
    80006C48: swc1  F2, 0x0000 ($v1)
    80006C4C: sw    $t8, 0x0000 ($v0)
    80006C50: swc1  F0, 0x0004 ($s1)
    80006C54: sw    $s2, 0x0004 ($s3)
    80006C58: addiu $s0, $s0, 0x0002
    80006C5C: addiu $t3, $t3, 0x0008
    80006C60: bne   $s0, $t4, 0x80006B94
    80006C64: addiu $s1, $s1, 0x0008
    80006C68: lw    $t6, 0x0030 ($sp)
    80006C6C: or    $t3, $t1, $zero
    80006C70: addiu $t2, $t2, 0x0002
    80006C74: bne   $t1, $t6, 0x80006ACC
    80006C78: addiu $t1, $t1, 0x0001
    80006C7C: lui   $v0, 0x8016
    80006C80: lui   $v1, 0x8016
    80006C84: lui   $a1, 0x8016
    80006C88: addiu $a0, $sp, 0x0080
    80006C8C: addiu $a1, $a1, 0x43D8
    80006C90: addiu $v1, $v1, 0x43B8
    80006C94: addiu $v0, $v0, 0x43E0
    80006C98: addiu $t1, $zero, 0x0001
    80006C9C: lw    $t9, 0x0000 ($v1)
    80006CA0: addiu $v1, $v1, 0x0004
    80006CA4: sltu  $at, $v1, $a1
    80006CA8: addiu $t1, $t1, 0x0001
    80006CAC: addiu $v0, $v0, 0x0004
    80006CB0: bnez  $at, 0x80006C9C
    80006CB4: sw    $t9, 0xFFFC ($v0)
    80006CB8: blez  $t4, 0x80006DB0
    80006CBC: or    $t3, $zero, $zero
    80006CC0: andi  $t0, $t4, 0x0003
    80006CC4: beq   $t0, $zero, 0x80006D1C
    80006CC8: or    $a1, $t0, $zero
    80006CCC: lui   $t8, 0x8016
    80006CD0: addiu $t8, $t8, 0x4360
    80006CD4: sll   $t7, $zero, 0x1
    80006CD8: sll   $t6, $zero, 0x2
    80006CDC: lui   $a2, 0x8016
    80006CE0: addiu $a2, $a2, 0x43B8
    80006CE4: addu  $v0, $a0, $t6
    80006CE8: addu  $t2, $t7, $t8
    80006CEC: addiu $t1, $zero, 0x0001
    80006CF0: lw    $v1, 0x0000 ($v0)
    80006CF4: addiu $t2, $t2, 0x0002
    80006CF8: addiu $v0, $v0, 0x0004
    80006CFC: sll   $t9, $v1, 0x2
    80006D00: addu  $t7, $a2, $t9
    80006D04: sw    $t3, 0x0000 ($t7)
    80006D08: or    $t3, $t1, $zero
    80006D0C: sh    $v1, 0xFFFE ($t2)
    80006D10: bne   $a1, $t1, 0x80006CF0
    80006D14: addiu $t1, $t1, 0x0001
    80006D18: beq   $t3, $t4, 0x80006DAC
    80006D1C: lui   $t6, 0x8016
    80006D20: addiu $t6, $t6, 0x4360
    80006D24: lui   $a2, 0x8016
    80006D28: sll   $t8, $t3, 0x1
    80006D2C: sll   $t9, $t3, 0x2
    80006D30: addu  $v0, $a0, $t9
    80006D34: addu  $t2, $t8, $t6
    80006D38: addiu $a2, $a2, 0x43B8
    80006D3C: addiu $t1, $t3, 0x0001
    80006D40: lw    $v1, 0x0000 ($v0)
    80006D44: addiu $t2, $t2, 0x0008
    80006D48: addiu $v0, $v0, 0x0010
    80006D4C: sll   $t7, $v1, 0x2
    80006D50: addu  $t8, $a2, $t7
    80006D54: sw    $t3, 0x0000 ($t8)
    80006D58: lw    $a1, 0xFFF4 ($v0)
    80006D5C: addiu $t7, $t3, 0x0002
    80006D60: sh    $v1, 0xFFF8 ($t2)
    80006D64: sll   $t6, $a1, 0x2
    80006D68: addu  $t9, $a2, $t6
    80006D6C: sw    $t1, 0x0000 ($t9)
    80006D70: lw    $a3, 0xFFF8 ($v0)
    80006D74: addiu $t9, $t3, 0x0003
    80006D78: addiu $t3, $t3, 0x0004
    80006D7C: sll   $t8, $a3, 0x2
    80006D80: addu  $t6, $a2, $t8
    80006D84: sw    $t7, 0x0000 ($t6)
    80006D88: lw    $t0, 0xFFFC ($v0)
    80006D8C: addiu $t1, $t1, 0x0004
    80006D90: sh    $a1, 0xFFFA ($t2)
    80006D94: sll   $t8, $t0, 0x2
    80006D98: addu  $t7, $a2, $t8
    80006D9C: sw    $t9, 0x0000 ($t7)
    80006DA0: sh    $a3, 0xFFFC ($t2)
    80006DA4: bne   $t3, $t4, 0x80006D40
    80006DA8: sh    $t0, 0xFFFE ($t2)
    80006DAC: or    $t3, $zero, $zero
    80006DB0: blez  $t4, 0x80006EBC
    80006DB4: andi  $t0, $t4, 0x0003
    80006DB8: beq   $t0, $zero, 0x80006E1C
    80006DBC: or    $a3, $t0, $zero
    80006DC0: sll   $a1, $t3, 0x2
    80006DC4: lui   $t6, 0x8016
    80006DC8: lui   $t9, 0x8016
    80006DCC: addiu $t9, $t9, 0x4378
    80006DD0: addiu $t6, $t6, 0x2FD8
    80006DD4: sll   $t8, $t3, 0x1
    80006DD8: addu  $a2, $t8, $t9
    80006DDC: addu  $v1, $a1, $t6
    80006DE0: addu  $v0, $a0, $a1
    80006DE4: addiu $t1, $t3, 0x0001
    80006DE8: lh    $a1, 0x0000 ($a2)
    80006DEC: or    $t3, $t1, $zero
    80006DF0: addiu $v0, $v0, 0x0004
    80006DF4: sll   $t7, $a1, 0x2
    80006DF8: addu  $t6, $t5, $t7
    80006DFC: lwc1  F10, 0x0000 ($t6)
    80006E00: addiu $v1, $v1, 0x0004
    80006E04: addiu $a2, $a2, 0x0002
    80006E08: sw    $a1, 0xFFFC ($v0)
    80006E0C: swc1  F10, 0xFFFC ($v1)
    80006E10: bne   $a3, $t1, 0x80006DE8
    80006E14: addiu $t1, $t1, 0x0001
    80006E18: beq   $t3, $t4, 0x80006EB8
    80006E1C: lui   $t7, 0x8016
    80006E20: addiu $t7, $t7, 0x4378
    80006E24: sll   $a1, $t3, 0x2
    80006E28: lui   $t8, 0x8016
    80006E2C: addiu $t8, $t8, 0x2FD8
    80006E30: sll   $t9, $t3, 0x1
    80006E34: sll   $t6, $t4, 0x1
    80006E38: addu  $a3, $t6, $t7
    80006E3C: addu  $a2, $t9, $t7
    80006E40: addu  $v1, $a1, $t8
    80006E44: addu  $v0, $a0, $a1
    80006E48: lh    $a1, 0x0000 ($a2)
    80006E4C: addiu $a2, $a2, 0x0008
    80006E50: addiu $v0, $v0, 0x0010
    80006E54: sw    $a1, 0xFFF0 ($v0)
    80006E58: sll   $t8, $a1, 0x2
    80006E5C: lh    $a1, 0xFFFA ($a2)
    80006E60: addu  $t9, $t5, $t8
    80006E64: lwc1  F16, 0x0000 ($t9)
    80006E68: sw    $a1, 0xFFF4 ($v0)
    80006E6C: sll   $t6, $a1, 0x2
    80006E70: lh    $a1, 0xFFFC ($a2)
    80006E74: addu  $t7, $t5, $t6
    80006E78: lwc1  F18, 0x0000 ($t7)
    80006E7C: sw    $a1, 0xFFF8 ($v0)
    80006E80: sll   $t8, $a1, 0x2
    80006E84: lh    $a1, 0xFFFE ($a2)
    80006E88: addu  $t9, $t5, $t8
    80006E8C: swc1  F16, 0x0000 ($v1)
    80006E90: sll   $t6, $a1, 0x2
    80006E94: addu  $t7, $t5, $t6
    80006E98: lwc1  F6, 0x0000 ($t7)
    80006E9C: lwc1  F4, 0x0000 ($t9)
    80006EA0: addiu $v1, $v1, 0x0010
    80006EA4: swc1  F18, 0xFFF4 ($v1)
    80006EA8: sw    $a1, 0xFFFC ($v0)
    80006EAC: swc1  F6, 0xFFFC ($v1)
    80006EB0: bne   $a2, $a3, 0x80006E48
    80006EB4: swc1  F4, 0xFFF8 ($v1)
    80006EB8: or    $t3, $zero, $zero
    80006EBC: lw    $t8, 0x0030 ($sp)
    80006EC0: blez  $t8, 0x80006FE4
    80006EC4: addiu $t1, $zero, 0x0001
    80006EC8: slt   $at, $t1, $t4
    80006ECC: beq   $at, $zero, 0x80006FD0
    80006ED0: or    $s0, $t1, $zero
    80006ED4: lui   $t9, 0x8016
    80006ED8: subu  $s1, $t4, $t1
    80006EDC: andi  $v0, $s1, 0x0001
    80006EE0: addiu $t9, $t9, 0x2FD8
    80006EE4: sll   $a1, $t3, 0x2
    80006EE8: beq   $v0, $zero, 0x80006F38
    80006EEC: addu  $v1, $a1, $t9
    80006EF0: sll   $t3, $t1, 0x2
    80006EF4: addu  $s1, $t3, $t9
    80006EF8: lwc1  F2, 0x0000 ($s1)
    80006EFC: lwc1  F0, 0x0000 ($v1)
    80006F00: addu  $s0, $a0, $t3
    80006F04: addu  $v0, $a0, $a1
    80006F08: c.lt.s F0, F2
    80006F0C: nop
    80006F10: bc1fl 0x80006F34
    80006F14: addiu $s0, $t1, 0x0001
    80006F18: lw    $t6, 0x0000 ($s0)
    80006F1C: lw    $s2, 0x0000 ($v0)
    80006F20: swc1  F2, 0x0000 ($v1)
    80006F24: sw    $t6, 0x0000 ($v0)
    80006F28: swc1  F0, 0x0000 ($s1)
    80006F2C: sw    $s2, 0x0000 ($s0)
    80006F30: addiu $s0, $t1, 0x0001
    80006F34: beq   $s0, $t4, 0x80006FD0
    80006F38: lui   $t7, 0x8016
    80006F3C: addiu $t7, $t7, 0x2FD8
    80006F40: sll   $t3, $s0, 0x2
    80006F44: sll   $t8, $t4, 0x2
    80006F48: addu  $a2, $t8, $t7
    80006F4C: addu  $s1, $t3, $t7
    80006F50: lwc1  F0, 0x0000 ($v1)
    80006F54: lwc1  F2, 0x0000 ($s1)
    80006F58: addu  $v0, $a0, $a1
    80006F5C: addu  $s3, $a0, $t3
    80006F60: c.lt.s F0, F2
    80006F64: nop
    80006F68: bc1fl 0x80006F94
    80006F6C: lwc1  F2, 0x0004 ($s1)
    80006F70: lw    $t9, 0x0000 ($s3)
    80006F74: lw    $s2, 0x0000 ($v0)
    80006F78: mov.s F12, F0
    80006F7C: swc1  F2, 0x0000 ($v1)
    80006F80: swc1  F12, 0x0000 ($s1)
    80006F84: sw    $t9, 0x0000 ($v0)
    80006F88: lwc1  F0, 0x0000 ($v1)
    80006F8C: sw    $s2, 0x0000 ($s3)
    80006F90: lwc1  F2, 0x0004 ($s1)
    80006F94: addu  $v0, $a0, $a1
    80006F98: addu  $s3, $a0, $t3
    80006F9C: c.lt.s F0, F2
    80006FA0: nop
    80006FA4: bc1fl 0x80006FC8
    80006FA8: addiu $s1, $s1, 0x0008
    80006FAC: lw    $t6, 0x0004 ($s3)
    80006FB0: lw    $s2, 0x0000 ($v0)
    80006FB4: swc1  F2, 0x0000 ($v1)
    80006FB8: sw    $t6, 0x0000 ($v0)
    80006FBC: swc1  F0, 0x0004 ($s1)
    80006FC0: sw    $s2, 0x0004 ($s3)
    80006FC4: addiu $s1, $s1, 0x0008
    80006FC8: bne   $s1, $a2, 0x80006F50
    80006FCC: addiu $t3, $t3, 0x0008
    80006FD0: lw    $t8, 0x0030 ($sp)
    80006FD4: or    $t3, $t1, $zero
    80006FD8: bne   $t1, $t8, 0x80006EC8
    80006FDC: addiu $t1, $t1, 0x0001
    80006FE0: or    $t3, $zero, $zero
    80006FE4: blez  $t4, 0x800070DC
    80006FE8: andi  $t0, $t4, 0x0003
    80006FEC: beq   $t0, $zero, 0x80007048
    80006FF0: or    $a0, $t0, $zero
    80006FF4: lui   $t8, 0x8016
    80006FF8: addiu $t8, $t8, 0x4378
    80006FFC: sll   $t7, $t3, 0x2
    80007000: addiu $t9, $sp, 0x0080
    80007004: sll   $t6, $t3, 0x1
    80007008: lui   $t2, 0x8016
    8000700C: addiu $t2, $t2, 0x4408
    80007010: addu  $a2, $t6, $t8
    80007014: addu  $v0, $t7, $t9
    80007018: addiu $t1, $t3, 0x0001
    8000701C: lw    $v1, 0x0000 ($v0)
    80007020: addiu $v0, $v0, 0x0004
    80007024: addiu $a2, $a2, 0x0002
    80007028: sll   $t7, $v1, 0x2
    8000702C: addu  $t9, $t2, $t7
    80007030: sw    $t3, 0x0000 ($t9)
    80007034: or    $t3, $t1, $zero
    80007038: sh    $v1, 0xFFFE ($a2)
    8000703C: bne   $a0, $t1, 0x8000701C
    80007040: addiu $t1, $t1, 0x0001
    80007044: beq   $t3, $t4, 0x800070DC
    80007048: lui   $t9, 0x8016
    8000704C: addiu $t9, $t9, 0x4378
    80007050: lui   $t2, 0x8016
    80007054: sll   $t6, $t3, 0x2
    80007058: addiu $t8, $sp, 0x0080
    8000705C: sll   $t7, $t3, 0x1
    80007060: addu  $a2, $t7, $t9
    80007064: addu  $v0, $t6, $t8
    80007068: addiu $t2, $t2, 0x4408
    8000706C: addiu $t1, $t3, 0x0001
    80007070: lw    $v1, 0x0000 ($v0)
    80007074: addiu $v0, $v0, 0x0010
    80007078: addiu $a2, $a2, 0x0008
    8000707C: sll   $t6, $v1, 0x2
    80007080: addu  $t8, $t2, $t6
    80007084: sw    $t3, 0x0000 ($t8)
    80007088: lw    $a1, 0xFFF4 ($v0)
    8000708C: addiu $t6, $t3, 0x0002
    80007090: sh    $v1, 0xFFF8 ($a2)
    80007094: sll   $t7, $a1, 0x2
    80007098: addu  $t9, $t2, $t7
    8000709C: sw    $t1, 0x0000 ($t9)
    800070A0: lw    $a3, 0xFFF8 ($v0)
    800070A4: addiu $t9, $t3, 0x0003
    800070A8: addiu $t3, $t3, 0x0004
    800070AC: sll   $t8, $a3, 0x2
    800070B0: addu  $t7, $t2, $t8
    800070B4: sw    $t6, 0x0000 ($t7)
    800070B8: lw    $t0, 0xFFFC ($v0)
    800070BC: addiu $t1, $t1, 0x0004
    800070C0: sh    $a1, 0xFFFA ($a2)
    800070C4: sll   $t8, $t0, 0x2
    800070C8: addu  $t6, $t2, $t8
    800070CC: sw    $t9, 0x0000 ($t6)
    800070D0: sh    $a3, 0xFFFC ($a2)
    800070D4: bne   $t3, $t4, 0x80007070
    800070D8: sh    $t0, 0xFFFE ($a2)
    800070DC: lw    $s0, 0x0008 ($sp)
    800070E0: lw    $s1, 0x000C ($sp)
    800070E4: lw    $s2, 0x0010 ($sp)
    800070E8: lw    $s3, 0x0014 ($sp)
    800070EC: jr    $ra
    800070F0: addiu $sp, $sp, 0x00A8

800070F4: lui   $v0, 0x800E
800070F8: lw    $v0, 0xC53C ($v0)
800070FC: addiu $sp, $sp, 0xFF88
80007100: addiu $at, $zero, 0x0001
80007104: beq   $v0, $zero, 0x80007130
80007108: addiu $t5, $sp, 0x0050
8000710C: beq   $v0, $at, 0x80007130
80007110: addiu $at, $zero, 0x0002
80007114: beq   $v0, $at, 0x80007138
80007118: lui   $a2, 0x8019
8000711C: addiu $at, $zero, 0x0003
80007120: beq   $v0, $at, 0x800074CC
80007124: nop
80007128: beq   $zero, $zero, 0x800074CC
8000712C: nop
80007130: beq   $zero, $zero, 0x8000713C
80007134: addiu $a2, $zero, 0x0008
80007138: lb    $a2, 0xEDF3 ($a2)
8000713C: blez  $a2, 0x80007278
80007140: or    $a3, $zero, $zero
80007144: andi  $t2, $a2, 0x0003
80007148: beq   $t2, $zero, 0x800071BC
8000714C: or    $t1, $t2, $zero
80007150: lui   $t7, 0x8016
80007154: sll   $a0, $zero, 0x2
80007158: lui   $t9, 0x8016
8000715C: addiu $t9, $t9, 0x2FD8
80007160: addiu $t7, $t7, 0x4360
80007164: sll   $t6, $zero, 0x1
80007168: addiu $t8, $sp, 0x0050
8000716C: lui   $t2, 0x8016
80007170: addiu $t2, $t2, 0xF898
80007174: addu  $v0, $a0, $t8
80007178: addu  $t0, $t6, $t7
8000717C: addu  $v1, $a0, $t9
80007180: addiu $a1, $zero, 0x0001
80007184: lh    $a0, 0x0000 ($t0)
80007188: or    $a3, $a1, $zero
8000718C: addiu $t0, $t0, 0x0002
80007190: sll   $t6, $a0, 0x2
80007194: addu  $t7, $t2, $t6
80007198: lwc1  F4, 0x0000 ($t7)
8000719C: addiu $v0, $v0, 0x0004
800071A0: addiu $v1, $v1, 0x0004
800071A4: neg.s F6, F4
800071A8: sw    $a0, 0xFFFC ($v0)
800071AC: swc1  F6, 0xFFFC ($v1)
800071B0: bne   $t1, $a1, 0x80007184
800071B4: addiu $a1, $a1, 0x0001
800071B8: beq   $a3, $a2, 0x80007274
800071BC: lui   $t9, 0x8016
800071C0: addiu $t9, $t9, 0x4360
800071C4: sll   $t8, $a3, 0x1
800071C8: lui   $t7, 0x8016
800071CC: addiu $t7, $t7, 0x2FD8
800071D0: addu  $t0, $t8, $t9
800071D4: sll   $a0, $a3, 0x2
800071D8: sll   $t8, $a2, 0x2
800071DC: lui   $t2, 0x8016
800071E0: addiu $t6, $sp, 0x0050
800071E4: addu  $v0, $a0, $t6
800071E8: addiu $t2, $t2, 0xF898
800071EC: addu  $a1, $t8, $t7
800071F0: addu  $v1, $a0, $t7
800071F4: lh    $a0, 0x0000 ($t0)
800071F8: addiu $v1, $v1, 0x0010
800071FC: addiu $t0, $t0, 0x0008
80007200: sw    $a0, 0x0000 ($v0)
80007204: sll   $t9, $a0, 0x2
80007208: lh    $a0, 0xFFFA ($t0)
8000720C: addu  $t6, $t2, $t9
80007210: lwc1  F8, 0x0000 ($t6)
80007214: sw    $a0, 0x0004 ($v0)
80007218: sll   $t8, $a0, 0x2
8000721C: lh    $a0, 0xFFFC ($t0)
80007220: addu  $t7, $t2, $t8
80007224: lwc1  F16, 0x0000 ($t7)
80007228: sw    $a0, 0x0008 ($v0)
8000722C: sll   $t9, $a0, 0x2
80007230: lh    $a0, 0xFFFE ($t0)
80007234: neg.s F10, F8
80007238: addu  $t6, $t2, $t9
8000723C: sll   $t8, $a0, 0x2
80007240: addu  $t7, $t2, $t8
80007244: swc1  F10, 0xFFF0 ($v1)
80007248: lwc1  F8, 0x0000 ($t7)
8000724C: lwc1  F4, 0x0000 ($t6)
80007250: neg.s F18, F16
80007254: neg.s F10, F8
80007258: neg.s F6, F4
8000725C: swc1  F10, 0xFFFC ($v1)
80007260: swc1  F6, 0xFFF8 ($v1)
80007264: swc1  F18, 0xFFF4 ($v1)
80007268: addiu $v0, $v0, 0x0010
8000726C: bne   $v1, $a1, 0x800071F4
80007270: sw    $a0, 0xFFFC ($v0)
80007274: or    $a3, $zero, $zero
80007278: addiu $t0, $a2, 0xFFFF
8000727C: blez  $t0, 0x80007398
80007280: addiu $a1, $zero, 0x0001
80007284: slt   $at, $a1, $a2
80007288: beq   $at, $zero, 0x8000738C
8000728C: or    $v0, $a1, $zero
80007290: sll   $a0, $a3, 0x2
80007294: lui   $t9, 0x8016
80007298: subu  $t1, $a2, $a1
8000729C: andi  $a3, $t1, 0x0001
800072A0: addiu $t9, $t9, 0x2FD8
800072A4: beq   $a3, $zero, 0x800072F4
800072A8: addu  $v1, $a0, $t9
800072AC: sll   $a3, $a1, 0x2
800072B0: addu  $t3, $a3, $t9
800072B4: lwc1  F2, 0x0000 ($t3)
800072B8: lwc1  F0, 0x0000 ($v1)
800072BC: addu  $t1, $t5, $a3
800072C0: addu  $v0, $t5, $a0
800072C4: c.lt.s F0, F2
800072C8: nop
800072CC: bc1fl 0x800072F0
800072D0: addiu $v0, $a1, 0x0001
800072D4: lw    $t6, 0x0000 ($t1)
800072D8: lw    $t2, 0x0000 ($v0)
800072DC: swc1  F2, 0x0000 ($v1)
800072E0: sw    $t6, 0x0000 ($v0)
800072E4: swc1  F0, 0x0000 ($t3)
800072E8: sw    $t2, 0x0000 ($t1)
800072EC: addiu $v0, $a1, 0x0001
800072F0: beq   $v0, $a2, 0x8000738C
800072F4: lui   $t8, 0x8016
800072F8: addiu $t8, $t8, 0x2FD8
800072FC: sll   $a3, $v0, 0x2
80007300: sll   $t7, $a2, 0x2
80007304: addu  $t4, $t7, $t8
80007308: addu  $t1, $a3, $t8
8000730C: lwc1  F0, 0x0000 ($v1)
80007310: lwc1  F2, 0x0000 ($t1)
80007314: addu  $v0, $t5, $a0
80007318: addu  $t3, $t5, $a3
8000731C: c.lt.s F0, F2
80007320: nop
80007324: bc1fl 0x80007350
80007328: lwc1  F2, 0x0004 ($t1)
8000732C: lw    $t9, 0x0000 ($t3)
80007330: lw    $t2, 0x0000 ($v0)
80007334: mov.s F12, F0
80007338: swc1  F2, 0x0000 ($v1)
8000733C: swc1  F12, 0x0000 ($t1)
80007340: sw    $t9, 0x0000 ($v0)
80007344: lwc1  F0, 0x0000 ($v1)
80007348: sw    $t2, 0x0000 ($t3)
8000734C: lwc1  F2, 0x0004 ($t1)
80007350: addu  $v0, $t5, $a0
80007354: addu  $t3, $t5, $a3
80007358: c.lt.s F0, F2
8000735C: nop
80007360: bc1fl 0x80007384
80007364: addiu $t1, $t1, 0x0008
80007368: lw    $t6, 0x0004 ($t3)
8000736C: lw    $t2, 0x0000 ($v0)
80007370: swc1  F2, 0x0000 ($v1)
80007374: sw    $t6, 0x0000 ($v0)
80007378: swc1  F0, 0x0004 ($t1)
8000737C: sw    $t2, 0x0004 ($t3)
80007380: addiu $t1, $t1, 0x0008
80007384: bne   $t1, $t4, 0x8000730C
80007388: addiu $a3, $a3, 0x0008
8000738C: or    $a3, $a1, $zero
80007390: bne   $a1, $t0, 0x80007284
80007394: addiu $a1, $a1, 0x0001
80007398: lui   $v0, 0x8016
8000739C: lui   $v1, 0x8016
800073A0: lui   $a0, 0x8016
800073A4: addiu $a0, $a0, 0x43D8
800073A8: addiu $v1, $v1, 0x43B8
800073AC: addiu $v0, $v0, 0x43E0
800073B0: addiu $a1, $zero, 0x0001
800073B4: lw    $t7, 0x0000 ($v1)
800073B8: addiu $v1, $v1, 0x0004
800073BC: sltu  $at, $v1, $a0
800073C0: addiu $a1, $a1, 0x0001
800073C4: addiu $v0, $v0, 0x0004
800073C8: bnez  $at, 0x800073B4
800073CC: sw    $t7, 0xFFFC ($v0)
800073D0: blez  $a2, 0x800074CC
800073D4: or    $a3, $zero, $zero
800073D8: andi  $t2, $a2, 0x0003
800073DC: beq   $t2, $zero, 0x80007438
800073E0: or    $a0, $t2, $zero
800073E4: lui   $t9, 0x8016
800073E8: addiu $t9, $t9, 0x4360
800073EC: sll   $t8, $zero, 0x1
800073F0: sll   $t6, $zero, 0x2
800073F4: addiu $t7, $sp, 0x0050
800073F8: lui   $t3, 0x8016
800073FC: addiu $t3, $t3, 0x43B8
80007400: addu  $v0, $t6, $t7
80007404: addu  $t0, $t8, $t9
80007408: addiu $a1, $zero, 0x0001
8000740C: lw    $v1, 0x0000 ($v0)
80007410: addiu $t0, $t0, 0x0002
80007414: addiu $v0, $v0, 0x0004
80007418: sll   $t8, $v1, 0x2
8000741C: addu  $t9, $t3, $t8
80007420: sw    $a3, 0x0000 ($t9)
80007424: or    $a3, $a1, $zero
80007428: sh    $v1, 0xFFFE ($t0)
8000742C: bne   $a0, $a1, 0x8000740C
80007430: addiu $a1, $a1, 0x0001
80007434: beq   $a3, $a2, 0x800074CC
80007438: lui   $t7, 0x8016
8000743C: addiu $t7, $t7, 0x4360
80007440: lui   $t3, 0x8016
80007444: sll   $t6, $a3, 0x1
80007448: sll   $t8, $a3, 0x2
8000744C: addiu $t9, $sp, 0x0050
80007450: addu  $v0, $t8, $t9
80007454: addu  $t0, $t6, $t7
80007458: addiu $t3, $t3, 0x43B8
8000745C: addiu $a1, $a3, 0x0001
80007460: lw    $v1, 0x0000 ($v0)
80007464: addiu $t0, $t0, 0x0008
80007468: addiu $v0, $v0, 0x0010
8000746C: sll   $t6, $v1, 0x2
80007470: addu  $t7, $t3, $t6
80007474: sw    $a3, 0x0000 ($t7)
80007478: lw    $a0, 0xFFF4 ($v0)
8000747C: addiu $t6, $a3, 0x0002
80007480: sh    $v1, 0xFFF8 ($t0)
80007484: sll   $t8, $a0, 0x2
80007488: addu  $t9, $t3, $t8
8000748C: sw    $a1, 0x0000 ($t9)
80007490: lw    $t1, 0xFFF8 ($v0)
80007494: addiu $t9, $a3, 0x0003
80007498: addiu $a3, $a3, 0x0004
8000749C: sll   $t7, $t1, 0x2
800074A0: addu  $t8, $t3, $t7
800074A4: sw    $t6, 0x0000 ($t8)
800074A8: lw    $t2, 0xFFFC ($v0)
800074AC: addiu $a1, $a1, 0x0004
800074B0: sh    $a0, 0xFFFA ($t0)
800074B4: sll   $t7, $t2, 0x2
800074B8: addu  $t6, $t3, $t7
800074BC: sw    $t9, 0x0000 ($t6)
800074C0: sh    $t1, 0xFFFC ($t0)
800074C4: bne   $a3, $a2, 0x80007460
800074C8: sh    $t2, 0xFFFE ($t0)
800074CC: jr    $ra
800074D0: addiu $sp, $sp, 0x0078

800074D4: addiu $sp, $sp, 0xFF70
800074D8: lui   $a0, 0x8016
800074DC: mtc1  $zero, F0
800074E0: sw    $s1, 0x000C ($sp)
800074E4: sw    $s0, 0x0008 ($sp)
800074E8: addiu $t2, $zero, 0x0008
800074EC: addiu $a0, $a0, 0x2FD8
800074F0: addiu $a3, $zero, 0x0001
800074F4: addiu $v0, $zero, 0x0009
800074F8: addiu $a3, $a3, 0x0001
800074FC: slt   $at, $a3, $v0
80007500: swc1  F0, 0x0000 ($a0)
80007504: bnez  $at, 0x800074F8
80007508: addiu $a0, $a0, 0x0004
8000750C: or    $v0, $zero, $zero
80007510: beq   $zero, $zero, 0x800075A8
80007514: or    $t0, $zero, $zero
80007518: sll   $t6, $zero, 0x3
8000751C: subu  $t6, $t6, $zero
80007520: sll   $t6, $t6, 0x4
80007524: subu  $t6, $t6, $zero
80007528: sll   $t6, $t6, 0x2
8000752C: subu  $t6, $t6, $zero
80007530: lui   $t7, 0x800F
80007534: addiu $t7, $t7, 0x6990
80007538: sll   $t6, $t6, 0x3
8000753C: lui   $t4, 0x8016
80007540: lui   $t1, 0x8016
80007544: addiu $t1, $t1, 0xF898
80007548: addiu $t4, $t4, 0x2FD8
8000754C: addu  $a0, $t6, $t7
80007550: or    $a1, $zero, $zero
80007554: addiu $a3, $zero, 0x0001
80007558: addiu $a2, $sp, 0x0068
8000755C: lhu   $t8, 0x0000 ($a0)
80007560: sll   $v1, $v0, 0x2
80007564: addu  $t6, $a2, $v1
80007568: andi  $t9, $t8, 0x0800
8000756C: beq   $t9, $zero, 0x80007594
80007570: addiu $a0, $a0, 0x0DD8
80007574: sll   $t7, $t0, 0x2
80007578: addu  $t8, $t1, $t7
8000757C: sw    $t0, 0x0000 ($t6)
80007580: lwc1  F4, 0x0000 ($t8)
80007584: addu  $t9, $t4, $v1
80007588: addiu $v0, $v0, 0x0001
8000758C: neg.s F6, F4
80007590: swc1  F6, 0x0000 ($t9)
80007594: or    $t0, $a3, $zero
80007598: bne   $a1, $a3, 0x8000755C
8000759C: addiu $a3, $a3, 0x0001
800075A0: addiu $t3, $zero, 0x0008
800075A4: beq   $t0, $t3, 0x800076CC
800075A8: sll   $t6, $t0, 0x3
800075AC: subu  $t6, $t6, $t0
800075B0: sll   $t6, $t6, 0x4
800075B4: subu  $t6, $t6, $t0
800075B8: sll   $t6, $t6, 0x2
800075BC: subu  $t6, $t6, $t0
800075C0: lui   $t7, 0x800F
800075C4: addiu $t7, $t7, 0x6990
800075C8: sll   $t6, $t6, 0x3
800075CC: lui   $t1, 0x8016
800075D0: lui   $t4, 0x8016
800075D4: addiu $t4, $t4, 0x2FD8
800075D8: addiu $t1, $t1, 0xF898
800075DC: addu  $a0, $t6, $t7
800075E0: addiu $a2, $sp, 0x0068
800075E4: lhu   $t8, 0x0000 ($a0)
800075E8: sll   $v1, $v0, 0x2
800075EC: addu  $t6, $a2, $v1
800075F0: andi  $t9, $t8, 0x0800
800075F4: beq   $t9, $zero, 0x80007618
800075F8: sll   $t7, $t0, 0x2
800075FC: sw    $t0, 0x0000 ($t6)
80007600: addu  $t8, $t1, $t7
80007604: lwc1  F8, 0x0000 ($t8)
80007608: addu  $t9, $t4, $v1
8000760C: addiu $v0, $v0, 0x0001
80007610: neg.s F10, F8
80007614: swc1  F10, 0x0000 ($t9)
80007618: lhu   $t6, 0x0DD8 ($a0)
8000761C: sll   $v1, $v0, 0x2
80007620: addu  $t9, $a2, $v1
80007624: andi  $t7, $t6, 0x0800
80007628: beq   $t7, $zero, 0x80007650
8000762C: addiu $t8, $t0, 0x0001
80007630: sll   $t6, $t0, 0x2
80007634: addu  $t7, $t1, $t6
80007638: sw    $t8, 0x0000 ($t9)
8000763C: lwc1  F16, 0x0004 ($t7)
80007640: addu  $t8, $t4, $v1
80007644: addiu $v0, $v0, 0x0001
80007648: neg.s F18, F16
8000764C: swc1  F18, 0x0000 ($t8)
80007650: lhu   $t9, 0x1BB0 ($a0)
80007654: sll   $v1, $v0, 0x2
80007658: addu  $t8, $a2, $v1
8000765C: andi  $t6, $t9, 0x0800
80007660: beq   $t6, $zero, 0x80007688
80007664: addiu $t7, $t0, 0x0002
80007668: sll   $t9, $t0, 0x2
8000766C: addu  $t6, $t1, $t9
80007670: sw    $t7, 0x0000 ($t8)
80007674: lwc1  F4, 0x0008 ($t6)
80007678: addu  $t7, $t4, $v1
8000767C: addiu $v0, $v0, 0x0001
80007680: neg.s F6, F4
80007684: swc1  F6, 0x0000 ($t7)
80007688: lhu   $t8, 0x2988 ($a0)
8000768C: sll   $v1, $v0, 0x2
80007690: addu  $t7, $a2, $v1
80007694: andi  $t9, $t8, 0x0800
80007698: beq   $t9, $zero, 0x800076C0
8000769C: addiu $t6, $t0, 0x0003
800076A0: sll   $t8, $t0, 0x2
800076A4: addu  $t9, $t1, $t8
800076A8: sw    $t6, 0x0000 ($t7)
800076AC: lwc1  F8, 0x000C ($t9)
800076B0: addu  $t6, $t4, $v1
800076B4: addiu $v0, $v0, 0x0001
800076B8: neg.s F10, F8
800076BC: swc1  F10, 0x0000 ($t6)
800076C0: addiu $t0, $t0, 0x0004
800076C4: bne   $t0, $t2, 0x800075E4
800076C8: addiu $a0, $a0, 0x3760
800076CC: lui   $t4, 0x8016
800076D0: addiu $t4, $t4, 0x2FD8
800076D4: or    $t0, $zero, $zero
800076D8: addiu $a2, $sp, 0x0068
800076DC: addiu $t3, $zero, 0x0008
800076E0: beq   $zero, $zero, 0x80007764
800076E4: or    $t1, $v0, $zero
800076E8: sll   $t7, $zero, 0x3
800076EC: subu  $t7, $t7, $zero
800076F0: sll   $t7, $t7, 0x4
800076F4: subu  $t7, $t7, $zero
800076F8: sll   $t7, $t7, 0x2
800076FC: subu  $t7, $t7, $zero
80007700: lui   $t8, 0x800F
80007704: addiu $t8, $t8, 0x6990
80007708: sll   $t7, $t7, 0x3
8000770C: lui   $t5, 0x8016
80007710: addiu $t5, $t5, 0x44D0
80007714: addu  $a0, $t7, $t8
80007718: or    $a1, $zero, $zero
8000771C: addiu $a3, $zero, 0x0001
80007720: lhu   $t9, 0x0000 ($a0)
80007724: sll   $v1, $v0, 0x2
80007728: addu  $t7, $a2, $v1
8000772C: andi  $t6, $t9, 0x0800
80007730: bnez  $t6, 0x80007754
80007734: addiu $a0, $a0, 0x0DD8
80007738: sll   $t8, $t0, 0x2
8000773C: addu  $t9, $t5, $t8
80007740: sw    $t0, 0x0000 ($t7)
80007744: lwc1  F16, 0x0000 ($t9)
80007748: addu  $t6, $t4, $v1
8000774C: addiu $v0, $v0, 0x0001
80007750: swc1  F16, 0x0000 ($t6)
80007754: or    $t0, $a3, $zero
80007758: bne   $a1, $a3, 0x80007720
8000775C: addiu $a3, $a3, 0x0001
80007760: beq   $t0, $t3, 0x8000786C
80007764: sll   $t7, $t0, 0x3
80007768: subu  $t7, $t7, $t0
8000776C: sll   $t7, $t7, 0x4
80007770: subu  $t7, $t7, $t0
80007774: sll   $t7, $t7, 0x2
80007778: subu  $t7, $t7, $t0
8000777C: lui   $t8, 0x800F
80007780: addiu $t8, $t8, 0x6990
80007784: sll   $t7, $t7, 0x3
80007788: lui   $t5, 0x8016
8000778C: addiu $t5, $t5, 0x44D0
80007790: addu  $a0, $t7, $t8
80007794: lhu   $t9, 0x0000 ($a0)
80007798: sll   $v1, $v0, 0x2
8000779C: addu  $t7, $a2, $v1
800077A0: andi  $t6, $t9, 0x0800
800077A4: bnez  $t6, 0x800077C4
800077A8: sll   $t8, $t0, 0x2
800077AC: sw    $t0, 0x0000 ($t7)
800077B0: addu  $t9, $t5, $t8
800077B4: lwc1  F18, 0x0000 ($t9)
800077B8: addu  $t6, $t4, $v1
800077BC: addiu $v0, $v0, 0x0001
800077C0: swc1  F18, 0x0000 ($t6)
800077C4: lhu   $t7, 0x0DD8 ($a0)
800077C8: sll   $v1, $v0, 0x2
800077CC: addu  $t6, $a2, $v1
800077D0: andi  $t8, $t7, 0x0800
800077D4: bnez  $t8, 0x800077F8
800077D8: addiu $t9, $t0, 0x0001
800077DC: sll   $t7, $t0, 0x2
800077E0: addu  $t8, $t5, $t7
800077E4: sw    $t9, 0x0000 ($t6)
800077E8: lwc1  F4, 0x0004 ($t8)
800077EC: addu  $t9, $t4, $v1
800077F0: addiu $v0, $v0, 0x0001
800077F4: swc1  F4, 0x0000 ($t9)
800077F8: lhu   $t6, 0x1BB0 ($a0)
800077FC: sll   $v1, $v0, 0x2
80007800: addu  $t9, $a2, $v1
80007804: andi  $t7, $t6, 0x0800
80007808: bnez  $t7, 0x8000782C
8000780C: addiu $t8, $t0, 0x0002
80007810: sll   $t6, $t0, 0x2
80007814: addu  $t7, $t5, $t6
80007818: sw    $t8, 0x0000 ($t9)
8000781C: lwc1  F6, 0x0008 ($t7)
80007820: addu  $t8, $t4, $v1
80007824: addiu $v0, $v0, 0x0001
80007828: swc1  F6, 0x0000 ($t8)
8000782C: lhu   $t9, 0x2988 ($a0)
80007830: sll   $v1, $v0, 0x2
80007834: addu  $t8, $a2, $v1
80007838: andi  $t6, $t9, 0x0800
8000783C: bnez  $t6, 0x80007860
80007840: addiu $t7, $t0, 0x0003
80007844: sll   $t9, $t0, 0x2
80007848: addu  $t6, $t5, $t9
8000784C: sw    $t7, 0x0000 ($t8)
80007850: lwc1  F8, 0x000C ($t6)
80007854: addu  $t7, $t4, $v1
80007858: addiu $v0, $v0, 0x0001
8000785C: swc1  F8, 0x0000 ($t7)
80007860: addiu $t0, $t0, 0x0004
80007864: bne   $t0, $t2, 0x80007794
80007868: addiu $a0, $a0, 0x3760
8000786C: addiu $t5, $t1, 0xFFFF
80007870: blez  $t5, 0x80007990
80007874: or    $t0, $zero, $zero
80007878: addiu $a3, $zero, 0x0001
8000787C: slt   $at, $a3, $t1
80007880: beq   $at, $zero, 0x80007984
80007884: or    $v0, $a3, $zero
80007888: lui   $t8, 0x8016
8000788C: subu  $t4, $t1, $a3
80007890: andi  $v1, $t4, 0x0001
80007894: addiu $t8, $t8, 0x2FD8
80007898: sll   $a1, $t0, 0x2
8000789C: beq   $v1, $zero, 0x800078EC
800078A0: addu  $a0, $a1, $t8
800078A4: sll   $v1, $a3, 0x2
800078A8: addu  $t4, $v1, $t8
800078AC: lwc1  F2, 0x0000 ($t4)
800078B0: lwc1  F0, 0x0000 ($a0)
800078B4: addu  $t0, $a2, $v1
800078B8: addu  $v0, $a2, $a1
800078BC: c.lt.s F0, F2
800078C0: nop
800078C4: bc1fl 0x800078E8
800078C8: addiu $v0, $a3, 0x0001
800078CC: lw    $t9, 0x0000 ($t0)
800078D0: lw    $s0, 0x0000 ($v0)
800078D4: swc1  F2, 0x0000 ($a0)
800078D8: sw    $t9, 0x0000 ($v0)
800078DC: swc1  F0, 0x0000 ($t4)
800078E0: sw    $s0, 0x0000 ($t0)
800078E4: addiu $v0, $a3, 0x0001
800078E8: beq   $v0, $t1, 0x80007984
800078EC: lui   $t6, 0x8016
800078F0: addiu $t6, $t6, 0x2FD8
800078F4: sll   $v1, $v0, 0x2
800078F8: sll   $t7, $t1, 0x2
800078FC: addu  $s1, $t7, $t6
80007900: addu  $t4, $v1, $t6
80007904: lwc1  F0, 0x0000 ($a0)
80007908: lwc1  F2, 0x0000 ($t4)
8000790C: addu  $v0, $a2, $a1
80007910: addu  $t0, $a2, $v1
80007914: c.lt.s F0, F2
80007918: nop
8000791C: bc1fl 0x80007948
80007920: lwc1  F2, 0x0004 ($t4)
80007924: lw    $t8, 0x0000 ($t0)
80007928: lw    $s0, 0x0000 ($v0)
8000792C: mov.s F12, F0
80007930: swc1  F2, 0x0000 ($a0)
80007934: swc1  F12, 0x0000 ($t4)
80007938: sw    $t8, 0x0000 ($v0)
8000793C: lwc1  F0, 0x0000 ($a0)
80007940: sw    $s0, 0x0000 ($t0)
80007944: lwc1  F2, 0x0004 ($t4)
80007948: addu  $v0, $a2, $a1
8000794C: addu  $t0, $a2, $v1
80007950: c.lt.s F0, F2
80007954: nop
80007958: bc1fl 0x8000797C
8000795C: addiu $t4, $t4, 0x0008
80007960: lw    $t9, 0x0004 ($t0)
80007964: lw    $s0, 0x0000 ($v0)
80007968: swc1  F2, 0x0000 ($a0)
8000796C: sw    $t9, 0x0000 ($v0)
80007970: swc1  F0, 0x0004 ($t4)
80007974: sw    $s0, 0x0004 ($t0)
80007978: addiu $t4, $t4, 0x0008
8000797C: bne   $t4, $s1, 0x80007904
80007980: addiu $v1, $v1, 0x0008
80007984: or    $t0, $a3, $zero
80007988: bne   $a3, $t5, 0x8000787C
8000798C: addiu $a3, $a3, 0x0001
80007990: slti  $at, $t5, 0x0006
80007994: beq   $at, $zero, 0x80007ABC
80007998: or    $t0, $t1, $zero
8000799C: addiu $a3, $t1, 0x0001
800079A0: addiu $t1, $t2, 0xFFFF
800079A4: slti  $at, $a3, 0x0008
800079A8: beq   $at, $zero, 0x80007AB0
800079AC: or    $v0, $a3, $zero
800079B0: addiu $t6, $zero, 0x0008
800079B4: subu  $t4, $t6, $a3
800079B8: lui   $t7, 0x8016
800079BC: addiu $t7, $t7, 0x2FD8
800079C0: andi  $v1, $t4, 0x0001
800079C4: sll   $a1, $t0, 0x2
800079C8: beq   $v1, $zero, 0x80007A18
800079CC: addu  $a0, $a1, $t7
800079D0: sll   $v1, $a3, 0x2
800079D4: addu  $t4, $v1, $t7
800079D8: lwc1  F2, 0x0000 ($t4)
800079DC: lwc1  F0, 0x0000 ($a0)
800079E0: addu  $t0, $a2, $v1
800079E4: addu  $v0, $a2, $a1
800079E8: c.lt.s F0, F2
800079EC: nop
800079F0: bc1fl 0x80007A14
800079F4: addiu $v0, $a3, 0x0001
800079F8: lw    $t8, 0x0000 ($t0)
800079FC: lw    $s0, 0x0000 ($v0)
80007A00: swc1  F2, 0x0000 ($a0)
80007A04: sw    $t8, 0x0000 ($v0)
80007A08: swc1  F0, 0x0000 ($t4)
80007A0C: sw    $s0, 0x0000 ($t0)
80007A10: addiu $v0, $a3, 0x0001
80007A14: beq   $v0, $t3, 0x80007AB0
80007A18: lui   $t9, 0x8016
80007A1C: addiu $t9, $t9, 0x2FD8
80007A20: sll   $v1, $v0, 0x2
80007A24: sll   $t6, $t2, 0x2
80007A28: addu  $t5, $t6, $t9
80007A2C: addu  $t4, $v1, $t9
80007A30: lwc1  F0, 0x0000 ($a0)
80007A34: lwc1  F2, 0x0000 ($t4)
80007A38: addu  $v0, $a2, $a1
80007A3C: addu  $t0, $a2, $v1
80007A40: c.lt.s F0, F2
80007A44: nop
80007A48: bc1fl 0x80007A74
80007A4C: lwc1  F2, 0x0004 ($t4)
80007A50: lw    $t7, 0x0000 ($t0)
80007A54: lw    $s0, 0x0000 ($v0)
80007A58: mov.s F12, F0
80007A5C: swc1  F2, 0x0000 ($a0)
80007A60: swc1  F12, 0x0000 ($t4)
80007A64: sw    $t7, 0x0000 ($v0)
80007A68: lwc1  F0, 0x0000 ($a0)
80007A6C: sw    $s0, 0x0000 ($t0)
80007A70: lwc1  F2, 0x0004 ($t4)
80007A74: addu  $v0, $a2, $a1
80007A78: addu  $t0, $a2, $v1
80007A7C: c.lt.s F0, F2
80007A80: nop
80007A84: bc1fl 0x80007AA8
80007A88: addiu $t4, $t4, 0x0008
80007A8C: lw    $t8, 0x0004 ($t0)
80007A90: lw    $s0, 0x0000 ($v0)
80007A94: swc1  F2, 0x0000 ($a0)
80007A98: sw    $t8, 0x0000 ($v0)
80007A9C: swc1  F0, 0x0004 ($t4)
80007AA0: sw    $s0, 0x0004 ($t0)
80007AA4: addiu $t4, $t4, 0x0008
80007AA8: bne   $t4, $t5, 0x80007A30
80007AAC: addiu $v1, $v1, 0x0008
80007AB0: or    $t0, $a3, $zero
80007AB4: bne   $a3, $t1, 0x800079A4
80007AB8: addiu $a3, $a3, 0x0001
80007ABC: lui   $v0, 0x8016
80007AC0: lui   $v1, 0x8016
80007AC4: lui   $a0, 0x8016
80007AC8: addiu $a0, $a0, 0x43D8
80007ACC: addiu $v1, $v1, 0x43B8
80007AD0: addiu $v0, $v0, 0x43E0
80007AD4: addiu $a3, $zero, 0x0001
80007AD8: lw    $t6, 0x0000 ($v1)
80007ADC: addiu $v1, $v1, 0x0004
80007AE0: sltu  $at, $v1, $a0
80007AE4: addiu $a3, $a3, 0x0001
80007AE8: addiu $v0, $v0, 0x0004
80007AEC: bnez  $at, 0x80007AD8
80007AF0: sw    $t6, 0xFFFC ($v0)
80007AF4: beq   $zero, $zero, 0x80007B54
80007AF8: or    $t0, $zero, $zero
80007AFC: lui   $t6, 0x8016
80007B00: addiu $t6, $t6, 0x4360
80007B04: sll   $t9, $zero, 0x2
80007B08: addiu $t7, $sp, 0x0068
80007B0C: sll   $t8, $zero, 0x1
80007B10: lui   $t4, 0x8016
80007B14: addiu $t4, $t4, 0x43B8
80007B18: addu  $a0, $t8, $t6
80007B1C: addu  $v0, $t9, $t7
80007B20: or    $a1, $zero, $zero
80007B24: addiu $a3, $zero, 0x0001
80007B28: lw    $v1, 0x0000 ($v0)
80007B2C: addiu $v0, $v0, 0x0004
80007B30: addiu $a0, $a0, 0x0002
80007B34: sll   $t9, $v1, 0x2
80007B38: addu  $t7, $t4, $t9
80007B3C: sw    $t0, 0x0000 ($t7)
80007B40: or    $t0, $a3, $zero
80007B44: sh    $v1, 0xFFFE ($a0)
80007B48: bne   $a1, $a3, 0x80007B28
80007B4C: addiu $a3, $a3, 0x0001
80007B50: beq   $t0, $t3, 0x80007BE8
80007B54: lui   $t7, 0x8016
80007B58: addiu $t7, $t7, 0x4360
80007B5C: lui   $t4, 0x8016
80007B60: sll   $t8, $t0, 0x2
80007B64: addiu $t6, $sp, 0x0068
80007B68: sll   $t9, $t0, 0x1
80007B6C: addu  $a0, $t9, $t7
80007B70: addu  $v0, $t8, $t6
80007B74: addiu $t4, $t4, 0x43B8
80007B78: addiu $a3, $t0, 0x0001
80007B7C: lw    $v1, 0x0000 ($v0)
80007B80: addiu $v0, $v0, 0x0010
80007B84: addiu $a0, $a0, 0x0008
80007B88: sll   $t8, $v1, 0x2
80007B8C: addu  $t6, $t4, $t8
80007B90: sw    $t0, 0x0000 ($t6)
80007B94: lw    $a1, 0xFFF4 ($v0)
80007B98: addiu $t8, $t0, 0x0002
80007B9C: sh    $v1, 0xFFF8 ($a0)
80007BA0: sll   $t9, $a1, 0x2
80007BA4: addu  $t7, $t4, $t9
80007BA8: sw    $a3, 0x0000 ($t7)
80007BAC: lw    $a2, 0xFFF8 ($v0)
80007BB0: addiu $t7, $t0, 0x0003
80007BB4: addiu $t0, $t0, 0x0004
80007BB8: sll   $t6, $a2, 0x2
80007BBC: addu  $t9, $t4, $t6
80007BC0: sw    $t8, 0x0000 ($t9)
80007BC4: lw    $t1, 0xFFFC ($v0)
80007BC8: addiu $a3, $a3, 0x0004
80007BCC: sh    $a1, 0xFFFA ($a0)
80007BD0: sll   $t6, $t1, 0x2
80007BD4: addu  $t8, $t4, $t6
80007BD8: sw    $t7, 0x0000 ($t8)
80007BDC: sh    $a2, 0xFFFC ($a0)
80007BE0: bne   $t0, $t2, 0x80007B7C
80007BE4: sh    $t1, 0xFFFE ($a0)
80007BE8: lw    $s0, 0x0008 ($sp)
80007BEC: lw    $s1, 0x000C ($sp)
80007BF0: jr    $ra
80007BF4: addiu $sp, $sp, 0x0090

80007BF8: andi  $t6, $a1, 0xFFFF
80007BFC: andi  $t7, $a2, 0xFFFF
80007C00: sw    $a2, 0x0008 ($sp)
80007C04: sw    $a3, 0x000C ($sp)
80007C08: andi  $t8, $a3, 0xFFFF
80007C0C: slt   $at, $t6, $t7
80007C10: or    $a3, $t8, $zero
80007C14: or    $a2, $t7, $zero
80007C18: sw    $a0, 0x0000 ($sp)
80007C1C: sw    $a1, 0x0004 ($sp)
80007C20: or    $v1, $zero, $zero
80007C24: or    $t0, $t7, $zero
80007C28: bnez  $at, 0x80007C70
80007C2C: or    $v0, $t6, $zero
80007C30: lhu   $t9, 0x0012 ($sp)
80007C34: or    $a0, $a3, $zero
80007C38: lhu   $a1, 0x0002 ($sp)
80007C3C: subu  $t1, $t9, $a3
80007C40: slt   $at, $v0, $t1
80007C44: beql  $at, $zero, 0x80007C74
80007C48: lhu   $v1, 0x0012 ($sp)
80007C4C: subu  $t2, $v0, $t0
80007C50: slt   $at, $a1, $t2
80007C54: bnez  $at, 0x80007CFC
80007C58: addu  $t3, $v0, $a0
80007C5C: slt   $at, $t3, $a1
80007C60: bnez  $at, 0x80007CFC
80007C64: nop
80007C68: jr    $ra
80007C6C: addiu $v0, $zero, 0x0001

80007C70: lhu   $v1, 0x0012 ($sp)
80007C74: addu  $t4, $v0, $a3
80007C78: lhu   $a1, 0x0002 ($sp)
80007C7C: div   $t4, $v1
80007C80: bnez  $v1, 0x80007C8C
80007C84: nop
80007C88: break
80007C8C: addiu $at, $zero, 0xFFFF
80007C90: bne   $v1, $at, 0x80007CA4
80007C94: lui   $at, 0x8000
80007C98: bne   $t4, $at, 0x80007CA4
80007C9C: nop
80007CA0: break
80007CA4: mfhi  $t5
80007CA8: slt   $at, $t5, $a1
80007CAC: beq   $at, $zero, 0x80007CF8
80007CB0: addu  $t6, $v0, $v1
80007CB4: subu  $t7, $t6, $t0
80007CB8: div   $t7, $v1
80007CBC: bnez  $v1, 0x80007CC8
80007CC0: nop
80007CC4: break
80007CC8: addiu $at, $zero, 0xFFFF
80007CCC: bne   $v1, $at, 0x80007CE0
80007CD0: lui   $at, 0x8000
80007CD4: bne   $t7, $at, 0x80007CE0
80007CD8: nop
80007CDC: break
80007CE0: mfhi  $t8
80007CE4: slt   $at, $t8, $a1
80007CE8: bnel  $at, $zero, 0x80007CFC
80007CEC: addiu $v1, $zero, 0x0002
80007CF0: jr    $ra
80007CF4: addiu $v0, $zero, 0xFFFF

80007CF8: addiu $v1, $zero, 0x0002
80007CFC: jr    $ra
80007D00: or    $v0, $v1, $zero

80007D04: lui   $t3, 0x8016
80007D08: addiu $t3, $t3, 0x43B8
80007D0C: lui   $v1, 0x8016
80007D10: sll   $v0, $a0, 0x2
80007D14: lh    $v1, 0x3478 ($v1)
80007D18: addu  $t9, $t3, $v0
80007D1C: lw    $t4, 0x0000 ($t9)
80007D20: lui   $t0, 0x8016
80007D24: addiu $t0, $t0, 0x4450
80007D28: sll   $t6, $v1, 0x2
80007D2C: addiu $sp, $sp, 0xFFD0
80007D30: addu  $t7, $t0, $t6
80007D34: addu  $t8, $t0, $v0
80007D38: slti  $at, $t4, 0x0002
80007D3C: sw    $ra, 0x0014 ($sp)
80007D40: or    $a3, $a0, $zero
80007D44: or    $a2, $a1, $zero
80007D48: lh    $t1, 0x0002 ($t7)
80007D4C: beq   $at, $zero, 0x80007DB4
80007D50: lh    $t2, 0x0002 ($t8)
80007D54: addu  $t5, $t3, $t6
80007D58: subu  $t6, $t2, $t1
80007D5C: sll   $t7, $t6, 0x10
80007D60: sra   $t8, $t7, 0x10
80007D64: slti  $at, $t8, 0x0191
80007D68: bnez  $at, 0x80007DEC
80007D6C: lh    $v0, 0x0002 ($t5)
80007D70: slti  $at, $v0, 0x0006
80007D74: bnez  $at, 0x80007DEC
80007D78: or    $a0, $a1, $zero
80007D7C: lw    $t9, 0x00BC ($a1)
80007D80: lui   $at, 0xFFDF
80007D84: ori   $at, $at, 0xFFFF
80007D88: and   $t4, $t9, $at
80007D8C: sw    $t4, 0x00BC ($a1)
80007D90: jal   0x80030FC8
80007D94: sw    $a3, 0x0030 ($sp)
80007D98: lw    $a3, 0x0030 ($sp)
80007D9C: lui   $at, 0x8016
80007DA0: addiu $t5, $zero, 0x0004
80007DA4: sll   $t6, $a3, 0x1
80007DA8: addu  $at, $at, $t6
80007DAC: beq   $zero, $zero, 0x80007F94
80007DB0: sh    $t5, 0x34C0 ($at)
80007DB4: lw    $t7, 0x00BC ($a2)
80007DB8: lui   $at, 0x0020
80007DBC: or    $a0, $a2, $zero
80007DC0: or    $t8, $t7, $at
80007DC4: sw    $t8, 0x00BC ($a2)
80007DC8: jal   0x80030FC8
80007DCC: sw    $a3, 0x0030 ($sp)
80007DD0: lw    $a3, 0x0030 ($sp)
80007DD4: lui   $at, 0x8016
80007DD8: addiu $a1, $zero, 0x0003
80007DDC: sll   $t9, $a3, 0x1
80007DE0: addu  $at, $at, $t9
80007DE4: beq   $zero, $zero, 0x80007F94
80007DE8: sh    $a1, 0x34C0 ($at)
80007DEC: lui   $v1, 0x800E
80007DF0: lw    $v1, 0xC548 ($v1)
80007DF4: addiu $a1, $zero, 0x0003
80007DF8: addiu $at, $zero, 0x0001
80007DFC: beq   $v1, $zero, 0x80007E28
80007E00: lui   $t4, 0x8016
80007E04: beq   $v1, $at, 0x80007E40
80007E08: lui   $t5, 0x8016
80007E0C: addiu $at, $zero, 0x0002
80007E10: beq   $v1, $at, 0x80007E58
80007E14: lui   $t6, 0x8016
80007E18: beq   $v1, $a1, 0x80007E70
80007E1C: lui   $t7, 0x8016
80007E20: beq   $zero, $zero, 0x80007E84
80007E24: or    $v0, $zero, $zero
80007E28: lhu   $t4, 0x3344 ($t4)
80007E2C: or    $v0, $zero, $zero
80007E30: bnel  $a3, $t4, 0x80007E88
80007E34: slt   $at, $t2, $t1
80007E38: beq   $zero, $zero, 0x80007E84
80007E3C: addiu $v0, $zero, 0x0014
80007E40: lhu   $t5, 0x3344 ($t5)
80007E44: addiu $v0, $zero, 0x0008
80007E48: bnel  $a3, $t5, 0x80007E88
80007E4C: slt   $at, $t2, $t1
80007E50: beq   $zero, $zero, 0x80007E84
80007E54: addiu $v0, $zero, 0x0018
80007E58: lhu   $t6, 0x3344 ($t6)
80007E5C: addiu $v0, $zero, 0x0012
80007E60: bnel  $a3, $t6, 0x80007E88
80007E64: slt   $at, $t2, $t1
80007E68: beq   $zero, $zero, 0x80007E84
80007E6C: addiu $v0, $zero, 0x0024
80007E70: lhu   $t7, 0x3344 ($t7)
80007E74: addiu $v0, $zero, 0x0008
80007E78: bnel  $a3, $t7, 0x80007E88
80007E7C: slt   $at, $t2, $t1
80007E80: addiu $v0, $zero, 0x0018
80007E84: slt   $at, $t2, $t1
80007E88: beq   $at, $zero, 0x80007EC8
80007E8C: addu  $t6, $t1, $v0
80007E90: lw    $t8, 0x00BC ($a2)
80007E94: lui   $at, 0x0020
80007E98: or    $a0, $a2, $zero
80007E9C: or    $t9, $t8, $at
80007EA0: sw    $t9, 0x00BC ($a2)
80007EA4: jal   0x80030FC8
80007EA8: sw    $a3, 0x0030 ($sp)
80007EAC: lw    $a3, 0x0030 ($sp)
80007EB0: lui   $at, 0x8016
80007EB4: addiu $t4, $zero, 0x0001
80007EB8: sll   $t5, $a3, 0x1
80007EBC: addu  $at, $at, $t5
80007EC0: beq   $zero, $zero, 0x80007F94
80007EC4: sh    $t4, 0x34C0 ($at)
80007EC8: addiu $t7, $t6, 0x0032
80007ECC: slt   $at, $t2, $t7
80007ED0: beq   $at, $zero, 0x80007F14
80007ED4: sll   $v0, $a3, 0x1
80007ED8: lw    $t8, 0x00BC ($a2)
80007EDC: lui   $at, 0xFFDF
80007EE0: ori   $at, $at, 0xFFFF
80007EE4: and   $t9, $t8, $at
80007EE8: sw    $t9, 0x00BC ($a2)
80007EEC: sw    $a3, 0x0030 ($sp)
80007EF0: jal   0x80030FC8
80007EF4: or    $a0, $a2, $zero
80007EF8: lw    $a3, 0x0030 ($sp)
80007EFC: lui   $at, 0x8016
80007F00: addiu $a1, $zero, 0x0003
80007F04: sll   $t4, $a3, 0x1
80007F08: addu  $at, $at, $t4
80007F0C: beq   $zero, $zero, 0x80007F94
80007F10: sh    $a1, 0x34C0 ($at)
80007F14: lui   $t5, 0x8016
80007F18: addu  $t5, $t5, $v0
80007F1C: lhu   $t5, 0x31E0 ($t5)
80007F20: lui   $at, 0xFFDF
80007F24: or    $a0, $a2, $zero
80007F28: bnez  $t5, 0x80007F64
80007F2C: ori   $at, $at, 0xFFFF
80007F30: lw    $t6, 0x00BC ($a2)
80007F34: lui   $at, 0xFFDF
80007F38: ori   $at, $at, 0xFFFF
80007F3C: and   $t7, $t6, $at
80007F40: sw    $t7, 0x00BC ($a2)
80007F44: jal   0x80030FC8
80007F48: sw    $v0, 0x001C ($sp)
80007F4C: lw    $v0, 0x001C ($sp)
80007F50: lui   $at, 0x8016
80007F54: addiu $t8, $zero, 0x0002
80007F58: addu  $at, $at, $v0
80007F5C: beq   $zero, $zero, 0x80007F94
80007F60: sh    $t8, 0x34C0 ($at)
80007F64: lw    $t9, 0x00BC ($a2)
80007F68: or    $a0, $a2, $zero
80007F6C: lui   $a1, 0x3F80
80007F70: and   $t4, $t9, $at
80007F74: sw    $t4, 0x00BC ($a2)
80007F78: jal   0x80031F48
80007F7C: sw    $v0, 0x001C ($sp)
80007F80: lw    $v0, 0x001C ($sp)
80007F84: lui   $at, 0x8016
80007F88: addiu $t5, $zero, 0xFFFF
80007F8C: addu  $at, $at, $v0
80007F90: sh    $t5, 0x34C0 ($at)
80007F94: lw    $ra, 0x0014 ($sp)
80007F98: addiu $sp, $sp, 0x0030
80007F9C: jr    $ra
80007FA0: nop

80007FA4: sll   $v0, $a0, 0x2
80007FA8: lui   $at, 0x8016
80007FAC: addiu $sp, $sp, 0xFFE8
80007FB0: addu  $at, $at, $v0
80007FB4: lwc1  F4, 0x3418 ($at)
80007FB8: sw    $ra, 0x0014 ($sp)
80007FBC: sw    $a1, 0x001C ($sp)
80007FC0: lui   $at, 0x8016
80007FC4: addu  $at, $at, $v0
80007FC8: lwc1  F6, 0x0014 ($a1)
80007FCC: lwc1  F8, 0x3438 ($at)
80007FD0: lwc1  F10, 0x001C ($a1)
80007FD4: mtc1  $a2, F14
80007FD8: addiu $a3, $zero, 0x0003
80007FDC: or    $a2, $a1, $zero
80007FE0: sub.s F0, F4, F6
80007FE4: bne   $a0, $a3, 0x80008134
80007FE8: sub.s F2, F8, F10
80007FEC: mul.s F16, F0, F0
80007FF0: lui   $at, 0x41C8
80007FF4: mtc1  $at, F4
80007FF8: mul.s F18, F2, F2
80007FFC: lui   $t7, 0x8016
80008000: addiu $t7, $t7, 0x3410
80008004: sll   $t6, $a0, 0x1
80008008: addu  $v0, $t6, $t7
8000800C: add.s F12, F16, F18
80008010: c.lt.s F12, F4
80008014: nop
80008018: bc1fl 0x80008080
8000801C: lui   $at, 0x4561
80008020: lh    $t8, 0x0000 ($v0)
80008024: addiu $t9, $zero, 0x0004
80008028: slti  $at, $t8, 0x0005
8000802C: beql  $at, $zero, 0x80008080
80008030: lui   $at, 0x4561
80008034: sh    $t9, 0x0000 ($v0)
80008038: lui   $at, 0x800F
8000803C: ldc1  F8, 0xCF78 ($at)
80008040: cvt.d.s F6, F14
80008044: or    $a0, $a2, $zero
80008048: c.lt.d F6, F8
8000804C: nop
80008050: bc1f  0x8000806C
80008054: nop
80008058: or    $a0, $a1, $zero
8000805C: jal   0x80038BE4
80008060: addiu $a1, $zero, 0x0001
80008064: beq   $zero, $zero, 0x80008418
80008068: lw    $ra, 0x0014 ($sp)
8000806C: jal   0x80031F48
80008070: lui   $a1, 0x3F80
80008074: beq   $zero, $zero, 0x80008418
80008078: lw    $ra, 0x0014 ($sp)
8000807C: lui   $at, 0x4561
80008080: mtc1  $at, F10
80008084: lui   $t1, 0x8016
80008088: addiu $t1, $t1, 0x3410
8000808C: c.lt.s F12, F10
80008090: sll   $t0, $a0, 0x1
80008094: addu  $v0, $t0, $t1
80008098: bc1f  0x800080F4
8000809C: nop
800080A0: lh    $t2, 0x0000 ($v0)
800080A4: slti  $at, $t2, 0x0004
800080A8: beq   $at, $zero, 0x800080F4
800080AC: nop
800080B0: sh    $a3, 0x0000 ($v0)
800080B4: lui   $at, 0x800F
800080B8: ldc1  F18, 0xCF80 ($at)
800080BC: cvt.d.s F16, F14
800080C0: or    $a0, $a2, $zero
800080C4: c.lt.d F16, F18
800080C8: addiu $a1, $zero, 0x0001
800080CC: bc1f  0x800080E4
800080D0: nop
800080D4: jal   0x80038BE4
800080D8: or    $a0, $a2, $zero
800080DC: beq   $zero, $zero, 0x80008418
800080E0: lw    $ra, 0x0014 ($sp)
800080E4: jal   0x80031F48
800080E8: lui   $a1, 0x40A0
800080EC: beq   $zero, $zero, 0x80008418
800080F0: lw    $ra, 0x0014 ($sp)
800080F4: lui   $at, 0x800F
800080F8: ldc1  F6, 0xCF88 ($at)
800080FC: cvt.d.s F4, F14
80008100: or    $a0, $a2, $zero
80008104: c.lt.d F4, F6
80008108: addiu $a1, $zero, 0x000A
8000810C: bc1f  0x80008124
80008110: nop
80008114: jal   0x80038BE4
80008118: or    $a0, $a2, $zero
8000811C: beq   $zero, $zero, 0x80008418
80008120: lw    $ra, 0x0014 ($sp)
80008124: jal   0x80031F48
80008128: lui   $a1, 0x3F80
8000812C: beq   $zero, $zero, 0x80008418
80008130: lw    $ra, 0x0014 ($sp)
80008134: mul.s F8, F0, F0
80008138: lui   $at, 0x41C8
8000813C: mtc1  $at, F16
80008140: mul.s F10, F2, F2
80008144: lui   $t4, 0x8016
80008148: addiu $t4, $t4, 0x3410
8000814C: sll   $t3, $a0, 0x1
80008150: addu  $v0, $t3, $t4
80008154: add.s F12, F8, F10
80008158: c.lt.s F12, F16
8000815C: nop
80008160: bc1f  0x800081E4
80008164: nop
80008168: lh    $t5, 0x0000 ($v0)
8000816C: slti  $at, $t5, 0x0005
80008170: beq   $at, $zero, 0x800081E4
80008174: lui   $at, 0x4000
80008178: mtc1  $at, F5
8000817C: lui   $at, 0x4032
80008180: mtc1  $at, F7
80008184: mtc1  $zero, F4
80008188: mtc1  $zero, F6
8000818C: lui   $at, 0x406B
80008190: mtc1  $at, F11
80008194: mul.d F8, F4, F6
80008198: mtc1  $zero, F10
8000819C: cvt.d.s F18, F14
800081A0: addiu $t6, $zero, 0x0004
800081A4: sh    $t6, 0x0000 ($v0)
800081A8: or    $a0, $a2, $zero
800081AC: addiu $a1, $zero, 0x0001
800081B0: div.d F16, F8, F10
800081B4: c.lt.d F18, F16
800081B8: nop
800081BC: bc1f  0x800081D4
800081C0: nop
800081C4: jal   0x80038BE4
800081C8: or    $a0, $a2, $zero
800081CC: beq   $zero, $zero, 0x80008418
800081D0: lw    $ra, 0x0014 ($sp)
800081D4: jal   0x80031F48
800081D8: lui   $a1, 0x3F80
800081DC: beq   $zero, $zero, 0x80008418
800081E0: lw    $ra, 0x0014 ($sp)
800081E4: lui   $at, 0x800F
800081E8: lwc1  F4, 0xCF90 ($at)
800081EC: lui   $t8, 0x8016
800081F0: addiu $t8, $t8, 0x3410
800081F4: c.lt.s F12, F4
800081F8: sll   $t7, $a0, 0x1
800081FC: addu  $v0, $t7, $t8
80008200: lh    $v1, 0x0000 ($v0)
80008204: bc1f  0x8000827C
80008208: slti  $at, $v1, 0x0004
8000820C: beq   $at, $zero, 0x8000827C
80008210: lui   $at, 0x4014
80008214: mtc1  $at, F9
80008218: lui   $at, 0x4032
8000821C: mtc1  $at, F11
80008220: mtc1  $zero, F8
80008224: mtc1  $zero, F10
80008228: lui   $at, 0x406B
8000822C: mtc1  $at, F17
80008230: mul.d F18, F8, F10
80008234: mtc1  $zero, F16
80008238: cvt.d.s F6, F14
8000823C: sh    $a3, 0x0000 ($v0)
80008240: or    $a0, $a2, $zero
80008244: addiu $a1, $zero, 0x0001
80008248: div.d F4, F18, F16
8000824C: c.lt.d F6, F4
80008250: nop
80008254: bc1f  0x8000826C
80008258: nop
8000825C: jal   0x80038BE4
80008260: or    $a0, $a2, $zero
80008264: beq   $zero, $zero, 0x80008418
80008268: lw    $ra, 0x0014 ($sp)
8000826C: jal   0x80031F48
80008270: lui   $a1, 0x4170
80008274: beq   $zero, $zero, 0x80008418
80008278: lw    $ra, 0x0014 ($sp)
8000827C: lui   $at, 0x800F
80008280: lwc1  F8, 0xCF94 ($at)
80008284: slti  $at, $v1, 0x0003
80008288: c.lt.s F12, F8
8000828C: nop
80008290: bc1f  0x8000830C
80008294: nop
80008298: beq   $at, $zero, 0x8000830C
8000829C: lui   $at, 0x4034
800082A0: mtc1  $at, F19
800082A4: lui   $at, 0x4032
800082A8: mtc1  $at, F17
800082AC: mtc1  $zero, F18
800082B0: mtc1  $zero, F16
800082B4: lui   $at, 0x406B
800082B8: mtc1  $at, F5
800082BC: mul.d F6, F18, F16
800082C0: mtc1  $zero, F4
800082C4: cvt.d.s F10, F14
800082C8: addiu $t9, $zero, 0x0002
800082CC: sh    $t9, 0x0000 ($v0)
800082D0: or    $a0, $a2, $zero
800082D4: addiu $a1, $zero, 0x0005
800082D8: div.d F8, F6, F4
800082DC: c.lt.d F10, F8
800082E0: nop
800082E4: bc1f  0x800082FC
800082E8: nop
800082EC: jal   0x80038BE4
800082F0: or    $a0, $a2, $zero
800082F4: beq   $zero, $zero, 0x80008418
800082F8: lw    $ra, 0x0014 ($sp)
800082FC: jal   0x80031F48
80008300: lui   $a1, 0x3F80
80008304: beq   $zero, $zero, 0x80008418
80008308: lw    $ra, 0x0014 ($sp)
8000830C: lui   $at, 0x800F
80008310: lwc1  F18, 0xCF98 ($at)
80008314: slti  $at, $v1, 0x0002
80008318: c.lt.s F12, F18
8000831C: nop
80008320: bc1f  0x8000839C
80008324: nop
80008328: beq   $at, $zero, 0x8000839C
8000832C: lui   $at, 0x403E
80008330: mtc1  $at, F7
80008334: lui   $at, 0x4032
80008338: mtc1  $at, F5
8000833C: mtc1  $zero, F6
80008340: mtc1  $zero, F4
80008344: lui   $at, 0x406B
80008348: mtc1  $at, F9
8000834C: mul.d F10, F6, F4
80008350: mtc1  $zero, F8
80008354: cvt.d.s F16, F14
80008358: addiu $t0, $zero, 0x0001
8000835C: sh    $t0, 0x0000 ($v0)
80008360: or    $a0, $a2, $zero
80008364: addiu $a1, $zero, 0x0006
80008368: div.d F18, F10, F8
8000836C: c.lt.d F16, F18
80008370: nop
80008374: bc1f  0x8000838C
80008378: nop
8000837C: jal   0x80038BE4
80008380: or    $a0, $a2, $zero
80008384: beq   $zero, $zero, 0x80008418
80008388: lw    $ra, 0x0014 ($sp)
8000838C: jal   0x80031F48
80008390: lui   $a1, 0x3F80
80008394: beq   $zero, $zero, 0x80008418
80008398: lw    $ra, 0x0014 ($sp)
8000839C: bnez  $v1, 0x8000840C
800083A0: or    $a0, $a2, $zero
800083A4: addiu $t1, $zero, 0x0023
800083A8: mtc1  $t1, F4
800083AC: lui   $at, 0x4032
800083B0: mtc1  $at, F9
800083B4: cvt.d.w F10, F4
800083B8: mtc1  $zero, F8
800083BC: lui   $at, 0x406B
800083C0: mtc1  $at, F19
800083C4: mtc1  $zero, F18
800083C8: mul.d F16, F10, F8
800083CC: cvt.d.s F6, F14
800083D0: or    $a0, $a2, $zero
800083D4: addiu $a1, $zero, 0x0002
800083D8: div.d F4, F16, F18
800083DC: c.lt.d F6, F4
800083E0: nop
800083E4: bc1f  0x800083FC
800083E8: nop
800083EC: jal   0x80038BE4
800083F0: or    $a0, $a2, $zero
800083F4: beq   $zero, $zero, 0x80008418
800083F8: lw    $ra, 0x0014 ($sp)
800083FC: jal   0x80031F48
80008400: lui   $a1, 0x3F80
80008404: beq   $zero, $zero, 0x80008418
80008408: lw    $ra, 0x0014 ($sp)
8000840C: jal   0x80031F48
80008410: lui   $a1, 0x3F80
80008414: lw    $ra, 0x0014 ($sp)
80008418: addiu $sp, $sp, 0x0018
8000841C: jr    $ra
80008420: nop

80008424: addiu $sp, $sp, 0xFFC8
80008428: sw    $ra, 0x0014 ($sp)
8000842C: sw    $a0, 0x0038 ($sp)
80008430: lw    $v1, 0x00BC ($a2)
80008434: mtc1  $a1, F12
80008438: or    $a3, $a2, $zero
8000843C: andi  $t6, $v1, 0x0080
80008440: bnez  $t6, 0x800088C8
80008444: lwc1  F2, 0x0094 ($a2)
80008448: andi  $t7, $v1, 0x0040
8000844C: bnez  $t7, 0x800088C8
80008450: sll   $t8, $v1, 0xE
80008454: bltzl $t8, 0x800088CC
80008458: lw    $ra, 0x0014 ($sp)
8000845C: lw    $v0, 0x000C ($a2)
80008460: sll   $t9, $v0, 0x9
80008464: bltz  $t9, 0x800088C8
80008468: sll   $t1, $v0, 0x7
8000846C: bltz  $t1, 0x800088C8
80008470: andi  $t2, $v0, 0x0002
80008474: bnez  $t2, 0x800088C8
80008478: andi  $t3, $v0, 0x0004
8000847C: bnez  $t3, 0x800088C8
80008480: lui   $t4, 0x800E
80008484: lh    $t4, 0xC5A0 ($t4)
80008488: addiu $at, $zero, 0x0014
8000848C: or    $a1, $a2, $zero
80008490: bnel  $t4, $at, 0x800084B0
80008494: lw    $a2, 0x0038 ($sp)
80008498: mfc1  $a2, F2
8000849C: jal   0x80007FA4
800084A0: nop
800084A4: beq   $zero, $zero, 0x800088CC
800084A8: lw    $ra, 0x0014 ($sp)
800084AC: lw    $a2, 0x0038 ($sp)
800084B0: lui   $t6, 0x8016
800084B4: addiu $t0, $zero, 0x0001
800084B8: sll   $t5, $a2, 0x1
800084BC: addu  $t6, $t6, $t5
800084C0: lh    $t6, 0x34D8 ($t6)
800084C4: lui   $at, 0x8000
800084C8: ori   $at, $at, 0x0200
800084CC: bne   $t0, $t6, 0x80008524
800084D0: or    $a2, $t5, $zero
800084D4: and   $t7, $v1, $at
800084D8: bnez  $t7, 0x80008524
800084DC: or    $a0, $a3, $zero
800084E0: lui   $a1, 0x4120
800084E4: jal   0x80031F48
800084E8: sw    $a3, 0x0040 ($sp)
800084EC: lw    $a3, 0x0040 ($sp)
800084F0: mtc1  $zero, F5
800084F4: mtc1  $zero, F4
800084F8: lwc1  F6, 0x009C ($a3)
800084FC: cvt.d.s F8, F6
80008500: C.EQ.D F4, F8
80008504: nop
80008508: bc1fl 0x800088CC
8000850C: lw    $ra, 0x0014 ($sp)
80008510: mtc1  $zero, F0
80008514: nop
80008518: swc1  F0, 0x0034 ($a3)
8000851C: beq   $zero, $zero, 0x800088C8
80008520: swc1  F0, 0x003C ($a3)
80008524: lui   $v0, 0x800E
80008528: lw    $v0, 0xC548 ($v0)
8000852C: lui   $at, 0x800F
80008530: lwc1  F0, 0xCF9C ($at)
80008534: beq   $v0, $zero, 0x8000855C
80008538: lui   $at, 0x4020
8000853C: beq   $v0, $t0, 0x80008574
80008540: addiu $at, $zero, 0x0002
80008544: beq   $v0, $at, 0x80008568
80008548: addiu $at, $zero, 0x0003
8000854C: beql  $v0, $at, 0x80008578
80008550: c.lt.s F2, F0
80008554: beq   $zero, $zero, 0x80008578
80008558: c.lt.s F2, F0
8000855C: mtc1  $at, F0
80008560: beq   $zero, $zero, 0x80008578
80008564: c.lt.s F2, F0
80008568: lui   $at, 0x4070
8000856C: mtc1  $at, F0
80008570: nop
80008574: c.lt.s F2, F0
80008578: lui   $at, 0xFFDF
8000857C: ori   $at, $at, 0xFFFF
80008580: and   $t8, $v1, $at
80008584: bc1f  0x8000859C
80008588: or    $a0, $a3, $zero
8000858C: jal   0x80030FC8
80008590: sw    $t8, 0x00BC ($a3)
80008594: beq   $zero, $zero, 0x800088CC
80008598: lw    $ra, 0x0014 ($sp)
8000859C: lhu   $t9, 0x0000 ($a3)
800085A0: lui   $t4, 0x8016
800085A4: addu  $t4, $t4, $a2
800085A8: andi  $t1, $t9, 0x0800
800085AC: beq   $t1, $zero, 0x80008600
800085B0: nop
800085B4: c.lt.s F2, F12
800085B8: lui   $at, 0xFFDF
800085BC: ori   $at, $at, 0xFFFF
800085C0: and   $t3, $v1, $at
800085C4: bc1f  0x800085EC
800085C8: or    $a0, $a3, $zero
800085CC: lui   $at, 0xFFDF
800085D0: ori   $at, $at, 0xFFFF
800085D4: and   $t2, $v1, $at
800085D8: sw    $t2, 0x00BC ($a3)
800085DC: jal   0x80030FC8
800085E0: or    $a0, $a3, $zero
800085E4: beq   $zero, $zero, 0x800088CC
800085E8: lw    $ra, 0x0014 ($sp)
800085EC: sw    $t3, 0x00BC ($a3)
800085F0: jal   0x80031F48
800085F4: lui   $a1, 0x3F80
800085F8: beq   $zero, $zero, 0x800088CC
800085FC: lw    $ra, 0x0014 ($sp)
80008600: lhu   $t4, 0x31E0 ($t4)
80008604: lui   $t5, 0x8016
80008608: addu  $t5, $t5, $a2
8000860C: bne   $t0, $t4, 0x8000869C
80008610: lui   $v0, 0x8016
80008614: lhu   $t5, 0x3330 ($t5)
80008618: lw    $a0, 0x0038 ($sp)
8000861C: lui   $a1, 0x8016
80008620: beql  $t0, $t5, 0x800086A0
80008624: addu  $v0, $v0, $a2
80008628: sll   $v0, $a0, 0x2
8000862C: lui   $a2, 0x8016
80008630: addu  $a2, $a2, $v0
80008634: addu  $a1, $a1, $v0
80008638: lh    $a1, 0x4392 ($a1)
8000863C: lh    $a2, 0x440A ($a2)
80008640: jal   0x800088D8
80008644: sw    $a3, 0x0040 ($sp)
80008648: addiu $t0, $zero, 0x0001
8000864C: bne   $v0, $t0, 0x80008674
80008650: lw    $a3, 0x0040 ($sp)
80008654: lw    $t7, 0x00BC ($a3)
80008658: lui   $at, 0x0020
8000865C: or    $a0, $a3, $zero
80008660: or    $t8, $t7, $at
80008664: jal   0x80030FC8
80008668: sw    $t8, 0x00BC ($a3)
8000866C: beq   $zero, $zero, 0x800088CC
80008670: lw    $ra, 0x0014 ($sp)
80008674: lw    $t9, 0x00BC ($a3)
80008678: lui   $at, 0xFFDF
8000867C: ori   $at, $at, 0xFFFF
80008680: and   $t1, $t9, $at
80008684: sw    $t1, 0x00BC ($a3)
80008688: or    $a0, $a3, $zero
8000868C: jal   0x80031F48
80008690: lui   $a1, 0x3F80
80008694: beq   $zero, $zero, 0x800088CC
80008698: lw    $ra, 0x0014 ($sp)
8000869C: addu  $v0, $v0, $a2
800086A0: lhu   $v0, 0x3350 ($v0)
800086A4: or    $a1, $t0, $zero
800086A8: beql  $v0, $zero, 0x8000879C
800086AC: or    $a1, $zero, $zero
800086B0: beq   $v0, $t0, 0x800086D4
800086B4: lui   $at, 0xFFDF
800086B8: addiu $at, $zero, 0x0002
800086BC: beq   $v0, $at, 0x80008758
800086C0: addiu $at, $zero, 0x0003
800086C4: beq   $v0, $at, 0x80008718
800086C8: or    $a0, $a3, $zero
800086CC: beq   $zero, $zero, 0x8000879C
800086D0: or    $a1, $zero, $zero
800086D4: ori   $at, $at, 0xFFFF
800086D8: and   $t2, $v1, $at
800086DC: sw    $t2, 0x00BC ($a3)
800086E0: swc1  F12, 0x003C ($sp)
800086E4: swc1  F2, 0x0034 ($sp)
800086E8: sw    $a3, 0x0040 ($sp)
800086EC: sw    $a2, 0x001C ($sp)
800086F0: sw    $a1, 0x0028 ($sp)
800086F4: jal   0x80030FC8
800086F8: or    $a0, $a3, $zero
800086FC: lw    $a1, 0x0028 ($sp)
80008700: lw    $a2, 0x001C ($sp)
80008704: lw    $a3, 0x0040 ($sp)
80008708: addiu $t0, $zero, 0x0001
8000870C: lwc1  F2, 0x0034 ($sp)
80008710: beq   $zero, $zero, 0x8000879C
80008714: lwc1  F12, 0x003C ($sp)
80008718: lui   $at, 0x0020
8000871C: or    $t3, $v1, $at
80008720: sw    $t3, 0x00BC ($a3)
80008724: swc1  F12, 0x003C ($sp)
80008728: swc1  F2, 0x0034 ($sp)
8000872C: sw    $a3, 0x0040 ($sp)
80008730: sw    $a2, 0x001C ($sp)
80008734: jal   0x80030FC8
80008738: sw    $a1, 0x0028 ($sp)
8000873C: lw    $a1, 0x0028 ($sp)
80008740: lw    $a2, 0x001C ($sp)
80008744: lw    $a3, 0x0040 ($sp)
80008748: addiu $t0, $zero, 0x0001
8000874C: lwc1  F2, 0x0034 ($sp)
80008750: beq   $zero, $zero, 0x8000879C
80008754: lwc1  F12, 0x003C ($sp)
80008758: lui   $at, 0x41A0
8000875C: mtc1  $at, F10
80008760: lui   $at, 0x4190
80008764: mtc1  $at, F16
80008768: lui   $at, 0x4358
8000876C: mtc1  $at, F6
80008770: div.s F18, F2, F16
80008774: lui   $at, 0x800F
80008778: mul.s F4, F18, F6
8000877C: c.lt.s F10, F4
80008780: nop
80008784: bc1f  0x80008790
80008788: nop
8000878C: lwc1  F12, 0xCFA0 ($at)
80008790: beq   $zero, $zero, 0x8000879C
80008794: or    $a1, $zero, $zero
80008798: or    $a1, $zero, $zero
8000879C: beql  $a1, $t0, 0x800088CC
800087A0: lw    $ra, 0x0014 ($sp)
800087A4: c.lt.s F2, F12
800087A8: lui   $t4, 0x800E
800087AC: bc1fl 0x80008884
800087B0: lw    $t3, 0x00BC ($a3)
800087B4: lhu   $t4, 0xC51C ($t4)
800087B8: lui   $t6, 0x8016
800087BC: lui   $t5, 0x800E
800087C0: bne   $t0, $t4, 0x800087E8
800087C4: addu  $t6, $t6, $a2
800087C8: lh    $t5, 0xC5A0 ($t5)
800087CC: addiu $at, $zero, 0x0014
800087D0: beq   $t5, $at, 0x800087E8
800087D4: nop
800087D8: jal   0x80030FC8
800087DC: or    $a0, $a3, $zero
800087E0: beq   $zero, $zero, 0x800088CC
800087E4: lw    $ra, 0x0014 ($sp)
800087E8: lhu   $t6, 0x3330 ($t6)
800087EC: lw    $a0, 0x0038 ($sp)
800087F0: lui   $a1, 0x8016
800087F4: bne   $t0, $t6, 0x80008810
800087F8: sll   $v0, $a0, 0x2
800087FC: lw    $a0, 0x0038 ($sp)
80008800: jal   0x80007D04
80008804: or    $a1, $a3, $zero
80008808: beq   $zero, $zero, 0x800088CC
8000880C: lw    $ra, 0x0014 ($sp)
80008810: lui   $a2, 0x8016
80008814: addu  $a2, $a2, $v0
80008818: addu  $a1, $a1, $v0
8000881C: lh    $a1, 0x4392 ($a1)
80008820: lh    $a2, 0x440A ($a2)
80008824: jal   0x800088D8
80008828: sw    $a3, 0x0040 ($sp)
8000882C: addiu $t0, $zero, 0x0001
80008830: bne   $v0, $t0, 0x80008858
80008834: lw    $a3, 0x0040 ($sp)
80008838: lw    $t8, 0x00BC ($a3)
8000883C: lui   $at, 0x0020
80008840: or    $a0, $a3, $zero
80008844: or    $t9, $t8, $at
80008848: jal   0x80030FC8
8000884C: sw    $t9, 0x00BC ($a3)
80008850: beq   $zero, $zero, 0x800088CC
80008854: lw    $ra, 0x0014 ($sp)
80008858: lw    $t1, 0x00BC ($a3)
8000885C: lui   $at, 0xFFDF
80008860: ori   $at, $at, 0xFFFF
80008864: and   $t2, $t1, $at
80008868: sw    $t2, 0x00BC ($a3)
8000886C: or    $a0, $a3, $zero
80008870: jal   0x80031F48
80008874: lui   $a1, 0x3F80
80008878: beq   $zero, $zero, 0x800088CC
8000887C: lw    $ra, 0x0014 ($sp)
80008880: lw    $t3, 0x00BC ($a3)
80008884: lui   $at, 0xFFDF
80008888: ori   $at, $at, 0xFFFF
8000888C: and   $t4, $t3, $at
80008890: lui   $at, 0x3F80
80008894: mtc1  $at, F8
80008898: sw    $t4, 0x00BC ($a3)
8000889C: lui   $a1, 0x4000
800088A0: c.lt.s F8, F12
800088A4: or    $a0, $a3, $zero
800088A8: bc1f  0x800088C0
800088AC: nop
800088B0: jal   0x80031F48
800088B4: or    $a0, $a3, $zero
800088B8: beq   $zero, $zero, 0x800088CC
800088BC: lw    $ra, 0x0014 ($sp)
800088C0: jal   0x80031F48
800088C4: lui   $a1, 0x40A0
800088C8: lw    $ra, 0x0014 ($sp)
800088CC: addiu $sp, $sp, 0x0038
800088D0: jr    $ra
800088D4: nop

800088D8: addiu $sp, $sp, 0xFFA8
800088DC: sw    $a1, 0x005C ($sp)
800088E0: sll   $t6, $a1, 0x10
800088E4: sra   $a1, $t6, 0x10
800088E8: lui   $t6, 0x8016
800088EC: sll   $t0, $a0, 0x2
800088F0: lui   $t7, 0x8016
800088F4: sw    $a2, 0x0060 ($sp)
800088F8: sll   $t8, $a2, 0x10
800088FC: addiu $v0, $zero, 0xFFFF
80008900: addiu $t6, $t6, 0x3128
80008904: addiu $t7, $t7, 0x3150
80008908: sra   $a2, $t8, 0x10
8000890C: addu  $t5, $t0, $t6
80008910: addu  $t4, $t0, $t7
80008914: sw    $v0, 0x0000 ($t5)
80008918: sw    $v0, 0x0000 ($t4)
8000891C: lui   $t8, 0x800E
80008920: lw    $t8, 0xC53C ($t8)
80008924: addiu $v1, $zero, 0x0001
80008928: bne   $v1, $t8, 0x80008938
8000892C: nop
80008930: beq   $zero, $zero, 0x80008DB8
80008934: addiu $v0, $zero, 0x0001
80008938: bgez  $a1, 0x80008948
8000893C: slti  $at, $a1, 0x0004
80008940: beq   $zero, $zero, 0x80008DB8
80008944: addiu $v0, $zero, 0x0001
80008948: bnez  $at, 0x80008954
8000894C: sll   $t3, $a0, 0x1
80008950: addiu $a1, $zero, 0x0003
80008954: lui   $t9, 0x8016
80008958: addu  $t9, $t9, $t3
8000895C: lhu   $t9, 0x3330 ($t9)
80008960: sll   $t6, $a0, 0x3
80008964: subu  $t6, $t6, $a0
80008968: bne   $v1, $t9, 0x80008978
8000896C: sll   $t6, $t6, 0x4
80008970: beq   $zero, $zero, 0x80008DB8
80008974: addiu $v0, $zero, 0x0001
80008978: subu  $t6, $t6, $a0
8000897C: sll   $t6, $t6, 0x2
80008980: subu  $t6, $t6, $a0
80008984: lui   $t7, 0x800F
80008988: addiu $t7, $t7, 0x6990
8000898C: sll   $t6, $t6, 0x3
80008990: addu  $t1, $t6, $t7
80008994: lhu   $t8, 0x0000 ($t1)
80008998: lui   $t6, 0x800E
8000899C: andi  $t9, $t8, 0x4000
800089A0: beq   $t9, $zero, 0x800089B0
800089A4: nop
800089A8: beq   $zero, $zero, 0x80008DB8
800089AC: addiu $v0, $zero, 0x0001
800089B0: lh    $t6, 0xC5A0 ($t6)
800089B4: lui   $t8, 0x800E
800089B8: sll   $t2, $a1, 0x3
800089BC: sll   $t7, $t6, 0x2
800089C0: addu  $t8, $t8, $t7
800089C4: lw    $t8, 0xCBB4 ($t8)
800089C8: sll   $t9, $t2, 0x1
800089CC: bnez  $a2, 0x80008C08
800089D0: addu  $a3, $t8, $t9
800089D4: lui   $t6, 0x800E
800089D8: lhu   $t6, 0xC51C ($t6)
800089DC: lui   $a0, 0x8016
800089E0: addiu $a0, $a0, 0x4450
800089E4: bne   $v1, $t6, 0x80008AD0
800089E8: addu  $t8, $a0, $t0
800089EC: lui   $t8, 0x8016
800089F0: lh    $t8, 0x4386 ($t8)
800089F4: lui   $a0, 0x8016
800089F8: addiu $a0, $a0, 0x4450
800089FC: sll   $t9, $t8, 0x2
80008A00: addu  $t7, $a0, $t0
80008A04: addu  $t6, $a0, $t9
80008A08: lh    $v0, 0x0002 ($t7)
80008A0C: lh    $v1, 0x0002 ($t6)
80008A10: slti  $at, $t2, 0x0018
80008A14: subu  $a2, $v0, $v1
80008A18: bgez  $a2, 0x80008A24
80008A1C: or    $a1, $a2, $zero
80008A20: subu  $a1, $zero, $a2
80008A24: beql  $at, $zero, 0x80008A80
80008A28: lh    $a0, 0x0000 ($a3)
80008A2C: lh    $v0, 0x0000 ($a3)
80008A30: lui   $at, 0x8016
80008A34: addu  $at, $at, $t0
80008A38: lh    $v1, 0x0010 ($a3)
80008A3C: lwc1  F0, 0x44A8 ($at)
80008A40: mtc1  $v0, F4
80008A44: lui   $at, 0x3F80
80008A48: mtc1  $at, F8
80008A4C: cvt.s.w F6, F4
80008A50: mtc1  $v1, F18
80008A54: sub.s F10, F8, F0
80008A58: cvt.s.w F4, F18
80008A5C: mul.s F16, F6, F10
80008A60: nop
80008A64: mul.s F8, F4, F0
80008A68: add.s F6, F8, F16
80008A6C: trunc.w.s F10, F6
80008A70: mfc1  $a0, F10
80008A74: beq   $zero, $zero, 0x80008A80
80008A78: nop
80008A7C: lh    $a0, 0x0000 ($a3)
80008A80: slt   $at, $a0, $a1
80008A84: beq   $at, $zero, 0x80008AC8
80008A88: sw    $a0, 0x0000 ($t4)
80008A8C: lui   $at, 0x4190
80008A90: mtc1  $at, F4
80008A94: lwc1  F18, 0x0094 ($t1)
80008A98: lui   $at, 0x4358
80008A9C: mtc1  $at, F16
80008AA0: div.s F8, F18, F4
80008AA4: lui   $at, 0x41A0
80008AA8: mtc1  $at, F10
80008AAC: mul.s F6, F8, F16
80008AB0: c.le.s F10, F6
80008AB4: nop
80008AB8: bc1f  0x80008AC8
80008ABC: nop
80008AC0: beq   $zero, $zero, 0x80008DB8
80008AC4: or    $v0, $zero, $zero
80008AC8: beq   $zero, $zero, 0x80008DB8
80008ACC: addiu $v0, $zero, 0x0001
80008AD0: lui   $t7, 0x8016
80008AD4: lhu   $t7, 0x45C8 ($t7)
80008AD8: lh    $v0, 0x0002 ($t8)
80008ADC: addiu $at, $zero, 0x0003
80008AE0: sll   $t8, $t7, 0x1
80008AE4: div   $t8, $at
80008AE8: lui   $t3, 0x8016
80008AEC: lh    $t3, 0x3478 ($t3)
80008AF0: lui   $t5, 0x8016
80008AF4: sll   $t9, $t3, 0x2
80008AF8: addu  $t6, $a0, $t9
80008AFC: lh    $v1, 0x0002 ($t6)
80008B00: addu  $t5, $t5, $t9
80008B04: mflo  $t9
80008B08: subu  $a1, $v0, $v1
80008B0C: slt   $at, $t9, $a1
80008B10: beq   $at, $zero, 0x80008B40
80008B14: lh    $t5, 0x43BA ($t5)
80008B18: slti  $at, $t5, 0x0006
80008B1C: bnez  $at, 0x80008B40
80008B20: sll   $t6, $t5, 0x1
80008B24: lui   $t7, 0x8016
80008B28: addu  $t7, $t7, $t6
80008B2C: lh    $t7, 0x4376 ($t7)
80008B30: sll   $t8, $t7, 0x2
80008B34: addu  $t9, $a0, $t8
80008B38: lh    $v1, 0x0002 ($t9)
80008B3C: subu  $a1, $v0, $v1
80008B40: bgez  $a1, 0x80008B4C
80008B44: slti  $at, $t2, 0x0018
80008B48: subu  $a1, $zero, $a1
80008B4C: beq   $at, $zero, 0x80008BA4
80008B50: lui   $t7, 0x800E
80008B54: lh    $v0, 0x0000 ($a3)
80008B58: lui   $at, 0x8016
80008B5C: addu  $at, $at, $t0
80008B60: lh    $v1, 0x0010 ($a3)
80008B64: lwc1  F0, 0x44A8 ($at)
80008B68: mtc1  $v0, F18
80008B6C: lui   $at, 0x3F80
80008B70: mtc1  $at, F8
80008B74: cvt.s.w F4, F18
80008B78: mtc1  $v1, F10
80008B7C: sub.s F16, F8, F0
80008B80: cvt.s.w F18, F10
80008B84: mul.s F6, F4, F16
80008B88: nop
80008B8C: mul.s F8, F18, F0
80008B90: add.s F4, F8, F6
80008B94: trunc.w.s F16, F4
80008B98: mfc1  $a0, F16
80008B9C: beq   $zero, $zero, 0x80008BA8
80008BA0: nop
80008BA4: lh    $a0, 0x0000 ($a3)
80008BA8: lw    $t7, 0xC548 ($t7)
80008BAC: addiu $t8, $t7, 0x0001
80008BB0: multu $t8, $a0
80008BB4: mflo  $a0
80008BB8: slt   $at, $a0, $a1
80008BBC: beq   $at, $zero, 0x80008C00
80008BC0: sw    $a0, 0x0000 ($t4)
80008BC4: lui   $at, 0x4190
80008BC8: mtc1  $at, F18
80008BCC: lwc1  F10, 0x0094 ($t1)
80008BD0: lui   $at, 0x4358
80008BD4: mtc1  $at, F6
80008BD8: div.s F8, F10, F18
80008BDC: lui   $at, 0x41A0
80008BE0: mtc1  $at, F16
80008BE4: mul.s F4, F8, F6
80008BE8: c.le.s F16, F4
80008BEC: nop
80008BF0: bc1f  0x80008C00
80008BF4: nop
80008BF8: beq   $zero, $zero, 0x80008DB8
80008BFC: or    $v0, $zero, $zero
80008C00: beq   $zero, $zero, 0x80008DB8
80008C04: addiu $v0, $zero, 0x0001
80008C08: lui   $t1, 0x8016
80008C0C: lh    $t1, 0x3344 ($t1)
80008C10: lui   $a0, 0x8016
80008C14: addiu $a0, $a0, 0x4450
80008C18: sll   $t6, $t1, 0x2
80008C1C: addu  $t9, $a0, $t0
80008C20: addu  $t7, $a0, $t6
80008C24: lh    $v0, 0x0002 ($t9)
80008C28: lh    $v1, 0x0002 ($t7)
80008C2C: lui   $a0, 0x8016
80008C30: addiu $a0, $a0, 0x3344
80008C34: subu  $t8, $v1, $v0
80008C38: sw    $t8, 0x0010 ($sp)
80008C3C: bgez  $t8, 0x80008C48
80008C40: or    $a1, $t8, $zero
80008C44: subu  $a1, $zero, $t8
80008C48: lui   $v1, 0x8016
80008C4C: or    $v0, $zero, $zero
80008C50: addiu $v1, $v1, 0x3348
80008C54: lhu   $t7, 0x0000 ($a0)
80008C58: lui   $t9, 0x8016
80008C5C: addiu $a0, $a0, 0x0002
80008C60: sll   $t8, $t7, 0x2
80008C64: addu  $t9, $t9, $t8
80008C68: lw    $t9, 0x43B8 ($t9)
80008C6C: slt   $at, $t9, $a2
80008C70: beql  $at, $zero, 0x80008C88
80008C74: sltu  $at, $a0, $v1
80008C78: addiu $v0, $v0, 0x0001
80008C7C: sll   $t6, $v0, 0x10
80008C80: sra   $v0, $t6, 0x10
80008C84: sltu  $at, $a0, $v1
80008C88: bnel  $at, $zero, 0x80008C58
80008C8C: lhu   $t7, 0x0000 ($a0)
80008C90: lui   $t1, 0x8019
80008C94: lb    $t1, 0xEDF3 ($t1)
80008C98: lui   $t8, 0x8016
80008C9C: or    $a0, $zero, $zero
80008CA0: blez  $t1, 0x80008CE4
80008CA4: addiu $v1, $t8, 0x43B8
80008CA8: sll   $t9, $t1, 0x2
80008CAC: addu  $t6, $t9, $v1
80008CB0: sw    $t6, 0x0004 ($sp)
80008CB4: lw    $t7, 0x0000 ($v1)
80008CB8: lw    $t6, 0x0004 ($sp)
80008CBC: slt   $at, $t7, $a2
80008CC0: beql  $at, $zero, 0x80008CD8
80008CC4: addiu $v1, $v1, 0x0004
80008CC8: addiu $a0, $a0, 0x0001
80008CCC: sll   $t9, $a0, 0x10
80008CD0: sra   $a0, $t9, 0x10
80008CD4: addiu $v1, $v1, 0x0004
80008CD8: sltu  $at, $v1, $t6
80008CDC: bnel  $at, $zero, 0x80008CB8
80008CE0: lw    $t7, 0x0000 ($v1)
80008CE4: subu  $t9, $a2, $v0
80008CE8: subu  $t1, $t9, $a0
80008CEC: sll   $t8, $t1, 0x10
80008CF0: bgtz  $v0, 0x80008D00
80008CF4: sra   $t1, $t8, 0x10
80008CF8: blez  $a0, 0x80008D0C
80008CFC: nop
80008D00: addiu $t1, $t1, 0x0001
80008D04: sll   $t7, $t1, 0x10
80008D08: sra   $t1, $t7, 0x10
80008D0C: lui   $at, 0x8016
80008D10: addu  $at, $at, $t3
80008D14: bltz  $t1, 0x80008D28
80008D18: sh    $t1, 0x4538 ($at)
80008D1C: slti  $at, $t1, 0x0008
80008D20: bnel  $at, $zero, 0x80008D34
80008D24: slti  $at, $t2, 0x0018
80008D28: beq   $zero, $zero, 0x80008DB8
80008D2C: or    $v0, $zero, $zero
80008D30: slti  $at, $t2, 0x0018
80008D34: beq   $at, $zero, 0x80008D94
80008D38: sll   $t7, $t1, 0x1
80008D3C: sll   $t8, $t1, 0x1
80008D40: addu  $a2, $a3, $t8
80008D44: lh    $v0, 0x0000 ($a2)
80008D48: lui   $at, 0x8016
80008D4C: addu  $at, $at, $t0
80008D50: lh    $v1, 0x0010 ($a2)
80008D54: lwc1  F0, 0x44A8 ($at)
80008D58: mtc1  $v0, F10
80008D5C: lui   $at, 0x3F80
80008D60: mtc1  $at, F8
80008D64: cvt.s.w F18, F10
80008D68: mtc1  $v1, F16
80008D6C: sub.s F6, F8, F0
80008D70: cvt.s.w F10, F16
80008D74: mul.s F4, F18, F6
80008D78: nop
80008D7C: mul.s F8, F10, F0
80008D80: add.s F18, F8, F4
80008D84: trunc.w.s F6, F18
80008D88: mfc1  $a0, F6
80008D8C: beq   $zero, $zero, 0x80008D9C
80008D90: nop
80008D94: addu  $t9, $a3, $t7
80008D98: lh    $a0, 0x0000 ($t9)
80008D9C: slt   $at, $a0, $a1
80008DA0: sw    $a1, 0x0000 ($t5)
80008DA4: beq   $at, $zero, 0x80008DB4
80008DA8: sw    $a0, 0x0000 ($t4)
80008DAC: beq   $zero, $zero, 0x80008DB8
80008DB0: addiu $v0, $zero, 0x0001
80008DB4: or    $v0, $zero, $zero
80008DB8: jr    $ra
80008DBC: addiu $sp, $sp, 0x0058

80008DC0: sll   $v0, $a0, 0x2
80008DC4: lui   $t6, 0x8016
80008DC8: addu  $t6, $t6, $v0
80008DCC: lw    $t6, 0x4550 ($t6)
80008DD0: lui   $t7, 0x8016
80008DD4: addu  $t7, $t7, $v0
80008DD8: lw    $t7, 0x4560 ($t7)
80008DDC: lui   $at, 0x8016
80008DE0: lui   $t8, 0x8016
80008DE4: addu  $t8, $t8, $v0
80008DE8: sw    $t6, 0x4490 ($at)
80008DEC: lw    $t8, 0x4570 ($t8)
80008DF0: lui   $at, 0x8016
80008DF4: lui   $t9, 0x8016
80008DF8: addu  $t9, $t9, $v0
80008DFC: sw    $t7, 0x31D0 ($at)
80008E00: lw    $t9, 0x4580 ($t9)
80008E04: lui   $at, 0x8016
80008E08: lui   $t0, 0x8016
80008E0C: addu  $t0, $t0, $v0
80008E10: sw    $t8, 0x31D4 ($at)
80008E14: lw    $t0, 0x4590 ($t0)
80008E18: lui   $at, 0x8016
80008E1C: lui   $t1, 0x8016
80008E20: addu  $t1, $t1, $v0
80008E24: sw    $t9, 0x31D8 ($at)
80008E28: lw    $t1, 0x45A0 ($t1)
80008E2C: lui   $at, 0x8016
80008E30: sll   $t2, $a0, 0x1
80008E34: lui   $t3, 0x8016
80008E38: sw    $t0, 0x31DC ($at)
80008E3C: lui   $at, 0x8016
80008E40: addu  $t3, $t3, $t2
80008E44: lhu   $t3, 0x45C8 ($t3)
80008E48: sw    $t1, 0x45E0 ($at)
80008E4C: lui   $at, 0x8016
80008E50: jr    $ra
80008E54: sh    $t3, 0x4430 ($at)

80008E58: sll   $t7, $a0, 0x3
80008E5C: subu  $t7, $t7, $a0
80008E60: sll   $t7, $t7, 0x4
80008E64: subu  $t7, $t7, $a0
80008E68: sll   $t7, $t7, 0x2
80008E6C: addiu $sp, $sp, 0xFFC0
80008E70: subu  $t7, $t7, $a0
80008E74: lui   $t8, 0x800F
80008E78: addiu $t8, $t8, 0x6990
80008E7C: sll   $t7, $t7, 0x3
80008E80: addu  $v0, $t7, $t8
80008E84: lwc1  F4, 0x0014 ($v0)
80008E88: lwc1  F6, 0x0018 ($v0)
80008E8C: lwc1  F8, 0x001C ($v0)
80008E90: sw    $ra, 0x001C ($sp)
80008E94: sw    $a0, 0x0040 ($sp)
80008E98: sw    $a1, 0x0044 ($sp)
80008E9C: sw    $a1, 0x0028 ($sp)
80008EA0: sw    $a1, 0x0044 ($sp)
80008EA4: lhu   $a0, 0x011A ($v0)
80008EA8: swc1  F4, 0x003C ($sp)
80008EAC: swc1  F6, 0x0038 ($sp)
80008EB0: jal   0x802ABD40
80008EB4: swc1  F8, 0x0034 ($sp)
80008EB8: lw    $a1, 0x0040 ($sp)
80008EBC: lui   $at, 0x8016
80008EC0: addiu $t0, $sp, 0x0044
80008EC4: sll   $t9, $a1, 0x1
80008EC8: addu  $at, $at, $t9
80008ECC: sh    $v0, 0x3318 ($at)
80008ED0: sw    $t9, 0x0024 ($sp)
80008ED4: sw    $t0, 0x0010 ($sp)
80008ED8: lwc1  F12, 0x003C ($sp)
80008EDC: lwc1  F14, 0x0038 ($sp)
80008EE0: lw    $a2, 0x0034 ($sp)
80008EE4: jal   0x8000C0BC
80008EE8: andi  $a3, $v0, 0xFFFF
80008EEC: lui   $v1, 0x8016
80008EF0: addiu $v1, $v1, 0x2FCE
80008EF4: lw    $a1, 0x0024 ($sp)
80008EF8: sh    $v0, 0x0000 ($v1)
80008EFC: lh    $t1, 0x0000 ($v1)
80008F00: lui   $at, 0x8016
80008F04: addu  $at, $at, $a1
80008F08: lw    $a0, 0x0044 ($sp)
80008F0C: sh    $t1, 0x4438 ($at)
80008F10: lui   $at, 0x8016
80008F14: addu  $at, $at, $a1
80008F18: sh    $a0, 0x45B0 ($at)
80008F1C: jal   0x80008DC0
80008F20: sw    $a0, 0x0044 ($sp)
80008F24: lw    $ra, 0x001C ($sp)
80008F28: lw    $v0, 0x0044 ($sp)
80008F2C: addiu $sp, $sp, 0x0040
80008F30: jr    $ra
80008F34: nop

80008F38: lui   $a2, 0x8016
80008F3C: sll   $v0, $a0, 0x2
80008F40: lui   $v1, 0x8016
80008F44: addiu $a2, $a2, 0x45C8
80008F48: addu  $v1, $v1, $v0
80008F4C: lw    $v1, 0x4390 ($v1)
80008F50: lhu   $t6, 0x0000 ($a2)
80008F54: sll   $a1, $a0, 0x1
80008F58: lui   $t0, 0x8016
80008F5C: multu $t6, $v1
80008F60: addu  $t0, $t0, $a1
80008F64: lhu   $t0, 0x4438 ($t0)
80008F68: lui   $t8, 0x8016
80008F6C: lh    $t8, 0x2FCE ($t8)
80008F70: mtc1  $t0, F4
80008F74: lui   $at, 0x8016
80008F78: addu  $at, $at, $v0
80008F7C: lui   $t1, 0x8016
80008F80: cvt.s.w F6, F4
80008F84: mflo  $t7
80008F88: addu  $t9, $t7, $t8
80008F8C: bgez  $t0, 0x80008FA4
80008F90: sw    $t9, 0x4450 ($at)
80008F94: lui   $at, 0x4F80
80008F98: mtc1  $at, F8
80008F9C: nop
80008FA0: add.s F6, F6, F8
80008FA4: addu  $t1, $t1, $a1
80008FA8: lhu   $t1, 0x45B0 ($t1)
80008FAC: lui   $at, 0x4F80
80008FB0: sll   $t2, $t1, 0x1
80008FB4: addu  $t3, $a2, $t2
80008FB8: lhu   $t4, 0x0000 ($t3)
80008FBC: mtc1  $t4, F10
80008FC0: bgez  $t4, 0x80008FD4
80008FC4: cvt.s.w F16, F10
80008FC8: mtc1  $at, F18
80008FCC: nop
80008FD0: add.s F16, F16, F18
80008FD4: div.s F0, F6, F16
80008FD8: mtc1  $v1, F4
80008FDC: lui   $at, 0x8016
80008FE0: addu  $at, $at, $v0
80008FE4: cvt.s.w F8, F4
80008FE8: add.s F10, F0, F8
80008FEC: swc1  F0, 0x44A8 ($at)
80008FF0: lui   $at, 0x8016
80008FF4: addu  $at, $at, $v0
80008FF8: jr    $ra
80008FFC: swc1  F10, 0x44D0 ($at)

80009000: lui   $a2, 0x8016
80009004: lh    $a2, 0x2FCE ($a2)
80009008: lui   $t6, 0x8016
8000900C: addiu $t6, $t6, 0x44F8
80009010: sll   $v1, $a0, 0x1
80009014: addu  $a1, $v1, $t6
80009018: slti  $at, $a2, 0x006D
8000901C: bnez  $at, 0x800090A8
80009020: lh    $v0, 0x0000 ($a1)
80009024: addiu $a3, $zero, 0x0001
80009028: sh    $a3, 0x0000 ($a1)
8000902C: lui   $a0, 0x8016
80009030: lw    $a0, 0x3448 ($a0)
80009034: slti  $at, $a2, 0x020F
80009038: beq   $a0, $zero, 0x80009064
8000903C: nop
80009040: beq   $a0, $a3, 0x80009074
80009044: slti  $at, $a2, 0x0206
80009048: addiu $at, $zero, 0x0002
8000904C: beq   $a0, $at, 0x80009084
80009050: addiu $at, $zero, 0x0003
80009054: beql  $a0, $at, 0x8000909C
80009058: slti  $at, $a2, 0x0283
8000905C: beq   $zero, $zero, 0x800090A8
80009060: nop
80009064: bnez  $at, 0x800090A8
80009068: nop
8000906C: beq   $zero, $zero, 0x800090A8
80009070: sh    $zero, 0x0000 ($a1)
80009074: bnez  $at, 0x800090A8
80009078: nop
8000907C: beq   $zero, $zero, 0x800090A8
80009080: sh    $zero, 0x0000 ($a1)
80009084: slti  $at, $a2, 0x0211
80009088: bnez  $at, 0x800090A8
8000908C: nop
80009090: beq   $zero, $zero, 0x800090A8
80009094: sh    $zero, 0x0000 ($a1)
80009098: slti  $at, $a2, 0x0283
8000909C: bnez  $at, 0x800090A8
800090A0: nop
800090A4: sh    $zero, 0x0000 ($a1)
800090A8: bnez  $v0, 0x800090C8
800090AC: addiu $a3, $zero, 0x0001
800090B0: lh    $t7, 0x0000 ($a1)
800090B4: lui   $at, 0x8016
800090B8: addu  $at, $at, $v1
800090BC: bne   $a3, $t7, 0x800090C8
800090C0: nop
800090C4: sh    $a3, 0x3490 ($at)
800090C8: bne   $v0, $a3, 0x800090E8
800090CC: nop
800090D0: lh    $t8, 0x0000 ($a1)
800090D4: lui   $at, 0x8016
800090D8: addu  $at, $at, $v1
800090DC: bnez  $t8, 0x800090E8
800090E0: nop
800090E4: sh    $a3, 0x34A8 ($at)
800090E8: jr    $ra
800090EC: nop

800090F0: addiu $sp, $sp, 0xFFA0
800090F4: sw    $ra, 0x0034 ($sp)
800090F8: sw    $s2, 0x0030 ($sp)
800090FC: sw    $s1, 0x002C ($sp)
80009100: sw    $s0, 0x0028 ($sp)
80009104: lwc1  F4, 0x0014 ($a1)
80009108: lui   $t6, 0x8016
8000910C: addiu $t6, $t6, 0x3490
80009110: swc1  F4, 0x005C ($sp)
80009114: lwc1  F6, 0x0018 ($a1)
80009118: sll   $s2, $a0, 0x1
8000911C: addu  $v0, $s2, $t6
80009120: lh    $t7, 0x0000 ($v0)
80009124: swc1  F6, 0x0058 ($sp)
80009128: lwc1  F8, 0x001C ($a1)
8000912C: addiu $at, $zero, 0x0001
80009130: or    $s0, $a0, $zero
80009134: or    $s1, $a1, $zero
80009138: bne   $t7, $at, 0x800091B0
8000913C: swc1  F8, 0x0054 ($sp)
80009140: addiu $a0, $zero, 0x0004
80009144: jal   randInt
80009148: sw    $v0, 0x0040 ($sp)
8000914C: or    $a0, $s0, $zero
80009150: jal   0x80008E58
80009154: or    $a1, $v0, $zero
80009158: lui   $v1, 0x8016
8000915C: addiu $v1, $v1, 0x3448
80009160: sw    $v0, 0x0000 ($v1)
80009164: lwc1  F12, 0x005C ($sp)
80009168: lwc1  F14, 0x0058 ($sp)
8000916C: lw    $a2, 0x0054 ($sp)
80009170: or    $a3, $zero, $zero
80009174: sw    $s1, 0x0010 ($sp)
80009178: sw    $s0, 0x0014 ($sp)
8000917C: jal   0x8000CD24
80009180: sw    $v0, 0x0018 ($sp)
80009184: lui   $v1, 0x8016
80009188: addiu $v1, $v1, 0x2FCE
8000918C: sh    $v0, 0x0000 ($v1)
80009190: lh    $t9, 0x0000 ($v1)
80009194: lui   $at, 0x8016
80009198: addu  $at, $at, $s2
8000919C: or    $a0, $s0, $zero
800091A0: jal   0x80008F38
800091A4: sh    $t9, 0x4438 ($at)
800091A8: lw    $t0, 0x0040 ($sp)
800091AC: sh    $zero, 0x0000 ($t0)
800091B0: lui   $t1, 0x8016
800091B4: addiu $t1, $t1, 0x34A8
800091B8: addu  $v0, $s2, $t1
800091BC: lh    $t2, 0x0000 ($v0)
800091C0: addiu $at, $zero, 0x0001
800091C4: or    $a0, $s0, $zero
800091C8: bne   $t2, $at, 0x80009240
800091CC: or    $a1, $zero, $zero
800091D0: lui   $t3, 0x8016
800091D4: addiu $t3, $t3, 0x4438
800091D8: addu  $t4, $s2, $t3
800091DC: sw    $t4, 0x0040 ($sp)
800091E0: jal   0x80008E58
800091E4: sw    $v0, 0x003C ($sp)
800091E8: lui   $at, 0x8016
800091EC: sw    $v0, 0x3448 ($at)
800091F0: lui   $t5, 0x8016
800091F4: lw    $t5, 0x3448 ($t5)
800091F8: lwc1  F12, 0x005C ($sp)
800091FC: lwc1  F14, 0x0058 ($sp)
80009200: lw    $a2, 0x0054 ($sp)
80009204: or    $a3, $zero, $zero
80009208: sw    $s1, 0x0010 ($sp)
8000920C: sw    $s0, 0x0014 ($sp)
80009210: jal   0x8000CD24
80009214: sw    $t5, 0x0018 ($sp)
80009218: lui   $at, 0x8016
8000921C: sh    $v0, 0x2FCE ($at)
80009220: lui   $t6, 0x8016
80009224: lh    $t6, 0x2FCE ($t6)
80009228: lw    $t7, 0x0040 ($sp)
8000922C: or    $a0, $s0, $zero
80009230: jal   0x80008F38
80009234: sh    $t6, 0x0000 ($t7)
80009238: lw    $t8, 0x003C ($sp)
8000923C: sh    $zero, 0x0000 ($t8)
80009240: lw    $ra, 0x0034 ($sp)
80009244: lw    $s0, 0x0028 ($sp)
80009248: lw    $s1, 0x002C ($sp)
8000924C: lw    $s2, 0x0030 ($sp)
80009250: jr    $ra
80009254: addiu $sp, $sp, 0x0060

80009258: lui   $at, 0x8016
8000925C: mtc1  $a2, F14
80009260: lwc1  F12, 0x344C ($at)
80009264: sw    $a1, 0x0004 ($sp)
80009268: lwc1  F4, 0x0004 ($sp)
8000926C: sub.s F2, F12, F14
80009270: lui   $at, 0x800F
80009274: lwc1  F6, 0xCFA4 ($at)
80009278: sub.s F16, F4, F12
8000927C: lui   $at, 0x800E
80009280: mul.s F8, F6, F2
80009284: lwc1  F4, 0xC598 ($at)
80009288: add.s F10, F2, F16
8000928C: sw    $a0, 0x0000 ($sp)
80009290: div.s F18, F8, F10
80009294: jr    $ra
80009298: sub.s F0, F4, F18

8000929C: addiu $sp, $sp, 0xFFB0
800092A0: sw    $ra, 0x0024 ($sp)
800092A4: lwc1  F0, 0x001C ($a1)
800092A8: lwc1  F12, 0x0014 ($a1)
800092AC: lwc1  F14, 0x0018 ($a1)
800092B0: lui   $t6, 0x8016
800092B4: lui   $at, 0x8016
800092B8: addiu $t6, $t6, 0x3240
800092BC: sll   $v0, $a0, 0x1
800092C0: sh    $zero, 0x30E2 ($at)
800092C4: addu  $v1, $v0, $t6
800092C8: sh    $zero, 0x0000 ($v1)
800092CC: lui   $t7, 0x8016
800092D0: lui   $t8, 0x8016
800092D4: lw    $t8, 0x3448 ($t8)
800092D8: addiu $t7, $t7, 0x4438
800092DC: addu  $t0, $v0, $t7
800092E0: mfc1  $a2, F0
800092E4: lh    $a3, 0x0000 ($t0)
800092E8: sw    $t0, 0x0030 ($sp)
800092EC: sw    $v1, 0x002C ($sp)
800092F0: sw    $a1, 0x0054 ($sp)
800092F4: sw    $a0, 0x0050 ($sp)
800092F8: sw    $a0, 0x0014 ($sp)
800092FC: sw    $a1, 0x0010 ($sp)
80009300: swc1  F0, 0x0044 ($sp)
80009304: swc1  F12, 0x004C ($sp)
80009308: jal   0x8000CD24
8000930C: sw    $t8, 0x0018 ($sp)
80009310: lui   $a1, 0x8016
80009314: addiu $a1, $a1, 0x2FCE
80009318: sh    $v0, 0x0000 ($a1)
8000931C: lh    $a3, 0x0000 ($a1)
80009320: lw    $t0, 0x0030 ($sp)
80009324: lui   $at, 0x8016
80009328: sh    $a3, 0x30E0 ($at)
8000932C: lhu   $t9, 0x0000 ($t0)
80009330: lw    $a0, 0x0050 ($sp)
80009334: lwc1  F12, 0x004C ($sp)
80009338: beq   $a3, $t9, 0x8000936C
8000933C: or    $v1, $a3, $zero
80009340: sh    $v1, 0x0000 ($t0)
80009344: addiu $t1, $zero, 0x0001
80009348: lui   $at, 0x8016
8000934C: sh    $t1, 0x30E2 ($at)
80009350: sw    $a0, 0x0050 ($sp)
80009354: jal   0x80008F38
80009358: swc1  F12, 0x004C ($sp)
8000935C: lui   $a3, 0x8016
80009360: lh    $a3, 0x2FCE ($a3)
80009364: lw    $a0, 0x0050 ($sp)
80009368: lwc1  F12, 0x004C ($sp)
8000936C: lui   $v0, 0x800E
80009370: lh    $v0, 0xC5A0 ($v0)
80009374: addiu $at, $zero, 0x0014
80009378: andi  $a1, $a3, 0xFFFF
8000937C: bne   $v0, $at, 0x80009394
80009380: lui   $a2, 0x8016
80009384: jal   0x8000B95C
80009388: lw    $a2, 0x3448 ($a2)
8000938C: beq   $zero, $zero, 0x800097D4
80009390: lw    $ra, 0x0024 ($sp)
80009394: slti  $at, $a3, 0x0014
80009398: bnez  $at, 0x800093C8
8000939C: lui   $t2, 0x8016
800093A0: lw    $t2, 0x3448 ($t2)
800093A4: lui   $t4, 0x8016
800093A8: sll   $t3, $t2, 0x1
800093AC: addu  $t4, $t4, $t3
800093B0: lhu   $t4, 0x45C8 ($t4)
800093B4: addiu $t5, $t4, 0xFFEC
800093B8: slt   $at, $t5, $a3
800093BC: bnez  $at, 0x800093C8
800093C0: addiu $at, $zero, 0x000B
800093C4: bne   $v0, $at, 0x800096B8
800093C8: addiu $at, $zero, 0x000B
800093CC: or    $v1, $zero, $zero
800093D0: bne   $v0, $at, 0x800094FC
800093D4: or    $t0, $zero, $zero
800093D8: lw    $t6, 0x0054 ($sp)
800093DC: lui   $v0, 0x8016
800093E0: addiu $v0, $v0, 0x34EC
800093E4: sh    $zero, 0x0000 ($v0)
800093E8: lw    $t7, 0x00BC ($t6)
800093EC: addiu $t9, $zero, 0x0001
800093F0: lui   $t1, 0x800E
800093F4: andi  $t8, $t7, 0x0200
800093F8: beq   $t8, $zero, 0x80009404
800093FC: lui   $at, 0xC396
80009400: sh    $t9, 0x0000 ($v0)
80009404: lw    $t1, 0xC604 ($t1)
80009408: beql  $t1, $zero, 0x8000948C
8000940C: mtc1  $at, F8
80009410: lui   $at, 0x4396
80009414: mtc1  $at, F4
80009418: lui   $at, 0x800F
8000941C: sll   $a3, $a0, 0x2
80009420: c.lt.s F12, F4
80009424: nop
80009428: bc1f  0x8000943C
8000942C: nop
80009430: addiu $v1, $zero, 0x0001
80009434: beq   $zero, $zero, 0x80009508
80009438: addiu $t0, $zero, 0x0001
8000943C: lwc1  F6, 0xCFA8 ($at)
80009440: sll   $t2, $a0, 0x2
80009444: lui   $t3, 0x8016
80009448: c.lt.s F12, F6
8000944C: addu  $t3, $t3, $t2
80009450: bc1f  0x800094F4
80009454: nop
80009458: lw    $t3, 0x4390 ($t3)
8000945C: slti  $at, $t3, 0x0002
80009460: beq   $at, $zero, 0x800094F4
80009464: nop
80009468: lh    $t4, 0x0000 ($v0)
8000946C: addiu $at, $zero, 0x0001
80009470: sll   $a3, $a0, 0x2
80009474: bne   $t4, $at, 0x800094F4
80009478: nop
8000947C: addiu $v1, $zero, 0x0001
80009480: beq   $zero, $zero, 0x80009508
80009484: addiu $t0, $zero, 0x0001
80009488: mtc1  $at, F8
8000948C: lui   $at, 0x800F
80009490: sll   $a3, $a0, 0x2
80009494: c.lt.s F8, F12
80009498: nop
8000949C: bc1f  0x800094B0
800094A0: nop
800094A4: addiu $v1, $zero, 0x0001
800094A8: beq   $zero, $zero, 0x80009508
800094AC: addiu $t0, $zero, 0x0001
800094B0: lwc1  F10, 0xCFAC ($at)
800094B4: sll   $t5, $a0, 0x2
800094B8: lui   $t6, 0x8016
800094BC: c.lt.s F10, F12
800094C0: addu  $t6, $t6, $t5
800094C4: bc1f  0x800094F4
800094C8: nop
800094CC: lw    $t6, 0x4390 ($t6)
800094D0: slti  $at, $t6, 0x0002
800094D4: beq   $at, $zero, 0x800094F4
800094D8: nop
800094DC: lh    $t7, 0x0000 ($v0)
800094E0: addiu $at, $zero, 0x0001
800094E4: bne   $t7, $at, 0x800094F4
800094E8: nop
800094EC: addiu $v1, $zero, 0x0001
800094F0: addiu $t0, $zero, 0x0001
800094F4: beq   $zero, $zero, 0x80009508
800094F8: sll   $a3, $a0, 0x2
800094FC: addiu $v1, $zero, 0x0001
80009500: addiu $t0, $zero, 0x0001
80009504: sll   $a3, $a0, 0x2
80009508: lui   $at, 0x8016
8000950C: addu  $at, $at, $a3
80009510: lwc1  F16, 0x3450 ($at)
80009514: lui   $at, 0x8016
80009518: beq   $v1, $zero, 0x80009664
8000951C: swc1  F16, 0x0038 ($sp)
80009520: lwc1  F0, 0x344C ($at)
80009524: lwc1  F18, 0x0044 ($sp)
80009528: lwc1  F4, 0x0038 ($sp)
8000952C: c.le.s F18, F0
80009530: nop
80009534: bc1f  0x80009664
80009538: nop
8000953C: c.lt.s F0, F4
80009540: lui   $t8, 0x8016
80009544: addiu $t8, $t8, 0x4390
80009548: addu  $v0, $a3, $t8
8000954C: bc1f  0x80009664
80009550: nop
80009554: lw    $t9, 0x0000 ($v0)
80009558: lui   $t2, 0x800E
8000955C: addiu $at, $zero, 0x0005
80009560: addiu $t1, $t9, 0x0001
80009564: sw    $t1, 0x0000 ($v0)
80009568: lw    $t2, 0xC53C ($t2)
8000956C: bnel  $t2, $zero, 0x800095D8
80009570: lw    $t5, 0x002C ($sp)
80009574: bne   $t1, $at, 0x800095D4
80009578: lui   $t4, 0x8016
8000957C: addu  $t4, $t4, $a3
80009580: lw    $t4, 0x4408 ($t4)
80009584: addiu $at, $zero, 0x0007
80009588: lui   $v0, 0x8016
8000958C: bne   $t4, $at, 0x800095D4
80009590: addiu $v0, $v0, 0x4390
80009594: lui   $v1, 0x8016
80009598: addiu $v1, $v1, 0x43B0
8000959C: lw    $t5, 0x0000 ($v0)
800095A0: lw    $t7, 0x0004 ($v0)
800095A4: lw    $t9, 0x0008 ($v0)
800095A8: lw    $t2, 0x000C ($v0)
800095AC: addiu $v0, $v0, 0x0010
800095B0: addiu $t6, $t5, 0xFFFF
800095B4: addiu $t8, $t7, 0xFFFF
800095B8: addiu $t1, $t9, 0xFFFF
800095BC: addiu $t3, $t2, 0xFFFF
800095C0: sw    $t3, 0xFFFC ($v0)
800095C4: sw    $t1, 0xFFF8 ($v0)
800095C8: sw    $t8, 0xFFF4 ($v0)
800095CC: bne   $v0, $v1, 0x8000959C
800095D0: sw    $t6, 0xFFF0 ($v0)
800095D4: lw    $t5, 0x002C ($sp)
800095D8: addiu $t4, $zero, 0x0001
800095DC: sh    $t4, 0x0000 ($t5)
800095E0: sh    $t0, 0x0034 ($sp)
800095E4: sw    $a3, 0x0030 ($sp)
800095E8: jal   0x80008F38
800095EC: sw    $a0, 0x0050 ($sp)
800095F0: jal   0x80011AE4
800095F4: lw    $a0, 0x0050 ($sp)
800095F8: lw    $a0, 0x0050 ($sp)
800095FC: lui   $t7, 0x8016
80009600: lh    $t7, 0x348C ($t7)
80009604: lui   $at, 0x8016
80009608: sll   $t6, $a0, 0x4
8000960C: addu  $at, $at, $t6
80009610: lw    $a3, 0x0030 ($sp)
80009614: lh    $t0, 0x0034 ($sp)
80009618: bnez  $t7, 0x80009664
8000961C: sh    $zero, 0x42DE ($at)
80009620: lw    $t8, 0x0054 ($sp)
80009624: lw    $a1, 0x0038 ($sp)
80009628: lw    $a2, 0x0044 ($sp)
8000962C: lhu   $t9, 0x0000 ($t8)
80009630: andi  $t1, $t9, 0x0800
80009634: bnez  $t1, 0x80009664
80009638: nop
8000963C: sw    $a0, 0x0050 ($sp)
80009640: sw    $a3, 0x0030 ($sp)
80009644: jal   0x80009258
80009648: sh    $t0, 0x0034 ($sp)
8000964C: lw    $a3, 0x0030 ($sp)
80009650: lui   $at, 0x8016
80009654: lw    $a0, 0x0050 ($sp)
80009658: addu  $at, $at, $a3
8000965C: swc1  F0, 0xF898 ($at)
80009660: lh    $t0, 0x0034 ($sp)
80009664: beq   $t0, $zero, 0x800096B8
80009668: lui   $at, 0x8016
8000966C: lwc1  F0, 0x344C ($at)
80009670: lwc1  F6, 0x0038 ($sp)
80009674: lwc1  F8, 0x0044 ($sp)
80009678: c.le.s F6, F0
8000967C: nop
80009680: bc1fl 0x800096BC
80009684: lwc1  F10, 0x0044 ($sp)
80009688: c.lt.s F0, F8
8000968C: lui   $t2, 0x8016
80009690: addiu $t2, $t2, 0x4390
80009694: addu  $v0, $a3, $t2
80009698: bc1fl 0x800096BC
8000969C: lwc1  F10, 0x0044 ($sp)
800096A0: lw    $t3, 0x0000 ($v0)
800096A4: sw    $a0, 0x0050 ($sp)
800096A8: addiu $t4, $t3, 0xFFFF
800096AC: jal   0x80008F38
800096B0: sw    $t4, 0x0000 ($v0)
800096B4: lw    $a0, 0x0050 ($sp)
800096B8: lwc1  F10, 0x0044 ($sp)
800096BC: sll   $t5, $a0, 0x2
800096C0: lui   $at, 0x8016
800096C4: lui   $t6, 0x800E
800096C8: lh    $t6, 0xC5A0 ($t6)
800096CC: addu  $at, $at, $t5
800096D0: swc1  F10, 0x3450 ($at)
800096D4: addiu $at, $zero, 0x0004
800096D8: bne   $t6, $at, 0x80009728
800096DC: lui   $t7, 0x8016
800096E0: lh    $t7, 0x30E2 ($t7)
800096E4: addiu $at, $zero, 0x0001
800096E8: bnel  $t7, $at, 0x8000972C
800096EC: lw    $t2, 0x0054 ($sp)
800096F0: jal   0x80009000
800096F4: sw    $a0, 0x0050 ($sp)
800096F8: lw    $t8, 0x0054 ($sp)
800096FC: lw    $a0, 0x0050 ($sp)
80009700: lw    $a1, 0x0054 ($sp)
80009704: lhu   $v0, 0x0000 ($t8)
80009708: andi  $t9, $v0, 0x4000
8000970C: beq   $t9, $zero, 0x8000971C
80009710: andi  $t1, $v0, 0x1000
80009714: beql  $t1, $zero, 0x8000972C
80009718: lw    $t2, 0x0054 ($sp)
8000971C: jal   0x800090F0
80009720: sw    $a0, 0x0050 ($sp)
80009724: lw    $a0, 0x0050 ($sp)
80009728: lw    $t2, 0x0054 ($sp)
8000972C: lui   $a2, 0x8016
80009730: lui   $v1, 0x8016
80009734: lhu   $v0, 0x0000 ($t2)
80009738: andi  $t3, $v0, 0x4000
8000973C: beq   $t3, $zero, 0x800097C0
80009740: andi  $t4, $v0, 0x1000
80009744: bnez  $t4, 0x800097C0
80009748: or    $a1, $t2, $zero
8000974C: jal   0x800065D0
80009750: sw    $a0, 0x0050 ($sp)
80009754: lui   $t5, 0x800E
80009758: lw    $t5, 0xC53C ($t5)
8000975C: lw    $a0, 0x0050 ($sp)
80009760: lui   $a2, 0x8016
80009764: bnez  $t5, 0x800097B4
80009768: lui   $v1, 0x8016
8000976C: lui   $t6, 0x8019
80009770: lb    $t6, 0xEDF3 ($t6)
80009774: addiu $at, $zero, 0x0002
80009778: bne   $t6, $at, 0x800097B4
8000977C: nop
80009780: bnez  $a0, 0x800097B4
80009784: lui   $t7, 0x8016
80009788: lui   $t8, 0x8016
8000978C: lw    $t8, 0x440C ($t8)
80009790: lw    $t7, 0x4408 ($t7)
80009794: addiu $t9, $zero, 0x0001
80009798: slt   $at, $t7, $t8
8000979C: beq   $at, $zero, 0x800097AC
800097A0: lui   $at, 0x8016
800097A4: beq   $zero, $zero, 0x800097B4
800097A8: sh    $zero, 0x3478 ($at)
800097AC: lui   $at, 0x8016
800097B0: sh    $t9, 0x3478 ($at)
800097B4: lw    $a2, 0x3448 ($a2)
800097B8: beq   $zero, $zero, 0x800097C8
800097BC: lh    $v1, 0x2FCE ($v1)
800097C0: lw    $a2, 0x3448 ($a2)
800097C4: lh    $v1, 0x2FCE ($v1)
800097C8: jal   0x8000B95C
800097CC: andi  $a1, $v1, 0xFFFF
800097D0: lw    $ra, 0x0024 ($sp)
800097D4: addiu $sp, $sp, 0x0050
800097D8: jr    $ra
800097DC: nop

800097E0: addiu $sp, $sp, 0xFFE0
800097E4: sw    $ra, 0x001C ($sp)
800097E8: sw    $s1, 0x0018 ($sp)
800097EC: jal   0x8000EF20
800097F0: sw    $s0, 0x0014 ($sp)
800097F4: lui   $v1, 0x8016
800097F8: addiu $v1, $v1, 0x337C
800097FC: lw    $t6, 0x0000 ($v1)
80009800: lui   $v0, 0x800E
80009804: addiu $at, $zero, 0x0014
80009808: addiu $t7, $t6, 0x0001
8000980C: sw    $t7, 0x0000 ($v1)
80009810: lh    $v0, 0xC5A0 ($v0)
80009814: or    $s0, $zero, $zero
80009818: addiu $s1, $zero, 0x0007
8000981C: bnel  $v0, $at, 0x80009844
80009820: lw    $t8, 0x0000 ($v1)
80009824: jal   0x8000DF8C
80009828: or    $a0, $s0, $zero
8000982C: addiu $s0, $s0, 0x0001
80009830: bne   $s0, $s1, 0x80009824
80009834: nop
80009838: beq   $zero, $zero, 0x800098EC
8000983C: lw    $ra, 0x001C ($sp)
80009840: lw    $t8, 0x0000 ($v1)
80009844: lui   $t0, 0x800E
80009848: andi  $t9, $t8, 0x0001
8000984C: beql  $t9, $zero, 0x800098EC
80009850: lw    $ra, 0x001C ($sp)
80009854: lw    $t0, 0xC53C ($t0)
80009858: addiu $at, $zero, 0x0002
8000985C: or    $s0, $zero, $zero
80009860: bne   $t0, $at, 0x80009884
80009864: addiu $s1, $zero, 0x0007
80009868: jal   0x8000DF8C
8000986C: or    $a0, $s0, $zero
80009870: addiu $s0, $s0, 0x0001
80009874: bne   $s0, $s1, 0x80009868
80009878: nop
8000987C: lui   $v0, 0x800E
80009880: lh    $v0, 0xC5A0 ($v0)
80009884: addiu $at, $zero, 0x000A
80009888: beq   $v0, $at, 0x800098C8
8000988C: addiu $at, $zero, 0x000B
80009890: beq   $v0, $at, 0x800098A8
80009894: addiu $at, $zero, 0x0012
80009898: beq   $v0, $at, 0x800098B8
8000989C: nop
800098A0: beq   $zero, $zero, 0x800098EC
800098A4: lw    $ra, 0x001C ($sp)
800098A8: jal   0x80012AC0
800098AC: nop
800098B0: beq   $zero, $zero, 0x800098EC
800098B4: lw    $ra, 0x001C ($sp)
800098B8: jal   0x800133C4
800098BC: nop
800098C0: beq   $zero, $zero, 0x800098EC
800098C4: lw    $ra, 0x001C ($sp)
800098C8: jal   0x8001487C
800098CC: nop
800098D0: jal   0x800149D0
800098D4: nop
800098D8: jal   0x80014B24
800098DC: nop
800098E0: jal   0x80014C78
800098E4: nop
800098E8: lw    $ra, 0x001C ($sp)
800098EC: lw    $s0, 0x0014 ($sp)
800098F0: lw    $s1, 0x0018 ($sp)
800098F4: jr    $ra
800098F8: addiu $sp, $sp, 0x0020

800098FC: lui   $t7, 0x8016
80009900: addiu $t7, $t7, 0x3398
80009904: sll   $v1, $a0, 0x1
80009908: addu  $a2, $v1, $t7
8000990C: lh    $t8, 0x0000 ($a2)
80009910: addiu $sp, $sp, 0xFFE0
80009914: sw    $ra, 0x0014 ($sp)
80009918: slti  $at, $t8, 0x000B
8000991C: sw    $a0, 0x0020 ($sp)
80009920: bnez  $at, 0x80009970
80009924: or    $a3, $a1, $zero
80009928: lw    $v0, 0x00BC ($a1)
8000992C: lui   $a1, 0x2900
80009930: lbu    $a0, 0x0023 ($sp)
80009934: andi  $t9, $v0, 0x0080
80009938: bnez  $t9, 0x8000994C
8000993C: andi  $t0, $v0, 0x0040
80009940: bnez  $t0, 0x8000994C
80009944: sll   $t1, $v0, 0xE
80009948: bgez  $t1, 0x80009970
8000994C: ori   $a1, $a1, 0x800A
80009950: sw    $v1, 0x001C ($sp)
80009954: sw    $a2, 0x0018 ($sp)
80009958: jal   0x800C92CC
8000995C: sw    $a3, 0x0024 ($sp)
80009960: lw    $a2, 0x0018 ($sp)
80009964: lw    $v1, 0x001C ($sp)
80009968: lw    $a3, 0x0024 ($sp)
8000996C: sh    $zero, 0x0000 ($a2)
80009970: lui   $t2, 0x8016
80009974: addiu $t2, $t2, 0x33B0
80009978: addu  $a2, $v1, $t2
8000997C: lh    $t3, 0x0000 ($a2)
80009980: slti  $at, $t3, 0x000B
80009984: bnel  $at, $zero, 0x800099E0
80009988: lw    $ra, 0x0014 ($sp)
8000998C: lw    $v0, 0x000C ($a3)
80009990: lbu    $a0, 0x0023 ($sp)
80009994: lui   $a1, 0x2900
80009998: sll   $t4, $v0, 0x9
8000999C: bltz  $t4, 0x800099C8
800099A0: sll   $t5, $v0, 0x7
800099A4: bltz  $t5, 0x800099C8
800099A8: andi  $t6, $v0, 0x0002
800099AC: bnez  $t6, 0x800099C8
800099B0: andi  $t7, $v0, 0x0004
800099B4: bnel  $t7, $zero, 0x800099CC
800099B8: ori   $a1, $a1, 0x800B
800099BC: lw    $t8, 0x00BC ($a3)
800099C0: sll   $t9, $t8, 0x5
800099C4: bgez  $t9, 0x800099DC
800099C8: ori   $a1, $a1, 0x800B
800099CC: jal   0x800C92CC
800099D0: sw    $a2, 0x0018 ($sp)
800099D4: lw    $a2, 0x0018 ($sp)
800099D8: sh    $zero, 0x0000 ($a2)
800099DC: lw    $ra, 0x0014 ($sp)
800099E0: addiu $sp, $sp, 0x0020
800099E4: jr    $ra
800099E8: nop

800099EC: addiu $sp, $sp, 0xFFB8
800099F0: lui   $t8, 0x8016
800099F4: sw    $s7, 0x0034 ($sp)
800099F8: addiu $t8, $t8, 0x33C8
800099FC: sll   $t6, $a0, 0x1
80009A00: addu  $s7, $t6, $t8
80009A04: lh    $v0, 0x0000 ($s7)
80009A08: sw    $s4, 0x0028 ($sp)
80009A0C: or    $s4, $a0, $zero
80009A10: slti  $at, $v0, 0x0065
80009A14: sw    $ra, 0x003C ($sp)
80009A18: sw    $s8, 0x0038 ($sp)
80009A1C: sw    $s6, 0x0030 ($sp)
80009A20: sw    $s5, 0x002C ($sp)
80009A24: sw    $s3, 0x0024 ($sp)
80009A28: sw    $s2, 0x0020 ($sp)
80009A2C: sw    $s1, 0x001C ($sp)
80009A30: sw    $s0, 0x0018 ($sp)
80009A34: sw    $a1, 0x004C ($sp)
80009A38: bnez  $at, 0x80009AD8
80009A3C: sw    $t6, 0x0040 ($sp)
80009A40: lui   $a0, 0x8019
80009A44: lb    $a0, 0xEDF3 ($a0)
80009A48: or    $s0, $zero, $zero
80009A4C: sll   $s5, $s4, 0x2
80009A50: blez  $a0, 0x80009AD8
80009A54: lui   $t9, 0x8016
80009A58: addiu $s2, $t9, 0x43B8
80009A5C: lui   $s8, 0x2900
80009A60: lui   $s3, 0x8016
80009A64: addiu $s3, $s3, 0x43E0
80009A68: ori   $s8, $s8, 0x800D
80009A6C: addu  $s6, $s5, $s2
80009A70: or    $s1, $zero, $zero
80009A74: lw    $v0, 0x0000 ($s6)
80009A78: lw    $v1, 0x0000 ($s2)
80009A7C: addu  $t0, $s3, $s1
80009A80: slt   $at, $v0, $v1
80009A84: beql  $at, $zero, 0x80009AC4
80009A88: addiu $s0, $s0, 0x0001
80009A8C: lw    $t1, 0x0000 ($t0)
80009A90: addu  $t2, $s3, $s5
80009A94: bnel  $v0, $t1, 0x80009AC4
80009A98: addiu $s0, $s0, 0x0001
80009A9C: lw    $t3, 0x0000 ($t2)
80009AA0: or    $a1, $s8, $zero
80009AA4: bnel  $v1, $t3, 0x80009AC4
80009AA8: addiu $s0, $s0, 0x0001
80009AAC: jal   0x800C92CC
80009AB0: andi  $a0, $s4, 0x00FF
80009AB4: sh    $zero, 0x0000 ($s7)
80009AB8: lui   $a0, 0x8019
80009ABC: lb    $a0, 0xEDF3 ($a0)
80009AC0: addiu $s0, $s0, 0x0001
80009AC4: slt   $at, $s0, $a0
80009AC8: addiu $s1, $s1, 0x0004
80009ACC: bnez  $at, 0x80009A74
80009AD0: addiu $s2, $s2, 0x0004
80009AD4: lh    $v0, 0x0000 ($s7)
80009AD8: slti  $at, $v0, 0x03E8
80009ADC: beq   $at, $zero, 0x80009AE8
80009AE0: addiu $t4, $v0, 0x0001
80009AE4: sh    $t4, 0x0000 ($s7)
80009AE8: lw    $t5, 0x0040 ($sp)
80009AEC: lui   $t6, 0x8016
80009AF0: addiu $t6, $t6, 0x3398
80009AF4: addu  $v0, $t5, $t6
80009AF8: lh    $v1, 0x0000 ($v0)
80009AFC: slti  $at, $v1, 0x00C8
80009B00: beq   $at, $zero, 0x80009B0C
80009B04: addiu $t7, $v1, 0x0001
80009B08: sh    $t7, 0x0000 ($v0)
80009B0C: lw    $t8, 0x0040 ($sp)
80009B10: lui   $t9, 0x8016
80009B14: addiu $t9, $t9, 0x33B0
80009B18: addu  $v0, $t8, $t9
80009B1C: lh    $v1, 0x0000 ($v0)
80009B20: slti  $at, $v1, 0x00C8
80009B24: beq   $at, $zero, 0x80009B30
80009B28: addiu $t0, $v1, 0x0001
80009B2C: sh    $t0, 0x0000 ($v0)
80009B30: lw    $ra, 0x003C ($sp)
80009B34: lw    $s0, 0x0018 ($sp)
80009B38: lw    $s1, 0x001C ($sp)
80009B3C: lw    $s2, 0x0020 ($sp)
80009B40: lw    $s3, 0x0024 ($sp)
80009B44: lw    $s4, 0x0028 ($sp)
80009B48: lw    $s5, 0x002C ($sp)
80009B4C: lw    $s6, 0x0030 ($sp)
80009B50: lw    $s7, 0x0034 ($sp)
80009B54: lw    $s8, 0x0038 ($sp)
80009B58: jr    $ra
80009B5C: addiu $sp, $sp, 0x0048

80009B60: lui   $t6, 0x800E
80009B64: lh    $t6, 0xC5A0 ($t6)
80009B68: lui   $at, 0x800E
80009B6C: lui   $t2, 0x8016
80009B70: sll   $t7, $t6, 0x2
80009B74: addu  $at, $at, $t7
80009B78: lwc1  F4, 0xCA4C ($at)
80009B7C: addiu $sp, $sp, 0xFF30
80009B80: addiu $t2, $t2, 0x3100
80009B84: trunc.w.s F6, F4
80009B88: sll   $a3, $a0, 0x2
80009B8C: sw    $ra, 0x0014 ($sp)
80009B90: or    $a1, $a0, $zero
80009B94: mfc1  $t9, F6
80009B98: addu  $v0, $a3, $t2
80009B9C: bltzl $t9, 0x8000B134
80009BA0: lw    $ra, 0x0014 ($sp)
80009BA4: lw    $t3, 0x0000 ($v0)
80009BA8: lui   $t0, 0x8016
80009BAC: addiu $t0, $t0, 0x3378
80009BB0: addiu $t4, $t3, 0x0001
80009BB4: bnez  $a0, 0x80009BE4
80009BB8: sw    $t4, 0x0000 ($v0)
80009BBC: lw    $t5, 0x0000 ($t0)
80009BC0: lui   $v0, 0x8016
80009BC4: addiu $v0, $v0, 0x3488
80009BC8: addiu $t6, $t5, 0x0001
80009BCC: andi  $t8, $t6, 0x0001
80009BD0: beq   $t8, $zero, 0x80009BE4
80009BD4: sw    $t6, 0x0000 ($t0)
80009BD8: lw    $t9, 0x0000 ($v0)
80009BDC: addiu $t2, $t9, 0x0001
80009BE0: sw    $t2, 0x0000 ($v0)
80009BE4: sll   $t3, $a1, 0x3
80009BE8: subu  $t3, $t3, $a1
80009BEC: sll   $t3, $t3, 0x4
80009BF0: subu  $t3, $t3, $a1
80009BF4: sll   $t3, $t3, 0x2
80009BF8: subu  $t3, $t3, $a1
80009BFC: lui   $t4, 0x800F
80009C00: addiu $t4, $t4, 0x6990
80009C04: sll   $t3, $t3, 0x3
80009C08: addu  $v1, $t3, $t4
80009C0C: lhu   $t5, 0x0000 ($v1)
80009C10: lui   $t8, 0x8016
80009C14: addiu $t8, $t8, 0x33E0
80009C18: andi  $t6, $t5, 0x8000
80009C1C: bnez  $t6, 0x80009C58
80009C20: sll   $a2, $a1, 0x1
80009C24: lui   $at, 0xC47A
80009C28: mtc1  $at, F0
80009C2C: lui   $at, 0x8016
80009C30: addu  $at, $at, $a3
80009C34: addiu $t7, $zero, 0xFFEC
80009C38: sw    $t7, 0x4450 ($at)
80009C3C: lui   $at, 0x8016
80009C40: addu  $at, $at, $a3
80009C44: swc1  F0, 0x44D0 ($at)
80009C48: lui   $at, 0x8016
80009C4C: addu  $at, $at, $a3
80009C50: beq   $zero, $zero, 0x8000B130
80009C54: swc1  F0, 0x44A8 ($at)
80009C58: addu  $v0, $a2, $t8
80009C5C: sh    $zero, 0x0000 ($v0)
80009C60: lui   $t9, 0x8016
80009C64: lh    $t9, 0xF6EA ($t9)
80009C68: lwc1  F0, 0x0014 ($v1)
80009C6C: addiu $t2, $zero, 0x0001
80009C70: mtc1  $t9, F8
80009C74: lui   $t3, 0x8016
80009C78: addiu $t4, $zero, 0x0002
80009C7C: cvt.s.w F10, F8
80009C80: lui   $t5, 0x8016
80009C84: addiu $t6, $zero, 0x0003
80009C88: addiu $t8, $zero, 0x0004
80009C8C: lui   $t7, 0x8016
80009C90: c.lt.s F0, F10
80009C94: nop
80009C98: bc1f  0x80009CA8
80009C9C: nop
80009CA0: sh    $t2, 0x0000 ($v0)
80009CA4: lwc1  F0, 0x0014 ($v1)
80009CA8: lh    $t3, 0xF6E8 ($t3)
80009CAC: mtc1  $t3, F16
80009CB0: nop
80009CB4: cvt.s.w F18, F16
80009CB8: c.lt.s F18, F0
80009CBC: nop
80009CC0: bc1f  0x80009CCC
80009CC4: nop
80009CC8: sh    $t4, 0x0000 ($v0)
80009CCC: lh    $t5, 0xF6F2 ($t5)
80009CD0: lwc1  F0, 0x001C ($v1)
80009CD4: mtc1  $t5, F4
80009CD8: nop
80009CDC: cvt.s.w F6, F4
80009CE0: c.lt.s F0, F6
80009CE4: nop
80009CE8: bc1f  0x80009CF8
80009CEC: nop
80009CF0: sh    $t6, 0x0000 ($v0)
80009CF4: lwc1  F0, 0x001C ($v1)
80009CF8: lh    $t7, 0xF6F0 ($t7)
80009CFC: mtc1  $t7, F8
80009D00: nop
80009D04: cvt.s.w F10, F8
80009D08: c.lt.s F10, F0
80009D0C: nop
80009D10: bc1fl 0x80009D20
80009D14: lh    $v0, 0x00CA ($v1)
80009D18: sh    $t8, 0x0000 ($v0)
80009D1C: lh    $v0, 0x00CA ($v1)
80009D20: andi  $t9, $v0, 0x0002
80009D24: bnez  $t9, 0x8000B130
80009D28: andi  $t2, $v0, 0x0008
80009D2C: bnez  $t2, 0x8000B130
80009D30: lui   $v0, 0x8016
80009D34: lui   $t3, 0x8016
80009D38: addu  $t3, $t3, $a2
80009D3C: lhu   $a0, 0x45B0 ($t3)
80009D40: addiu $v0, $v0, 0x3448
80009D44: sw    $v1, 0x0040 ($sp)
80009D48: sw    $a1, 0x00D0 ($sp)
80009D4C: sw    $a2, 0x0034 ($sp)
80009D50: sw    $a3, 0x0038 ($sp)
80009D54: jal   0x80008DC0
80009D58: sw    $a0, 0x0000 ($v0)
80009D5C: lui   $v0, 0x800E
80009D60: lh    $v0, 0xC5A0 ($v0)
80009D64: addiu $at, $zero, 0x000A
80009D68: lw    $a0, 0x00D0 ($sp)
80009D6C: beq   $v0, $at, 0x80009DC4
80009D70: addiu $at, $zero, 0x000B
80009D74: beq   $v0, $at, 0x80009D90
80009D78: lw    $a0, 0x00D0 ($sp)
80009D7C: addiu $at, $zero, 0x0012
80009D80: beq   $v0, $at, 0x80009DB4
80009D84: nop
80009D88: beq   $zero, $zero, 0x80009DF4
80009D8C: lw    $a1, 0x0040 ($sp)
80009D90: jal   0x80012DC0
80009D94: lw    $a1, 0x0040 ($sp)
80009D98: lw    $t4, 0x00D0 ($sp)
80009D9C: bnel  $t4, $zero, 0x80009DF4
80009DA0: lw    $a1, 0x0040 ($sp)
80009DA4: jal   0x80013054
80009DA8: nop
80009DAC: beq   $zero, $zero, 0x80009DF4
80009DB0: lw    $a1, 0x0040 ($sp)
80009DB4: jal   0x80013854
80009DB8: lw    $a0, 0x0040 ($sp)
80009DBC: beq   $zero, $zero, 0x80009DF4
80009DC0: lw    $a1, 0x0040 ($sp)
80009DC4: jal   0x800148C4
80009DC8: lw    $a1, 0x0040 ($sp)
80009DCC: lw    $a0, 0x00D0 ($sp)
80009DD0: jal   0x80014A18
80009DD4: lw    $a1, 0x0040 ($sp)
80009DD8: lw    $a0, 0x00D0 ($sp)
80009DDC: jal   0x80014B6C
80009DE0: lw    $a1, 0x0040 ($sp)
80009DE4: lw    $a0, 0x00D0 ($sp)
80009DE8: jal   0x80014CC0
80009DEC: lw    $a1, 0x0040 ($sp)
80009DF0: lw    $a1, 0x0040 ($sp)
80009DF4: lui   $at, 0xFFBF
80009DF8: lhu   $t5, 0x0000 ($a1)
80009DFC: andi  $t6, $t5, 0x0800
80009E00: beq   $t6, $zero, 0x80009E24
80009E04: nop
80009E08: lw    $t7, 0x00BC ($a1)
80009E0C: lh    $t9, 0x0044 ($a1)
80009E10: ori   $at, $at, 0xFFFF
80009E14: and   $t8, $t7, $at
80009E18: andi  $t2, $t9, 0xFFFE
80009E1C: sw    $t8, 0x00BC ($a1)
80009E20: sh    $t2, 0x0044 ($a1)
80009E24: jal   0x8000929C
80009E28: lw    $a0, 0x00D0 ($sp)
80009E2C: lui   $t3, 0x800E
80009E30: lh    $t3, 0xC5A0 ($t3)
80009E34: addiu $at, $zero, 0x0014
80009E38: lw    $t4, 0x0034 ($sp)
80009E3C: beq   $t3, $at, 0x80009E6C
80009E40: lui   $t5, 0x8016
80009E44: addu  $t5, $t5, $t4
80009E48: lhu   $t5, 0x3240 ($t5)
80009E4C: addiu $at, $zero, 0x0001
80009E50: lw    $t6, 0x00D0 ($sp)
80009E54: beq   $t5, $at, 0x80009E64
80009E58: nop
80009E5C: bnel  $t6, $zero, 0x80009E70
80009E60: lw    $t7, 0x0040 ($sp)
80009E64: jal   SetPlaces
80009E68: nop
80009E6C: lw    $t7, 0x0040 ($sp)
80009E70: lui   $t2, 0x8016
80009E74: lhu   $t8, 0x0000 ($t7)
80009E78: andi  $t9, $t8, 0x1000
80009E7C: beql  $t9, $zero, 0x8000B134
80009E80: lw    $ra, 0x0014 ($sp)
80009E84: lh    $t2, 0x30E2 ($t2)
80009E88: addiu $at, $zero, 0x0001
80009E8C: bne   $t2, $at, 0x80009EAC
80009E90: lui   $t3, 0x800E
80009E94: lh    $t3, 0xC5A0 ($t3)
80009E98: addiu $at, $zero, 0x0014
80009E9C: beq   $t3, $at, 0x80009EAC
80009EA0: nop
80009EA4: jal   0x80011E38
80009EA8: lw    $a0, 0x00D0 ($sp)
80009EAC: lui   $t6, 0x8016
80009EB0: lw    $t6, 0x3378 ($t6)
80009EB4: lw    $t4, 0x00D0 ($sp)
80009EB8: andi  $t7, $t6, 0x0001
80009EBC: andi  $t5, $t4, 0x0001
80009EC0: beq   $t7, $t5, 0x80009ED0
80009EC4: sw    $t5, 0x0030 ($sp)
80009EC8: jal   0x8001AC10
80009ECC: or    $a0, $t4, $zero
80009ED0: lw    $a0, 0x00D0 ($sp)
80009ED4: jal   0x800099EC
80009ED8: lw    $a1, 0x0040 ($sp)
80009EDC: lui   $v0, 0x800E
80009EE0: lw    $v0, 0xC53C ($v0)
80009EE4: lui   $at, 0x8016
80009EE8: sh    $zero, 0x2FD0 ($at)
80009EEC: beq   $v0, $zero, 0x80009F18
80009EF0: lw    $t0, 0x0034 ($sp)
80009EF4: addiu $t1, $zero, 0x0001
80009EF8: beq   $v0, $t1, 0x80009F1C
80009EFC: addiu $at, $zero, 0x0002
80009F00: beq   $v0, $at, 0x80009F1C
80009F04: addiu $at, $zero, 0x0003
80009F08: beq   $v0, $at, 0x80009F1C
80009F0C: nop
80009F10: beq   $zero, $zero, 0x80009F1C
80009F14: nop
80009F18: addiu $t1, $zero, 0x0001
80009F1C: lui   $t8, 0x8016
80009F20: lw    $t9, 0x0040 ($sp)
80009F24: addiu $t8, $t8, 0x31E0
80009F28: addu  $a1, $t0, $t8
80009F2C: sh    $zero, 0x0000 ($a1)
80009F30: lw    $t2, 0x00BC ($t9)
80009F34: lui   $t6, 0x800E
80009F38: lui   $t5, 0x8016
80009F3C: andi  $t3, $t2, 0x1000
80009F40: beq   $t3, $zero, 0x80009F60
80009F44: nop
80009F48: lh    $t6, 0xC5A0 ($t6)
80009F4C: addiu $at, $zero, 0x0014
80009F50: addiu $t7, $zero, 0x0001
80009F54: beq   $t6, $at, 0x80009F60
80009F58: nop
80009F5C: sh    $t7, 0x0000 ($a1)
80009F60: lhu   $t5, 0x46CC ($t5)
80009F64: lui   $v0, 0x800E
80009F68: lh    $v0, 0xC5A0 ($v0)
80009F6C: beq   $t1, $t5, 0x80009F8C
80009F70: lw    $t4, 0x0040 ($sp)
80009F74: lhu   $t8, 0x0000 ($t4)
80009F78: addiu $at, $zero, 0x0014
80009F7C: andi  $t9, $t8, 0x0800
80009F80: bnel  $t9, $zero, 0x80009F90
80009F84: addiu $at, $zero, 0x000A
80009F88: bne   $v0, $at, 0x80009FC4
80009F8C: addiu $at, $zero, 0x000A
80009F90: beq   $v0, $at, 0x80009FAC
80009F94: lw    $t2, 0x00D0 ($sp)
80009F98: mtc1  $zero, F16
80009F9C: sll   $t3, $t2, 0x4
80009FA0: lui   $at, 0x8016
80009FA4: addu  $at, $at, $t3
80009FA8: swc1  F16, 0x34FC ($at)
80009FAC: lw    $t6, 0x00D0 ($sp)
80009FB0: mtc1  $zero, F18
80009FB4: lui   $at, 0x8016
80009FB8: sll   $t7, $t6, 0x4
80009FBC: addu  $at, $at, $t7
80009FC0: swc1  F18, 0x3504 ($at)
80009FC4: lui   $v0, 0x8016
80009FC8: lw    $v0, 0x3448 ($v0)
80009FCC: lui   $t2, 0x8016
80009FD0: addiu $t2, $t2, 0x4510
80009FD4: blez  $v0, 0x8000A000
80009FD8: lui   $t3, 0x8016
80009FDC: lw    $t5, 0x00D0 ($sp)
80009FE0: lui   $t8, 0x8016
80009FE4: mtc1  $zero, F4
80009FE8: mtc1  $zero, F6
80009FEC: addiu $t8, $t8, 0x34F8
80009FF0: sll   $t4, $t5, 0x4
80009FF4: addu  $v1, $t4, $t8
80009FF8: swc1  F4, 0x0004 ($v1)
80009FFC: swc1  F6, 0x000C ($v1)
8000A000: addiu $t3, $t3, 0x4438
8000A004: addu  $t6, $t0, $t3
8000A008: lw    $t9, 0x0038 ($sp)
8000A00C: sw    $t6, 0x0024 ($sp)
8000A010: sll   $t7, $v0, 0x2
8000A014: lui   $t5, 0x8016
8000A018: lhu   $t8, 0x0000 ($t6)
8000A01C: addu  $t5, $t5, $t7
8000A020: lw    $t5, 0x4550 ($t5)
8000A024: addu  $a2, $t9, $t2
8000A028: sll   $t9, $t8, 0x3
8000A02C: addu  $t2, $t5, $t9
8000A030: lh    $t3, 0x0002 ($t2)
8000A034: lui   $at, 0x800F
8000A038: lwc1  F16, 0xCFB0 ($at)
8000A03C: mtc1  $t3, F8
8000A040: lui   $t6, 0x8016
8000A044: addiu $t6, $t6, 0x31F8
8000A048: cvt.s.w F10, F8
8000A04C: addu  $a3, $t0, $t6
8000A050: lhu   $t7, 0x0000 ($a3)
8000A054: add.s F18, F10, F16
8000A058: bne   $t1, $t7, 0x8000A094
8000A05C: swc1  F18, 0x0000 ($a2)
8000A060: lhu   $t4, 0x0000 ($a1)
8000A064: lw    $a0, 0x0040 ($sp)
8000A068: bnel  $t4, $zero, 0x8000A098
8000A06C: lhu   $v1, 0x0000 ($a1)
8000A070: sw    $a1, 0x002C ($sp)
8000A074: sw    $a2, 0x0028 ($sp)
8000A078: jal   0x8002E4C4
8000A07C: sw    $a3, 0x0020 ($sp)
8000A080: lw    $a1, 0x002C ($sp)
8000A084: lw    $a2, 0x0028 ($sp)
8000A088: lw    $a3, 0x0020 ($sp)
8000A08C: addiu $t1, $zero, 0x0001
8000A090: lw    $t0, 0x0034 ($sp)
8000A094: lhu   $v1, 0x0000 ($a1)
8000A098: lw    $t8, 0x0040 ($sp)
8000A09C: lui   $v0, 0x800E
8000A0A0: bnel  $t1, $v1, 0x8000A0B8
8000A0A4: sh    $v1, 0x0000 ($a3)
8000A0A8: lwc1  F4, 0x0000 ($a2)
8000A0AC: swc1  F4, 0x0018 ($t8)
8000A0B0: lhu   $v1, 0x0000 ($a1)
8000A0B4: sh    $v1, 0x0000 ($a3)
8000A0B8: lh    $v0, 0xC5A0 ($v0)
8000A0BC: lw    $t5, 0x00D0 ($sp)
8000A0C0: addiu $at, $zero, 0x0004
8000A0C4: beq   $v0, $at, 0x8000A0EC
8000A0C8: sll   $t9, $t5, 0x4
8000A0CC: addiu $at, $zero, 0x000A
8000A0D0: beq   $v0, $at, 0x8000A104
8000A0D4: lw    $a0, 0x00D0 ($sp)
8000A0D8: addiu $at, $zero, 0x0014
8000A0DC: beq   $v0, $at, 0x8000A0F0
8000A0E0: or    $a0, $v1, $zero
8000A0E4: beq   $zero, $zero, 0x8000A134
8000A0E8: nop
8000A0EC: or    $a0, $v1, $zero
8000A0F0: mtc1  $zero, F6
8000A0F4: lui   $at, 0x8016
8000A0F8: addu  $at, $at, $t9
8000A0FC: beq   $zero, $zero, 0x8000A134
8000A100: swc1  F6, 0x34FC ($at)
8000A104: jal   0x8001490C
8000A108: sw    $a1, 0x002C ($sp)
8000A10C: jal   0x80014A60
8000A110: lw    $a0, 0x00D0 ($sp)
8000A114: jal   0x80014BB4
8000A118: lw    $a0, 0x00D0 ($sp)
8000A11C: jal   0x80014D08
8000A120: lw    $a0, 0x00D0 ($sp)
8000A124: lw    $a1, 0x002C ($sp)
8000A128: addiu $t1, $zero, 0x0001
8000A12C: lw    $t0, 0x0034 ($sp)
8000A130: lhu   $a0, 0x0000 ($a1)
8000A134: bne   $t1, $a0, 0x8000A530
8000A138: lui   $t4, 0x8016
8000A13C: lw    $t2, 0x0040 ($sp)
8000A140: lui   $at, 0x8016
8000A144: addu  $at, $at, $t0
8000A148: sh    $zero, 0x30E8 ($at)
8000A14C: lw    $t3, 0x00BC ($t2)
8000A150: addiu $at, $zero, 0xFFEF
8000A154: lui   $t7, 0x8016
8000A158: and   $t6, $t3, $at
8000A15C: sw    $t6, 0x00BC ($t2)
8000A160: lw    $t7, 0x3378 ($t7)
8000A164: lw    $t8, 0x0030 ($sp)
8000A168: lui   $v0, 0x8019
8000A16C: andi  $t4, $t7, 0x0001
8000A170: beq   $t4, $t8, 0x8000A1A4
8000A174: or    $a0, $t2, $zero
8000A178: jal   0x8003680C
8000A17C: or    $a1, $zero, $zero
8000A180: lw    $t5, 0x0038 ($sp)
8000A184: lui   $a1, 0x8016
8000A188: lw    $a0, 0x00D0 ($sp)
8000A18C: addu  $a1, $a1, $t5
8000A190: lw    $a1, 0x3210 ($a1)
8000A194: jal   0x80008424
8000A198: lw    $a2, 0x0040 ($sp)
8000A19C: beq   $zero, $zero, 0x8000B134
8000A1A0: lw    $ra, 0x0014 ($sp)
8000A1A4: lb    $v0, 0xEDF3 ($v0)
8000A1A8: blez  $v0, 0x8000A204
8000A1AC: slti  $at, $v0, 0x0003
8000A1B0: beq   $at, $zero, 0x8000A204
8000A1B4: lui   $t9, 0x8016
8000A1B8: addu  $t9, $t9, $t0
8000A1BC: lhu   $t9, 0x3330 ($t9)
8000A1C0: lui   $t3, 0x8016
8000A1C4: addu  $t3, $t3, $t0
8000A1C8: bne   $t1, $t9, 0x8000A204
8000A1CC: lw    $t6, 0x0038 ($sp)
8000A1D0: lui   $t7, 0x8016
8000A1D4: addu  $t7, $t7, $t6
8000A1D8: lw    $t7, 0x43B8 ($t7)
8000A1DC: lhu   $t3, 0x334C ($t3)
8000A1E0: lui   $t4, 0x8016
8000A1E4: addiu $t4, $t4, 0x3210
8000A1E8: slt   $at, $t3, $t7
8000A1EC: beq   $at, $zero, 0x8000A204
8000A1F0: lui   $at, 0x800F
8000A1F4: lwc1  F8, 0xCFB4 ($at)
8000A1F8: addu  $t0, $t6, $t4
8000A1FC: beq   $zero, $zero, 0x8000A32C
8000A200: swc1  F8, 0x0000 ($t0)
8000A204: lui   $t8, 0x8016
8000A208: lh    $t8, 0x2FD0 ($t8)
8000A20C: bne   $t1, $t8, 0x8000A280
8000A210: lui   $t2, 0x800E
8000A214: lh    $t2, 0xC5A0 ($t2)
8000A218: lui   $t9, 0x800E
8000A21C: lw    $t9, 0xC548 ($t9)
8000A220: lw    $t4, 0x00D0 ($sp)
8000A224: sll   $t5, $t2, 0x4
8000A228: lui   $t2, 0x8016
8000A22C: addiu $t2, $t2, 0x34F8
8000A230: lui   $t6, 0x0D01
8000A234: sll   $t3, $t9, 0x2
8000A238: sll   $t8, $t4, 0x4
8000A23C: addu  $v1, $t8, $t2
8000A240: addu  $t7, $t5, $t3
8000A244: addiu $t6, $t6, 0x96B8
8000A248: addu  $a0, $t7, $t6
8000A24C: jal   SegmentedToVirtualDupe
8000A250: sw    $v1, 0x0030 ($sp)
8000A254: lw    $t9, 0x0038 ($sp)
8000A258: lui   $t5, 0x8016
8000A25C: lui   $at, 0xBF00
8000A260: lw    $v1, 0x0030 ($sp)
8000A264: lwc1  F10, 0x0000 ($v0)
8000A268: mtc1  $at, F16
8000A26C: addiu $t5, $t5, 0x3210
8000A270: addu  $t0, $t9, $t5
8000A274: swc1  F10, 0x0000 ($t0)
8000A278: beq   $zero, $zero, 0x8000A32C
8000A27C: swc1  F16, 0x0004 ($v1)
8000A280: lui   $t7, 0x8016
8000A284: lh    $t7, 0x2FCE ($t7)
8000A288: lui   $t3, 0x8016
8000A28C: lw    $t3, 0x45E0 ($t3)
8000A290: sll   $t6, $t7, 0x1
8000A294: addu  $t4, $t3, $t6
8000A298: lh    $t8, 0x0000 ($t4)
8000A29C: blez  $t8, 0x8000A2E8
8000A2A0: lui   $t2, 0x800E
8000A2A4: lui   $t5, 0x800E
8000A2A8: lw    $t5, 0xC548 ($t5)
8000A2AC: lh    $t2, 0xC5A0 ($t2)
8000A2B0: lui   $t6, 0x0D01
8000A2B4: sll   $t7, $t5, 0x2
8000A2B8: sll   $t9, $t2, 0x4
8000A2BC: addu  $t3, $t9, $t7
8000A2C0: addiu $t6, $t6, 0x9418
8000A2C4: jal   SegmentedToVirtualDupe
8000A2C8: addu  $a0, $t3, $t6
8000A2CC: lw    $t4, 0x0038 ($sp)
8000A2D0: lui   $t8, 0x8016
8000A2D4: lwc1  F18, 0x0000 ($v0)
8000A2D8: addiu $t8, $t8, 0x3210
8000A2DC: addu  $t0, $t4, $t8
8000A2E0: beq   $zero, $zero, 0x8000A32C
8000A2E4: swc1  F18, 0x0000 ($t0)
8000A2E8: lui   $t2, 0x800E
8000A2EC: lui   $t9, 0x800E
8000A2F0: lw    $t9, 0xC548 ($t9)
8000A2F4: lh    $t2, 0xC5A0 ($t2)
8000A2F8: lui   $t6, 0x0D01
8000A2FC: sll   $t7, $t9, 0x2
8000A300: sll   $t5, $t2, 0x4
8000A304: addu  $t3, $t5, $t7
8000A308: addiu $t6, $t6, 0x9568
8000A30C: jal   SegmentedToVirtualDupe
8000A310: addu  $a0, $t3, $t6
8000A314: lw    $t4, 0x0038 ($sp)
8000A318: lwc1  F4, 0x0000 ($v0)
8000A31C: lui   $t8, 0x8016
8000A320: addiu $t8, $t8, 0x3210
8000A324: addu  $t0, $t4, $t8
8000A328: swc1  F4, 0x0000 ($t0)
8000A32C: lw    $a0, 0x00D0 ($sp)
8000A330: jal   0x800131DC
8000A334: sw    $t0, 0x003C ($sp)
8000A338: jal   0x8000D3B8
8000A33C: lw    $a0, 0x00D0 ($sp)
8000A340: lui   $a1, 0x8016
8000A344: lhu   $a1, 0x30E0 ($a1)
8000A348: jal   0x8000D438
8000A34C: lw    $a0, 0x00D0 ($sp)
8000A350: lw    $a2, 0x0040 ($sp)
8000A354: lui   $a3, 0x8016
8000A358: addiu $a3, $a3, 0x2FA0
8000A35C: lw    $v0, 0x00BC ($a2)
8000A360: lwc1  F8, 0x0000 ($a3)
8000A364: lwc1  F10, 0x0008 ($a3)
8000A368: lwc1  F6, 0x0014 ($a2)
8000A36C: lwc1  F16, 0x001C ($a2)
8000A370: andi  $t2, $v0, 0x0080
8000A374: sub.s F0, F8, F6
8000A378: lw    $t0, 0x003C ($sp)
8000A37C: bnez  $t2, 0x8000A504
8000A380: sub.s F2, F10, F16
8000A384: andi  $t9, $v0, 0x0040
8000A388: bnez  $t9, 0x8000A504
8000A38C: andi  $t5, $v0, 0x0800
8000A390: bnel  $t5, $zero, 0x8000A508
8000A394: or    $a0, $a2, $zero
8000A398: mul.s F4, F0, F0
8000A39C: lui   $at, 0x45C8
8000A3A0: mtc1  $at, F18
8000A3A4: mul.s F6, F2, F2
8000A3A8: lui   $t3, 0x8016
8000A3AC: lui   $t4, 0x8016
8000A3B0: lui   $t9, 0x8016
8000A3B4: lui   $t7, 0x8016
8000A3B8: add.s F8, F4, F6
8000A3BC: c.lt.s F18, F8
8000A3C0: nop
8000A3C4: bc1f  0x8000A4AC
8000A3C8: nop
8000A3CC: lui   $t7, 0x8016
8000A3D0: lw    $t7, 0x3448 ($t7)
8000A3D4: lw    $a0, 0x00D0 ($sp)
8000A3D8: bnel  $t7, $zero, 0x8000A488
8000A3DC: lw    $a2, 0x0040 ($sp)
8000A3E0: jal   0x8000B140
8000A3E4: sw    $t0, 0x003C ($sp)
8000A3E8: lw    $t3, 0x0034 ($sp)
8000A3EC: lui   $t6, 0x8016
8000A3F0: lui   $a3, 0x8016
8000A3F4: addu  $t6, $t6, $t3
8000A3F8: lh    $t6, 0x2FF8 ($t6)
8000A3FC: addiu $a3, $a3, 0x2FA0
8000A400: lw    $t0, 0x003C ($sp)
8000A404: blez  $t6, 0x8000A484
8000A408: lui   $a0, 0x8016
8000A40C: lhu   $a0, 0x30E0 ($a0)
8000A410: lui   $t8, 0x8016
8000A414: lhu   $t8, 0x4430 ($t8)
8000A418: addiu $a0, $a0, 0x0005
8000A41C: andi  $t4, $a0, 0xFFFF
8000A420: div   $t4, $t8
8000A424: or    $a0, $t4, $zero
8000A428: lw    $t9, 0x0038 ($sp)
8000A42C: bnez  $t8, 0x8000A438
8000A430: nop
8000A434: break
8000A438: addiu $at, $zero, 0xFFFF
8000A43C: bne   $t8, $at, 0x8000A450
8000A440: lui   $at, 0x8000
8000A444: bne   $a0, $at, 0x8000A450
8000A448: nop
8000A44C: break
8000A450: mfhi  $a0
8000A454: lui   $a1, 0x8016
8000A458: andi  $t2, $a0, 0xFFFF
8000A45C: lui   $a2, 0x8016
8000A460: addu  $a1, $a1, $t9
8000A464: or    $a0, $t2, $zero
8000A468: lw    $a1, 0x3090 ($a1)
8000A46C: lh    $a2, 0x344A ($a2)
8000A470: jal   0x8000BBD8
8000A474: sw    $t0, 0x003C ($sp)
8000A478: lui   $a3, 0x8016
8000A47C: addiu $a3, $a3, 0x2FA0
8000A480: lw    $t0, 0x003C ($sp)
8000A484: lw    $a2, 0x0040 ($sp)
8000A488: or    $a1, $a3, $zero
8000A48C: sw    $t0, 0x003C ($sp)
8000A490: jal   0x802B5224
8000A494: addiu $a0, $a2, 0x0014
8000A498: lw    $a2, 0x0040 ($sp)
8000A49C: lw    $t0, 0x003C ($sp)
8000A4A0: subu  $t5, $zero, $v0
8000A4A4: beq   $zero, $zero, 0x8000A504
8000A4A8: sh    $t5, 0x002E ($a2)
8000A4AC: lhu   $t3, 0x30E0 ($t3)
8000A4B0: lhu   $t4, 0x4430 ($t4)
8000A4B4: lw    $t9, 0x3448 ($t9)
8000A4B8: addiu $t6, $t3, 0x0004
8000A4BC: div   $t6, $t4
8000A4C0: sll   $t5, $t9, 0x2
8000A4C4: addu  $t7, $t7, $t5
8000A4C8: lw    $t7, 0x4590 ($t7)
8000A4CC: mfhi  $t8
8000A4D0: sll   $t2, $t8, 0x1
8000A4D4: bnez  $t4, 0x8000A4E0
8000A4D8: nop
8000A4DC: break
8000A4E0: addiu $at, $zero, 0xFFFF
8000A4E4: bne   $t4, $at, 0x8000A4F8
8000A4E8: lui   $at, 0x8000
8000A4EC: bne   $t6, $at, 0x8000A4F8
8000A4F0: nop
8000A4F4: break
8000A4F8: addu  $t3, $t7, $t2
8000A4FC: lh    $t6, 0x0000 ($t3)
8000A500: sh    $t6, 0x002E ($a2)
8000A504: or    $a0, $a2, $zero
8000A508: or    $a1, $zero, $zero
8000A50C: jal   0x8003680C
8000A510: sw    $t0, 0x003C ($sp)
8000A514: lw    $t0, 0x003C ($sp)
8000A518: lw    $a0, 0x00D0 ($sp)
8000A51C: lw    $a2, 0x0040 ($sp)
8000A520: jal   0x80008424
8000A524: lw    $a1, 0x0000 ($t0)
8000A528: beq   $zero, $zero, 0x8000B134
8000A52C: lw    $ra, 0x0014 ($sp)
8000A530: addiu $t4, $t4, 0x30E8
8000A534: addu  $t8, $t0, $t4
8000A538: sw    $t8, 0x002C ($sp)
8000A53C: lh    $v0, 0x0000 ($t8)
8000A540: addiu $at, $zero, 0xFFFF
8000A544: lw    $t5, 0x0040 ($sp)
8000A548: beql  $t1, $v0, 0x8000A55C
8000A54C: lw    $t7, 0x00BC ($t5)
8000A550: bne   $v0, $at, 0x8000A56C
8000A554: nop
8000A558: lw    $t7, 0x00BC ($t5)
8000A55C: ori   $t2, $t7, 0x0010
8000A560: sw    $t2, 0x00BC ($t5)
8000A564: lw    $t3, 0x002C ($sp)
8000A568: lh    $v0, 0x0000 ($t3)
8000A56C: beq   $v0, $zero, 0x8000A798
8000A570: lw    $t6, 0x0040 ($sp)
8000A574: addiu $a0, $t6, 0x0020
8000A578: jal   0x802B5224
8000A57C: addiu $a1, $t6, 0x0014
8000A580: lw    $t4, 0x0034 ($sp)
8000A584: lui   $t8, 0x8016
8000A588: addiu $t8, $t8, 0x3300
8000A58C: subu  $t9, $zero, $v0
8000A590: addu  $v1, $t4, $t8
8000A594: sh    $t9, 0x0000 ($v1)
8000A598: lui   $t7, 0x8016
8000A59C: lh    $t7, 0x2FCE ($t7)
8000A5A0: lui   $t5, 0x8016
8000A5A4: lhu   $t5, 0x4430 ($t5)
8000A5A8: addiu $t2, $t7, 0x0002
8000A5AC: lui   $t4, 0x8016
8000A5B0: div   $t2, $t5
8000A5B4: lw    $t4, 0x31DC ($t4)
8000A5B8: mfhi  $t3
8000A5BC: sll   $t6, $t3, 0x1
8000A5C0: addu  $t8, $t4, $t6
8000A5C4: lh    $t9, 0x0000 ($t8)
8000A5C8: addiu $a2, $zero, 0x0168
8000A5CC: ori   $a3, $zero, 0xFFFF
8000A5D0: multu $t9, $a2
8000A5D4: lh    $t3, 0x0000 ($v1)
8000A5D8: bnez  $t5, 0x8000A5E4
8000A5DC: nop
8000A5E0: break
8000A5E4: addiu $at, $zero, 0xFFFF
8000A5E8: bne   $t5, $at, 0x8000A5FC
8000A5EC: lui   $at, 0x8000
8000A5F0: bne   $t2, $at, 0x8000A5FC
8000A5F4: nop
8000A5F8: break
8000A5FC: mflo  $t7
8000A600: nop
8000A604: nop
8000A608: div   $t7, $a3
8000A60C: mflo  $a0
8000A610: sll   $t2, $a0, 0x10
8000A614: bnez  $a3, 0x8000A620
8000A618: nop
8000A61C: break
8000A620: addiu $at, $zero, 0xFFFF
8000A624: bne   $a3, $at, 0x8000A638
8000A628: lui   $at, 0x8000
8000A62C: bne   $t7, $at, 0x8000A638
8000A630: nop
8000A634: break
8000A638: multu $t3, $a2
8000A63C: sra   $t5, $t2, 0x10
8000A640: or    $a0, $t5, $zero
8000A644: mflo  $t4
8000A648: nop
8000A64C: nop
8000A650: div   $t4, $a3
8000A654: bnez  $a3, 0x8000A660
8000A658: nop
8000A65C: break
8000A660: addiu $at, $zero, 0xFFFF
8000A664: bne   $a3, $at, 0x8000A678
8000A668: lui   $at, 0x8000
8000A66C: bne   $t4, $at, 0x8000A678
8000A670: nop
8000A674: break
8000A678: mflo  $a1
8000A67C: sll   $t6, $a1, 0x10
8000A680: sra   $t8, $t6, 0x10
8000A684: slti  $at, $a0, 0xFF4C
8000A688: beq   $at, $zero, 0x8000A69C
8000A68C: or    $a1, $t8, $zero
8000A690: addiu $a0, $a0, 0x0168
8000A694: sll   $t9, $a0, 0x10
8000A698: sra   $a0, $t9, 0x10
8000A69C: slti  $at, $a0, 0x00B5
8000A6A0: bnel  $at, $zero, 0x8000A6B8
8000A6A4: slti  $at, $a1, 0xFF4C
8000A6A8: addiu $a0, $a0, 0xFE98
8000A6AC: sll   $t2, $a0, 0x10
8000A6B0: sra   $a0, $t2, 0x10
8000A6B4: slti  $at, $a1, 0xFF4C
8000A6B8: beql  $at, $zero, 0x8000A6D0
8000A6BC: slti  $at, $a1, 0x00B5
8000A6C0: addiu $a1, $a1, 0x0168
8000A6C4: sll   $t3, $a1, 0x10
8000A6C8: sra   $a1, $t3, 0x10
8000A6CC: slti  $at, $a1, 0x00B5
8000A6D0: bnel  $at, $zero, 0x8000A6E8
8000A6D4: subu  $v0, $a0, $a1
8000A6D8: addiu $a1, $a1, 0xFE98
8000A6DC: sll   $t6, $a1, 0x10
8000A6E0: sra   $a1, $t6, 0x10
8000A6E4: subu  $v0, $a0, $a1
8000A6E8: sll   $a2, $v0, 0x10
8000A6EC: sll   $v1, $v0, 0x10
8000A6F0: sra   $t7, $a2, 0x10
8000A6F4: sra   $t9, $v1, 0x10
8000A6F8: slti  $at, $t7, 0xFF4C
8000A6FC: beq   $at, $zero, 0x8000A710
8000A700: or    $v1, $t9, $zero
8000A704: addiu $v1, $t7, 0x0168
8000A708: sll   $t2, $v1, 0x10
8000A70C: sra   $v1, $t2, 0x10
8000A710: slti  $at, $v1, 0x00B5
8000A714: bnez  $at, 0x8000A728
8000A718: lw    $a0, 0x002C ($sp)
8000A71C: addiu $v1, $v1, 0xFE98
8000A720: sll   $t3, $v1, 0x10
8000A724: sra   $v1, $t3, 0x10
8000A728: lh    $v0, 0x0000 ($a0)
8000A72C: addiu $at, $zero, 0xFFFF
8000A730: beq   $v0, $at, 0x8000A748
8000A734: addiu $at, $zero, 0x0001
8000A738: beql  $v0, $at, 0x8000A778
8000A73C: slti  $at, $v1, 0xFFFB
8000A740: beq   $zero, $zero, 0x8000A798
8000A744: nop
8000A748: slti  $at, $v1, 0x0006
8000A74C: bnez  $at, 0x8000A76C
8000A750: nop
8000A754: lw    $t6, 0x0040 ($sp)
8000A758: sh    $zero, 0x0000 ($a0)
8000A75C: addiu $at, $zero, 0xFFEF
8000A760: lw    $t8, 0x00BC ($t6)
8000A764: and   $t9, $t8, $at
8000A768: sw    $t9, 0x00BC ($t6)
8000A76C: beq   $zero, $zero, 0x8000A798
8000A770: nop
8000A774: slti  $at, $v1, 0xFFFB
8000A778: beq   $at, $zero, 0x8000A798
8000A77C: nop
8000A780: lw    $t7, 0x0040 ($sp)
8000A784: sh    $zero, 0x0000 ($a0)
8000A788: addiu $at, $zero, 0xFFEF
8000A78C: lw    $t2, 0x00BC ($t7)
8000A790: and   $t5, $t2, $at
8000A794: sw    $t5, 0x00BC ($t7)
8000A798: lui   $t3, 0x8016
8000A79C: lw    $t3, 0x3378 ($t3)
8000A7A0: lw    $t8, 0x0030 ($sp)
8000A7A4: lw    $a0, 0x00D0 ($sp)
8000A7A8: andi  $t4, $t3, 0x0001
8000A7AC: beq   $t4, $t8, 0x8000A7F0
8000A7B0: lw    $t2, 0x0040 ($sp)
8000A7B4: lw    $t9, 0x0034 ($sp)
8000A7B8: lui   $a1, 0x8016
8000A7BC: lw    $a0, 0x0040 ($sp)
8000A7C0: addu  $a1, $a1, $t9
8000A7C4: jal   0x8003680C
8000A7C8: lh    $a1, 0x3050 ($a1)
8000A7CC: lw    $t6, 0x0038 ($sp)
8000A7D0: lui   $a1, 0x8016
8000A7D4: lw    $a0, 0x00D0 ($sp)
8000A7D8: addu  $a1, $a1, $t6
8000A7DC: lw    $a1, 0x3210 ($a1)
8000A7E0: jal   0x80008424
8000A7E4: lw    $a2, 0x0040 ($sp)
8000A7E8: beq   $zero, $zero, 0x8000B134
8000A7EC: lw    $ra, 0x0014 ($sp)
8000A7F0: lui   $a1, 0x8016
8000A7F4: addiu $t5, $t2, 0x0014
8000A7F8: sw    $t5, 0x001C ($sp)
8000A7FC: jal   0x8000B7E4
8000A800: lhu   $a1, 0x2FCE ($a1)
8000A804: lw    $t7, 0x0038 ($sp)
8000A808: lui   $t3, 0x8016
8000A80C: addiu $t3, $t3, 0x30B8
8000A810: addu  $v1, $t7, $t3
8000A814: sw    $v0, 0x0000 ($v1)
8000A818: lui   $a1, 0x8016
8000A81C: lhu   $a1, 0x2FCE ($a1)
8000A820: sw    $v1, 0x0028 ($sp)
8000A824: jal   0x8000D438
8000A828: lw    $a0, 0x00D0 ($sp)
8000A82C: lui   $v0, 0x800E
8000A830: lh    $v0, 0xC5A0 ($v0)
8000A834: addiu $at, $zero, 0x0014
8000A838: lw    $t1, 0x0038 ($sp)
8000A83C: beq   $v0, $at, 0x8000AAA4
8000A840: nop
8000A844: lui   $a1, 0x8016
8000A848: addu  $a1, $a1, $t1
8000A84C: lw    $a1, 0x4450 ($a1)
8000A850: lui   $t9, 0x8016
8000A854: addiu $t9, $t9, 0x34F8
8000A858: slti  $at, $a1, 0x000B
8000A85C: beq   $at, $zero, 0x8000A974
8000A860: nop
8000A864: lw    $t4, 0x00D0 ($sp)
8000A868: lui   $a0, 0x8016
8000A86C: lhu   $a0, 0x30E0 ($a0)
8000A870: sll   $t8, $t4, 0x4
8000A874: blez  $a1, 0x8000A8F4
8000A878: addu  $v1, $t8, $t9
8000A87C: addiu $at, $zero, 0x000A
8000A880: bnel  $v0, $at, 0x8000A8F8
8000A884: addiu $a0, $a0, 0x0008
8000A888: addiu $a0, $a0, 0x0014
8000A88C: andi  $t6, $a0, 0xFFFF
8000A890: lui   $t2, 0x8016
8000A894: lhu   $t2, 0x4430 ($t2)
8000A898: or    $a0, $t6, $zero
8000A89C: addiu $a1, $zero, 0x0000
8000A8A0: div   $t6, $t2
8000A8A4: bnez  $t2, 0x8000A8B0
8000A8A8: nop
8000A8AC: break
8000A8B0: addiu $at, $zero, 0xFFFF
8000A8B4: bne   $t2, $at, 0x8000A8C8
8000A8B8: lui   $at, 0x8000
8000A8BC: bne   $a0, $at, 0x8000A8C8
8000A8C0: nop
8000A8C4: break
8000A8C8: mfhi  $a0
8000A8CC: andi  $t5, $a0, 0xFFFF
8000A8D0: or    $a0, $t5, $zero
8000A8D4: or    $a2, $zero, $zero
8000A8D8: jal   0x8000BBD8
8000A8DC: sw    $v1, 0x0030 ($sp)
8000A8E0: lw    $v1, 0x0030 ($sp)
8000A8E4: mtc1  $zero, F10
8000A8E8: lw    $t1, 0x0038 ($sp)
8000A8EC: beq   $zero, $zero, 0x8000A974
8000A8F0: swc1  F10, 0x0004 ($v1)
8000A8F4: addiu $a0, $a0, 0x0008
8000A8F8: andi  $t7, $a0, 0xFFFF
8000A8FC: lui   $t3, 0x8016
8000A900: lhu   $t3, 0x4430 ($t3)
8000A904: or    $a0, $t7, $zero
8000A908: lui   $t8, 0x8016
8000A90C: div   $t7, $t3
8000A910: bnez  $t3, 0x8000A91C
8000A914: nop
8000A918: break
8000A91C: addiu $at, $zero, 0xFFFF
8000A920: bne   $t3, $at, 0x8000A934
8000A924: lui   $at, 0x8000
8000A928: bne   $a0, $at, 0x8000A934
8000A92C: nop
8000A930: break
8000A934: mfhi  $a0
8000A938: addiu $t8, $t8, 0x3068
8000A93C: andi  $t4, $a0, 0xFFFF
8000A940: addu  $t0, $t1, $t8
8000A944: lui   $a2, 0x8016
8000A948: or    $a0, $t4, $zero
8000A94C: lh    $a2, 0x344A ($a2)
8000A950: lw    $a1, 0x0000 ($t0)
8000A954: sw    $t0, 0x0020 ($sp)
8000A958: jal   0x8000BBD8
8000A95C: sw    $v1, 0x0030 ($sp)
8000A960: lw    $t0, 0x0020 ($sp)
8000A964: lw    $v1, 0x0030 ($sp)
8000A968: lw    $t1, 0x0038 ($sp)
8000A96C: lwc1  F16, 0x0000 ($t0)
8000A970: swc1  F16, 0x0000 ($v1)
8000A974: lui   $t9, 0x8016
8000A978: lh    $t9, 0x2FD0 ($t9)
8000A97C: addiu $at, $zero, 0x0001
8000A980: lw    $t6, 0x0034 ($sp)
8000A984: bne   $t9, $at, 0x8000AA00
8000A988: lui   $t2, 0x8016
8000A98C: addu  $t2, $t2, $t6
8000A990: lh    $t2, 0x2FF8 ($t2)
8000A994: lui   $t7, 0x8016
8000A998: bnez  $t2, 0x8000AA00
8000A99C: nop
8000A9A0: lui   $a0, 0x8016
8000A9A4: lhu   $a0, 0x30E0 ($a0)
8000A9A8: lhu   $t7, 0x4430 ($t7)
8000A9AC: lui   $a1, 0xBF33
8000A9B0: addiu $a0, $a0, 0x0007
8000A9B4: andi  $t5, $a0, 0xFFFF
8000A9B8: div   $t5, $t7
8000A9BC: or    $a0, $t5, $zero
8000A9C0: bnez  $t7, 0x8000A9CC
8000A9C4: nop
8000A9C8: break
8000A9CC: addiu $at, $zero, 0xFFFF
8000A9D0: bne   $t7, $at, 0x8000A9E4
8000A9D4: lui   $at, 0x8000
8000A9D8: bne   $a0, $at, 0x8000A9E4
8000A9DC: nop
8000A9E0: break
8000A9E4: mfhi  $a0
8000A9E8: andi  $t3, $a0, 0xFFFF
8000A9EC: lui   $a2, 0x8016
8000A9F0: or    $a0, $t3, $zero
8000A9F4: lh    $a2, 0x344A ($a2)
8000A9F8: jal   0x8000BBD8
8000A9FC: ori   $a1, $a1, 0x3333
8000AA00: lui   $t4, 0x8016
8000AA04: lw    $t4, 0x3448 ($t4)
8000AA08: lui   $t9, 0x8016
8000AA0C: addiu $t9, $t9, 0x2FF8
8000AA10: bnez  $t4, 0x8000AAA4
8000AA14: lw    $t8, 0x0034 ($sp)
8000AA18: addu  $t6, $t8, $t9
8000AA1C: sw    $t6, 0x003C ($sp)
8000AA20: jal   0x8000B140
8000AA24: lw    $a0, 0x00D0 ($sp)
8000AA28: lw    $t2, 0x003C ($sp)
8000AA2C: lui   $t3, 0x8016
8000AA30: lw    $t8, 0x0038 ($sp)
8000AA34: lh    $t5, 0x0000 ($t2)
8000AA38: blez  $t5, 0x8000AAA4
8000AA3C: nop
8000AA40: lui   $a0, 0x8016
8000AA44: lhu   $a0, 0x30E0 ($a0)
8000AA48: lhu   $t3, 0x4430 ($t3)
8000AA4C: lui   $a1, 0x8016
8000AA50: addiu $a0, $a0, 0x0005
8000AA54: andi  $t7, $a0, 0xFFFF
8000AA58: div   $t7, $t3
8000AA5C: or    $a0, $t7, $zero
8000AA60: bnez  $t3, 0x8000AA6C
8000AA64: nop
8000AA68: break
8000AA6C: addiu $at, $zero, 0xFFFF
8000AA70: bne   $t3, $at, 0x8000AA84
8000AA74: lui   $at, 0x8000
8000AA78: bne   $a0, $at, 0x8000AA84
8000AA7C: nop
8000AA80: break
8000AA84: mfhi  $a0
8000AA88: andi  $t4, $a0, 0xFFFF
8000AA8C: addu  $a1, $a1, $t8
8000AA90: lui   $a2, 0x8016
8000AA94: or    $a0, $t4, $zero
8000AA98: lh    $a2, 0x344A ($a2)
8000AA9C: jal   0x8000BBD8
8000AAA0: lw    $a1, 0x3090 ($a1)
8000AAA4: lui   $t6, 0x800E
8000AAA8: lh    $t6, 0xC5A0 ($t6)
8000AAAC: lw    $t1, 0x0038 ($sp)
8000AAB0: lui   $t9, 0x8016
8000AAB4: addiu $t9, $t9, 0x3068
8000AAB8: addiu $at, $zero, 0x0014
8000AABC: bne   $t6, $at, 0x8000ABA0
8000AAC0: addu  $t0, $t1, $t9
8000AAC4: lw    $t2, 0x0034 ($sp)
8000AAC8: lui   $v0, 0x8016
8000AACC: addiu $at, $zero, 0x0003
8000AAD0: addu  $v0, $v0, $t2
8000AAD4: lh    $v0, 0x3410 ($v0)
8000AAD8: lui   $a3, 0x8016
8000AADC: addiu $a3, $a3, 0x2FA0
8000AAE0: beq   $v0, $at, 0x8000AAF8
8000AAE4: addiu $at, $zero, 0x0004
8000AAE8: beq   $v0, $at, 0x8000AB1C
8000AAEC: lw    $t5, 0x0024 ($sp)
8000AAF0: beq   $zero, $zero, 0x8000ABA0
8000AAF4: nop
8000AAF8: lui   $at, 0x8016
8000AAFC: addu  $at, $at, $t1
8000AB00: lwc1  F4, 0x3418 ($at)
8000AB04: lui   $at, 0x8016
8000AB08: addu  $at, $at, $t1
8000AB0C: swc1  F4, 0x0000 ($a3)
8000AB10: lwc1  F6, 0x3438 ($at)
8000AB14: beq   $zero, $zero, 0x8000ABA0
8000AB18: swc1  F6, 0x0008 ($a3)
8000AB1C: lw    $t4, 0x0034 ($sp)
8000AB20: lui   $t8, 0x8016
8000AB24: lhu   $t7, 0x0000 ($t5)
8000AB28: addu  $t8, $t8, $t4
8000AB2C: lhu   $t8, 0x45C8 ($t8)
8000AB30: addiu $t3, $t7, 0x000A
8000AB34: lui   $t2, 0x8016
8000AB38: div   $t3, $t8
8000AB3C: addu  $t2, $t2, $t1
8000AB40: lw    $t2, 0x4550 ($t2)
8000AB44: mfhi  $t9
8000AB48: sll   $t6, $t9, 0x3
8000AB4C: addu  $v0, $t6, $t2
8000AB50: lh    $t5, 0x0000 ($v0)
8000AB54: lui   $a3, 0x8016
8000AB58: addiu $a3, $a3, 0x2FA0
8000AB5C: mtc1  $t5, F18
8000AB60: bnez  $t8, 0x8000AB6C
8000AB64: nop
8000AB68: break
8000AB6C: addiu $at, $zero, 0xFFFF
8000AB70: bne   $t8, $at, 0x8000AB84
8000AB74: lui   $at, 0x8000
8000AB78: bne   $t3, $at, 0x8000AB84
8000AB7C: nop
8000AB80: break
8000AB84: cvt.s.w F8, F18
8000AB88: swc1  F8, 0x0000 ($a3)
8000AB8C: lh    $t7, 0x0004 ($v0)
8000AB90: mtc1  $t7, F10
8000AB94: nop
8000AB98: cvt.s.w F16, F10
8000AB9C: swc1  F16, 0x0008 ($a3)
8000ABA0: lui   $t4, 0x8016
8000ABA4: lui   $a3, 0x8016
8000ABA8: addiu $t4, $t4, 0x3178
8000ABAC: addiu $a1, $a3, 0x2FA0
8000ABB0: addu  $v0, $t1, $t4
8000ABB4: lwc1  F6, 0x0000 ($v0)
8000ABB8: lwc1  F4, 0x0000 ($a1)
8000ABBC: lui   $at, 0x3F00
8000ABC0: mtc1  $at, F0
8000ABC4: add.s F18, F4, F6
8000ABC8: lui   $t3, 0x8016
8000ABCC: addiu $t3, $t3, 0x31A0
8000ABD0: addu  $v1, $t1, $t3
8000ABD4: mul.s F8, F18, F0
8000ABD8: lwc1  F10, 0x0008 ($a1)
8000ABDC: swc1  F8, 0x0000 ($a1)
8000ABE0: lwc1  F16, 0x0000 ($v1)
8000ABE4: lwc1  F18, 0x0000 ($a1)
8000ABE8: add.s F4, F10, F16
8000ABEC: mul.s F6, F4, F0
8000ABF0: swc1  F6, 0x0008 ($a1)
8000ABF4: swc1  F18, 0x0000 ($v0)
8000ABF8: lwc1  F8, 0x0008 ($a1)
8000ABFC: sw    $t0, 0x0020 ($sp)
8000AC00: lw    $a0, 0x001C ($sp)
8000AC04: jal   0x802B5224
8000AC08: swc1  F8, 0x0000 ($v1)
8000AC0C: lui   $at, 0x3FC0
8000AC10: mtc1  $at, F0
8000AC14: lui   $at, 0x4336
8000AC18: mtc1  $at, F12
8000AC1C: neg.s F16, F0
8000AC20: lw    $a3, 0x0040 ($sp)
8000AC24: mul.s F2, F0, F12
8000AC28: subu  $t6, $zero, $v0
8000AC2C: lh    $a0, 0x002E ($a3)
8000AC30: mul.s F4, F16, F12
8000AC34: lw    $t0, 0x0020 ($sp)
8000AC38: subu  $v1, $t6, $a0
8000AC3C: sll   $a2, $v1, 0x10
8000AC40: sll   $t3, $v1, 0x10
8000AC44: sra   $t2, $a2, 0x10
8000AC48: trunc.w.s F10, F2
8000AC4C: sra   $t8, $t3, 0x10
8000AC50: or    $a2, $t2, $zero
8000AC54: trunc.w.s F6, F4
8000AC58: mfc1  $a1, F10
8000AC5C: lui   $t3, 0x800E
8000AC60: lui   $v1, 0x800E
8000AC64: sll   $t7, $a1, 0x10
8000AC68: mfc1  $v0, F6
8000AC6C: sra   $t4, $t7, 0x10
8000AC70: slt   $at, $t4, $t8
8000AC74: beq   $at, $zero, 0x8000AC88
8000AC78: sll   $t2, $v0, 0x10
8000AC7C: sll   $a2, $a1, 0x10
8000AC80: sra   $t9, $a2, 0x10
8000AC84: or    $a2, $t9, $zero
8000AC88: sra   $t5, $t2, 0x10
8000AC8C: slt   $at, $a2, $t5
8000AC90: beq   $at, $zero, 0x8000ACA4
8000AC94: lui   $t8, 0x8016
8000AC98: sll   $a2, $v0, 0x10
8000AC9C: sra   $t7, $a2, 0x10
8000ACA0: or    $a2, $t7, $zero
8000ACA4: lw    $t8, 0x31D8 ($t8)
8000ACA8: lw    $t9, 0x0034 ($sp)
8000ACAC: lh    $t3, 0xC5A0 ($t3)
8000ACB0: addiu $at, $zero, 0x0002
8000ACB4: addu  $t6, $t8, $t9
8000ACB8: lh    $v0, 0x0000 ($t6)
8000ACBC: sll   $t4, $t3, 0x1
8000ACC0: addu  $v1, $v1, $t4
8000ACC4: beq   $v0, $at, 0x8000ACE0
8000ACC8: lh    $v1, 0xCA20 ($v1)
8000ACCC: addiu $at, $zero, 0x0003
8000ACD0: beql  $v0, $at, 0x8000AD24
8000ACD4: lui   $at, 0x3F00
8000ACD8: beq   $zero, $zero, 0x8000AD60
8000ACDC: lw    $t2, 0x0034 ($sp)
8000ACE0: lui   $at, 0x3F00
8000ACE4: mtc1  $at, F18
8000ACE8: lwc1  F0, 0x0000 ($t0)
8000ACEC: lui   $at, 0xBF00
8000ACF0: mtc1  $at, F8
8000ACF4: c.lt.s F18, F0
8000ACF8: nop
8000ACFC: bc1fl 0x8000AD0C
8000AD00: c.lt.s F0, F8
8000AD04: addiu $v1, $zero, 0x0014
8000AD08: c.lt.s F0, F8
8000AD0C: nop
8000AD10: bc1fl 0x8000AD60
8000AD14: lw    $t2, 0x0034 ($sp)
8000AD18: beq   $zero, $zero, 0x8000AD5C
8000AD1C: addiu $v1, $zero, 0x0035
8000AD20: lui   $at, 0x3F00
8000AD24: mtc1  $at, F10
8000AD28: lwc1  F0, 0x0000 ($t0)
8000AD2C: lui   $at, 0xBF00
8000AD30: mtc1  $at, F16
8000AD34: c.lt.s F10, F0
8000AD38: nop
8000AD3C: bc1fl 0x8000AD4C
8000AD40: c.lt.s F0, F16
8000AD44: addiu $v1, $zero, 0x0035
8000AD48: c.lt.s F0, F16
8000AD4C: nop
8000AD50: bc1fl 0x8000AD60
8000AD54: lw    $t2, 0x0034 ($sp)
8000AD58: addiu $v1, $zero, 0x0014
8000AD5C: lw    $t2, 0x0034 ($sp)
8000AD60: lui   $t5, 0x8016
8000AD64: addiu $at, $zero, 0x0002
8000AD68: addu  $t5, $t5, $t2
8000AD6C: lhu   $t5, 0x32E8 ($t5)
8000AD70: bne   $t5, $at, 0x8000ADC0
8000AD74: lui   $at, 0x800F
8000AD78: lwc1  F4, 0xCFB8 ($at)
8000AD7C: lwc1  F0, 0x0000 ($t0)
8000AD80: lui   $at, 0x800F
8000AD84: lw    $t7, 0x002C ($sp)
8000AD88: c.lt.s F4, F0
8000AD8C: nop
8000AD90: bc1tl 0x8000ADB0
8000AD94: sh    $zero, 0x0000 ($t7)
8000AD98: lwc1  F6, 0xCFBC ($at)
8000AD9C: c.lt.s F0, F6
8000ADA0: nop
8000ADA4: bc1fl 0x8000ADC4
8000ADA8: lw    $v0, 0x00BC ($a3)
8000ADAC: sh    $zero, 0x0000 ($t7)
8000ADB0: lw    $t3, 0x00BC ($a3)
8000ADB4: addiu $at, $zero, 0xFFEF
8000ADB8: and   $t4, $t3, $at
8000ADBC: sw    $t4, 0x00BC ($a3)
8000ADC0: lw    $v0, 0x00BC ($a3)
8000ADC4: lw    $t9, 0x002C ($sp)
8000ADC8: andi  $t8, $v0, 0x0002
8000ADCC: beql  $t8, $zero, 0x8000AE74
8000ADD0: lui   $at, 0x1000
8000ADD4: lh    $v0, 0x0000 ($t9)
8000ADD8: addiu $at, $zero, 0xFFFF
8000ADDC: addiu $a1, $zero, 0xFFCB
8000ADE0: beq   $v0, $at, 0x8000AE60
8000ADE4: lw    $t2, 0x0034 ($sp)
8000ADE8: addiu $at, $zero, 0x0001
8000ADEC: beq   $v0, $at, 0x8000AE4C
8000ADF0: addiu $a1, $zero, 0x0035
8000ADF4: multu $a2, $v1
8000ADF8: lw    $t6, 0x0034 ($sp)
8000ADFC: lui   $t2, 0x8016
8000AE00: addiu $t2, $t2, 0x3050
8000AE04: addu  $v0, $t6, $t2
8000AE08: lh    $t5, 0x0000 ($v0)
8000AE0C: lui   $at, 0x4000
8000AE10: mtc1  $t5, F18
8000AE14: mflo  $t7
8000AE18: mtc1  $t7, F10
8000AE1C: cvt.s.w F8, F18
8000AE20: mtc1  $at, F18
8000AE24: cvt.s.w F16, F10
8000AE28: div.s F4, F16, F2
8000AE2C: add.s F6, F8, F4
8000AE30: div.s F10, F6, F18
8000AE34: trunc.w.s F16, F10
8000AE38: mfc1  $a1, F16
8000AE3C: nop
8000AE40: sll   $t4, $a1, 0x10
8000AE44: beq   $zero, $zero, 0x8000AEF0
8000AE48: sra   $a1, $t4, 0x10
8000AE4C: lw    $t9, 0x0034 ($sp)
8000AE50: lui   $t6, 0x8016
8000AE54: addiu $t6, $t6, 0x3050
8000AE58: beq   $zero, $zero, 0x8000AEF0
8000AE5C: addu  $v0, $t9, $t6
8000AE60: lui   $t5, 0x8016
8000AE64: addiu $t5, $t5, 0x3050
8000AE68: beq   $zero, $zero, 0x8000AEF0
8000AE6C: addu  $v0, $t2, $t5
8000AE70: lui   $at, 0x1000
8000AE74: ori   $at, $at, 0x000C
8000AE78: and   $t7, $v0, $at
8000AE7C: beq   $t7, $zero, 0x8000AE9C
8000AE80: nop
8000AE84: lw    $t3, 0x0034 ($sp)
8000AE88: lui   $t4, 0x8016
8000AE8C: addiu $t4, $t4, 0x3050
8000AE90: or    $a1, $zero, $zero
8000AE94: beq   $zero, $zero, 0x8000AEF0
8000AE98: addu  $v0, $t3, $t4
8000AE9C: multu $a2, $v1
8000AEA0: lw    $t8, 0x0034 ($sp)
8000AEA4: lui   $t9, 0x8016
8000AEA8: addiu $t9, $t9, 0x3050
8000AEAC: addu  $v0, $t8, $t9
8000AEB0: lh    $t6, 0x0000 ($v0)
8000AEB4: lui   $at, 0x4000
8000AEB8: mtc1  $t6, F8
8000AEBC: mflo  $t2
8000AEC0: mtc1  $t2, F6
8000AEC4: cvt.s.w F4, F8
8000AEC8: mtc1  $at, F8
8000AECC: cvt.s.w F18, F6
8000AED0: div.s F10, F18, F2
8000AED4: add.s F16, F4, F10
8000AED8: div.s F6, F16, F8
8000AEDC: trunc.w.s F18, F6
8000AEE0: mfc1  $a1, F18
8000AEE4: nop
8000AEE8: sll   $t7, $a1, 0x10
8000AEEC: sra   $a1, $t7, 0x10
8000AEF0: or    $a0, $a3, $zero
8000AEF4: sw    $v0, 0x003C ($sp)
8000AEF8: sh    $a1, 0x0094 ($sp)
8000AEFC: jal   0x8003680C
8000AF00: sw    $t0, 0x0020 ($sp)
8000AF04: lw    $v0, 0x003C ($sp)
8000AF08: lh    $a1, 0x0094 ($sp)
8000AF0C: lw    $t4, 0x0028 ($sp)
8000AF10: addiu $at, $zero, 0x0001
8000AF14: sh    $a1, 0x0000 ($v0)
8000AF18: lw    $t8, 0x0000 ($t4)
8000AF1C: lw    $t0, 0x0020 ($sp)
8000AF20: beq   $t8, $at, 0x8000AF58
8000AF24: nop
8000AF28: lw    $t9, 0x002C ($sp)
8000AF2C: addiu $at, $zero, 0x0001
8000AF30: lh    $v0, 0x0000 ($t9)
8000AF34: beq   $v0, $at, 0x8000AF58
8000AF38: addiu $at, $zero, 0xFFFF
8000AF3C: beq   $v0, $at, 0x8000AF58
8000AF40: lw    $t6, 0x0040 ($sp)
8000AF44: lw    $t2, 0x00BC ($t6)
8000AF48: lui   $at, 0x1000
8000AF4C: ori   $at, $at, 0x000C
8000AF50: and   $t5, $t2, $at
8000AF54: beq   $t5, $zero, 0x8000AFA8
8000AF58: lui   $t7, 0x800E
8000AF5C: lui   $t4, 0x800E
8000AF60: lw    $t4, 0xC548 ($t4)
8000AF64: lh    $t7, 0xC5A0 ($t7)
8000AF68: lui   $t6, 0x0D01
8000AF6C: sll   $t8, $t4, 0x2
8000AF70: sll   $t3, $t7, 0x4
8000AF74: addu  $t9, $t3, $t8
8000AF78: addiu $t6, $t6, 0x9418
8000AF7C: addu  $a0, $t9, $t6
8000AF80: jal   SegmentedToVirtualDupe
8000AF84: sw    $t0, 0x0020 ($sp)
8000AF88: lw    $t2, 0x0038 ($sp)
8000AF8C: lui   $t5, 0x8016
8000AF90: lwc1  F4, 0x0000 ($v0)
8000AF94: addiu $t5, $t5, 0x3028
8000AF98: addu  $v1, $t2, $t5
8000AF9C: lw    $t0, 0x0020 ($sp)
8000AFA0: beq   $zero, $zero, 0x8000AFF4
8000AFA4: swc1  F4, 0x0000 ($v1)
8000AFA8: lui   $t7, 0x800E
8000AFAC: lui   $t3, 0x800E
8000AFB0: lw    $t3, 0xC548 ($t3)
8000AFB4: lh    $t7, 0xC5A0 ($t7)
8000AFB8: lui   $t6, 0x0D01
8000AFBC: sll   $t8, $t3, 0x2
8000AFC0: sll   $t4, $t7, 0x4
8000AFC4: addu  $t9, $t4, $t8
8000AFC8: addiu $t6, $t6, 0x9568
8000AFCC: addu  $a0, $t9, $t6
8000AFD0: jal   SegmentedToVirtualDupe
8000AFD4: sw    $t0, 0x0020 ($sp)
8000AFD8: lw    $t2, 0x0038 ($sp)
8000AFDC: lwc1  F10, 0x0000 ($v0)
8000AFE0: lui   $t5, 0x8016
8000AFE4: addiu $t5, $t5, 0x3028
8000AFE8: addu  $v1, $t2, $t5
8000AFEC: lw    $t0, 0x0020 ($sp)
8000AFF0: swc1  F10, 0x0000 ($v1)
8000AFF4: lui   $at, 0x800F
8000AFF8: lwc1  F16, 0xCFC0 ($at)
8000AFFC: lwc1  F0, 0x0000 ($t0)
8000B000: lui   $t6, 0x0D01
8000B004: lui   $at, 0x800F
8000B008: c.lt.s F16, F0
8000B00C: addiu $t6, $t6, 0x9808
8000B010: lui   $t7, 0x800E
8000B014: lui   $t4, 0x800E
8000B018: bc1t  0x8000B034
8000B01C: nop
8000B020: lwc1  F8, 0xCFC4 ($at)
8000B024: c.lt.s F0, F8
8000B028: nop
8000B02C: bc1f  0x8000B060
8000B030: nop
8000B034: lh    $t7, 0xC5A0 ($t7)
8000B038: lw    $t4, 0xC548 ($t4)
8000B03C: sw    $v1, 0x0034 ($sp)
8000B040: sll   $t3, $t7, 0x4
8000B044: sll   $t8, $t4, 0x2
8000B048: addu  $t9, $t3, $t8
8000B04C: jal   SegmentedToVirtualDupe
8000B050: addu  $a0, $t9, $t6
8000B054: lw    $v1, 0x0034 ($sp)
8000B058: lwc1  F6, 0x0000 ($v0)
8000B05C: swc1  F6, 0x0000 ($v1)
8000B060: lui   $t2, 0x8016
8000B064: lh    $t2, 0x2FD0 ($t2)
8000B068: addiu $at, $zero, 0x0001
8000B06C: lui   $t5, 0x800E
8000B070: bne   $t2, $at, 0x8000B0AC
8000B074: lui   $t4, 0x800E
8000B078: lh    $t5, 0xC5A0 ($t5)
8000B07C: lw    $t4, 0xC548 ($t4)
8000B080: lui   $t9, 0x0D01
8000B084: sll   $t7, $t5, 0x4
8000B088: sll   $t3, $t4, 0x2
8000B08C: addu  $t8, $t7, $t3
8000B090: addiu $t9, $t9, 0x96B8
8000B094: addu  $a0, $t8, $t9
8000B098: jal   SegmentedToVirtualDupe
8000B09C: sw    $v1, 0x0034 ($sp)
8000B0A0: lw    $v1, 0x0034 ($sp)
8000B0A4: lwc1  F18, 0x0000 ($v0)
8000B0A8: swc1  F18, 0x0000 ($v1)
8000B0AC: lw    $t6, 0x002C ($sp)
8000B0B0: addiu $at, $zero, 0x0002
8000B0B4: lh    $v0, 0x0000 ($t6)
8000B0B8: beq   $v0, $at, 0x8000B0CC
8000B0BC: addiu $at, $zero, 0xFFFE
8000B0C0: beq   $v0, $at, 0x8000B0CC
8000B0C4: addiu $at, $zero, 0x0003
8000B0C8: bne   $v0, $at, 0x8000B0D8
8000B0CC: lui   $at, 0x800F
8000B0D0: lwc1  F4, 0xCFC8 ($at)
8000B0D4: swc1  F4, 0x0000 ($v1)
8000B0D8: lwc1  F10, 0x0000 ($v1)
8000B0DC: lw    $t2, 0x0040 ($sp)
8000B0E0: lui   $v0, 0x8016
8000B0E4: addiu $v0, $v0, 0x320C
8000B0E8: swc1  F10, 0x0000 ($v0)
8000B0EC: lw    $t5, 0x00BC ($t2)
8000B0F0: lui   $at, 0xFFDF
8000B0F4: ori   $at, $at, 0xFFFF
8000B0F8: and   $t4, $t5, $at
8000B0FC: sw    $t4, 0x00BC ($t2)
8000B100: lw    $t7, 0x0038 ($sp)
8000B104: lwc1  F16, 0x0000 ($v0)
8000B108: lui   $at, 0x8016
8000B10C: addu  $at, $at, $t7
8000B110: lw    $a0, 0x00D0 ($sp)
8000B114: jal   0x800131DC
8000B118: swc1  F16, 0x3210 ($at)
8000B11C: lui   $a1, 0x8016
8000B120: lw    $a1, 0x320C ($a1)
8000B124: lw    $a0, 0x00D0 ($sp)
8000B128: jal   0x80008424
8000B12C: lw    $a2, 0x0040 ($sp)
8000B130: lw    $ra, 0x0014 ($sp)
8000B134: addiu $sp, $sp, 0x00D0
8000B138: jr    $ra
8000B13C: nop

8000B140: sll   $t7, $a0, 0x3
8000B144: subu  $t7, $t7, $a0
8000B148: sll   $t7, $t7, 0x4
8000B14C: subu  $t7, $t7, $a0
8000B150: sll   $t7, $t7, 0x2
8000B154: subu  $t7, $t7, $a0
8000B158: lui   $t8, 0x800F
8000B15C: addiu $t8, $t8, 0x6990
8000B160: sll   $t7, $t7, 0x3
8000B164: addiu $sp, $sp, 0xFF00
8000B168: addu  $v1, $t7, $t8
8000B16C: lw    $a1, 0x00BC ($v1)
8000B170: sw    $ra, 0x003C ($sp)
8000B174: sdc1  F26, 0x0030 ($sp)
8000B178: andi  $t9, $a1, 0x0010
8000B17C: sdc1  F24, 0x0028 ($sp)
8000B180: sdc1  F22, 0x0020 ($sp)
8000B184: sdc1  F20, 0x0018 ($sp)
8000B188: bnez  $t9, 0x8000B7C8
8000B18C: sw    $a0, 0x0100 ($sp)
8000B190: sll   $t5, $a0, 0x1
8000B194: lui   $v0, 0x8016
8000B198: addu  $v0, $v0, $t5
8000B19C: lh    $v0, 0x30E8 ($v0)
8000B1A0: addiu $at, $zero, 0x0001
8000B1A4: sw    $t5, 0x005C ($sp)
8000B1A8: beq   $v0, $at, 0x8000B7C8
8000B1AC: addiu $a2, $zero, 0xFFFF
8000B1B0: beq   $a2, $v0, 0x8000B7C8
8000B1B4: lui   $t3, 0x8016
8000B1B8: addiu $t3, $t3, 0x3068
8000B1BC: sll   $t7, $a0, 0x2
8000B1C0: addu  $t8, $t3, $t7
8000B1C4: lui   $at, 0xBF80
8000B1C8: sw    $t8, 0x0054 ($sp)
8000B1CC: sw    $t7, 0x0058 ($sp)
8000B1D0: mtc1  $at, F26
8000B1D4: lwc1  F0, 0x0000 ($t8)
8000B1D8: lui   $at, 0x3F80
8000B1DC: c.lt.s F0, F26
8000B1E0: nop
8000B1E4: bc1tl 0x8000B7CC
8000B1E8: lw    $ra, 0x003C ($sp)
8000B1EC: mtc1  $at, F24
8000B1F0: nop
8000B1F4: c.lt.s F24, F0
8000B1F8: nop
8000B1FC: bc1tl 0x8000B7CC
8000B200: lw    $ra, 0x003C ($sp)
8000B204: lhu   $v0, 0x0254 ($v1)
8000B208: addiu $at, $zero, 0x0005
8000B20C: beq   $v0, $at, 0x8000B7C8
8000B210: addiu $at, $zero, 0x0007
8000B214: beq   $v0, $at, 0x8000B7C8
8000B218: addiu $at, $zero, 0x0004
8000B21C: beq   $v0, $at, 0x8000B7C8
8000B220: andi  $t4, $a1, 0x0200
8000B224: bnez  $t4, 0x8000B7C8
8000B228: lui   $at, 0x4190
8000B22C: lwc1  F4, 0x0094 ($v1)
8000B230: mtc1  $at, F6
8000B234: lui   $at, 0x4358
8000B238: mtc1  $at, F10
8000B23C: div.s F8, F4, F6
8000B240: lui   $t1, 0x8016
8000B244: addu  $t1, $t1, $t5
8000B248: lh    $t1, 0x4438 ($t1)
8000B24C: addiu $v1, $zero, 0x03E8
8000B250: addiu $a1, $sp, 0x009C
8000B254: addiu $v0, $sp, 0x00B0
8000B258: addiu $a0, $sp, 0x00C0
8000B25C: or    $t2, $zero, $zero
8000B260: mul.s F22, F8, F10
8000B264: nop
8000B268: addiu $v0, $v0, 0x0002
8000B26C: sltu  $at, $v0, $a0
8000B270: addiu $a1, $a1, 0x0002
8000B274: sh    $a2, 0xFFFE ($a1)
8000B278: bnez  $at, 0x8000B268
8000B27C: sh    $v1, 0xFFFE ($v0)
8000B280: lw    $t6, 0x005C ($sp)
8000B284: lui   $t7, 0x8016
8000B288: addiu $t7, $t7, 0x3010
8000B28C: addu  $t8, $t6, $t7
8000B290: sw    $t8, 0x004C ($sp)
8000B294: lh    $v0, 0x0000 ($t8)
8000B298: blez  $v0, 0x8000B2B4
8000B29C: addiu $t9, $v0, 0xFFFF
8000B2A0: bgtz  $t9, 0x8000B2B4
8000B2A4: sh    $t9, 0x0000 ($t8)
8000B2A8: lui   $at, 0x8016
8000B2AC: addu  $at, $at, $t6
8000B2B0: sh    $zero, 0x2FF8 ($at)
8000B2B4: lui   $at, 0x40A0
8000B2B8: mtc1  $at, F20
8000B2BC: or    $t0, $zero, $zero
8000B2C0: lw    $t4, 0x0100 ($sp)
8000B2C4: sll   $t5, $t0, 0x3
8000B2C8: subu  $t5, $t5, $t0
8000B2CC: beq   $t0, $t4, 0x8000B3EC
8000B2D0: sll   $t5, $t5, 0x4
8000B2D4: subu  $t5, $t5, $t0
8000B2D8: sll   $t5, $t5, 0x2
8000B2DC: subu  $t5, $t5, $t0
8000B2E0: lui   $t7, 0x800F
8000B2E4: addiu $t7, $t7, 0x6990
8000B2E8: sll   $t5, $t5, 0x3
8000B2EC: addu  $v0, $t5, $t7
8000B2F0: lhu   $t8, 0x0000 ($v0)
8000B2F4: lui   $at, 0x4190
8000B2F8: andi  $t9, $t8, 0x8000
8000B2FC: beql  $t9, $zero, 0x8000B3F0
8000B300: slti  $at, $t2, 0x0002
8000B304: lwc1  F4, 0x0094 ($v0)
8000B308: mtc1  $at, F6
8000B30C: lui   $at, 0x4358
8000B310: mtc1  $at, F10
8000B314: div.s F8, F4, F6
8000B318: sll   $t6, $t0, 0x1
8000B31C: lui   $v1, 0x8016
8000B320: addu  $v1, $v1, $t6
8000B324: sub.s F2, F22, F20
8000B328: lh    $v1, 0x4438 ($v1)
8000B32C: andi  $a1, $t1, 0xFFFF
8000B330: or    $a2, $zero, $zero
8000B334: addiu $a3, $zero, 0x0014
8000B338: lui   $t4, 0x8016
8000B33C: andi  $a0, $v1, 0xFFFF
8000B340: mul.s F0, F8, F10
8000B344: c.lt.s F0, F2
8000B348: nop
8000B34C: bc1fl 0x8000B3F0
8000B350: slti  $at, $t2, 0x0002
8000B354: lhu   $t4, 0x4430 ($t4)
8000B358: sh    $v1, 0x00E4 ($sp)
8000B35C: sw    $t0, 0x00FC ($sp)
8000B360: sh    $t1, 0x00E6 ($sp)
8000B364: sw    $t2, 0x00F0 ($sp)
8000B368: swc1  F0, 0x00DC ($sp)
8000B36C: swc1  F2, 0x0060 ($sp)
8000B370: jal   0x80007BF8
8000B374: sw    $t4, 0x0010 ($sp)
8000B378: lui   $t3, 0x8016
8000B37C: addiu $t3, $t3, 0x3068
8000B380: lh    $v1, 0x00E4 ($sp)
8000B384: lw    $t0, 0x00FC ($sp)
8000B388: lh    $t1, 0x00E6 ($sp)
8000B38C: lw    $t2, 0x00F0 ($sp)
8000B390: lwc1  F0, 0x00DC ($sp)
8000B394: blez  $v0, 0x8000B3EC
8000B398: lwc1  F2, 0x0060 ($sp)
8000B39C: sll   $v0, $t2, 0x1
8000B3A0: addu  $t5, $sp, $v0
8000B3A4: subu  $a1, $v1, $t1
8000B3A8: addiu $t7, $sp, 0x00B0
8000B3AC: sll   $t8, $t2, 0x2
8000B3B0: addiu $t9, $sp, 0x0074
8000B3B4: sh    $t0, 0x009C ($t5)
8000B3B8: addu  $a0, $t8, $t9
8000B3BC: blez  $a1, 0x8000B3CC
8000B3C0: addu  $a2, $v0, $t7
8000B3C4: beq   $zero, $zero, 0x8000B3E0
8000B3C8: sh    $a1, 0x0000 ($a2)
8000B3CC: lui   $t6, 0x8016
8000B3D0: lhu   $t6, 0x4430 ($t6)
8000B3D4: addu  $t4, $v1, $t6
8000B3D8: subu  $t5, $t4, $t1
8000B3DC: sh    $t5, 0x0000 ($a2)
8000B3E0: sub.s F4, F2, F0
8000B3E4: addiu $t2, $t2, 0x0001
8000B3E8: swc1  F4, 0x0000 ($a0)
8000B3EC: slti  $at, $t2, 0x0002
8000B3F0: beq   $at, $zero, 0x8000B404
8000B3F4: addiu $t0, $t0, 0x0001
8000B3F8: slti  $at, $t0, 0x0008
8000B3FC: bnel  $at, $zero, 0x8000B2C4
8000B400: lw    $t4, 0x0100 ($sp)
8000B404: beq   $t2, $zero, 0x8000B7C8
8000B408: or    $t0, $zero, $zero
8000B40C: mov.s F18, F24
8000B410: blez  $t2, 0x8000B708
8000B414: mov.s F20, F26
8000B418: andi  $v0, $t2, 0x0001
8000B41C: beq   $v0, $zero, 0x8000B50C
8000B420: lh    $v1, 0x009C ($sp)
8000B424: sll   $t7, $v1, 0x2
8000B428: addu  $t8, $t3, $t7
8000B42C: lwc1  F2, 0x0000 ($t8)
8000B430: addiu $t0, $zero, 0x0001
8000B434: c.lt.s F26, F2
8000B438: nop
8000B43C: bc1f  0x8000B508
8000B440: nop
8000B444: c.lt.s F2, F24
8000B448: lh    $v0, 0x00B0 ($sp)
8000B44C: bc1f  0x8000B508
8000B450: nop
8000B454: mtc1  $v0, F8
8000B458: lui   $at, 0x41A0
8000B45C: mtc1  $at, F22
8000B460: cvt.s.w F10, F8
8000B464: lui   $at, 0x800F
8000B468: lwc1  F6, 0xCFCC ($at)
8000B46C: lui   $at, 0x4120
8000B470: lwc1  F0, 0x0074 ($sp)
8000B474: c.eq.s F24, F24
8000B478: add.s F4, F10, F22
8000B47C: div.s F8, F22, F4
8000B480: mtc1  $at, F4
8000B484: mul.s F10, F6, F8
8000B488: add.s F6, F0, F4
8000B48C: mul.s F8, F6, F10
8000B490: bc1f  0x8000B4B4
8000B494: div.s F12, F8, F22
8000B498: c.eq.s F26, F26
8000B49C: nop
8000B4A0: bc1fl 0x8000B4B8
8000B4A4: sub.s F14, F2, F12
8000B4A8: sub.s F18, F2, F12
8000B4AC: beq   $zero, $zero, 0x8000B508
8000B4B0: add.s F20, F2, F12
8000B4B4: sub.s F14, F2, F12
8000B4B8: add.s F16, F2, F12
8000B4BC: c.lt.s F14, F24
8000B4C0: nop
8000B4C4: bc1fl 0x8000B4E8
8000B4C8: c.lt.s F26, F16
8000B4CC: add.s F4, F2, F12
8000B4D0: c.lt.s F24, F4
8000B4D4: nop
8000B4D8: bc1fl 0x8000B4E8
8000B4DC: c.lt.s F26, F16
8000B4E0: mov.s F18, F14
8000B4E4: c.lt.s F26, F16
8000B4E8: nop
8000B4EC: bc1f  0x8000B508
8000B4F0: nop
8000B4F4: c.lt.s F14, F26
8000B4F8: nop
8000B4FC: bc1f  0x8000B508
8000B500: nop
8000B504: mov.s F20, F16
8000B508: beq   $t0, $t2, 0x8000B708
8000B50C: lui   $at, 0x41A0
8000B510: sll   $v0, $t0, 0x1
8000B514: addiu $t9, $sp, 0x009C
8000B518: mtc1  $at, F22
8000B51C: addu  $a1, $v0, $t9
8000B520: addiu $a0, $sp, 0x00B0
8000B524: addiu $v1, $sp, 0x0074
8000B528: lh    $t6, 0x0000 ($a1)
8000B52C: sll   $t4, $t6, 0x2
8000B530: addu  $t5, $t3, $t4
8000B534: lwc1  F2, 0x0000 ($t5)
8000B538: c.lt.s F26, F2
8000B53C: nop
8000B540: bc1fl 0x8000B614
8000B544: lh    $t4, 0x0002 ($a1)
8000B548: c.lt.s F2, F24
8000B54C: sll   $t7, $t0, 0x2
8000B550: addu  $t8, $v1, $t7
8000B554: lui   $at, 0x4120
8000B558: bc1f  0x8000B610
8000B55C: addu  $t9, $a0, $v0
8000B560: lwc1  F6, 0x0000 ($t8)
8000B564: mtc1  $at, F10
8000B568: lh    $t6, 0x0000 ($t9)
8000B56C: lui   $at, 0x800F
8000B570: add.s F8, F6, F10
8000B574: mtc1  $t6, F6
8000B578: lwc1  F4, 0xCFD0 ($at)
8000B57C: c.eq.s F18, F24
8000B580: cvt.s.w F10, F6
8000B584: add.s F6, F10, F22
8000B588: div.s F10, F22, F6
8000B58C: mul.s F6, F4, F10
8000B590: nop
8000B594: mul.s F4, F8, F6
8000B598: bc1f  0x8000B5BC
8000B59C: div.s F0, F4, F22
8000B5A0: c.eq.s F20, F26
8000B5A4: nop
8000B5A8: bc1fl 0x8000B5C0
8000B5AC: sub.s F12, F2, F0
8000B5B0: sub.s F18, F2, F0
8000B5B4: beq   $zero, $zero, 0x8000B610
8000B5B8: add.s F20, F2, F0
8000B5BC: sub.s F12, F2, F0
8000B5C0: add.s F14, F2, F0
8000B5C4: c.lt.s F12, F18
8000B5C8: nop
8000B5CC: bc1fl 0x8000B5F0
8000B5D0: c.lt.s F20, F14
8000B5D4: add.s F10, F2, F0
8000B5D8: c.lt.s F18, F10
8000B5DC: nop
8000B5E0: bc1fl 0x8000B5F0
8000B5E4: c.lt.s F20, F14
8000B5E8: mov.s F18, F12
8000B5EC: c.lt.s F20, F14
8000B5F0: nop
8000B5F4: bc1fl 0x8000B614
8000B5F8: lh    $t4, 0x0002 ($a1)
8000B5FC: c.lt.s F12, F20
8000B600: nop
8000B604: bc1fl 0x8000B614
8000B608: lh    $t4, 0x0002 ($a1)
8000B60C: mov.s F20, F14
8000B610: lh    $t4, 0x0002 ($a1)
8000B614: addiu $a1, $a1, 0x0004
8000B618: sll   $t5, $t4, 0x2
8000B61C: addu  $t7, $t3, $t5
8000B620: lwc1  F0, 0x0000 ($t7)
8000B624: c.lt.s F26, F0
8000B628: nop
8000B62C: bc1fl 0x8000B700
8000B630: addiu $t0, $t0, 0x0002
8000B634: c.lt.s F0, F24
8000B638: sll   $t8, $t0, 0x2
8000B63C: addu  $t9, $v1, $t8
8000B640: lui   $at, 0x4120
8000B644: bc1f  0x8000B6FC
8000B648: addu  $t6, $a0, $v0
8000B64C: lwc1  F8, 0x0004 ($t9)
8000B650: mtc1  $at, F6
8000B654: lh    $t4, 0x0002 ($t6)
8000B658: lui   $at, 0x800F
8000B65C: add.s F4, F8, F6
8000B660: mtc1  $t4, F8
8000B664: lwc1  F10, 0xCFD4 ($at)
8000B668: c.eq.s F18, F24
8000B66C: cvt.s.w F6, F8
8000B670: add.s F8, F6, F22
8000B674: div.s F6, F22, F8
8000B678: mul.s F8, F10, F6
8000B67C: nop
8000B680: mul.s F10, F4, F8
8000B684: bc1f  0x8000B6A8
8000B688: div.s F2, F10, F22
8000B68C: c.eq.s F20, F26
8000B690: nop
8000B694: bc1fl 0x8000B6AC
8000B698: sub.s F12, F0, F2
8000B69C: sub.s F18, F0, F2
8000B6A0: beq   $zero, $zero, 0x8000B6FC
8000B6A4: add.s F20, F0, F2
8000B6A8: sub.s F12, F0, F2
8000B6AC: add.s F14, F0, F2
8000B6B0: c.lt.s F12, F18
8000B6B4: nop
8000B6B8: bc1fl 0x8000B6DC
8000B6BC: c.lt.s F20, F14
8000B6C0: add.s F6, F0, F2
8000B6C4: c.lt.s F18, F6
8000B6C8: nop
8000B6CC: bc1fl 0x8000B6DC
8000B6D0: c.lt.s F20, F14
8000B6D4: mov.s F18, F12
8000B6D8: c.lt.s F20, F14
8000B6DC: nop
8000B6E0: bc1fl 0x8000B700
8000B6E4: addiu $t0, $t0, 0x0002
8000B6E8: c.lt.s F12, F20
8000B6EC: nop
8000B6F0: bc1fl 0x8000B700
8000B6F4: addiu $t0, $t0, 0x0002
8000B6F8: mov.s F20, F14
8000B6FC: addiu $t0, $t0, 0x0002
8000B700: bne   $t0, $t2, 0x8000B528
8000B704: addiu $v0, $v0, 0x0004
8000B708: c.lt.s F20, F18
8000B70C: lw    $t5, 0x0054 ($sp)
8000B710: bc1tl 0x8000B7CC
8000B714: lw    $ra, 0x003C ($sp)
8000B718: lwc1  F0, 0x0000 ($t5)
8000B71C: c.lt.s F0, F18
8000B720: nop
8000B724: bc1tl 0x8000B7CC
8000B728: lw    $ra, 0x003C ($sp)
8000B72C: c.lt.s F20, F0
8000B730: nop
8000B734: bc1tl 0x8000B7CC
8000B738: lw    $ra, 0x003C ($sp)
8000B73C: c.lt.s F24, F20
8000B740: lw    $t7, 0x005C ($sp)
8000B744: lui   $t8, 0x8016
8000B748: addiu $t8, $t8, 0x2FF8
8000B74C: bc1f  0x8000B758
8000B750: addu  $v0, $t7, $t8
8000B754: mov.s F20, F24
8000B758: c.lt.s F18, F26
8000B75C: lw    $t6, 0x004C ($sp)
8000B760: sub.s F8, F24, F20
8000B764: lw    $t8, 0x004C ($sp)
8000B768: bc1f  0x8000B774
8000B76C: addiu $t9, $zero, 0x0002
8000B770: mov.s F18, F26
8000B774: add.s F4, F18, F24
8000B778: addiu $t4, $zero, 0x0001
8000B77C: addiu $t7, $zero, 0x003C
8000B780: c.lt.s F4, F8
8000B784: nop
8000B788: bc1fl 0x8000B7B4
8000B78C: sh    $t7, 0x0000 ($t8)
8000B790: addiu $t9, $zero, 0x003C
8000B794: sh    $t9, 0x0000 ($t6)
8000B798: lw    $t5, 0x0058 ($sp)
8000B79C: lui   $at, 0x8016
8000B7A0: sh    $t4, 0x0000 ($v0)
8000B7A4: addu  $at, $at, $t5
8000B7A8: beq   $zero, $zero, 0x8000B7C8
8000B7AC: swc1  F20, 0x3090 ($at)
8000B7B0: sh    $t7, 0x0000 ($t8)
8000B7B4: lw    $t6, 0x0058 ($sp)
8000B7B8: lui   $at, 0x8016
8000B7BC: sh    $t9, 0x0000 ($v0)
8000B7C0: addu  $at, $at, $t6
8000B7C4: swc1  F18, 0x3090 ($at)
8000B7C8: lw    $ra, 0x003C ($sp)
8000B7CC: ldc1  F20, 0x0018 ($sp)
8000B7D0: ldc1  F22, 0x0020 ($sp)
8000B7D4: ldc1  F24, 0x0028 ($sp)
8000B7D8: ldc1  F26, 0x0030 ($sp)
8000B7DC: jr    $ra
8000B7E0: addiu $sp, $sp, 0x0100

8000B7E4: lui   $t7, 0x8016
8000B7E8: lw    $t7, 0x45E0 ($t7)
8000B7EC: andi  $t6, $a1, 0xFFFF
8000B7F0: sll   $t8, $t6, 0x1
8000B7F4: sw    $a0, 0x0000 ($sp)
8000B7F8: sw    $a1, 0x0004 ($sp)
8000B7FC: addu  $t9, $t7, $t8
8000B800: lh    $v0, 0x0000 ($t9)
8000B804: BLEZL $v0, 0x8000B818
8000B808: or    $v0, $zero, $zero
8000B80C: jr    $ra
8000B810: addiu $v0, $zero, 0x0001

8000B814: or    $v0, $zero, $zero
8000B818: jr    $ra
8000B81C: nop

8000B820: sll   $t6, $a0, 0x2
8000B824: lui   $at, 0x8016
8000B828: addu  $at, $at, $t6
8000B82C: lwc1  F0, 0x3068 ($at)
8000B830: lui   $at, 0x800F
8000B834: lwc1  F4, 0xCFD8 ($at)
8000B838: lui   $at, 0x800F
8000B83C: c.le.s F4, F0
8000B840: nop
8000B844: bc1t  0x8000B864
8000B848: nop
8000B84C: lwc1  F6, 0xCFDC ($at)
8000B850: or    $v0, $zero, $zero
8000B854: c.le.s F0, F6
8000B858: nop
8000B85C: bc1f  0x8000B86C
8000B860: nop
8000B864: jr    $ra
8000B868: addiu $v0, $zero, 0x0001

8000B86C: jr    $ra
8000B870: nop

8000B874: sll   $v1, $a3, 0x2
8000B878: lui   $t7, 0x8016
8000B87C: lui   $t8, 0x8016
8000B880: addu  $t7, $t7, $v1
8000B884: addu  $t8, $t8, $v1
8000B888: lw    $t7, 0x4560 ($t7)
8000B88C: lw    $t8, 0x4570 ($t8)
8000B890: andi  $t6, $a2, 0xFFFF
8000B894: addiu $sp, $sp, 0xFFD0
8000B898: sll   $a0, $t6, 0x3
8000B89C: sw    $a2, 0x0038 ($sp)
8000B8A0: addu  $v0, $t7, $a0
8000B8A4: addu  $a1, $t8, $a0
8000B8A8: lh    $t9, 0x0000 ($v0)
8000B8AC: lh    $t1, 0x0000 ($a1)
8000B8B0: lh    $t0, 0x0004 ($v0)
8000B8B4: lh    $t2, 0x0004 ($a1)
8000B8B8: mtc1  $t9, F4
8000B8BC: mtc1  $t1, F8
8000B8C0: mtc1  $t0, F6
8000B8C4: cvt.s.w F2, F4
8000B8C8: mtc1  $t2, F10
8000B8CC: lui   $at, 0x800F
8000B8D0: cvt.s.w F0, F8
8000B8D4: cvt.s.w F16, F6
8000B8D8: cvt.s.w F18, F10
8000B8DC: sub.s F4, F0, F2
8000B8E0: sub.s F6, F18, F16
8000B8E4: swc1  F4, 0x000C ($sp)
8000B8E8: lwc1  F8, 0x000C ($sp)
8000B8EC: swc1  F6, 0x0008 ($sp)
8000B8F0: mul.s F10, F8, F8
8000B8F4: lwc1  F4, 0x0008 ($sp)
8000B8F8: mul.s F6, F4, F4
8000B8FC: lwc1  F4, 0xCFE0 ($at)
8000B900: add.s F8, F10, F6
8000B904: c.lt.s F8, F4
8000B908: swc1  F8, 0x0004 ($sp)
8000B90C: bc1fl 0x8000B924
8000B910: sub.s F6, F12, F2
8000B914: mtc1  $zero, F0
8000B918: beq   $zero, $zero, 0x8000B954
8000B91C: nop
8000B920: sub.s F6, F12, F2
8000B924: lwc1  F10, 0x000C ($sp)
8000B928: lwc1  F4, 0x0008 ($sp)
8000B92C: lui   $at, 0x3F80
8000B930: mul.s F8, F10, F6
8000B934: sub.s F10, F14, F16
8000B938: mul.s F6, F4, F10
8000B93C: lwc1  F10, 0x0004 ($sp)
8000B940: add.s F18, F8, F6
8000B944: mtc1  $at, F6
8000B948: add.s F4, F18, F18
8000B94C: div.s F8, F4, F10
8000B950: sub.s F0, F8, F6
8000B954: jr    $ra
8000B958: addiu $sp, $sp, 0x0030

8000B95C: mtc1  $zero, F4
8000B960: lui   $t8, 0x8016
8000B964: addiu $t8, $t8, 0x3068
8000B968: sll   $t7, $a0, 0x2
8000B96C: addu  $v1, $t7, $t8
8000B970: lui   $t9, 0x800E
8000B974: swc1  F4, 0x0000 ($v1)
8000B978: lh    $t9, 0xC5A0 ($t9)
8000B97C: lui   $at, 0x800E
8000B980: addiu $sp, $sp, 0xFFD8
8000B984: sll   $t0, $t9, 0x2
8000B988: addu  $at, $at, $t0
8000B98C: lwc1  F6, 0xCA4C ($at)
8000B990: sll   $t3, $a0, 0x3
8000B994: sw    $a1, 0x002C ($sp)
8000B998: trunc.w.s F8, F6
8000B99C: andi  $t6, $a1, 0xFFFF
8000B9A0: subu  $t3, $t3, $a0
8000B9A4: or    $a1, $t6, $zero
8000B9A8: mfc1  $t2, F8
8000B9AC: sw    $ra, 0x0014 ($sp)
8000B9B0: or    $a3, $a2, $zero
8000B9B4: bltz  $t2, 0x8000BA04
8000B9B8: sll   $t3, $t3, 0x4
8000B9BC: subu  $t3, $t3, $a0
8000B9C0: sll   $t3, $t3, 0x2
8000B9C4: subu  $t3, $t3, $a0
8000B9C8: lui   $t4, 0x800F
8000B9CC: addiu $t4, $t4, 0x6990
8000B9D0: sll   $t3, $t3, 0x3
8000B9D4: addu  $v0, $t3, $t4
8000B9D8: lhu   $t5, 0x0000 ($v0)
8000B9DC: andi  $a2, $a1, 0xFFFF
8000B9E0: andi  $t6, $t5, 0x8000
8000B9E4: beql  $t6, $zero, 0x8000BA08
8000B9E8: lw    $ra, 0x0014 ($sp)
8000B9EC: lwc1  F12, 0x0014 ($v0)
8000B9F0: lwc1  F14, 0x001C ($v0)
8000B9F4: jal   0x8000B874
8000B9F8: sw    $v1, 0x0018 ($sp)
8000B9FC: lw    $v1, 0x0018 ($sp)
8000BA00: swc1  F0, 0x0000 ($v1)
8000BA04: lw    $ra, 0x0014 ($sp)
8000BA08: addiu $sp, $sp, 0x0028
8000BA0C: jr    $ra
8000BA10: nop

8000BA14: lui   $t4, 0x8016
8000BA18: lhu   $t4, 0x4430 ($t4)
8000BA1C: andi  $t6, $a0, 0xFFFF
8000BA20: addiu $t3, $t6, 0x0001
8000BA24: div   $t3, $t4
8000BA28: sll   $t7, $a3, 0x10
8000BA2C: sra   $t8, $t7, 0x10
8000BA30: addiu $sp, $sp, 0xFF98
8000BA34: sll   $t9, $t8, 0x2
8000BA38: lui   $v1, 0x8016
8000BA3C: addu  $v1, $v1, $t9
8000BA40: lw    $v1, 0x4550 ($v1)
8000BA44: sw    $a0, 0x0068 ($sp)
8000BA48: sll   $t0, $t6, 0x3
8000BA4C: or    $a0, $t6, $zero
8000BA50: sw    $a1, 0x006C ($sp)
8000BA54: sw    $a3, 0x0074 ($sp)
8000BA58: mfhi  $t5
8000BA5C: sw    $ra, 0x0014 ($sp)
8000BA60: sw    $a2, 0x0070 ($sp)
8000BA64: sll   $t6, $t5, 0x3
8000BA68: addu  $v0, $v1, $t0
8000BA6C: lh    $t1, 0x0000 ($v0)
8000BA70: or    $a3, $t8, $zero
8000BA74: addu  $a1, $v1, $t6
8000BA78: lh    $t8, 0x0004 ($a1)
8000BA7C: lh    $t7, 0x0000 ($a1)
8000BA80: mtc1  $t1, F4
8000BA84: mtc1  $t8, F10
8000BA88: lh    $t2, 0x0004 ($v0)
8000BA8C: mtc1  $t7, F8
8000BA90: cvt.s.w F18, F4
8000BA94: mtc1  $t2, F6
8000BA98: cvt.s.w F4, F10
8000BA9C: swc1  F18, 0x0054 ($sp)
8000BAA0: cvt.s.w F2, F8
8000BAA4: swc1  F4, 0x0048 ($sp)
8000BAA8: cvt.s.w F0, F6
8000BAAC: lwc1  F6, 0x0048 ($sp)
8000BAB0: bnez  $t4, 0x8000BABC
8000BAB4: nop
8000BAB8: break
8000BABC: addiu $at, $zero, 0xFFFF
8000BAC0: bne   $t4, $at, 0x8000BAD4
8000BAC4: lui   $at, 0x8000
8000BAC8: bne   $t3, $at, 0x8000BAD4
8000BACC: nop
8000BAD0: break
8000BAD4: sub.s F16, F2, F18
8000BAD8: swc1  F0, 0x0050 ($sp)
8000BADC: swc1  F2, 0x004C ($sp)
8000BAE0: sub.s F14, F6, F0
8000BAE4: mul.s F8, F16, F16
8000BAE8: swc1  F16, 0x001C ($sp)
8000BAEC: mul.s F10, F14, F14
8000BAF0: swc1  F14, 0x0020 ($sp)
8000BAF4: jal   sqrtf
8000BAF8: add.s F12, F8, F10
8000BAFC: lui   $at, 0x800F
8000BB00: lwc1  F4, 0xCFE4 ($at)
8000BB04: lui   $v0, 0x8016
8000BB08: lwc1  F2, 0x004C ($sp)
8000BB0C: c.lt.s F0, F4
8000BB10: lwc1  F14, 0x0020 ($sp)
8000BB14: lwc1  F16, 0x001C ($sp)
8000BB18: lwc1  F18, 0x0054 ($sp)
8000BB1C: bc1f  0x8000BB34
8000BB20: addiu $v0, $v0, 0x2FA0
8000BB24: lwc1  F6, 0x0048 ($sp)
8000BB28: swc1  F2, 0x0000 ($v0)
8000BB2C: beq   $zero, $zero, 0x8000BBC8
8000BB30: swc1  F6, 0x0008 ($v0)
8000BB34: lui   $at, 0x3F00
8000BB38: mtc1  $at, F10
8000BB3C: lwc1  F8, 0x006C ($sp)
8000BB40: mtc1  $at, F6
8000BB44: lui   $at, 0x3F80
8000BB48: mul.s F4, F8, F10
8000BB4C: lwc1  F10, 0x0070 ($sp)
8000BB50: mtc1  $at, F8
8000BB54: lui   $at, 0x8016
8000BB58: sub.s F2, F6, F4
8000BB5C: neg.s F6, F14
8000BB60: sub.s F12, F8, F2
8000BB64: mul.s F4, F10, F6
8000BB68: div.s F8, F4, F0
8000BB6C: add.s F6, F8, F18
8000BB70: mul.s F4, F12, F6
8000BB74: nop
8000BB78: mul.s F8, F10, F14
8000BB7C: div.s F6, F8, F0
8000BB80: add.s F8, F6, F18
8000BB84: mul.s F6, F2, F8
8000BB88: add.s F8, F6, F4
8000BB8C: neg.s F6, F16
8000BB90: swc1  F8, 0x2FA0 ($at)
8000BB94: mul.s F4, F10, F6
8000BB98: lwc1  F6, 0x0050 ($sp)
8000BB9C: lui   $at, 0x8016
8000BBA0: div.s F8, F4, F0
8000BBA4: add.s F4, F8, F6
8000BBA8: mul.s F8, F2, F4
8000BBAC: nop
8000BBB0: mul.s F4, F10, F16
8000BBB4: div.s F10, F4, F0
8000BBB8: add.s F4, F10, F6
8000BBBC: mul.s F10, F12, F4
8000BBC0: add.s F6, F8, F10
8000BBC4: swc1  F6, 0x2FA8 ($at)
8000BBC8: lw    $ra, 0x0014 ($sp)
8000BBCC: addiu $sp, $sp, 0x0068
8000BBD0: jr    $ra
8000BBD4: nop

8000BBD8: addiu $sp, $sp, 0xFFD8
8000BBDC: sw    $a0, 0x0028 ($sp)
8000BBE0: andi  $t6, $a0, 0xFFFF
8000BBE4: addiu $a0, $t6, 0x0001
8000BBE8: andi  $t5, $a0, 0xFFFF
8000BBEC: sll   $t7, $a2, 0x10
8000BBF0: sra   $t8, $t7, 0x10
8000BBF4: sll   $a3, $t6, 0x3
8000BBF8: sll   $t6, $t8, 0x1
8000BBFC: lui   $t7, 0x8016
8000BC00: addu  $t7, $t7, $t6
8000BC04: lhu   $t7, 0x45C8 ($t7)
8000BC08: sw    $a1, 0x002C ($sp)
8000BC0C: lui   $a1, 0x8016
8000BC10: div   $t5, $t7
8000BC14: sll   $v1, $t8, 0x2
8000BC18: addu  $a1, $a1, $v1
8000BC1C: lui   $t1, 0x8016
8000BC20: lw    $a1, 0x4560 ($a1)
8000BC24: addu  $t1, $t1, $v1
8000BC28: lw    $t1, 0x4570 ($t1)
8000BC2C: sw    $a2, 0x0030 ($sp)
8000BC30: addu  $v0, $a1, $a3
8000BC34: lh    $t9, 0x0000 ($v0)
8000BC38: or    $a0, $t5, $zero
8000BC3C: addu  $t0, $t1, $a3
8000BC40: lh    $t4, 0x0004 ($t0)
8000BC44: mtc1  $t9, F4
8000BC48: lh    $t2, 0x0004 ($v0)
8000BC4C: mtc1  $t4, F10
8000BC50: cvt.s.w F14, F4
8000BC54: or    $a2, $t8, $zero
8000BC58: lh    $t3, 0x0000 ($t0)
8000BC5C: mtc1  $t2, F6
8000BC60: cvt.s.w F4, F10
8000BC64: mtc1  $t3, F8
8000BC68: cvt.s.w F16, F6
8000BC6C: swc1  F4, 0x0008 ($sp)
8000BC70: cvt.s.w F18, F8
8000BC74: bnez  $t7, 0x8000BC80
8000BC78: nop
8000BC7C: break
8000BC80: addiu $at, $zero, 0xFFFF
8000BC84: bne   $t7, $at, 0x8000BC98
8000BC88: lui   $at, 0x8000
8000BC8C: bne   $a0, $at, 0x8000BC98
8000BC90: nop
8000BC94: break
8000BC98: mfhi  $a0
8000BC9C: andi  $t8, $a0, 0xFFFF
8000BCA0: sll   $a3, $t8, 0x3
8000BCA4: addu  $v0, $a1, $a3
8000BCA8: lh    $t9, 0x0000 ($v0)
8000BCAC: addu  $t0, $t1, $a3
8000BCB0: lui   $at, 0x3F00
8000BCB4: mtc1  $t9, F6
8000BCB8: mtc1  $at, F2
8000BCBC: or    $a0, $t8, $zero
8000BCC0: cvt.s.w F8, F6
8000BCC4: swc1  F8, 0x0014 ($sp)
8000BCC8: lh    $t2, 0x0004 ($v0)
8000BCCC: mtc1  $t2, F10
8000BCD0: nop
8000BCD4: cvt.s.w F4, F10
8000BCD8: swc1  F4, 0x0010 ($sp)
8000BCDC: lh    $t3, 0x0000 ($t0)
8000BCE0: mtc1  $t3, F6
8000BCE4: nop
8000BCE8: cvt.s.w F8, F6
8000BCEC: mtc1  $at, F6
8000BCF0: lui   $at, 0x3F80
8000BCF4: swc1  F8, 0x0004 ($sp)
8000BCF8: lh    $t4, 0x0004 ($t0)
8000BCFC: lwc1  F8, 0x002C ($sp)
8000BD00: mtc1  $t4, F10
8000BD04: nop
8000BD08: cvt.s.w F4, F10
8000BD0C: mul.s F10, F8, F2
8000BD10: lwc1  F8, 0x0014 ($sp)
8000BD14: swc1  F4, 0x0000 ($sp)
8000BD18: mtc1  $at, F4
8000BD1C: sub.s F0, F6, F10
8000BD20: lui   $at, 0x8016
8000BD24: add.s F6, F14, F8
8000BD28: lwc1  F8, 0x0004 ($sp)
8000BD2C: sub.s F12, F4, F0
8000BD30: mul.s F10, F6, F0
8000BD34: add.s F6, F18, F8
8000BD38: mul.s F4, F10, F2
8000BD3C: nop
8000BD40: mul.s F10, F12, F6
8000BD44: nop
8000BD48: mul.s F8, F10, F2
8000BD4C: lwc1  F10, 0x0008 ($sp)
8000BD50: add.s F6, F4, F8
8000BD54: lwc1  F4, 0x0000 ($sp)
8000BD58: add.s F8, F10, F4
8000BD5C: swc1  F6, 0x2FA0 ($at)
8000BD60: lwc1  F4, 0x0010 ($sp)
8000BD64: lui   $at, 0x8016
8000BD68: mul.s F6, F12, F8
8000BD6C: add.s F8, F16, F4
8000BD70: addiu $sp, $sp, 0x0028
8000BD74: mul.s F10, F6, F2
8000BD78: nop
8000BD7C: mul.s F6, F8, F0
8000BD80: nop
8000BD84: mul.s F4, F6, F2
8000BD88: add.s F8, F4, F10
8000BD8C: jr    $ra
8000BD90: swc1  F8, 0x2FA8 ($at)

8000BD94: addiu $sp, $sp, 0xFFD8
8000BD98: sll   $t6, $a3, 0x2
8000BD9C: lui   $v0, 0x8016
8000BDA0: addu  $v0, $v0, $t6
8000BDA4: lw    $a0, 0x4550 ($v0)
8000BDA8: sdc1  F26, 0x0020 ($sp)
8000BDAC: sdc1  F24, 0x0018 ($sp)
8000BDB0: sdc1  F22, 0x0010 ($sp)
8000BDB4: sdc1  F20, 0x0008 ($sp)
8000BDB8: lh    $t8, 0x0000 ($a0)
8000BDBC: lh    $t9, 0x0002 ($a0)
8000BDC0: lh    $t0, 0x0004 ($a0)
8000BDC4: mtc1  $t8, F4
8000BDC8: mtc1  $t9, F8
8000BDCC: mtc1  $a2, F20
8000BDD0: cvt.s.w F6, F4
8000BDD4: mtc1  $t0, F4
8000BDD8: sll   $t7, $a3, 0x1
8000BDDC: lui   $v1, 0x8016
8000BDE0: addu  $v1, $v1, $t7
8000BDE4: cvt.s.w F10, F8
8000BDE8: lhu   $v1, 0x45C8 ($v1)
8000BDEC: or    $a1, $zero, $zero
8000BDF0: addiu $a2, $zero, 0x0001
8000BDF4: slti  $at, $v1, 0x0002
8000BDF8: sub.s F0, F6, F12
8000BDFC: addiu $a3, $v1, 0xFFFF
8000BE00: andi  $t1, $a3, 0x0003
8000BE04: cvt.s.w F6, F4
8000BE08: mul.s F8, F0, F0
8000BE0C: sub.s F2, F10, F14
8000BE10: sub.s F16, F6, F20
8000BE14: mul.s F10, F2, F2
8000BE18: add.s F4, F8, F10
8000BE1C: mul.s F6, F16, F16
8000BE20: bnez  $at, 0x8000C0A0
8000BE24: add.s F18, F4, F6
8000BE28: beq   $t1, $zero, 0x8000BEB8
8000BE2C: addiu $v0, $t1, 0x0001
8000BE30: lh    $t2, 0x0000 ($a0)
8000BE34: lh    $t3, 0x0002 ($a0)
8000BE38: lh    $t4, 0x0004 ($a0)
8000BE3C: mtc1  $t2, F8
8000BE40: mtc1  $t3, F4
8000BE44: cvt.s.w F10, F8
8000BE48: mtc1  $t4, F8
8000BE4C: cvt.s.w F6, F4
8000BE50: sub.s F22, F10, F12
8000BE54: cvt.s.w F10, F8
8000BE58: mul.s F4, F22, F22
8000BE5C: sub.s F24, F6, F14
8000BE60: sub.s F26, F10, F20
8000BE64: mul.s F6, F24, F24
8000BE68: add.s F8, F4, F6
8000BE6C: mul.s F10, F26, F26
8000BE70: add.s F4, F8, F10
8000BE74: c.lt.s F4, F18
8000BE78: nop
8000BE7C: bc1fl 0x8000BEA8
8000BE80: addiu $a2, $a2, 0x0001
8000BE84: mul.s F6, F22, F22
8000BE88: sll   $a1, $a2, 0x10
8000BE8C: sra   $t5, $a1, 0x10
8000BE90: mul.s F8, F24, F24
8000BE94: or    $a1, $t5, $zero
8000BE98: mul.s F4, F26, F26
8000BE9C: add.s F10, F6, F8
8000BEA0: add.s F18, F10, F4
8000BEA4: addiu $a2, $a2, 0x0001
8000BEA8: bne   $v0, $a2, 0x8000BE30
8000BEAC: addiu $a0, $a0, 0x0008
8000BEB0: beql  $a2, $v1, 0x8000C0A4
8000BEB4: ldc1  F20, 0x0008 ($sp)
8000BEB8: lh    $t6, 0x0000 ($a0)
8000BEBC: lh    $t7, 0x0002 ($a0)
8000BEC0: lh    $t8, 0x0004 ($a0)
8000BEC4: mtc1  $t6, F6
8000BEC8: mtc1  $t7, F10
8000BECC: cvt.s.w F8, F6
8000BED0: mtc1  $t8, F6
8000BED4: cvt.s.w F4, F10
8000BED8: sub.s F22, F8, F12
8000BEDC: cvt.s.w F8, F6
8000BEE0: mul.s F10, F22, F22
8000BEE4: sub.s F24, F4, F14
8000BEE8: sub.s F26, F8, F20
8000BEEC: mul.s F4, F24, F24
8000BEF0: add.s F6, F10, F4
8000BEF4: mul.s F8, F26, F26
8000BEF8: add.s F10, F6, F8
8000BEFC: c.lt.s F10, F18
8000BF00: nop
8000BF04: bc1fl 0x8000BF30
8000BF08: lh    $t0, 0x0008 ($a0)
8000BF0C: mul.s F4, F22, F22
8000BF10: sll   $a1, $a2, 0x10
8000BF14: sra   $t9, $a1, 0x10
8000BF18: mul.s F6, F24, F24
8000BF1C: or    $a1, $t9, $zero
8000BF20: mul.s F10, F26, F26
8000BF24: add.s F8, F4, F6
8000BF28: add.s F18, F8, F10
8000BF2C: lh    $t0, 0x0008 ($a0)
8000BF30: lh    $t1, 0x000A ($a0)
8000BF34: lh    $t2, 0x000C ($a0)
8000BF38: mtc1  $t0, F4
8000BF3C: mtc1  $t1, F8
8000BF40: addiu $a0, $a0, 0x0008
8000BF44: cvt.s.w F6, F4
8000BF48: mtc1  $t2, F4
8000BF4C: cvt.s.w F10, F8
8000BF50: sub.s F22, F6, F12
8000BF54: cvt.s.w F6, F4
8000BF58: mul.s F8, F22, F22
8000BF5C: sub.s F24, F10, F14
8000BF60: sub.s F26, F6, F20
8000BF64: mul.s F10, F24, F24
8000BF68: add.s F4, F8, F10
8000BF6C: mul.s F6, F26, F26
8000BF70: add.s F8, F4, F6
8000BF74: c.lt.s F8, F18
8000BF78: nop
8000BF7C: bc1fl 0x8000BFA8
8000BF80: lh    $t5, 0x0008 ($a0)
8000BF84: mul.s F10, F22, F22
8000BF88: addiu $a1, $a2, 0x0001
8000BF8C: sll   $t3, $a1, 0x10
8000BF90: mul.s F4, F24, F24
8000BF94: sra   $a1, $t3, 0x10
8000BF98: mul.s F8, F26, F26
8000BF9C: add.s F6, F10, F4
8000BFA0: add.s F18, F6, F8
8000BFA4: lh    $t5, 0x0008 ($a0)
8000BFA8: lh    $t6, 0x000A ($a0)
8000BFAC: lh    $t7, 0x000C ($a0)
8000BFB0: mtc1  $t5, F10
8000BFB4: mtc1  $t6, F6
8000BFB8: addiu $a0, $a0, 0x0008
8000BFBC: cvt.s.w F4, F10
8000BFC0: mtc1  $t7, F10
8000BFC4: cvt.s.w F8, F6
8000BFC8: sub.s F22, F4, F12
8000BFCC: cvt.s.w F4, F10
8000BFD0: mul.s F6, F22, F22
8000BFD4: sub.s F24, F8, F14
8000BFD8: sub.s F26, F4, F20
8000BFDC: mul.s F8, F24, F24
8000BFE0: add.s F10, F6, F8
8000BFE4: mul.s F4, F26, F26
8000BFE8: add.s F6, F10, F4
8000BFEC: c.lt.s F6, F18
8000BFF0: nop
8000BFF4: bc1fl 0x8000C020
8000BFF8: lh    $t0, 0x0008 ($a0)
8000BFFC: mul.s F8, F22, F22
8000C000: addiu $a1, $a2, 0x0002
8000C004: sll   $t8, $a1, 0x10
8000C008: mul.s F10, F24, F24
8000C00C: sra   $a1, $t8, 0x10
8000C010: mul.s F6, F26, F26
8000C014: add.s F4, F8, F10
8000C018: add.s F18, F4, F6
8000C01C: lh    $t0, 0x0008 ($a0)
8000C020: lh    $t1, 0x000A ($a0)
8000C024: lh    $t2, 0x000C ($a0)
8000C028: mtc1  $t0, F8
8000C02C: mtc1  $t1, F4
8000C030: addiu $a0, $a0, 0x0008
8000C034: cvt.s.w F10, F8
8000C038: mtc1  $t2, F8
8000C03C: cvt.s.w F6, F4
8000C040: sub.s F22, F10, F12
8000C044: cvt.s.w F10, F8
8000C048: mul.s F4, F22, F22
8000C04C: sub.s F24, F6, F14
8000C050: sub.s F26, F10, F20
8000C054: mul.s F6, F24, F24
8000C058: add.s F8, F4, F6
8000C05C: mul.s F10, F26, F26
8000C060: add.s F4, F8, F10
8000C064: c.lt.s F4, F18
8000C068: nop
8000C06C: bc1fl 0x8000C098
8000C070: addiu $a2, $a2, 0x0004
8000C074: mul.s F6, F22, F22
8000C078: addiu $a1, $a2, 0x0003
8000C07C: sll   $t3, $a1, 0x10
8000C080: mul.s F8, F24, F24
8000C084: sra   $a1, $t3, 0x10
8000C088: mul.s F4, F26, F26
8000C08C: add.s F10, F6, F8
8000C090: add.s F18, F10, F4
8000C094: addiu $a2, $a2, 0x0004
8000C098: bne   $a2, $v1, 0x8000BEB8
8000C09C: addiu $a0, $a0, 0x0008
8000C0A0: ldc1  F20, 0x0008 ($sp)
8000C0A4: ldc1  F22, 0x0010 ($sp)
8000C0A8: ldc1  F24, 0x0018 ($sp)
8000C0AC: ldc1  F26, 0x0020 ($sp)
8000C0B0: addiu $sp, $sp, 0x0028
8000C0B4: jr    $ra
8000C0B8: or    $v0, $a1, $zero

8000C0BC: addiu $sp, $sp, 0xFFA0
8000C0C0: lw    $t7, 0x0070 ($sp)
8000C0C4: sdc1  F26, 0x0020 ($sp)
8000C0C8: sdc1  F24, 0x0018 ($sp)
8000C0CC: sdc1  F22, 0x0010 ($sp)
8000C0D0: sdc1  F20, 0x0008 ($sp)
8000C0D4: sw    $a3, 0x006C ($sp)
8000C0D8: lw    $t0, 0x0000 ($t7)
8000C0DC: mtc1  $a2, F22
8000C0E0: lui   $a2, 0x8016
8000C0E4: sll   $t9, $t0, 0x1
8000C0E8: lui   $t2, 0x8016
8000C0EC: addu  $a2, $a2, $t9
8000C0F0: sll   $t8, $t0, 0x2
8000C0F4: lhu   $a2, 0x45C8 ($a2)
8000C0F8: addu  $t2, $t2, $t8
8000C0FC: lw    $t2, 0x4550 ($t2)
8000C100: andi  $t6, $a3, 0xFFFF
8000C104: lui   $at, 0x800F
8000C108: or    $a3, $t6, $zero
8000C10C: mov.s F20, F12
8000C110: lwc1  F16, 0xCFE8 ($at)
8000C114: or    $a0, $zero, $zero
8000C118: or    $t1, $zero, $zero
8000C11C: or    $a1, $zero, $zero
8000C120: or    $v1, $zero, $zero
8000C124: blez  $a2, 0x8000C328
8000C128: or    $v0, $t2, $zero
8000C12C: andi  $t3, $a2, 0x0001
8000C130: beq   $t3, $zero, 0x8000C1E0
8000C134: nop
8000C138: lhu   $t6, 0x0006 ($t2)
8000C13C: lui   $t5, 0x800E
8000C140: addiu $t5, $t5, 0xC5A0
8000C144: beq   $a3, $t6, 0x8000C15C
8000C148: addiu $v1, $zero, 0x0001
8000C14C: lh    $t7, 0x0000 ($t5)
8000C150: addiu $t4, $zero, 0x0014
8000C154: bne   $t4, $t7, 0x8000C1D8
8000C158: nop
8000C15C: lh    $t8, 0x0000 ($t2)
8000C160: lh    $t9, 0x0002 ($t2)
8000C164: lh    $t6, 0x0004 ($t2)
8000C168: mtc1  $t8, F4
8000C16C: mtc1  $t9, F8
8000C170: lui   $at, 0x800F
8000C174: cvt.s.w F6, F4
8000C178: mtc1  $t6, F4
8000C17C: addiu $t1, $zero, 0x0001
8000C180: cvt.s.w F10, F8
8000C184: sub.s F18, F6, F20
8000C188: cvt.s.w F6, F4
8000C18C: mul.s F8, F18, F18
8000C190: sub.s F24, F10, F14
8000C194: sub.s F26, F6, F22
8000C198: mul.s F10, F24, F24
8000C19C: add.s F4, F8, F10
8000C1A0: mul.s F6, F26, F26
8000C1A4: lwc1  F10, 0xCFEC ($at)
8000C1A8: add.s F8, F4, F6
8000C1AC: c.lt.s F8, F10
8000C1B0: nop
8000C1B4: bc1f  0x8000C1D8
8000C1B8: nop
8000C1BC: mul.s F4, F18, F18
8000C1C0: or    $a0, $zero, $zero
8000C1C4: addiu $a1, $zero, 0x0001
8000C1C8: mul.s F6, F24, F24
8000C1CC: add.s F8, F4, F6
8000C1D0: mul.s F10, F26, F26
8000C1D4: add.s F16, F8, F10
8000C1D8: beq   $v1, $a2, 0x8000C328
8000C1DC: addiu $v0, $t2, 0x0008
8000C1E0: lui   $t5, 0x800E
8000C1E4: addiu $t5, $t5, 0xC5A0
8000C1E8: addiu $t4, $zero, 0x0014
8000C1EC: or    $t3, $a3, $zero
8000C1F0: lhu   $t7, 0x0006 ($v0)
8000C1F4: beql  $t3, $t7, 0x8000C20C
8000C1F8: lh    $t9, 0x0000 ($v0)
8000C1FC: lh    $t8, 0x0000 ($t5)
8000C200: bnel  $t4, $t8, 0x8000C288
8000C204: lhu   $t9, 0x000E ($v0)
8000C208: lh    $t9, 0x0000 ($v0)
8000C20C: lh    $t6, 0x0002 ($v0)
8000C210: lh    $t7, 0x0004 ($v0)
8000C214: mtc1  $t9, F4
8000C218: mtc1  $t6, F8
8000C21C: addiu $t1, $zero, 0x0001
8000C220: cvt.s.w F6, F4
8000C224: mtc1  $t7, F4
8000C228: cvt.s.w F10, F8
8000C22C: sub.s F18, F6, F20
8000C230: cvt.s.w F6, F4
8000C234: mul.s F8, F18, F18
8000C238: sub.s F24, F10, F14
8000C23C: sub.s F26, F6, F22
8000C240: mul.s F10, F24, F24
8000C244: add.s F4, F8, F10
8000C248: mul.s F6, F26, F26
8000C24C: add.s F8, F4, F6
8000C250: c.lt.s F8, F16
8000C254: nop
8000C258: bc1fl 0x8000C288
8000C25C: lhu   $t9, 0x000E ($v0)
8000C260: mul.s F10, F18, F18
8000C264: sll   $a0, $v1, 0x10
8000C268: sra   $t8, $a0, 0x10
8000C26C: mul.s F4, F24, F24
8000C270: or    $a0, $t8, $zero
8000C274: addiu $a1, $zero, 0x0001
8000C278: mul.s F8, F26, F26
8000C27C: add.s F6, F10, F4
8000C280: add.s F16, F6, F8
8000C284: lhu   $t9, 0x000E ($v0)
8000C288: addiu $v0, $v0, 0x0008
8000C28C: beql  $t3, $t9, 0x8000C2A4
8000C290: lh    $t7, 0x0000 ($v0)
8000C294: lh    $t6, 0x0000 ($t5)
8000C298: bnel  $t4, $t6, 0x8000C320
8000C29C: addiu $v1, $v1, 0x0002
8000C2A0: lh    $t7, 0x0000 ($v0)
8000C2A4: lh    $t8, 0x0002 ($v0)
8000C2A8: lh    $t9, 0x0004 ($v0)
8000C2AC: mtc1  $t7, F10
8000C2B0: mtc1  $t8, F6
8000C2B4: addiu $t1, $zero, 0x0001
8000C2B8: cvt.s.w F4, F10
8000C2BC: mtc1  $t9, F10
8000C2C0: cvt.s.w F8, F6
8000C2C4: sub.s F18, F4, F20
8000C2C8: cvt.s.w F4, F10
8000C2CC: mul.s F6, F18, F18
8000C2D0: sub.s F24, F8, F14
8000C2D4: sub.s F26, F4, F22
8000C2D8: mul.s F8, F24, F24
8000C2DC: add.s F10, F6, F8
8000C2E0: mul.s F4, F26, F26
8000C2E4: add.s F6, F10, F4
8000C2E8: c.lt.s F6, F16
8000C2EC: nop
8000C2F0: bc1fl 0x8000C320
8000C2F4: addiu $v1, $v1, 0x0002
8000C2F8: mul.s F8, F18, F18
8000C2FC: addiu $a0, $v1, 0x0001
8000C300: sll   $t6, $a0, 0x10
8000C304: mul.s F10, F24, F24
8000C308: sra   $a0, $t6, 0x10
8000C30C: addiu $a1, $zero, 0x0001
8000C310: mul.s F6, F26, F26
8000C314: add.s F4, F8, F10
8000C318: add.s F16, F4, F6
8000C31C: addiu $v1, $v1, 0x0002
8000C320: bne   $v1, $a2, 0x8000C1F0
8000C324: addiu $v0, $v0, 0x0008
8000C328: bnez  $t1, 0x8000C544
8000C32C: lw    $t4, 0x0028 ($sp)
8000C330: or    $t1, $zero, $zero
8000C334: beq   $t1, $t0, 0x8000C530
8000C338: sll   $t3, $t1, 0x2
8000C33C: lui   $t8, 0x8016
8000C340: addu  $t8, $t8, $t3
8000C344: lw    $t8, 0x3368 ($t8)
8000C348: lui   $t2, 0x8016
8000C34C: addu  $t2, $t2, $t3
8000C350: slti  $at, $t8, 0x0002
8000C354: bnez  $at, 0x8000C530
8000C358: sll   $t9, $t1, 0x1
8000C35C: lui   $a2, 0x8016
8000C360: addu  $a2, $a2, $t9
8000C364: lhu   $a2, 0x45C8 ($a2)
8000C368: lw    $t2, 0x4550 ($t2)
8000C36C: or    $v1, $zero, $zero
8000C370: blez  $a2, 0x8000C530
8000C374: or    $v0, $t2, $zero
8000C378: andi  $t5, $a2, 0x0001
8000C37C: beq   $t5, $zero, 0x8000C410
8000C380: or    $t3, $a3, $zero
8000C384: lhu   $t6, 0x0006 ($t2)
8000C388: addiu $v1, $zero, 0x0001
8000C38C: bne   $t3, $t6, 0x8000C408
8000C390: nop
8000C394: lh    $t7, 0x0000 ($t2)
8000C398: lh    $t8, 0x0002 ($t2)
8000C39C: lh    $t9, 0x0004 ($t2)
8000C3A0: mtc1  $t7, F8
8000C3A4: mtc1  $t8, F4
8000C3A8: cvt.s.w F10, F8
8000C3AC: mtc1  $t9, F8
8000C3B0: cvt.s.w F6, F4
8000C3B4: sub.s F18, F10, F20
8000C3B8: cvt.s.w F10, F8
8000C3BC: mul.s F4, F18, F18
8000C3C0: sub.s F24, F6, F14
8000C3C4: sub.s F26, F10, F22
8000C3C8: mul.s F6, F24, F24
8000C3CC: add.s F8, F4, F6
8000C3D0: mul.s F10, F26, F26
8000C3D4: add.s F4, F8, F10
8000C3D8: c.lt.s F4, F16
8000C3DC: nop
8000C3E0: bc1f  0x8000C408
8000C3E4: nop
8000C3E8: mul.s F6, F18, F18
8000C3EC: or    $a0, $zero, $zero
8000C3F0: or    $t4, $t1, $zero
8000C3F4: mul.s F8, F24, F24
8000C3F8: addiu $a1, $zero, 0x0002
8000C3FC: mul.s F4, F26, F26
8000C400: add.s F10, F6, F8
8000C404: add.s F16, F10, F4
8000C408: beq   $v1, $a2, 0x8000C530
8000C40C: addiu $v0, $t2, 0x0008
8000C410: lhu   $t6, 0x0006 ($v0)
8000C414: bnel  $t3, $t6, 0x8000C49C
8000C418: lhu   $t7, 0x000E ($v0)
8000C41C: lh    $t7, 0x0000 ($v0)
8000C420: lh    $t8, 0x0002 ($v0)
8000C424: lh    $t9, 0x0004 ($v0)
8000C428: mtc1  $t7, F6
8000C42C: mtc1  $t8, F10
8000C430: cvt.s.w F8, F6
8000C434: mtc1  $t9, F6
8000C438: cvt.s.w F4, F10
8000C43C: sub.s F18, F8, F20
8000C440: cvt.s.w F8, F6
8000C444: mul.s F10, F18, F18
8000C448: sub.s F24, F4, F14
8000C44C: sub.s F26, F8, F22
8000C450: mul.s F4, F24, F24
8000C454: add.s F6, F10, F4
8000C458: mul.s F8, F26, F26
8000C45C: add.s F10, F6, F8
8000C460: c.lt.s F10, F16
8000C464: nop
8000C468: bc1fl 0x8000C49C
8000C46C: lhu   $t7, 0x000E ($v0)
8000C470: mul.s F4, F18, F18
8000C474: sll   $a0, $v1, 0x10
8000C478: sra   $t6, $a0, 0x10
8000C47C: mul.s F6, F24, F24
8000C480: or    $a0, $t6, $zero
8000C484: or    $t4, $t1, $zero
8000C488: mul.s F10, F26, F26
8000C48C: addiu $a1, $zero, 0x0002
8000C490: add.s F8, F4, F6
8000C494: add.s F16, F8, F10
8000C498: lhu   $t7, 0x000E ($v0)
8000C49C: addiu $v0, $v0, 0x0008
8000C4A0: bnel  $t3, $t7, 0x8000C528
8000C4A4: addiu $v1, $v1, 0x0002
8000C4A8: lh    $t8, 0x0000 ($v0)
8000C4AC: lh    $t9, 0x0002 ($v0)
8000C4B0: lh    $t6, 0x0004 ($v0)
8000C4B4: mtc1  $t8, F4
8000C4B8: mtc1  $t9, F8
8000C4BC: cvt.s.w F6, F4
8000C4C0: mtc1  $t6, F4
8000C4C4: cvt.s.w F10, F8
8000C4C8: sub.s F18, F6, F20
8000C4CC: cvt.s.w F6, F4
8000C4D0: mul.s F8, F18, F18
8000C4D4: sub.s F24, F10, F14
8000C4D8: sub.s F26, F6, F22
8000C4DC: mul.s F10, F24, F24
8000C4E0: add.s F4, F8, F10
8000C4E4: mul.s F6, F26, F26
8000C4E8: add.s F8, F4, F6
8000C4EC: c.lt.s F8, F16
8000C4F0: nop
8000C4F4: bc1fl 0x8000C528
8000C4F8: addiu $v1, $v1, 0x0002
8000C4FC: mul.s F10, F18, F18
8000C500: addiu $a0, $v1, 0x0001
8000C504: sll   $t7, $a0, 0x10
8000C508: mul.s F4, F24, F24
8000C50C: sra   $a0, $t7, 0x10
8000C510: or    $t4, $t1, $zero
8000C514: mul.s F8, F26, F26
8000C518: addiu $a1, $zero, 0x0002
8000C51C: add.s F6, F10, F4
8000C520: add.s F16, F6, F8
8000C524: addiu $v1, $v1, 0x0002
8000C528: bne   $v1, $a2, 0x8000C410
8000C52C: addiu $v0, $v0, 0x0008
8000C530: addiu $t1, $t1, 0x0001
8000C534: addiu $at, $zero, 0x0004
8000C538: bne   $t1, $at, 0x8000C334
8000C53C: nop
8000C540: sw    $t4, 0x0028 ($sp)
8000C544: bnez  $a1, 0x8000C858
8000C548: lw    $t4, 0x0028 ($sp)
8000C54C: lui   $t2, 0x8016
8000C550: lw    $v0, 0x4550 ($t2)
8000C554: lui   $a2, 0x8016
8000C558: lhu   $a2, 0x45C8 ($a2)
8000C55C: lh    $t9, 0x0000 ($v0)
8000C560: lh    $t6, 0x0002 ($v0)
8000C564: lh    $t7, 0x0004 ($v0)
8000C568: mtc1  $t9, F10
8000C56C: mtc1  $t6, F6
8000C570: slti  $at, $a2, 0x0002
8000C574: cvt.s.w F4, F10
8000C578: mtc1  $t7, F10
8000C57C: addiu $t0, $a2, 0xFFFF
8000C580: or    $a0, $zero, $zero
8000C584: andi  $t8, $t0, 0x0003
8000C588: cvt.s.w F8, F6
8000C58C: addiu $v1, $zero, 0x0001
8000C590: sub.s F0, F4, F20
8000C594: cvt.s.w F4, F10
8000C598: mul.s F6, F0, F0
8000C59C: sub.s F2, F8, F14
8000C5A0: sub.s F12, F4, F22
8000C5A4: mul.s F8, F2, F2
8000C5A8: add.s F10, F6, F8
8000C5AC: mul.s F4, F12, F12
8000C5B0: bnez  $at, 0x8000C858
8000C5B4: add.s F16, F10, F4
8000C5B8: beq   $t8, $zero, 0x8000C650
8000C5BC: addiu $a3, $t8, 0x0001
8000C5C0: lh    $t9, 0x0000 ($v0)
8000C5C4: lh    $t6, 0x0002 ($v0)
8000C5C8: lh    $t7, 0x0004 ($v0)
8000C5CC: mtc1  $t9, F6
8000C5D0: mtc1  $t6, F10
8000C5D4: cvt.s.w F8, F6
8000C5D8: mtc1  $t7, F6
8000C5DC: cvt.s.w F4, F10
8000C5E0: sub.s F18, F8, F20
8000C5E4: cvt.s.w F8, F6
8000C5E8: mul.s F10, F18, F18
8000C5EC: sub.s F24, F4, F14
8000C5F0: sub.s F26, F8, F22
8000C5F4: mul.s F4, F24, F24
8000C5F8: add.s F6, F10, F4
8000C5FC: mul.s F8, F26, F26
8000C600: add.s F10, F6, F8
8000C604: c.lt.s F10, F16
8000C608: nop
8000C60C: bc1fl 0x8000C640
8000C610: addiu $v1, $v1, 0x0001
8000C614: mul.s F4, F18, F18
8000C618: sll   $a0, $v1, 0x10
8000C61C: sra   $t8, $a0, 0x10
8000C620: mul.s F6, F24, F24
8000C624: or    $a0, $t8, $zero
8000C628: or    $t4, $zero, $zero
8000C62C: mul.s F10, F26, F26
8000C630: addiu $a1, $zero, 0x0002
8000C634: add.s F8, F4, F6
8000C638: add.s F16, F8, F10
8000C63C: addiu $v1, $v1, 0x0001
8000C640: bne   $a3, $v1, 0x8000C5C0
8000C644: addiu $v0, $v0, 0x0008
8000C648: beql  $v1, $a2, 0x8000C85C
8000C64C: addiu $at, $zero, 0x0002
8000C650: lh    $t9, 0x0000 ($v0)
8000C654: lh    $t6, 0x0002 ($v0)
8000C658: lh    $t7, 0x0004 ($v0)
8000C65C: mtc1  $t9, F4
8000C660: mtc1  $t6, F8
8000C664: cvt.s.w F6, F4
8000C668: mtc1  $t7, F4
8000C66C: cvt.s.w F10, F8
8000C670: sub.s F18, F6, F20
8000C674: cvt.s.w F6, F4
8000C678: mul.s F8, F18, F18
8000C67C: sub.s F24, F10, F14
8000C680: sub.s F26, F6, F22
8000C684: mul.s F10, F24, F24
8000C688: add.s F4, F8, F10
8000C68C: mul.s F6, F26, F26
8000C690: add.s F8, F4, F6
8000C694: c.lt.s F8, F16
8000C698: nop
8000C69C: bc1fl 0x8000C6D0
8000C6A0: lh    $t9, 0x0008 ($v0)
8000C6A4: mul.s F10, F18, F18
8000C6A8: sll   $a0, $v1, 0x10
8000C6AC: sra   $t8, $a0, 0x10
8000C6B0: mul.s F4, F24, F24
8000C6B4: or    $a0, $t8, $zero
8000C6B8: or    $t4, $zero, $zero
8000C6BC: mul.s F8, F26, F26
8000C6C0: addiu $a1, $zero, 0x0002
8000C6C4: add.s F6, F10, F4
8000C6C8: add.s F16, F6, F8
8000C6CC: lh    $t9, 0x0008 ($v0)
8000C6D0: lh    $t6, 0x000A ($v0)
8000C6D4: lh    $t7, 0x000C ($v0)
8000C6D8: mtc1  $t9, F10
8000C6DC: mtc1  $t6, F6
8000C6E0: addiu $v0, $v0, 0x0008
8000C6E4: cvt.s.w F4, F10
8000C6E8: mtc1  $t7, F10
8000C6EC: cvt.s.w F8, F6
8000C6F0: sub.s F18, F4, F20
8000C6F4: cvt.s.w F4, F10
8000C6F8: mul.s F6, F18, F18
8000C6FC: sub.s F24, F8, F14
8000C700: sub.s F26, F4, F22
8000C704: mul.s F8, F24, F24
8000C708: add.s F10, F6, F8
8000C70C: mul.s F4, F26, F26
8000C710: add.s F6, F10, F4
8000C714: c.lt.s F6, F16
8000C718: nop
8000C71C: bc1fl 0x8000C750
8000C720: lh    $t6, 0x0008 ($v0)
8000C724: mul.s F8, F18, F18
8000C728: addiu $a0, $v1, 0x0001
8000C72C: sll   $t8, $a0, 0x10
8000C730: mul.s F10, F24, F24
8000C734: sra   $a0, $t8, 0x10
8000C738: or    $t4, $zero, $zero
8000C73C: mul.s F6, F26, F26
8000C740: addiu $a1, $zero, 0x0002
8000C744: add.s F4, F8, F10
8000C748: add.s F16, F4, F6
8000C74C: lh    $t6, 0x0008 ($v0)
8000C750: lh    $t7, 0x000A ($v0)
8000C754: lh    $t8, 0x000C ($v0)
8000C758: mtc1  $t6, F8
8000C75C: mtc1  $t7, F4
8000C760: addiu $v0, $v0, 0x0008
8000C764: cvt.s.w F10, F8
8000C768: mtc1  $t8, F8
8000C76C: cvt.s.w F6, F4
8000C770: sub.s F18, F10, F20
8000C774: cvt.s.w F10, F8
8000C778: mul.s F4, F18, F18
8000C77C: sub.s F24, F6, F14
8000C780: sub.s F26, F10, F22
8000C784: mul.s F6, F24, F24
8000C788: add.s F8, F4, F6
8000C78C: mul.s F10, F26, F26
8000C790: add.s F4, F8, F10
8000C794: c.lt.s F4, F16
8000C798: nop
8000C79C: bc1fl 0x8000C7D0
8000C7A0: lh    $t7, 0x0008 ($v0)
8000C7A4: mul.s F6, F18, F18
8000C7A8: addiu $a0, $v1, 0x0002
8000C7AC: sll   $t9, $a0, 0x10
8000C7B0: mul.s F8, F24, F24
8000C7B4: sra   $a0, $t9, 0x10
8000C7B8: or    $t4, $zero, $zero
8000C7BC: mul.s F4, F26, F26
8000C7C0: addiu $a1, $zero, 0x0002
8000C7C4: add.s F10, F6, F8
8000C7C8: add.s F16, F10, F4
8000C7CC: lh    $t7, 0x0008 ($v0)
8000C7D0: lh    $t8, 0x000A ($v0)
8000C7D4: lh    $t9, 0x000C ($v0)
8000C7D8: mtc1  $t7, F6
8000C7DC: mtc1  $t8, F10
8000C7E0: addiu $v0, $v0, 0x0008
8000C7E4: cvt.s.w F8, F6
8000C7E8: mtc1  $t9, F6
8000C7EC: cvt.s.w F4, F10
8000C7F0: sub.s F18, F8, F20
8000C7F4: cvt.s.w F8, F6
8000C7F8: mul.s F10, F18, F18
8000C7FC: sub.s F24, F4, F14
8000C800: sub.s F26, F8, F22
8000C804: mul.s F4, F24, F24
8000C808: add.s F6, F10, F4
8000C80C: mul.s F8, F26, F26
8000C810: add.s F10, F6, F8
8000C814: c.lt.s F10, F16
8000C818: nop
8000C81C: bc1fl 0x8000C850
8000C820: addiu $v1, $v1, 0x0004
8000C824: mul.s F4, F18, F18
8000C828: addiu $a0, $v1, 0x0003
8000C82C: sll   $t6, $a0, 0x10
8000C830: mul.s F6, F24, F24
8000C834: sra   $a0, $t6, 0x10
8000C838: or    $t4, $zero, $zero
8000C83C: mul.s F10, F26, F26
8000C840: addiu $a1, $zero, 0x0002
8000C844: add.s F8, F4, F6
8000C848: add.s F16, F8, F10
8000C84C: addiu $v1, $v1, 0x0004
8000C850: bne   $v1, $a2, 0x8000C650
8000C854: addiu $v0, $v0, 0x0008
8000C858: addiu $at, $zero, 0x0002
8000C85C: bne   $a1, $at, 0x8000C86C
8000C860: or    $v0, $a0, $zero
8000C864: lw    $t8, 0x0070 ($sp)
8000C868: sw    $t4, 0x0000 ($t8)
8000C86C: ldc1  F20, 0x0008 ($sp)
8000C870: ldc1  F22, 0x0010 ($sp)
8000C874: ldc1  F24, 0x0018 ($sp)
8000C878: ldc1  F26, 0x0020 ($sp)
8000C87C: jr    $ra
8000C880: addiu $sp, $sp, 0x0060

8000C884: addiu $sp, $sp, 0xFFE8
8000C888: lw    $a0, 0x0028 ($sp)
8000C88C: sll   $t6, $a3, 0x10
8000C890: sra   $t7, $t6, 0x10
8000C894: sdc1  F22, 0x0010 ($sp)
8000C898: addiu $t0, $t7, 0xFFFD
8000C89C: mtc1  $a2, F22
8000C8A0: lui   $at, 0x800F
8000C8A4: sll   $t3, $t0, 0x10
8000C8A8: lwc1  F0, 0xCFF0 ($at)
8000C8AC: lui   $v0, 0x8016
8000C8B0: lui   $a1, 0x8016
8000C8B4: sra   $t4, $t3, 0x10
8000C8B8: sll   $a2, $t0, 0x10
8000C8BC: addiu $t1, $t7, 0x0007
8000C8C0: sll   $t8, $a0, 0x1
8000C8C4: sll   $t9, $a0, 0x2
8000C8C8: sdc1  F20, 0x0008 ($sp)
8000C8CC: sw    $a3, 0x0024 ($sp)
8000C8D0: addu  $v0, $v0, $t8
8000C8D4: addu  $a1, $a1, $t9
8000C8D8: slt   $at, $t4, $t1
8000C8DC: sra   $t2, $a2, 0x10
8000C8E0: or    $a3, $t7, $zero
8000C8E4: mov.s F20, F14
8000C8E8: addiu $v1, $zero, 0xFFFF
8000C8EC: lhu   $v0, 0x45C8 ($v0)
8000C8F0: lw    $a1, 0x4550 ($a1)
8000C8F4: beq   $at, $zero, 0x8000C9C8
8000C8F8: or    $a2, $t2, $zero
8000C8FC: lhu   $t0, 0x002E ($sp)
8000C900: addu  $t5, $a2, $v0
8000C904: div   $t5, $v0
8000C908: mfhi  $a0
8000C90C: sll   $t6, $a0, 0x10
8000C910: sra   $t7, $t6, 0x10
8000C914: sll   $t8, $t7, 0x3
8000C918: addu  $a3, $t8, $a1
8000C91C: lhu   $t9, 0x0006 ($a3)
8000C920: bnez  $v0, 0x8000C92C
8000C924: nop
8000C928: break
8000C92C: addiu $at, $zero, 0xFFFF
8000C930: bne   $v0, $at, 0x8000C944
8000C934: lui   $at, 0x8000
8000C938: bne   $t5, $at, 0x8000C944
8000C93C: nop
8000C940: break
8000C944: addiu $a2, $a2, 0x0001
8000C948: bne   $t0, $t9, 0x8000C9B4
8000C94C: or    $a0, $t7, $zero
8000C950: lh    $t2, 0x0000 ($a3)
8000C954: lh    $t3, 0x0002 ($a3)
8000C958: lh    $t4, 0x0004 ($a3)
8000C95C: mtc1  $t2, F4
8000C960: mtc1  $t3, F8
8000C964: cvt.s.w F6, F4
8000C968: mtc1  $t4, F4
8000C96C: cvt.s.w F10, F8
8000C970: sub.s F2, F6, F12
8000C974: cvt.s.w F6, F4
8000C978: mul.s F8, F2, F2
8000C97C: sub.s F14, F10, F20
8000C980: sub.s F16, F6, F22
8000C984: mul.s F10, F14, F14
8000C988: add.s F4, F8, F10
8000C98C: mul.s F6, F16, F16
8000C990: add.s F18, F4, F6
8000C994: c.lt.s F18, F0
8000C998: nop
8000C99C: bc1fl 0x8000C9B8
8000C9A0: sll   $t6, $a2, 0x10
8000C9A4: sll   $v1, $t7, 0x10
8000C9A8: sra   $t5, $v1, 0x10
8000C9AC: mov.s F0, F18
8000C9B0: or    $v1, $t5, $zero
8000C9B4: sll   $t6, $a2, 0x10
8000C9B8: sra   $t7, $t6, 0x10
8000C9BC: slt   $at, $t7, $t1
8000C9C0: bnez  $at, 0x8000C900
8000C9C4: or    $a2, $t7, $zero
8000C9C8: ldc1  F20, 0x0008 ($sp)
8000C9CC: ldc1  F22, 0x0010 ($sp)
8000C9D0: addiu $sp, $sp, 0x0018
8000C9D4: jr    $ra
8000C9D8: or    $v0, $v1, $zero

8000C9DC: addiu $sp, $sp, 0xFFE8
8000C9E0: lw    $a1, 0x0028 ($sp)
8000C9E4: sll   $t6, $a3, 0x10
8000C9E8: sra   $t7, $t6, 0x10
8000C9EC: sdc1  F22, 0x0010 ($sp)
8000C9F0: addiu $t1, $t7, 0xFFFD
8000C9F4: mtc1  $a2, F22
8000C9F8: lui   $at, 0x800F
8000C9FC: sll   $t2, $t1, 0x10
8000CA00: lwc1  F0, 0xCFF4 ($at)
8000CA04: lui   $a0, 0x8016
8000CA08: lui   $a2, 0x8016
8000CA0C: sra   $t5, $t2, 0x10
8000CA10: sll   $t0, $t1, 0x10
8000CA14: addiu $t3, $t7, 0x0007
8000CA18: sll   $t8, $a1, 0x1
8000CA1C: sll   $t9, $a1, 0x2
8000CA20: sdc1  F20, 0x0008 ($sp)
8000CA24: sw    $a3, 0x0024 ($sp)
8000CA28: addu  $a0, $a0, $t8
8000CA2C: addu  $a2, $a2, $t9
8000CA30: slt   $at, $t5, $t3
8000CA34: sra   $t4, $t0, 0x10
8000CA38: or    $a3, $t7, $zero
8000CA3C: mov.s F20, F14
8000CA40: or    $v0, $zero, $zero
8000CA44: addiu $v1, $zero, 0xFFFF
8000CA48: lhu   $a0, 0x45C8 ($a0)
8000CA4C: lw    $a2, 0x4550 ($a2)
8000CA50: or    $t0, $t4, $zero
8000CA54: beq   $at, $zero, 0x8000CB20
8000CA58: or    $t2, $t5, $zero
8000CA5C: addu  $t6, $t0, $a0
8000CA60: div   $t6, $a0
8000CA64: mfhi  $a1
8000CA68: sll   $t7, $a1, 0x10
8000CA6C: sra   $t8, $t7, 0x10
8000CA70: sll   $t9, $t8, 0x3
8000CA74: addu  $a3, $t9, $a2
8000CA78: lh    $t4, 0x0000 ($a3)
8000CA7C: lh    $t5, 0x0002 ($a3)
8000CA80: bnez  $a0, 0x8000CA8C
8000CA84: nop
8000CA88: break
8000CA8C: addiu $at, $zero, 0xFFFF
8000CA90: bne   $a0, $at, 0x8000CAA4
8000CA94: lui   $at, 0x8000
8000CA98: bne   $t6, $at, 0x8000CAA4
8000CA9C: nop
8000CAA0: break
8000CAA4: mtc1  $t4, F4
8000CAA8: mtc1  $t5, F8
8000CAAC: lh    $t6, 0x0004 ($a3)
8000CAB0: cvt.s.w F6, F4
8000CAB4: addiu $t0, $t0, 0x0001
8000CAB8: mtc1  $t6, F4
8000CABC: or    $a1, $t8, $zero
8000CAC0: cvt.s.w F10, F8
8000CAC4: sub.s F2, F6, F12
8000CAC8: cvt.s.w F6, F4
8000CACC: mul.s F8, F2, F2
8000CAD0: sub.s F14, F10, F20
8000CAD4: sub.s F16, F6, F22
8000CAD8: mul.s F10, F14, F14
8000CADC: add.s F4, F8, F10
8000CAE0: mul.s F6, F16, F16
8000CAE4: add.s F18, F4, F6
8000CAE8: c.lt.s F18, F0
8000CAEC: nop
8000CAF0: bc1fl 0x8000CB10
8000CAF4: sll   $t8, $t0, 0x10
8000CAF8: sll   $v1, $t8, 0x10
8000CAFC: sra   $t7, $v1, 0x10
8000CB00: mov.s F0, F18
8000CB04: or    $v1, $t7, $zero
8000CB08: addiu $v0, $zero, 0x0001
8000CB0C: sll   $t8, $t0, 0x10
8000CB10: sra   $t9, $t8, 0x10
8000CB14: slt   $at, $t9, $t3
8000CB18: bnez  $at, 0x8000CA5C
8000CB1C: or    $t0, $t9, $zero
8000CB20: bnez  $v0, 0x8000CB94
8000CB24: ldc1  F20, 0x0008 ($sp)
8000CB28: sll   $t0, $t1, 0x10
8000CB2C: sra   $t4, $t0, 0x10
8000CB30: slt   $at, $t2, $t3
8000CB34: beq   $at, $zero, 0x8000CB94
8000CB38: or    $t0, $t4, $zero
8000CB3C: addu  $t5, $t0, $a0
8000CB40: div   $t5, $a0
8000CB44: bnez  $a0, 0x8000CB50
8000CB48: nop
8000CB4C: break
8000CB50: addiu $at, $zero, 0xFFFF
8000CB54: bne   $a0, $at, 0x8000CB68
8000CB58: lui   $at, 0x8000
8000CB5C: bne   $t5, $at, 0x8000CB68
8000CB60: nop
8000CB64: break
8000CB68: addiu $t0, $t0, 0x0001
8000CB6C: mfhi  $t6
8000CB70: sll   $t4, $t0, 0x10
8000CB74: sll   $t7, $t6, 0x10
8000CB78: sra   $t5, $t4, 0x10
8000CB7C: sra   $t8, $t7, 0x10
8000CB80: slt   $at, $t5, $t3
8000CB84: sll   $t9, $t8, 0x3
8000CB88: or    $t0, $t5, $zero
8000CB8C: bnez  $at, 0x8000CB3C
8000CB90: addu  $a3, $t9, $a2
8000CB94: ldc1  F22, 0x0010 ($sp)
8000CB98: addiu $sp, $sp, 0x0018
8000CB9C: jr    $ra
8000CBA0: or    $v0, $v1, $zero

8000CBA4: lui   $t6, 0x800E
8000CBA8: lh    $t6, 0xC5A0 ($t6)
8000CBAC: swc1  F12, 0x0000 ($sp)
8000CBB0: sw    $a2, 0x0008 ($sp)
8000CBB4: addiu $at, $zero, 0x000E
8000CBB8: bne   $t6, $at, 0x8000CBF0
8000CBBC: lh    $v0, 0x0000 ($a3)
8000CBC0: slti  $at, $v0, 0x0475
8000CBC4: bnez  $at, 0x8000CBF0
8000CBC8: slti  $at, $v0, 0x0480
8000CBCC: beq   $at, $zero, 0x8000CBF0
8000CBD0: nop
8000CBD4: mtc1  $zero, F4
8000CBD8: nop
8000CBDC: c.lt.s F14, F4
8000CBE0: nop
8000CBE4: bc1f  0x8000CBF0
8000CBE8: nop
8000CBEC: addiu $v0, $zero, 0x0398
8000CBF0: jr    $ra
8000CBF4: sh    $v0, 0x0000 ($a3)

8000CBF8: swc1  F12, 0x0000 ($sp)
8000CBFC: swc1  F14, 0x0004 ($sp)
8000CC00: lh    $v0, 0x0000 ($a3)
8000CC04: lw    $t1, 0x0010 ($sp)
8000CC08: mtc1  $a2, F12
8000CC0C: bnez  $v0, 0x8000CC4C
8000CC10: sll   $t2, $t1, 0x1
8000CC14: lui   $at, 0x8016
8000CC18: lwc1  F4, 0x344C ($at)
8000CC1C: lw    $t6, 0x0010 ($sp)
8000CC20: c.lt.s F4, F12
8000CC24: sll   $t7, $t6, 0x1
8000CC28: bc1f  0x8000CC80
8000CC2C: nop
8000CC30: lui   $v0, 0x8016
8000CC34: addu  $v0, $v0, $t7
8000CC38: lhu   $v0, 0x45C8 ($v0)
8000CC3C: addiu $v0, $v0, 0xFFFF
8000CC40: sll   $t8, $v0, 0x10
8000CC44: beq   $zero, $zero, 0x8000CC80
8000CC48: sra   $v0, $t8, 0x10
8000CC4C: lui   $t3, 0x8016
8000CC50: addu  $t3, $t3, $t2
8000CC54: lhu   $t3, 0x45C8 ($t3)
8000CC58: addiu $t0, $v0, 0x0001
8000CC5C: lui   $at, 0x8016
8000CC60: bne   $t0, $t3, 0x8000CC80
8000CC64: nop
8000CC68: lwc1  F6, 0x344C ($at)
8000CC6C: c.le.s F12, F6
8000CC70: nop
8000CC74: bc1f  0x8000CC80
8000CC78: nop
8000CC7C: or    $v0, $zero, $zero
8000CC80: jr    $ra
8000CC84: sh    $v0, 0x0000 ($a3)

8000CC88: addiu $sp, $sp, 0xFFD8
8000CC8C: sw    $ra, 0x001C ($sp)
8000CC90: swc1  F12, 0x0028 ($sp)
8000CC94: swc1  F14, 0x002C ($sp)
8000CC98: sw    $a2, 0x0030 ($sp)
8000CC9C: jal   0x802ABD40
8000CCA0: lhu   $a0, 0x011A ($a3)
8000CCA4: andi  $a0, $v0, 0xFFFF
8000CCA8: blez  $a0, 0x8000CCBC
8000CCAC: andi  $a3, $v0, 0xFFFF
8000CCB0: slti  $at, $a0, 0x0033
8000CCB4: bnel  $at, $zero, 0x8000CCD4
8000CCB8: lw    $v1, 0x0038 ($sp)
8000CCBC: lw    $t6, 0x0038 ($sp)
8000CCC0: lui   $a3, 0x8016
8000CCC4: sll   $t7, $t6, 0x1
8000CCC8: addu  $a3, $a3, $t7
8000CCCC: lhu   $a3, 0x3318 ($a3)
8000CCD0: lw    $v1, 0x0038 ($sp)
8000CCD4: lw    $t9, 0x003C ($sp)
8000CCD8: lui   $at, 0x8016
8000CCDC: sll   $t8, $v1, 0x1
8000CCE0: addu  $at, $at, $t8
8000CCE4: sh    $a3, 0x3318 ($at)
8000CCE8: sw    $t8, 0x0020 ($sp)
8000CCEC: lwc1  F12, 0x0028 ($sp)
8000CCF0: lwc1  F14, 0x002C ($sp)
8000CCF4: lw    $a2, 0x0030 ($sp)
8000CCF8: jal   0x8000C0BC
8000CCFC: sw    $t9, 0x0010 ($sp)
8000CD00: lw    $t0, 0x003C ($sp)
8000CD04: lw    $v1, 0x0020 ($sp)
8000CD08: lw    $ra, 0x001C ($sp)
8000CD0C: lw    $t1, 0x0000 ($t0)
8000CD10: lui   $at, 0x8016
8000CD14: addu  $at, $at, $v1
8000CD18: addiu $sp, $sp, 0x0028
8000CD1C: jr    $ra
8000CD20: sh    $t1, 0x45B0 ($at)

8000CD24: addiu $sp, $sp, 0xFFA0
8000CD28: sw    $s0, 0x0038 ($sp)
8000CD2C: lw    $s0, 0x0070 ($sp)
8000CD30: sw    $ra, 0x003C ($sp)
8000CD34: sdc1  F24, 0x0030 ($sp)
8000CD38: sdc1  F22, 0x0028 ($sp)
8000CD3C: sdc1  F20, 0x0020 ($sp)
8000CD40: sw    $a3, 0x006C ($sp)
8000CD44: lhu   $v0, 0x0000 ($s0)
8000CD48: mtc1  $a2, F24
8000CD4C: mov.s F20, F12
8000CD50: andi  $t6, $v0, 0x4000
8000CD54: beq   $t6, $zero, 0x8000CDC8
8000CD58: mov.s F22, F14
8000CD5C: andi  $t7, $v0, 0x1000
8000CD60: bnel  $t7, $zero, 0x8000CDCC
8000CD64: lw    $v1, 0x0074 ($sp)
8000CD68: jal   0x802ABD40
8000CD6C: lhu   $a0, 0x011A ($s0)
8000CD70: lw    $t8, 0x0078 ($sp)
8000CD74: mfc1  $a2, F24
8000CD78: mov.s F12, F20
8000CD7C: mov.s F14, F22
8000CD80: lh    $a3, 0x006E ($sp)
8000CD84: sw    $v0, 0x0014 ($sp)
8000CD88: jal   0x8000C884
8000CD8C: sw    $t8, 0x0010 ($sp)
8000CD90: addiu $at, $zero, 0xFFFF
8000CD94: bne   $v0, $at, 0x8000D0C4
8000CD98: sh    $v0, 0x005E ($sp)
8000CD9C: lw    $v1, 0x0074 ($sp)
8000CDA0: mfc1  $a2, F24
8000CDA4: addiu $t9, $sp, 0x0078
8000CDA8: sw    $t9, 0x0014 ($sp)
8000CDAC: mov.s F12, F20
8000CDB0: mov.s F14, F22
8000CDB4: or    $a3, $s0, $zero
8000CDB8: jal   0x8000CC88
8000CDBC: sw    $v1, 0x0010 ($sp)
8000CDC0: beq   $zero, $zero, 0x8000D0C4
8000CDC4: sh    $v0, 0x005E ($sp)
8000CDC8: lw    $v1, 0x0074 ($sp)
8000CDCC: lui   $t2, 0x8016
8000CDD0: addiu $at, $zero, 0x0001
8000CDD4: sll   $t0, $v1, 0x1
8000CDD8: addu  $t2, $t2, $t0
8000CDDC: lhu   $t2, 0x31E0 ($t2)
8000CDE0: sw    $t0, 0x0048 ($sp)
8000CDE4: lh    $a3, 0x006E ($sp)
8000CDE8: bne   $t2, $at, 0x8000D060
8000CDEC: lw    $t6, 0x0078 ($sp)
8000CDF0: lh    $a0, 0x00CA ($s0)
8000CDF4: lw    $t4, 0x0078 ($sp)
8000CDF8: lui   $t6, 0x8016
8000CDFC: andi  $t3, $a0, 0x0001
8000CE00: beq   $t3, $zero, 0x8000CE68
8000CE04: sll   $t5, $t4, 0x2
8000CE08: lh    $t7, 0x006E ($sp)
8000CE0C: addu  $t6, $t6, $t5
8000CE10: lw    $t6, 0x4550 ($t6)
8000CE14: sll   $t8, $t7, 0x3
8000CE18: andi  $t2, $a0, 0xFFFE
8000CE1C: addu  $v1, $t6, $t8
8000CE20: lh    $t9, 0x0000 ($v1)
8000CE24: mtc1  $t9, F4
8000CE28: nop
8000CE2C: cvt.s.w F6, F4
8000CE30: swc1  F6, 0x0014 ($s0)
8000CE34: lh    $t0, 0x0002 ($v1)
8000CE38: mtc1  $t0, F8
8000CE3C: nop
8000CE40: cvt.s.w F10, F8
8000CE44: swc1  F10, 0x0018 ($s0)
8000CE48: lh    $t1, 0x0004 ($v1)
8000CE4C: sh    $t2, 0x00CA ($s0)
8000CE50: mtc1  $t1, F16
8000CE54: nop
8000CE58: cvt.s.w F18, F16
8000CE5C: swc1  F18, 0x001C ($s0)
8000CE60: beq   $zero, $zero, 0x8000D0E4
8000CE64: lh    $v0, 0x006E ($sp)
8000CE68: lui   $t3, 0x8016
8000CE6C: lw    $t3, 0x3488 ($t3)
8000CE70: addiu $a0, $s0, 0x0110
8000CE74: lh    $a3, 0x006E ($sp)
8000CE78: bgez  $t3, 0x8000CE8C
8000CE7C: andi  $t4, $t3, 0x0007
8000CE80: beq   $t4, $zero, 0x8000CE8C
8000CE84: nop
8000CE88: addiu $t4, $t4, 0xFFF8
8000CE8C: bne   $v1, $t4, 0x8000CFA8
8000CE90: lw    $t8, 0x0078 ($sp)
8000CE94: mfc1  $a2, F20
8000CE98: mfc1  $a3, F22
8000CE9C: lui   $a1, 0x4120
8000CEA0: jal   0x802ADDC8
8000CEA4: swc1  F24, 0x0010 ($sp)
8000CEA8: jal   0x802ABD40
8000CEAC: lhu   $a0, 0x011A ($s0)
8000CEB0: lw    $t5, 0x0048 ($sp)
8000CEB4: lui   $t7, 0x8016
8000CEB8: lw    $t6, 0x0078 ($sp)
8000CEBC: addiu $t7, $t7, 0x3318
8000CEC0: mfc1  $a2, F24
8000CEC4: andi  $t8, $v0, 0xFFFF
8000CEC8: addu  $v1, $t5, $t7
8000CECC: sh    $v0, 0x0000 ($v1)
8000CED0: sw    $v1, 0x0044 ($sp)
8000CED4: sw    $t8, 0x0014 ($sp)
8000CED8: mov.s F12, F20
8000CEDC: mov.s F14, F22
8000CEE0: lh    $a3, 0x006E ($sp)
8000CEE4: jal   0x8000C884
8000CEE8: sw    $t6, 0x0010 ($sp)
8000CEEC: addiu $at, $zero, 0xFFFF
8000CEF0: lw    $v1, 0x0044 ($sp)
8000CEF4: bne   $v0, $at, 0x8000CF24
8000CEF8: sh    $v0, 0x005E ($sp)
8000CEFC: lw    $t9, 0x0078 ($sp)
8000CF00: mfc1  $a2, F24
8000CF04: mov.s F12, F20
8000CF08: mov.s F14, F22
8000CF0C: lh    $a3, 0x006E ($sp)
8000CF10: sw    $v1, 0x0044 ($sp)
8000CF14: jal   0x8000C9DC
8000CF18: sw    $t9, 0x0010 ($sp)
8000CF1C: lw    $v1, 0x0044 ($sp)
8000CF20: sh    $v0, 0x005E ($sp)
8000CF24: addiu $at, $zero, 0xFFFF
8000CF28: bne   $v0, $at, 0x8000D0A8
8000CF2C: addiu $t0, $sp, 0x0078
8000CF30: mfc1  $a2, F24
8000CF34: mov.s F12, F20
8000CF38: mov.s F14, F22
8000CF3C: lhu   $a3, 0x0000 ($v1)
8000CF40: jal   0x8000C0BC
8000CF44: sw    $t0, 0x0010 ($sp)
8000CF48: lw    $t1, 0x0078 ($sp)
8000CF4C: lui   $t3, 0x8016
8000CF50: sll   $t4, $v0, 0x3
8000CF54: sll   $t2, $t1, 0x2
8000CF58: addu  $t3, $t3, $t2
8000CF5C: lw    $t3, 0x4550 ($t3)
8000CF60: sh    $v0, 0x005E ($sp)
8000CF64: addu  $v1, $t3, $t4
8000CF68: lh    $t5, 0x0000 ($v1)
8000CF6C: mtc1  $t5, F4
8000CF70: nop
8000CF74: cvt.s.w F6, F4
8000CF78: swc1  F6, 0x0014 ($s0)
8000CF7C: lh    $t7, 0x0002 ($v1)
8000CF80: mtc1  $t7, F8
8000CF84: nop
8000CF88: cvt.s.w F10, F8
8000CF8C: swc1  F10, 0x0018 ($s0)
8000CF90: lh    $t6, 0x0004 ($v1)
8000CF94: mtc1  $t6, F16
8000CF98: nop
8000CF9C: cvt.s.w F18, F16
8000CFA0: beq   $zero, $zero, 0x8000D0A8
8000CFA4: swc1  F18, 0x001C ($s0)
8000CFA8: mfc1  $a2, F24
8000CFAC: mov.s F12, F20
8000CFB0: mov.s F14, F22
8000CFB4: jal   0x8000C9DC
8000CFB8: sw    $t8, 0x0010 ($sp)
8000CFBC: addiu $at, $zero, 0xFFFF
8000CFC0: bne   $v0, $at, 0x8000D0A8
8000CFC4: sh    $v0, 0x005E ($sp)
8000CFC8: mfc1  $a2, F24
8000CFCC: mov.s F12, F20
8000CFD0: mov.s F14, F22
8000CFD4: jal   0x8000BD94
8000CFD8: lw    $a3, 0x0078 ($sp)
8000CFDC: lw    $t9, 0x0078 ($sp)
8000CFE0: lui   $t1, 0x8016
8000CFE4: sll   $t2, $v0, 0x3
8000CFE8: sll   $t0, $t9, 0x2
8000CFEC: addu  $t1, $t1, $t0
8000CFF0: lw    $t1, 0x4550 ($t1)
8000CFF4: sh    $v0, 0x005E ($sp)
8000CFF8: addiu $a0, $s0, 0x0110
8000CFFC: addu  $v1, $t1, $t2
8000D000: lh    $t3, 0x0000 ($v1)
8000D004: lh    $t4, 0x0002 ($v1)
8000D008: lh    $t5, 0x0004 ($v1)
8000D00C: mtc1  $t3, F4
8000D010: mtc1  $t4, F6
8000D014: mtc1  $t5, F8
8000D018: cvt.s.w F20, F4
8000D01C: lui   $a1, 0x4120
8000D020: cvt.s.w F22, F6
8000D024: swc1  F20, 0x0014 ($s0)
8000D028: mfc1  $a2, F20
8000D02C: cvt.s.w F24, F8
8000D030: swc1  F22, 0x0018 ($s0)
8000D034: mfc1  $a3, F22
8000D038: swc1  F24, 0x001C ($s0)
8000D03C: jal   0x802ADDC8
8000D040: swc1  F24, 0x0010 ($sp)
8000D044: jal   0x802ABD40
8000D048: lhu   $a0, 0x011A ($s0)
8000D04C: lw    $t7, 0x0048 ($sp)
8000D050: lui   $at, 0x8016
8000D054: addu  $at, $at, $t7
8000D058: beq   $zero, $zero, 0x8000D0A8
8000D05C: sh    $v0, 0x3318 ($at)
8000D060: mfc1  $a2, F24
8000D064: mov.s F12, F20
8000D068: mov.s F14, F22
8000D06C: jal   0x8000C9DC
8000D070: sw    $t6, 0x0010 ($sp)
8000D074: addiu $at, $zero, 0xFFFF
8000D078: lw    $v1, 0x0074 ($sp)
8000D07C: bne   $v0, $at, 0x8000D0A8
8000D080: sh    $v0, 0x005E ($sp)
8000D084: mfc1  $a2, F24
8000D088: addiu $t8, $sp, 0x0078
8000D08C: sw    $t8, 0x0014 ($sp)
8000D090: mov.s F12, F20
8000D094: mov.s F14, F22
8000D098: or    $a3, $s0, $zero
8000D09C: jal   0x8000CC88
8000D0A0: sw    $v1, 0x0010 ($sp)
8000D0A4: sh    $v0, 0x005E ($sp)
8000D0A8: lw    $t9, 0x0078 ($sp)
8000D0AC: mfc1  $a2, F24
8000D0B0: mov.s F12, F20
8000D0B4: mov.s F14, F22
8000D0B8: addiu $a3, $sp, 0x005E
8000D0BC: jal   0x8000CBA4
8000D0C0: sw    $t9, 0x0010 ($sp)
8000D0C4: lw    $t0, 0x0078 ($sp)
8000D0C8: mfc1  $a2, F24
8000D0CC: mov.s F12, F20
8000D0D0: mov.s F14, F22
8000D0D4: addiu $a3, $sp, 0x005E
8000D0D8: jal   0x8000CBF8
8000D0DC: sw    $t0, 0x0010 ($sp)
8000D0E0: lh    $v0, 0x005E ($sp)
8000D0E4: lw    $ra, 0x003C ($sp)
8000D0E8: ldc1  F20, 0x0020 ($sp)
8000D0EC: ldc1  F22, 0x0028 ($sp)
8000D0F0: ldc1  F24, 0x0030 ($sp)
8000D0F4: lw    $s0, 0x0038 ($sp)
8000D0F8: jr    $ra
8000D0FC: addiu $sp, $sp, 0x0060

8000D100: sll   $t6, $a3, 0x10
8000D104: sra   $t7, $t6, 0x10
8000D108: addiu $a0, $t7, 0xFFFE
8000D10C: addiu $sp, $sp, 0xFFF0
8000D110: lui   $at, 0x800F
8000D114: sll   $t9, $a0, 0x10
8000D118: sdc1  F20, 0x0008 ($sp)
8000D11C: lwc1  F0, 0xCFF8 ($at)
8000D120: sra   $t2, $t9, 0x10
8000D124: sll   $v0, $a0, 0x10
8000D128: addiu $a1, $t7, 0x0007
8000D12C: mtc1  $a2, F20
8000D130: sw    $a3, 0x001C ($sp)
8000D134: slt   $at, $t2, $a1
8000D138: sra   $t8, $v0, 0x10
8000D13C: or    $a3, $t7, $zero
8000D140: swc1  F14, 0x0014 ($sp)
8000D144: addiu $v1, $zero, 0xFFFF
8000D148: beq   $at, $zero, 0x8000D228
8000D14C: or    $v0, $t8, $zero
8000D150: lui   $a2, 0x8016
8000D154: lui   $t1, 0x8016
8000D158: lw    $t1, 0x3598 ($t1)
8000D15C: lw    $a2, 0x359C ($a2)
8000D160: sll   $a0, $v0, 0x10
8000D164: sra   $t3, $a0, 0x10
8000D168: bgez  $v0, 0x8000D180
8000D16C: or    $a0, $t3, $zero
8000D170: addu  $a0, $v0, $a2
8000D174: sll   $t4, $a0, 0x10
8000D178: sra   $t5, $t4, 0x10
8000D17C: or    $a0, $t5, $zero
8000D180: div   $a0, $a2
8000D184: bnez  $a2, 0x8000D190
8000D188: nop
8000D18C: break
8000D190: addiu $at, $zero, 0xFFFF
8000D194: bne   $a2, $at, 0x8000D1A8
8000D198: lui   $at, 0x8000
8000D19C: bne   $a0, $at, 0x8000D1A8
8000D1A0: nop
8000D1A4: break
8000D1A8: mfhi  $a0
8000D1AC: sll   $t6, $a0, 0x10
8000D1B0: sra   $t7, $t6, 0x10
8000D1B4: sll   $t8, $t7, 0x2
8000D1B8: addu  $t0, $t8, $t1
8000D1BC: lh    $t9, 0x0000 ($t0)
8000D1C0: lh    $t2, 0x0002 ($t0)
8000D1C4: addiu $v0, $v0, 0x0001
8000D1C8: mtc1  $t9, F4
8000D1CC: mtc1  $t2, F8
8000D1D0: sll   $t4, $v0, 0x10
8000D1D4: cvt.s.w F6, F4
8000D1D8: sra   $t5, $t4, 0x10
8000D1DC: slt   $at, $t5, $a1
8000D1E0: or    $a0, $t7, $zero
8000D1E4: cvt.s.w F10, F8
8000D1E8: sub.s F2, F6, F12
8000D1EC: sub.s F14, F10, F20
8000D1F0: mul.s F18, F2, F2
8000D1F4: nop
8000D1F8: mul.s F4, F14, F14
8000D1FC: add.s F16, F18, F4
8000D200: c.lt.s F16, F0
8000D204: nop
8000D208: bc1f  0x8000D220
8000D20C: nop
8000D210: sll   $v1, $a0, 0x10
8000D214: sra   $t3, $v1, 0x10
8000D218: mov.s F0, F16
8000D21C: or    $v1, $t3, $zero
8000D220: bnez  $at, 0x8000D160
8000D224: or    $v0, $t5, $zero
8000D228: addiu $at, $zero, 0xFFFF
8000D22C: bne   $v1, $at, 0x8000D240
8000D230: ldc1  F20, 0x0008 ($sp)
8000D234: sll   $v1, $a3, 0x10
8000D238: sra   $t6, $v1, 0x10
8000D23C: or    $v1, $t6, $zero
8000D240: or    $v0, $v1, $zero
8000D244: jr    $ra
8000D248: addiu $sp, $sp, 0x0010

8000D24C: addiu $sp, $sp, 0xFF98
8000D250: sw    $a2, 0x0070 ($sp)
8000D254: lwc1  F4, 0x0070 ($sp)
8000D258: sw    $ra, 0x001C ($sp)
8000D25C: swc1  F12, 0x0068 ($sp)
8000D260: swc1  F14, 0x006C ($sp)
8000D264: sw    $a3, 0x0074 ($sp)
8000D268: lw    $a3, 0x006C ($sp)
8000D26C: lw    $a2, 0x0068 ($sp)
8000D270: addiu $a0, $sp, 0x0024
8000D274: lui   $a1, 0x4120
8000D278: jal   0x802ADDC8
8000D27C: swc1  F4, 0x0010 ($sp)
8000D280: jal   0x802ABD40
8000D284: lhu   $a0, 0x002E ($sp)
8000D288: lw    $t6, 0x0074 ($sp)
8000D28C: lwc1  F12, 0x0068 ($sp)
8000D290: lwc1  F14, 0x006C ($sp)
8000D294: lw    $a2, 0x0070 ($sp)
8000D298: andi  $a3, $v0, 0xFFFF
8000D29C: jal   0x8000C0BC
8000D2A0: sw    $t6, 0x0010 ($sp)
8000D2A4: lw    $ra, 0x001C ($sp)
8000D2A8: addiu $sp, $sp, 0x0068
8000D2AC: jr    $ra
8000D2B0: nop

8000D2B4: addiu $sp, $sp, 0xFFD8
8000D2B8: lw    $t8, 0x0038 ($sp)
8000D2BC: sw    $ra, 0x001C ($sp)
8000D2C0: swc1  F12, 0x0028 ($sp)
8000D2C4: swc1  F14, 0x002C ($sp)
8000D2C8: sw    $a3, 0x0034 ($sp)
8000D2CC: sll   $t6, $a3, 0x10
8000D2D0: sra   $a3, $t6, 0x10
8000D2D4: sw    $a2, 0x0030 ($sp)
8000D2D8: lwc1  F14, 0x002C ($sp)
8000D2DC: lwc1  F12, 0x0028 ($sp)
8000D2E0: jal   0x8000C9DC
8000D2E4: sw    $t8, 0x0010 ($sp)
8000D2E8: addiu $at, $zero, 0xFFFF
8000D2EC: bne   $v0, $at, 0x8000D30C
8000D2F0: sh    $v0, 0x0026 ($sp)
8000D2F4: lwc1  F12, 0x0028 ($sp)
8000D2F8: lwc1  F14, 0x002C ($sp)
8000D2FC: lw    $a2, 0x0030 ($sp)
8000D300: jal   0x8000D24C
8000D304: addiu $a3, $sp, 0x0038
8000D308: sh    $v0, 0x0026 ($sp)
8000D30C: lw    $t9, 0x0038 ($sp)
8000D310: lwc1  F12, 0x0028 ($sp)
8000D314: lwc1  F14, 0x002C ($sp)
8000D318: lw    $a2, 0x0030 ($sp)
8000D31C: addiu $a3, $sp, 0x0026
8000D320: jal   0x8000CBF8
8000D324: sw    $t9, 0x0010 ($sp)
8000D328: lw    $ra, 0x001C ($sp)
8000D32C: lh    $v0, 0x0026 ($sp)
8000D330: addiu $sp, $sp, 0x0028
8000D334: jr    $ra
8000D338: nop

8000D33C: addiu $sp, $sp, 0xFFE0
8000D340: lw    $t8, 0x0030 ($sp)
8000D344: sw    $ra, 0x001C ($sp)
8000D348: swc1  F12, 0x0020 ($sp)
8000D34C: swc1  F14, 0x0024 ($sp)
8000D350: sw    $a3, 0x002C ($sp)
8000D354: sll   $t6, $a3, 0x10
8000D358: sra   $a3, $t6, 0x10
8000D35C: sw    $a2, 0x0028 ($sp)
8000D360: lwc1  F14, 0x0024 ($sp)
8000D364: lwc1  F12, 0x0020 ($sp)
8000D368: jal   0x8000C9DC
8000D36C: sw    $t8, 0x0010 ($sp)
8000D370: sll   $v1, $v0, 0x10
8000D374: sra   $t9, $v1, 0x10
8000D378: addiu $at, $zero, 0xFFFF
8000D37C: bne   $v0, $at, 0x8000D3A4
8000D380: or    $v1, $t9, $zero
8000D384: lwc1  F12, 0x0020 ($sp)
8000D388: lwc1  F14, 0x0024 ($sp)
8000D38C: lw    $a2, 0x0028 ($sp)
8000D390: jal   0x8000D24C
8000D394: addiu $a3, $sp, 0x0030
8000D398: sll   $v1, $v0, 0x10
8000D39C: sra   $t0, $v1, 0x10
8000D3A0: or    $v1, $t0, $zero
8000D3A4: lw    $ra, 0x001C ($sp)
8000D3A8: addiu $sp, $sp, 0x0020
8000D3AC: or    $v0, $v1, $zero
8000D3B0: jr    $ra
8000D3B4: nop

8000D3B8: lui   $t7, 0x8016
8000D3BC: addiu $t7, $t7, 0x34F8
8000D3C0: sll   $t6, $a0, 0x4
8000D3C4: addu  $v0, $t6, $t7
8000D3C8: lwc1  F2, 0x0000 ($v0)
8000D3CC: lwc1  F0, 0x0004 ($v0)
8000D3D0: c.lt.s F2, F0
8000D3D4: nop
8000D3D8: bc1fl 0x8000D404
8000D3DC: c.lt.s F0, F2
8000D3E0: lwc1  F4, 0x0008 ($v0)
8000D3E4: add.s F2, F2, F4
8000D3E8: c.lt.s F0, F2
8000D3EC: nop
8000D3F0: bc1fl 0x8000D430
8000D3F4: swc1  F2, 0x0000 ($v0)
8000D3F8: beq   $zero, $zero, 0x8000D42C
8000D3FC: mov.s F2, F0
8000D400: c.lt.s F0, F2
8000D404: nop
8000D408: bc1fl 0x8000D430
8000D40C: swc1  F2, 0x0000 ($v0)
8000D410: lwc1  F6, 0x0008 ($v0)
8000D414: sub.s F2, F2, F6
8000D418: c.lt.s F2, F0
8000D41C: nop
8000D420: bc1fl 0x8000D430
8000D424: swc1  F2, 0x0000 ($v0)
8000D428: mov.s F2, F0
8000D42C: swc1  F2, 0x0000 ($v0)
8000D430: jr    $ra
8000D434: mov.s F0, F2

8000D438: lui   $t6, 0x8016
8000D43C: lw    $t6, 0x45E0 ($t6)
8000D440: addiu $sp, $sp, 0xFFB0
8000D444: andi  $a3, $a1, 0xFFFF
8000D448: sll   $t0, $a3, 0x1
8000D44C: sw    $ra, 0x0014 ($sp)
8000D450: sw    $a0, 0x0050 ($sp)
8000D454: sw    $a1, 0x0054 ($sp)
8000D458: addu  $t7, $t6, $t0
8000D45C: lh    $v1, 0x0000 ($t7)
8000D460: addiu $a2, $zero, 0x0006
8000D464: sw    $a2, 0x0028 ($sp)
8000D468: sw    $t0, 0x001C ($sp)
8000D46C: sh    $a3, 0x0056 ($sp)
8000D470: jal   0x8000D3B8
8000D474: sh    $v1, 0x0026 ($sp)
8000D478: lui   $v0, 0x800E
8000D47C: lh    $v0, 0xC5A0 ($v0)
8000D480: addiu $at, $zero, 0x0004
8000D484: lh    $v1, 0x0026 ($sp)
8000D488: lw    $a2, 0x0028 ($sp)
8000D48C: lhu   $a3, 0x0056 ($sp)
8000D490: lw    $t0, 0x001C ($sp)
8000D494: beq   $v0, $at, 0x8000D4E4
8000D498: swc1  F0, 0x002C ($sp)
8000D49C: addiu $at, $zero, 0x000A
8000D4A0: beq   $v0, $at, 0x8000D4B8
8000D4A4: addiu $at, $zero, 0x0014
8000D4A8: bnel  $v0, $at, 0x8000D4C4
8000D4AC: slti  $at, $v1, 0x0006
8000D4B0: beq   $zero, $zero, 0x8000D4E4
8000D4B4: addiu $a2, $zero, 0x0001
8000D4B8: beq   $zero, $zero, 0x8000D4E4
8000D4BC: addiu $a2, $zero, 0x0007
8000D4C0: slti  $at, $v1, 0x0006
8000D4C4: beql  $at, $zero, 0x8000D4D8
8000D4C8: slti  $at, $v1, 0x0015
8000D4CC: beq   $zero, $zero, 0x8000D4E4
8000D4D0: addiu $a2, $zero, 0x0008
8000D4D4: slti  $at, $v1, 0x0015
8000D4D8: bnel  $at, $zero, 0x8000D4E8
8000D4DC: slti  $at, $a2, 0x0008
8000D4E0: addiu $a2, $zero, 0x0014
8000D4E4: slti  $at, $a2, 0x0008
8000D4E8: bnez  $at, 0x8000D56C
8000D4EC: lw    $a0, 0x0050 ($sp)
8000D4F0: lw    $t8, 0x0050 ($sp)
8000D4F4: lui   $at, 0x8016
8000D4F8: lui   $t1, 0x8016
8000D4FC: sll   $t9, $t8, 0x2
8000D500: addu  $at, $at, $t9
8000D504: lwc1  F0, 0x3068 ($at)
8000D508: lui   $at, 0x3F40
8000D50C: mtc1  $at, F4
8000D510: lui   $at, 0xBF40
8000D514: mtc1  $at, F6
8000D518: c.lt.s F4, F0
8000D51C: lui   $t4, 0x8016
8000D520: bc1fl 0x8000D544
8000D524: c.lt.s F0, F6
8000D528: lw    $t1, 0x31D8 ($t1)
8000D52C: addu  $t2, $t1, $t0
8000D530: lh    $t3, 0x0000 ($t2)
8000D534: bnel  $t3, $zero, 0x8000D544
8000D538: c.lt.s F0, F6
8000D53C: addiu $a2, $zero, 0x0007
8000D540: c.lt.s F0, F6
8000D544: nop
8000D548: bc1fl 0x8000D570
8000D54C: sw    $a2, 0x0028 ($sp)
8000D550: lw    $t4, 0x31D8 ($t4)
8000D554: addiu $at, $zero, 0x0001
8000D558: addu  $t5, $t4, $t0
8000D55C: lh    $t6, 0x0000 ($t5)
8000D560: bnel  $t6, $at, 0x8000D570
8000D564: sw    $a2, 0x0028 ($sp)
8000D568: addiu $a2, $zero, 0x0007
8000D56C: sw    $a2, 0x0028 ($sp)
8000D570: jal   0x8000B820
8000D574: sh    $a3, 0x0056 ($sp)
8000D578: addiu $at, $zero, 0x0001
8000D57C: lw    $a2, 0x0028 ($sp)
8000D580: bne   $v0, $at, 0x8000D58C
8000D584: lhu   $a3, 0x0056 ($sp)
8000D588: addiu $a2, $zero, 0x0005
8000D58C: lw    $t7, 0x0050 ($sp)
8000D590: lui   $t9, 0x8016
8000D594: addiu $t9, $t9, 0x3380
8000D598: sll   $t8, $t7, 0x1
8000D59C: addu  $v1, $t8, $t9
8000D5A0: lh    $v0, 0x0000 ($v1)
8000D5A4: lui   $t4, 0x8016
8000D5A8: slt   $at, $v0, $a2
8000D5AC: beql  $at, $zero, 0x8000D5C4
8000D5B0: slt   $at, $a2, $v0
8000D5B4: addiu $t1, $v0, 0x0001
8000D5B8: sh    $t1, 0x0000 ($v1)
8000D5BC: lh    $v0, 0x0000 ($v1)
8000D5C0: slt   $at, $a2, $v0
8000D5C4: beq   $at, $zero, 0x8000D5D8
8000D5C8: lui   $a2, 0x8016
8000D5CC: addiu $t2, $v0, 0xFFFF
8000D5D0: sh    $t2, 0x0000 ($v1)
8000D5D4: lh    $v0, 0x0000 ($v1)
8000D5D8: lhu   $t4, 0x4430 ($t4)
8000D5DC: addu  $t3, $v0, $a3
8000D5E0: lw    $a1, 0x002C ($sp)
8000D5E4: div   $t3, $t4
8000D5E8: mfhi  $t5
8000D5EC: andi  $a0, $t5, 0xFFFF
8000D5F0: bnez  $t4, 0x8000D5FC
8000D5F4: nop
8000D5F8: break
8000D5FC: addiu $at, $zero, 0xFFFF
8000D600: bne   $t4, $at, 0x8000D614
8000D604: lui   $at, 0x8000
8000D608: bne   $t3, $at, 0x8000D614
8000D60C: nop
8000D610: break
8000D614: sh    $t5, 0x0056 ($sp)
8000D618: jal   0x8000BBD8
8000D61C: lh    $a2, 0x344A ($a2)
8000D620: lhu   $a3, 0x0056 ($sp)
8000D624: lui   $t7, 0x8016
8000D628: lhu   $t7, 0x4430 ($t7)
8000D62C: addiu $t6, $a3, 0x0001
8000D630: lui   $v0, 0x8016
8000D634: div   $t6, $t7
8000D638: addiu $v0, $v0, 0x2FA0
8000D63C: lwc1  F8, 0x0000 ($v0)
8000D640: lwc1  F10, 0x0008 ($v0)
8000D644: mfhi  $t8
8000D648: lui   $a2, 0x8016
8000D64C: lh    $a2, 0x344A ($a2)
8000D650: andi  $a0, $t8, 0xFFFF
8000D654: lw    $a1, 0x002C ($sp)
8000D658: swc1  F8, 0x0048 ($sp)
8000D65C: swc1  F10, 0x0044 ($sp)
8000D660: bnez  $t7, 0x8000D66C
8000D664: nop
8000D668: break
8000D66C: addiu $at, $zero, 0xFFFF
8000D670: bne   $t7, $at, 0x8000D684
8000D674: lui   $at, 0x8000
8000D678: bne   $t6, $at, 0x8000D684
8000D67C: nop
8000D680: break
8000D684: jal   0x8000BBD8
8000D688: nop
8000D68C: lui   $v0, 0x8016
8000D690: addiu $v0, $v0, 0x2FA0
8000D694: lwc1  F0, 0x0000 ($v0)
8000D698: lwc1  F16, 0x0048 ($sp)
8000D69C: lwc1  F2, 0x0008 ($v0)
8000D6A0: lwc1  F6, 0x0044 ($sp)
8000D6A4: add.s F18, F16, F0
8000D6A8: lui   $at, 0x3F00
8000D6AC: mtc1  $at, F12
8000D6B0: add.s F8, F6, F2
8000D6B4: lw    $ra, 0x0014 ($sp)
8000D6B8: mul.s F4, F18, F12
8000D6BC: addiu $sp, $sp, 0x0050
8000D6C0: mul.s F10, F8, F12
8000D6C4: swc1  F4, 0x0000 ($v0)
8000D6C8: jr    $ra
8000D6CC: swc1  F10, 0x0008 ($v0)

8000D6D0: addiu $sp, $sp, 0xFF50
8000D6D4: lh    $t6, 0x00C2 ($sp)
8000D6D8: lui   $t8, 0x8016
8000D6DC: sw    $ra, 0x003C ($sp)
8000D6E0: sll   $t7, $t6, 0x2
8000D6E4: addu  $t8, $t8, $t7
8000D6E8: lw    $t8, 0x4550 ($t8)
8000D6EC: sw    $s0, 0x0038 ($sp)
8000D6F0: sdc1  F24, 0x0030 ($sp)
8000D6F4: sdc1  F22, 0x0028 ($sp)
8000D6F8: sdc1  F20, 0x0020 ($sp)
8000D6FC: sw    $a1, 0x00B4 ($sp)
8000D700: sw    $a2, 0x00B8 ($sp)
8000D704: sw    $a3, 0x00BC ($sp)
8000D708: sw    $t8, 0x004C ($sp)
8000D70C: lwc1  F4, 0x0000 ($a0)
8000D710: or    $s0, $a0, $zero
8000D714: swc1  F4, 0x0050 ($sp)
8000D718: lwc1  F6, 0x0004 ($a0)
8000D71C: swc1  F6, 0x0054 ($sp)
8000D720: lwc1  F8, 0x0008 ($a0)
8000D724: swc1  F8, 0x0058 ($sp)
8000D728: lwc1  F24, 0x0008 ($a0)
8000D72C: lwc1  F20, 0x0000 ($a0)
8000D730: lwc1  F22, 0x0004 ($a0)
8000D734: lh    $a3, 0x0000 ($a1)
8000D738: mfc1  $a2, F24
8000D73C: sw    $t6, 0x0010 ($sp)
8000D740: mov.s F12, F20
8000D744: jal   0x8000D2B4
8000D748: mov.s F14, F22
8000D74C: lh    $a2, 0x00C2 ($sp)
8000D750: lw    $t1, 0x00B4 ($sp)
8000D754: lui   $a3, 0x8016
8000D758: sll   $t3, $a2, 0x1
8000D75C: addu  $a3, $a3, $t3
8000D760: sh    $v0, 0x0000 ($t1)
8000D764: lhu   $a3, 0x45C8 ($a3)
8000D768: lh    $t2, 0x00C6 ($sp)
8000D76C: lw    $a1, 0x00BC ($sp)
8000D770: addu  $v1, $v0, $t2
8000D774: div   $v1, $a3
8000D778: addiu $t7, $v1, 0x0001
8000D77C: mfhi  $t0
8000D780: sll   $t4, $t0, 0x10
8000D784: bnez  $a3, 0x8000D790
8000D788: nop
8000D78C: break
8000D790: addiu $at, $zero, 0xFFFF
8000D794: bne   $a3, $at, 0x8000D7A8
8000D798: lui   $at, 0x8000
8000D79C: bne   $v1, $at, 0x8000D7A8
8000D7A0: nop
8000D7A4: break
8000D7A8: div   $t7, $a3
8000D7AC: sra   $t5, $t4, 0x10
8000D7B0: or    $t0, $t5, $zero
8000D7B4: mfhi  $t8
8000D7B8: sh    $t8, 0x009E ($sp)
8000D7BC: bnez  $a3, 0x8000D7C8
8000D7C0: nop
8000D7C4: break
8000D7C8: addiu $at, $zero, 0xFFFF
8000D7CC: bne   $a3, $at, 0x8000D7E0
8000D7D0: lui   $at, 0x8000
8000D7D4: bne   $t7, $at, 0x8000D7E0
8000D7D8: nop
8000D7DC: break
8000D7E0: andi  $a0, $t0, 0xFFFF
8000D7E4: jal   0x8000BBD8
8000D7E8: sh    $t0, 0x00A0 ($sp)
8000D7EC: lui   $v0, 0x8016
8000D7F0: addiu $v0, $v0, 0x2FA0
8000D7F4: lwc1  F10, 0x0000 ($v0)
8000D7F8: lwc1  F4, 0x0008 ($v0)
8000D7FC: lhu   $a0, 0x009E ($sp)
8000D800: lw    $a1, 0x00BC ($sp)
8000D804: lh    $a2, 0x00C2 ($sp)
8000D808: swc1  F10, 0x0098 ($sp)
8000D80C: jal   0x8000BBD8
8000D810: swc1  F4, 0x0090 ($sp)
8000D814: lw    $v1, 0x004C ($sp)
8000D818: lh    $t9, 0x009E ($sp)
8000D81C: lh    $t3, 0x00A0 ($sp)
8000D820: lui   $v0, 0x8016
8000D824: sll   $t6, $t9, 0x3
8000D828: sll   $t4, $t3, 0x3
8000D82C: addu  $t5, $v1, $t4
8000D830: addu  $t1, $v1, $t6
8000D834: lh    $t2, 0x0002 ($t1)
8000D838: lh    $t7, 0x0002 ($t5)
8000D83C: addiu $v0, $v0, 0x2FA0
8000D840: lui   $at, 0x3F00
8000D844: addu  $t8, $t2, $t7
8000D848: mtc1  $t8, F6
8000D84C: lwc1  F0, 0x0000 ($v0)
8000D850: mtc1  $at, F10
8000D854: cvt.s.w F8, F6
8000D858: lwc1  F4, 0x0098 ($sp)
8000D85C: lwc1  F2, 0x0008 ($v0)
8000D860: add.s F6, F4, F0
8000D864: mul.s F14, F8, F10
8000D868: mtc1  $at, F8
8000D86C: lwc1  F4, 0x0090 ($sp)
8000D870: mul.s F10, F6, F8
8000D874: add.s F6, F4, F2
8000D878: mtc1  $at, F8
8000D87C: sub.s F18, F14, F22
8000D880: sub.s F16, F10, F20
8000D884: mul.s F10, F6, F8
8000D888: swc1  F18, 0x0044 ($sp)
8000D88C: swc1  F16, 0x0048 ($sp)
8000D890: sub.s F4, F10, F24
8000D894: mul.s F6, F4, F4
8000D898: swc1  F4, 0x0040 ($sp)
8000D89C: mul.s F8, F16, F16
8000D8A0: nop
8000D8A4: mul.s F10, F18, F18
8000D8A8: add.s F4, F8, F10
8000D8AC: jal   sqrtf
8000D8B0: add.s F12, F4, F6
8000D8B4: lui   $at, 0x800F
8000D8B8: lwc1  F8, 0xCFFC ($at)
8000D8BC: lwc1  F16, 0x0048 ($sp)
8000D8C0: lwc1  F18, 0x0044 ($sp)
8000D8C4: c.lt.s F8, F0
8000D8C8: lwc1  F10, 0x00B8 ($sp)
8000D8CC: addiu $a0, $sp, 0x0050
8000D8D0: or    $a1, $s0, $zero
8000D8D4: bc1fl 0x8000D90C
8000D8D8: mov.s F2, F20
8000D8DC: mul.s F4, F16, F10
8000D8E0: div.s F6, F4, F0
8000D8E4: mul.s F8, F18, F10
8000D8E8: div.s F4, F8, F0
8000D8EC: add.s F2, F6, F20
8000D8F0: lwc1  F6, 0x0040 ($sp)
8000D8F4: mul.s F8, F6, F10
8000D8F8: add.s F12, F4, F22
8000D8FC: div.s F4, F8, F0
8000D900: beq   $zero, $zero, 0x8000D914
8000D904: add.s F14, F4, F24
8000D908: mov.s F2, F20
8000D90C: mov.s F12, F22
8000D910: mov.s F14, F24
8000D914: swc1  F2, 0x0000 ($s0)
8000D918: swc1  F12, 0x0004 ($s0)
8000D91C: jal   0x80005FD0
8000D920: swc1  F14, 0x0008 ($s0)
8000D924: lw    $ra, 0x003C ($sp)
8000D928: ldc1  F20, 0x0020 ($sp)
8000D92C: ldc1  F22, 0x0028 ($sp)
8000D930: ldc1  F24, 0x0030 ($sp)
8000D934: lw    $s0, 0x0038 ($sp)
8000D938: jr    $ra
8000D93C: addiu $sp, $sp, 0x00B0

8000D940: addiu $sp, $sp, 0xFF48
8000D944: sw    $ra, 0x003C ($sp)
8000D948: sw    $s0, 0x0038 ($sp)
8000D94C: sdc1  F24, 0x0030 ($sp)
8000D950: sdc1  F22, 0x0028 ($sp)
8000D954: sdc1  F20, 0x0020 ($sp)
8000D958: sw    $a1, 0x00BC ($sp)
8000D95C: sw    $a2, 0x00C0 ($sp)
8000D960: sw    $a3, 0x00C4 ($sp)
8000D964: lwc1  F4, 0x0000 ($a0)
8000D968: lh    $t6, 0x00CA ($sp)
8000D96C: lui   $t0, 0x8016
8000D970: swc1  F4, 0x0054 ($sp)
8000D974: lwc1  F6, 0x0004 ($a0)
8000D978: sll   $t7, $t6, 0x1
8000D97C: addu  $t0, $t0, $t7
8000D980: swc1  F6, 0x0058 ($sp)
8000D984: lwc1  F8, 0x0008 ($a0)
8000D988: lhu   $t0, 0x45C8 ($t0)
8000D98C: or    $s0, $a0, $zero
8000D990: swc1  F8, 0x005C ($sp)
8000D994: lwc1  F24, 0x0008 ($a0)
8000D998: lwc1  F20, 0x0000 ($a0)
8000D99C: lwc1  F22, 0x0004 ($a0)
8000D9A0: lh    $a3, 0x0000 ($a1)
8000D9A4: mfc1  $a2, F24
8000D9A8: sw    $t6, 0x0010 ($sp)
8000D9AC: sw    $t0, 0x0060 ($sp)
8000D9B0: mov.s F12, F20
8000D9B4: jal   0x8000D2B4
8000D9B8: mov.s F14, F22
8000D9BC: lw    $t0, 0x0060 ($sp)
8000D9C0: lw    $t9, 0x00BC ($sp)
8000D9C4: addu  $v1, $v0, $t0
8000D9C8: addiu $t1, $v1, 0xFFFD
8000D9CC: div   $t1, $t0
8000D9D0: addiu $t2, $v1, 0xFFFC
8000D9D4: mfhi  $a3
8000D9D8: sh    $v0, 0x0000 ($t9)
8000D9DC: bnez  $t0, 0x8000D9E8
8000D9E0: nop
8000D9E4: break
8000D9E8: addiu $at, $zero, 0xFFFF
8000D9EC: bne   $t0, $at, 0x8000DA00
8000D9F0: lui   $at, 0x8000
8000D9F4: bne   $t1, $at, 0x8000DA00
8000D9F8: nop
8000D9FC: break
8000DA00: div   $t2, $t0
8000DA04: mfhi  $t3
8000DA08: or    $t4, $a3, $zero
8000DA0C: sh    $a3, 0x00A8 ($sp)
8000DA10: bnez  $t0, 0x8000DA1C
8000DA14: nop
8000DA18: break
8000DA1C: addiu $at, $zero, 0xFFFF
8000DA20: bne   $t0, $at, 0x8000DA34
8000DA24: lui   $at, 0x8000
8000DA28: bne   $t2, $at, 0x8000DA34
8000DA2C: nop
8000DA30: break
8000DA34: sh    $t3, 0x00A6 ($sp)
8000DA38: andi  $a0, $t4, 0xFFFF
8000DA3C: lh    $a2, 0x00CA ($sp)
8000DA40: jal   0x8000BBD8
8000DA44: lw    $a1, 0x00C4 ($sp)
8000DA48: lui   $v1, 0x8016
8000DA4C: addiu $v1, $v1, 0x2FA0
8000DA50: lwc1  F10, 0x0000 ($v1)
8000DA54: lwc1  F4, 0x0008 ($v1)
8000DA58: lhu   $a0, 0x00A6 ($sp)
8000DA5C: lw    $a1, 0x00C4 ($sp)
8000DA60: lh    $a2, 0x00CA ($sp)
8000DA64: swc1  F10, 0x00A0 ($sp)
8000DA68: jal   0x8000BBD8
8000DA6C: swc1  F4, 0x0098 ($sp)
8000DA70: lh    $t7, 0x00CA ($sp)
8000DA74: lui   $v0, 0x8016
8000DA78: lh    $t6, 0x00A6 ($sp)
8000DA7C: sll   $t8, $t7, 0x2
8000DA80: addu  $v0, $v0, $t8
8000DA84: lw    $v0, 0x4550 ($v0)
8000DA88: lh    $t3, 0x00A8 ($sp)
8000DA8C: sll   $t9, $t6, 0x3
8000DA90: addu  $t1, $v0, $t9
8000DA94: sll   $t4, $t3, 0x3
8000DA98: addu  $t5, $v0, $t4
8000DA9C: lh    $t7, 0x0002 ($t5)
8000DAA0: lh    $t2, 0x0002 ($t1)
8000DAA4: lui   $v1, 0x8016
8000DAA8: addiu $v1, $v1, 0x2FA0
8000DAAC: addu  $t8, $t2, $t7
8000DAB0: mtc1  $t8, F6
8000DAB4: lui   $at, 0x3F00
8000DAB8: lwc1  F0, 0x0000 ($v1)
8000DABC: cvt.s.w F8, F6
8000DAC0: mtc1  $at, F10
8000DAC4: lwc1  F4, 0x00A0 ($sp)
8000DAC8: lwc1  F2, 0x0008 ($v1)
8000DACC: add.s F6, F4, F0
8000DAD0: mul.s F14, F8, F10
8000DAD4: mtc1  $at, F8
8000DAD8: lwc1  F4, 0x0098 ($sp)
8000DADC: mul.s F10, F6, F8
8000DAE0: add.s F6, F4, F2
8000DAE4: mtc1  $at, F8
8000DAE8: sub.s F18, F14, F22
8000DAEC: sub.s F16, F10, F20
8000DAF0: mul.s F10, F6, F8
8000DAF4: swc1  F18, 0x004C ($sp)
8000DAF8: swc1  F16, 0x0050 ($sp)
8000DAFC: sub.s F4, F10, F24
8000DB00: mul.s F6, F4, F4
8000DB04: swc1  F4, 0x0048 ($sp)
8000DB08: mul.s F8, F16, F16
8000DB0C: nop
8000DB10: mul.s F10, F18, F18
8000DB14: add.s F4, F8, F10
8000DB18: jal   sqrtf
8000DB1C: add.s F12, F4, F6
8000DB20: lui   $at, 0x800F
8000DB24: lwc1  F8, 0xD000 ($at)
8000DB28: lwc1  F16, 0x0050 ($sp)
8000DB2C: lwc1  F18, 0x004C ($sp)
8000DB30: c.lt.s F8, F0
8000DB34: lwc1  F10, 0x00C0 ($sp)
8000DB38: addiu $a0, $sp, 0x0054
8000DB3C: or    $a1, $s0, $zero
8000DB40: bc1fl 0x8000DB78
8000DB44: mov.s F2, F20
8000DB48: mul.s F4, F16, F10
8000DB4C: div.s F6, F4, F0
8000DB50: mul.s F8, F18, F10
8000DB54: div.s F4, F8, F0
8000DB58: add.s F2, F6, F20
8000DB5C: lwc1  F6, 0x0048 ($sp)
8000DB60: mul.s F8, F6, F10
8000DB64: add.s F12, F4, F22
8000DB68: div.s F4, F8, F0
8000DB6C: beq   $zero, $zero, 0x8000DB80
8000DB70: add.s F14, F4, F24
8000DB74: mov.s F2, F20
8000DB78: mov.s F12, F22
8000DB7C: mov.s F14, F24
8000DB80: swc1  F2, 0x0000 ($s0)
8000DB84: swc1  F12, 0x0004 ($s0)
8000DB88: jal   0x80005FD0
8000DB8C: swc1  F14, 0x0008 ($s0)
8000DB90: lw    $ra, 0x003C ($sp)
8000DB94: ldc1  F20, 0x0020 ($sp)
8000DB98: ldc1  F22, 0x0028 ($sp)
8000DB9C: ldc1  F24, 0x0030 ($sp)
8000DBA0: lw    $s0, 0x0038 ($sp)
8000DBA4: jr    $ra
8000DBA8: addiu $sp, $sp, 0x00B8

8000DBAC: addiu $sp, $sp, 0xFF60
8000DBB0: sw    $ra, 0x0024 ($sp)
8000DBB4: sw    $s0, 0x0020 ($sp)
8000DBB8: sdc1  F20, 0x0018 ($sp)
8000DBBC: sw    $a1, 0x00A4 ($sp)
8000DBC0: sw    $a2, 0x00A8 ($sp)
8000DBC4: lwc1  F12, 0x0000 ($a0)
8000DBC8: lwc1  F14, 0x0004 ($a0)
8000DBCC: lwc1  F2, 0x0008 ($a0)
8000DBD0: swc1  F12, 0x0038 ($sp)
8000DBD4: lwc1  F4, 0x0004 ($a0)
8000DBD8: mfc1  $a2, F2
8000DBDC: or    $s0, $a0, $zero
8000DBE0: swc1  F4, 0x003C ($sp)
8000DBE4: lwc1  F6, 0x0008 ($a0)
8000DBE8: mov.s F20, F12
8000DBEC: swc1  F6, 0x0040 ($sp)
8000DBF0: lh    $a3, 0x0000 ($a1)
8000DBF4: swc1  F14, 0x0098 ($sp)
8000DBF8: jal   0x8000D100
8000DBFC: swc1  F2, 0x0094 ($sp)
8000DC00: lw    $t7, 0x00A4 ($sp)
8000DC04: lwc1  F2, 0x0094 ($sp)
8000DC08: lui   $v1, 0x8016
8000DC0C: sh    $v0, 0x0000 ($t7)
8000DC10: lw    $v1, 0x359C ($v1)
8000DC14: addiu $t8, $v0, 0x0003
8000DC18: addiu $t2, $v0, 0x0004
8000DC1C: div   $t8, $v1
8000DC20: mfhi  $a3
8000DC24: lui   $a1, 0x8016
8000DC28: lw    $a1, 0x3598 ($a1)
8000DC2C: div   $t2, $v1
8000DC30: sll   $t9, $a3, 0x10
8000DC34: mfhi  $t0
8000DC38: sra   $t1, $t9, 0x10
8000DC3C: sll   $t3, $t0, 0x10
8000DC40: or    $a3, $t1, $zero
8000DC44: sra   $t4, $t3, 0x10
8000DC48: sll   $t5, $a3, 0x2
8000DC4C: sll   $t6, $t4, 0x2
8000DC50: bnez  $v1, 0x8000DC5C
8000DC54: nop
8000DC58: break
8000DC5C: addiu $at, $zero, 0xFFFF
8000DC60: bne   $v1, $at, 0x8000DC74
8000DC64: lui   $at, 0x8000
8000DC68: bne   $t8, $at, 0x8000DC74
8000DC6C: nop
8000DC70: break
8000DC74: addu  $a0, $t5, $a1
8000DC78: addu  $a2, $t6, $a1
8000DC7C: lh    $t8, 0x0000 ($a2)
8000DC80: lh    $t7, 0x0000 ($a0)
8000DC84: bnez  $v1, 0x8000DC90
8000DC88: nop
8000DC8C: break
8000DC90: addiu $at, $zero, 0xFFFF
8000DC94: bne   $v1, $at, 0x8000DCA8
8000DC98: lui   $at, 0x8000
8000DC9C: bne   $t2, $at, 0x8000DCA8
8000DCA0: nop
8000DCA4: break
8000DCA8: addu  $t9, $t7, $t8
8000DCAC: mtc1  $t9, F8
8000DCB0: lh    $t2, 0x0002 ($a2)
8000DCB4: lh    $t1, 0x0002 ($a0)
8000DCB8: cvt.s.w F10, F8
8000DCBC: lui   $at, 0x3F00
8000DCC0: addu  $t3, $t1, $t2
8000DCC4: mtc1  $t3, F6
8000DCC8: mtc1  $at, F4
8000DCCC: cvt.s.w F8, F6
8000DCD0: mul.s F0, F10, F4
8000DCD4: mtc1  $at, F10
8000DCD8: nop
8000DCDC: mul.s F14, F8, F10
8000DCE0: sub.s F16, F0, F20
8000DCE4: mul.s F4, F16, F16
8000DCE8: sub.s F18, F14, F2
8000DCEC: swc1  F16, 0x0034 ($sp)
8000DCF0: mul.s F6, F18, F18
8000DCF4: swc1  F18, 0x0030 ($sp)
8000DCF8: jal   sqrtf
8000DCFC: add.s F12, F4, F6
8000DD00: lui   $at, 0x800F
8000DD04: lwc1  F8, 0xD004 ($at)
8000DD08: lwc1  F2, 0x0094 ($sp)
8000DD0C: lwc1  F16, 0x0034 ($sp)
8000DD10: c.lt.s F8, F0
8000DD14: lwc1  F18, 0x0030 ($sp)
8000DD18: lwc1  F10, 0x00A8 ($sp)
8000DD1C: addiu $a0, $sp, 0x0038
8000DD20: bc1f  0x8000DD48
8000DD24: or    $a1, $s0, $zero
8000DD28: mul.s F4, F16, F10
8000DD2C: nop
8000DD30: mul.s F8, F18, F10
8000DD34: div.s F6, F4, F0
8000DD38: div.s F4, F8, F0
8000DD3C: add.s F12, F6, F20
8000DD40: beq   $zero, $zero, 0x8000DD50
8000DD44: add.s F14, F4, F2
8000DD48: mov.s F12, F20
8000DD4C: mov.s F14, F2
8000DD50: swc1  F12, 0x0000 ($s0)
8000DD54: lwc1  F6, 0x0098 ($sp)
8000DD58: swc1  F14, 0x0008 ($s0)
8000DD5C: jal   0x80005FD0
8000DD60: swc1  F6, 0x0004 ($s0)
8000DD64: lw    $ra, 0x0024 ($sp)
8000DD68: ldc1  F20, 0x0018 ($sp)
8000DD6C: lw    $s0, 0x0020 ($sp)
8000DD70: jr    $ra
8000DD74: addiu $sp, $sp, 0x00A0

8000DD78: addiu $sp, $sp, 0xFF98
8000DD7C: sdc1  F26, 0x0038 ($sp)
8000DD80: lui   $at, 0x44FA
8000DD84: mtc1  $at, F26
8000DD88: sw    $s6, 0x0058 ($sp)
8000DD8C: sw    $s5, 0x0054 ($sp)
8000DD90: sw    $s4, 0x0050 ($sp)
8000DD94: sw    $s2, 0x0048 ($sp)
8000DD98: sw    $s0, 0x0040 ($sp)
8000DD9C: sdc1  F24, 0x0030 ($sp)
8000DDA0: lui   $at, 0x4000
8000DDA4: sw    $s8, 0x0060 ($sp)
8000DDA8: sw    $s7, 0x005C ($sp)
8000DDAC: sw    $s3, 0x004C ($sp)
8000DDB0: lui   $s0, 0x8016
8000DDB4: lui   $s2, 0x8016
8000DDB8: lui   $s4, 0x8016
8000DDBC: lui   $s5, 0x800E
8000DDC0: lui   $s6, 0x800E
8000DDC4: mtc1  $at, F24
8000DDC8: sw    $ra, 0x0064 ($sp)
8000DDCC: sw    $s1, 0x0044 ($sp)
8000DDD0: sdc1  F22, 0x0028 ($sp)
8000DDD4: sdc1  F20, 0x0020 ($sp)
8000DDD8: addiu $s6, $s6, 0xC5A0
8000DDDC: addiu $s5, $s5, 0xCC08
8000DDE0: addiu $s4, $s4, 0x4550
8000DDE4: addiu $s2, $s2, 0x4038
8000DDE8: addiu $s0, $s0, 0x3DE8
8000DDEC: or    $s3, $zero, $zero
8000DDF0: addiu $s7, $zero, 0x0004
8000DDF4: addiu $s8, $zero, 0x0014
8000DDF8: lh    $v0, 0x0000 ($s6)
8000DDFC: sll   $t6, $v0, 0x2
8000DE00: addu  $t6, $t6, $v0
8000DE04: sll   $t6, $t6, 0x2
8000DE08: addu  $t6, $t6, $v0
8000DE0C: sll   $t6, $t6, 0x3
8000DE10: addu  $t7, $s5, $t6
8000DE14: beq   $s7, $v0, 0x8000DE5C
8000DE18: addu  $s1, $t7, $s3
8000DE1C: beql  $v0, $s8, 0x8000DE80
8000DE20: lhu   $t5, 0x0000 ($s1)
8000DE24: lhu   $t9, 0x0000 ($s1)
8000DE28: lw    $t8, 0x0000 ($s4)
8000DE2C: sll   $t0, $t9, 0x3
8000DE30: addu  $v0, $t8, $t0
8000DE34: lh    $t1, 0x0000 ($v0)
8000DE38: lh    $t2, 0x0002 ($v0)
8000DE3C: lh    $t3, 0x0004 ($v0)
8000DE40: mtc1  $t1, F4
8000DE44: mtc1  $t2, F6
8000DE48: mtc1  $t3, F8
8000DE4C: cvt.s.w F20, F4
8000DE50: cvt.s.w F2, F6
8000DE54: beq   $zero, $zero, 0x8000DEB0
8000DE58: cvt.s.w F22, F8
8000DE5C: lwc1  F22, 0x000C ($s1)
8000DE60: lwc1  F20, 0x0008 ($s1)
8000DE64: mov.s F14, F26
8000DE68: mfc1  $a2, F22
8000DE6C: jal   0x802AE1C0
8000DE70: mov.s F12, F20
8000DE74: beq   $zero, $zero, 0x8000DEB0
8000DE78: mov.s F2, F0
8000DE7C: lhu   $t5, 0x0000 ($s1)
8000DE80: lw    $t4, 0x000C ($s4)
8000DE84: sll   $t6, $t5, 0x3
8000DE88: addu  $v0, $t4, $t6
8000DE8C: lh    $t7, 0x0000 ($v0)
8000DE90: lh    $t9, 0x0002 ($v0)
8000DE94: lh    $t8, 0x0004 ($v0)
8000DE98: mtc1  $t7, F10
8000DE9C: mtc1  $t9, F16
8000DEA0: mtc1  $t8, F18
8000DEA4: cvt.s.w F20, F10
8000DEA8: cvt.s.w F2, F16
8000DEAC: cvt.s.w F22, F18
8000DEB0: swc1  F20, 0x0000 ($s0)
8000DEB4: swc1  F2, 0x0004 ($s0)
8000DEB8: swc1  F22, 0x0008 ($s0)
8000DEBC: swc1  F20, 0x000C ($s0)
8000DEC0: swc1  F2, 0x0010 ($s0)
8000DEC4: swc1  F22, 0x0014 ($s0)
8000DEC8: swc1  F20, 0x0018 ($s0)
8000DECC: swc1  F2, 0x001C ($s0)
8000DED0: swc1  F22, 0x0020 ($s0)
8000DED4: swc1  F20, 0x0024 ($s0)
8000DED8: swc1  F2, 0x0028 ($s0)
8000DEDC: swc1  F22, 0x002C ($s0)
8000DEE0: swc1  F20, 0x0030 ($s0)
8000DEE4: swc1  F2, 0x0034 ($s0)
8000DEE8: swc1  F22, 0x0038 ($s0)
8000DEEC: lhu   $t0, 0x0000 ($s1)
8000DEF0: addiu $t2, $zero, 0x0001
8000DEF4: mfc1  $a1, F24
8000DEF8: sh    $t0, 0x0042 ($s0)
8000DEFC: lwc1  F4, 0x0004 ($s1)
8000DF00: sh    $zero, 0x0046 ($s0)
8000DF04: sh    $zero, 0x0048 ($s0)
8000DF08: swc1  F4, 0x003C ($s0)
8000DF0C: lhu   $t1, 0x0002 ($s1)
8000DF10: mfc1  $a2, F20
8000DF14: mfc1  $a3, F2
8000DF18: sh    $zero, 0x004A ($s0)
8000DF1C: sh    $t2, 0x004C ($s0)
8000DF20: swc1  F2, 0x0050 ($s0)
8000DF24: swc1  F22, 0x0010 ($sp)
8000DF28: or    $a0, $s2, $zero
8000DF2C: jal   0x802ADDC8
8000DF30: sh    $t1, 0x0044 ($s0)
8000DF34: lui   $t3, 0x8016
8000DF38: addiu $t3, $t3, 0x41F8
8000DF3C: addiu $s2, $s2, 0x0040
8000DF40: addiu $s3, $s3, 0x0018
8000DF44: bne   $s2, $t3, 0x8000DDF8
8000DF48: addiu $s0, $s0, 0x0054
8000DF4C: lw    $ra, 0x0064 ($sp)
8000DF50: ldc1  F20, 0x0020 ($sp)
8000DF54: ldc1  F22, 0x0028 ($sp)
8000DF58: ldc1  F24, 0x0030 ($sp)
8000DF5C: ldc1  F26, 0x0038 ($sp)
8000DF60: lw    $s0, 0x0040 ($sp)
8000DF64: lw    $s1, 0x0044 ($sp)
8000DF68: lw    $s2, 0x0048 ($sp)
8000DF6C: lw    $s3, 0x004C ($sp)
8000DF70: lw    $s4, 0x0050 ($sp)
8000DF74: lw    $s5, 0x0054 ($sp)
8000DF78: lw    $s6, 0x0058 ($sp)
8000DF7C: lw    $s7, 0x005C ($sp)
8000DF80: lw    $s8, 0x0060 ($sp)
8000DF84: jr    $ra
8000DF88: addiu $sp, $sp, 0x0068

8000DF8C: sll   $t7, $a0, 0x2
8000DF90: addu  $t7, $t7, $a0
8000DF94: addiu $sp, $sp, 0xFEE0
8000DF98: sll   $t7, $t7, 0x2
8000DF9C: addu  $t7, $t7, $a0
8000DFA0: lui   $t8, 0x8016
8000DFA4: sw    $s0, 0x0034 ($sp)
8000DFA8: addiu $t8, $t8, 0x3DE8
8000DFAC: sll   $t7, $t7, 0x2
8000DFB0: addu  $s0, $t7, $t8
8000DFB4: lhu   $t9, 0x0044 ($s0)
8000DFB8: sw    $ra, 0x003C ($sp)
8000DFBC: sw    $s1, 0x0038 ($sp)
8000DFC0: andi  $t2, $t9, 0xFFFF
8000DFC4: sdc1  F24, 0x0028 ($sp)
8000DFC8: sdc1  F22, 0x0020 ($sp)
8000DFCC: sdc1  F20, 0x0018 ($sp)
8000DFD0: sw    $a0, 0x0120 ($sp)
8000DFD4: sw    $t2, 0x004C ($sp)
8000DFD8: beq   $t2, $zero, 0x8000ECF4
8000DFDC: sh    $t9, 0x007E ($sp)
8000DFE0: lhu   $t3, 0x004A ($s0)
8000DFE4: addiu $v1, $zero, 0x0001
8000DFE8: lui   $t1, 0x800E
8000DFEC: bne   $v1, $t3, 0x8000E004
8000DFF0: addiu $t1, $t1, 0xC5A0
8000DFF4: lh    $t4, 0x0000 ($t1)
8000DFF8: addiu $at, $zero, 0x0014
8000DFFC: bnel  $t4, $at, 0x8000ECF8
8000E000: lw    $ra, 0x003C ($sp)
8000E004: lhu   $t5, 0x0042 ($s0)
8000E008: lwc1  F22, 0x0000 ($s0)
8000E00C: lwc1  F20, 0x0004 ($s0)
8000E010: lwc1  F24, 0x0008 ($s0)
8000E014: sh    $t5, 0x00CA ($sp)
8000E018: lwc1  F4, 0x003C ($s0)
8000E01C: lw    $t8, 0x004C ($sp)
8000E020: lui   $t1, 0x800E
8000E024: swc1  F4, 0x00C4 ($sp)
8000E028: lhu   $t6, 0x0040 ($s0)
8000E02C: addiu $t1, $t1, 0xC5A0
8000E030: addiu $at, $zero, 0x0004
8000E034: sh    $t6, 0x00C2 ($sp)
8000E038: lhu   $t7, 0x0046 ($s0)
8000E03C: sh    $t7, 0x007C ($sp)
8000E040: beq   $t8, $zero, 0x8000E1CC
8000E044: lhu   $s1, 0x0048 ($s0)
8000E048: beql  $t8, $at, 0x8000E1D0
8000E04C: lw    $t9, 0x004C ($sp)
8000E050: lh    $v0, 0x0000 ($t1)
8000E054: addiu $at, $zero, 0x0014
8000E058: lui   $t9, 0x8016
8000E05C: bne   $v0, $at, 0x8000E0F4
8000E060: nop
8000E064: lh    $t9, 0x347E ($t9)
8000E068: bnel  $v1, $t9, 0x8000E1D0
8000E06C: lw    $t9, 0x004C ($sp)
8000E070: lui   $v0, 0x800E
8000E074: lw    $v0, 0xC4E8 ($v0)
8000E078: lui   $at, 0x41C8
8000E07C: mtc1  $at, F14
8000E080: lwc1  F6, 0x0014 ($v0)
8000E084: lwc1  F8, 0x0018 ($v0)
8000E088: lwc1  F10, 0x001C ($v0)
8000E08C: sub.s F0, F22, F6
8000E090: addiu $t2, $zero, 0x0004
8000E094: addiu $at, $zero, 0xDFFF
8000E098: sub.s F2, F20, F8
8000E09C: mul.s F4, F0, F0
8000E0A0: sub.s F12, F24, F10
8000E0A4: mul.s F6, F2, F2
8000E0A8: add.s F8, F4, F6
8000E0AC: mul.s F10, F12, F12
8000E0B0: add.s F4, F8, F10
8000E0B4: c.lt.s F4, F14
8000E0B8: nop
8000E0BC: bc1fl 0x8000E1D0
8000E0C0: lw    $t9, 0x004C ($sp)
8000E0C4: sh    $t2, 0x007E ($sp)
8000E0C8: lw    $t3, 0x000C ($v0)
8000E0CC: lhu   $t5, 0x0000 ($v0)
8000E0D0: lui   $a1, 0x0040
8000E0D4: or    $t4, $t3, $a1
8000E0D8: and   $t6, $t5, $at
8000E0DC: sw    $t4, 0x000C ($v0)
8000E0E0: sh    $t6, 0x0000 ($v0)
8000E0E4: addiu $t7, $zero, 0x0004
8000E0E8: or    $s1, $zero, $zero
8000E0EC: beq   $zero, $zero, 0x8000E1CC
8000E0F0: sw    $t7, 0x004C ($sp)
8000E0F4: lui   $v1, 0x8019
8000E0F8: lb    $v1, 0xEDF3 ($v1)
8000E0FC: or    $a0, $zero, $zero
8000E100: lui   $at, 0x41C8
8000E104: BLEZL $v1, 0x8000E1D0
8000E108: lw    $t9, 0x004C ($sp)
8000E10C: lui   $v0, 0x800F
8000E110: mtc1  $at, F14
8000E114: addiu $v0, $v0, 0x6990
8000E118: lui   $t0, 0x0100
8000E11C: addiu $a3, $zero, 0x0005
8000E120: lui   $a2, 0x8000
8000E124: lui   $a1, 0x0040
8000E128: lw    $t8, 0x00BC ($v0)
8000E12C: addiu $a0, $a0, 0x0001
8000E130: and   $t9, $t8, $a2
8000E134: bnel  $t9, $zero, 0x8000E1BC
8000E138: slt   $at, $a0, $v1
8000E13C: lwc1  F6, 0x0014 ($v0)
8000E140: lwc1  F8, 0x0018 ($v0)
8000E144: lwc1  F10, 0x001C ($v0)
8000E148: sub.s F0, F22, F6
8000E14C: sub.s F2, F20, F8
8000E150: mul.s F4, F0, F0
8000E154: sub.s F12, F24, F10
8000E158: mul.s F6, F2, F2
8000E15C: add.s F8, F4, F6
8000E160: mul.s F10, F12, F12
8000E164: add.s F4, F8, F10
8000E168: c.lt.s F4, F14
8000E16C: nop
8000E170: bc1fl 0x8000E1BC
8000E174: slt   $at, $a0, $v1
8000E178: lh    $t3, 0x0000 ($t1)
8000E17C: addiu $t2, $zero, 0x0004
8000E180: sh    $t2, 0x007E ($sp)
8000E184: bne   $a3, $t3, 0x8000E1A4
8000E188: or    $s1, $zero, $zero
8000E18C: lw    $t4, 0x000C ($v0)
8000E190: lui   $v1, 0x8019
8000E194: or    $t5, $t4, $t0
8000E198: sw    $t5, 0x000C ($v0)
8000E19C: beq   $zero, $zero, 0x8000E1B8
8000E1A0: lb    $v1, 0xEDF3 ($v1)
8000E1A4: lw    $t6, 0x000C ($v0)
8000E1A8: lui   $v1, 0x8019
8000E1AC: or    $t7, $t6, $a1
8000E1B0: sw    $t7, 0x000C ($v0)
8000E1B4: lb    $v1, 0xEDF3 ($v1)
8000E1B8: slt   $at, $a0, $v1
8000E1BC: bnez  $at, 0x8000E128
8000E1C0: addiu $v0, $v0, 0x0DD8
8000E1C4: lhu   $t8, 0x007E ($sp)
8000E1C8: sw    $t8, 0x004C ($sp)
8000E1CC: lw    $t9, 0x004C ($sp)
8000E1D0: addiu $t2, $t9, 0xFFFF
8000E1D4: sltiu $at, $t2, 0x0005
8000E1D8: beq   $at, $zero, 0x8000EAA0
8000E1DC: sll   $t2, $t2, 0x2
8000E1E0: lui   $at, 0x800F
8000E1E4: addu  $at, $at, $t2
8000E1E8: lw    $t2, 0xD008 ($at)
8000E1EC: jr    $t2
8000E1F0: nop
8000E1F4: addiu $v1, $zero, 0x0168
8000E1F8: addiu $t3, $s1, 0x0164
8000E1FC: div   $t3, $v1
8000E200: mfhi  $s1
8000E204: andi  $t4, $s1, 0xFFFF
8000E208: sll   $t5, $t4, 0x10
8000E20C: subu  $t5, $t5, $t4
8000E210: div   $t5, $v1
8000E214: bnez  $v1, 0x8000E220
8000E218: nop
8000E21C: break
8000E220: addiu $at, $zero, 0xFFFF
8000E224: bne   $v1, $at, 0x8000E238
8000E228: lui   $at, 0x8000
8000E22C: bne   $t3, $at, 0x8000E238
8000E230: nop
8000E234: break
8000E238: mflo  $a0
8000E23C: andi  $t6, $a0, 0xFFFF
8000E240: or    $v0, $t4, $zero
8000E244: or    $s1, $t4, $zero
8000E248: bnez  $v1, 0x8000E254
8000E24C: nop
8000E250: break
8000E254: addiu $at, $zero, 0xFFFF
8000E258: bne   $v1, $at, 0x8000E26C
8000E25C: lui   $at, 0x8000
8000E260: bne   $t5, $at, 0x8000E26C
8000E264: nop
8000E268: break
8000E26C: sw    $v0, 0x0048 ($sp)
8000E270: or    $a0, $t6, $zero
8000E274: jal   0x802B8038
8000E278: sw    $t6, 0x0044 ($sp)
8000E27C: lui   $at, 0x4039
8000E280: mtc1  $at, F9
8000E284: mtc1  $zero, F8
8000E288: cvt.d.s F6, F0
8000E28C: lw    $a0, 0x0044 ($sp)
8000E290: mul.d F10, F6, F8
8000E294: cvt.s.d F4, F10
8000E298: jal   0x802B8018
8000E29C: swc1  F4, 0x0118 ($sp)
8000E2A0: addiu $v1, $zero, 0x0168
8000E2A4: lw    $t4, 0x0048 ($sp)
8000E2A8: lhu   $t8, 0x00CA ($sp)
8000E2AC: lui   $t7, 0x8016
8000E2B0: addiu $t5, $t4, 0x0001
8000E2B4: div   $t5, $v1
8000E2B8: mfhi  $t6
8000E2BC: sll   $t9, $t8, 0x3
8000E2C0: sll   $t8, $t6, 0x10
8000E2C4: subu  $t8, $t8, $t6
8000E2C8: div   $t8, $v1
8000E2CC: lw    $t7, 0x4550 ($t7)
8000E2D0: lui   $at, 0x4060
8000E2D4: lwc1  F10, 0x0118 ($sp)
8000E2D8: addu  $v0, $t7, $t9
8000E2DC: lh    $t2, 0x0000 ($v0)
8000E2E0: lwc1  F4, 0x0050 ($s0)
8000E2E4: lh    $t3, 0x0004 ($v0)
8000E2E8: mtc1  $t2, F6
8000E2EC: lui   $a2, 0x8016
8000E2F0: addiu $a2, $a2, 0x2FB0
8000E2F4: cvt.s.w F8, F6
8000E2F8: mtc1  $at, F6
8000E2FC: lui   $at, 0x4039
8000E300: mtc1  $at, F11
8000E304: mflo  $a0
8000E308: add.s F20, F4, F6
8000E30C: andi  $t7, $a0, 0xFFFF
8000E310: or    $a0, $t7, $zero
8000E314: add.s F22, F8, F10
8000E318: mtc1  $zero, F10
8000E31C: swc1  F20, 0x0004 ($a2)
8000E320: cvt.d.s F8, F0
8000E324: swc1  F22, 0x0000 ($a2)
8000E328: mul.d F4, F8, F10
8000E32C: mtc1  $t3, F8
8000E330: sw    $t7, 0x0044 ($sp)
8000E334: sw    $v0, 0x0110 ($sp)
8000E338: cvt.s.w F10, F8
8000E33C: cvt.s.d F6, F4
8000E340: add.s F24, F10, F6
8000E344: swc1  F24, 0x0008 ($a2)
8000E348: bnez  $v1, 0x8000E354
8000E34C: nop
8000E350: break
8000E354: addiu $at, $zero, 0xFFFF
8000E358: bne   $v1, $at, 0x8000E36C
8000E35C: lui   $at, 0x8000
8000E360: bne   $t5, $at, 0x8000E36C
8000E364: nop
8000E368: break
8000E36C: bnez  $v1, 0x8000E378
8000E370: nop
8000E374: break
8000E378: addiu $at, $zero, 0xFFFF
8000E37C: bne   $v1, $at, 0x8000E390
8000E380: lui   $at, 0x8000
8000E384: bne   $t8, $at, 0x8000E390
8000E388: nop
8000E38C: break
8000E390: jal   0x802B8038
8000E394: nop
8000E398: lui   $at, 0x4039
8000E39C: mtc1  $at, F9
8000E3A0: mtc1  $zero, F8
8000E3A4: cvt.d.s F4, F0
8000E3A8: lw    $a0, 0x0044 ($sp)
8000E3AC: mul.d F10, F4, F8
8000E3B0: cvt.s.d F6, F10
8000E3B4: jal   0x802B8018
8000E3B8: swc1  F6, 0x0118 ($sp)
8000E3BC: lw    $v0, 0x0110 ($sp)
8000E3C0: lwc1  F10, 0x0118 ($sp)
8000E3C4: lui   $a1, 0x8016
8000E3C8: lh    $t9, 0x0000 ($v0)
8000E3CC: addiu $a1, $a1, 0x2FC0
8000E3D0: lui   $at, 0x4039
8000E3D4: mtc1  $t9, F4
8000E3D8: lui   $a2, 0x8016
8000E3DC: addiu $a0, $a2, 0x2FB0
8000E3E0: cvt.s.w F8, F4
8000E3E4: add.s F6, F8, F10
8000E3E8: mtc1  $at, F7
8000E3EC: cvt.d.s F10, F0
8000E3F0: swc1  F6, 0x0000 ($a1)
8000E3F4: lh    $t2, 0x0002 ($v0)
8000E3F8: mtc1  $zero, F6
8000E3FC: mtc1  $t2, F4
8000E400: nop
8000E404: cvt.s.w F8, F4
8000E408: mul.d F4, F10, F6
8000E40C: swc1  F8, 0x0004 ($a1)
8000E410: lh    $t3, 0x0004 ($v0)
8000E414: cvt.s.d F8, F4
8000E418: mtc1  $t3, F10
8000E41C: nop
8000E420: cvt.s.w F6, F10
8000E424: add.s F4, F6, F8
8000E428: jal   0x802B5224
8000E42C: swc1  F4, 0x0008 ($a1)
8000E430: ori   $v1, $zero, 0xFFFF
8000E434: multu $v0, $v1
8000E438: ori   $at, $zero, 0xFFF0
8000E43C: mflo  $t4
8000E440: nop
8000E444: nop
8000E448: div   $t4, $at
8000E44C: mflo  $t5
8000E450: sh    $t5, 0x00C2 ($sp)
8000E454: beq   $zero, $zero, 0x8000EAA8
8000E458: lw    $t6, 0x004C ($sp)
8000E45C: addiu $s1, $s1, 0x0004
8000E460: addiu $at, $zero, 0x0168
8000E464: div   $s1, $at
8000E468: mfhi  $t6
8000E46C: andi  $v0, $t6, 0xFFFF
8000E470: sll   $a0, $v0, 0x10
8000E474: subu  $a0, $a0, $v0
8000E478: div   $a0, $at
8000E47C: mflo  $t7
8000E480: andi  $a0, $t7, 0xFFFF
8000E484: or    $s1, $v0, $zero
8000E488: sw    $a0, 0x0044 ($sp)
8000E48C: jal   0x802B8038
8000E490: sw    $v0, 0x0048 ($sp)
8000E494: lui   $at, 0x4039
8000E498: mtc1  $at, F7
8000E49C: mtc1  $zero, F6
8000E4A0: cvt.d.s F10, F0
8000E4A4: lw    $a0, 0x0044 ($sp)
8000E4A8: mul.d F8, F10, F6
8000E4AC: cvt.s.d F4, F8
8000E4B0: jal   0x802B8018
8000E4B4: swc1  F4, 0x0118 ($sp)
8000E4B8: lhu   $t3, 0x00CA ($sp)
8000E4BC: lui   $t2, 0x8016
8000E4C0: lw    $t2, 0x4550 ($t2)
8000E4C4: sll   $t4, $t3, 0x3
8000E4C8: lui   $at, 0x4060
8000E4CC: addu  $v0, $t2, $t4
8000E4D0: lh    $t5, 0x0000 ($v0)
8000E4D4: lw    $a0, 0x0048 ($sp)
8000E4D8: lwc1  F8, 0x0118 ($sp)
8000E4DC: mtc1  $t5, F10
8000E4E0: addiu $a0, $a0, 0x0001
8000E4E4: lwc1  F4, 0x0050 ($s0)
8000E4E8: cvt.s.w F6, F10
8000E4EC: mtc1  $at, F10
8000E4F0: lui   $at, 0x4039
8000E4F4: mtc1  $at, F9
8000E4F8: addiu $at, $zero, 0x0168
8000E4FC: div   $a0, $at
8000E500: mfhi  $t8
8000E504: sll   $t7, $t8, 0x10
8000E508: subu  $t7, $t7, $t8
8000E50C: div   $t7, $at
8000E510: add.s F22, F6, F8
8000E514: mtc1  $zero, F8
8000E518: lh    $t6, 0x0004 ($v0)
8000E51C: cvt.d.s F6, F0
8000E520: add.s F20, F4, F10
8000E524: mul.d F4, F6, F8
8000E528: mtc1  $t6, F6
8000E52C: lui   $a2, 0x8016
8000E530: addiu $a2, $a2, 0x2FB0
8000E534: mflo  $t9
8000E538: andi  $a0, $t9, 0xFFFF
8000E53C: swc1  F22, 0x0000 ($a2)
8000E540: cvt.s.w F8, F6
8000E544: swc1  F20, 0x0004 ($a2)
8000E548: sw    $a0, 0x0044 ($sp)
8000E54C: sw    $v0, 0x0110 ($sp)
8000E550: cvt.s.d F10, F4
8000E554: add.s F24, F8, F10
8000E558: jal   0x802B8038
8000E55C: swc1  F24, 0x0008 ($a2)
8000E560: lui   $at, 0x4039
8000E564: mtc1  $at, F7
8000E568: mtc1  $zero, F6
8000E56C: cvt.d.s F4, F0
8000E570: lw    $a0, 0x0044 ($sp)
8000E574: mul.d F8, F4, F6
8000E578: cvt.s.d F10, F8
8000E57C: jal   0x802B8018
8000E580: swc1  F10, 0x0118 ($sp)
8000E584: lw    $v0, 0x0110 ($sp)
8000E588: lwc1  F8, 0x0118 ($sp)
8000E58C: lui   $a1, 0x8016
8000E590: lh    $t2, 0x0000 ($v0)
8000E594: addiu $a1, $a1, 0x2FC0
8000E598: lui   $at, 0x4039
8000E59C: mtc1  $t2, F4
8000E5A0: lui   $a2, 0x8016
8000E5A4: addiu $a0, $a2, 0x2FB0
8000E5A8: cvt.s.w F6, F4
8000E5AC: add.s F10, F6, F8
8000E5B0: mtc1  $at, F11
8000E5B4: cvt.d.s F8, F0
8000E5B8: swc1  F10, 0x0000 ($a1)
8000E5BC: lh    $t4, 0x0002 ($v0)
8000E5C0: mtc1  $zero, F10
8000E5C4: mtc1  $t4, F4
8000E5C8: nop
8000E5CC: cvt.s.w F6, F4
8000E5D0: mul.d F4, F8, F10
8000E5D4: swc1  F6, 0x0004 ($a1)
8000E5D8: lh    $t5, 0x0004 ($v0)
8000E5DC: cvt.s.d F6, F4
8000E5E0: mtc1  $t5, F8
8000E5E4: nop
8000E5E8: cvt.s.w F10, F8
8000E5EC: add.s F4, F10, F6
8000E5F0: jal   0x802B5224
8000E5F4: swc1  F4, 0x0008 ($a1)
8000E5F8: sll   $t6, $v0, 0x10
8000E5FC: subu  $t6, $t6, $v0
8000E600: ori   $at, $zero, 0xFFF0
8000E604: div   $t6, $at
8000E608: mflo  $t8
8000E60C: sh    $t8, 0x00C2 ($sp)
8000E610: beq   $zero, $zero, 0x8000EAA4
8000E614: ori   $v1, $zero, 0xFFFF
8000E618: lui   $at, 0x4060
8000E61C: mtc1  $at, F10
8000E620: lwc1  F8, 0x0050 ($s0)
8000E624: sh    $zero, 0x00C2 ($sp)
8000E628: ori   $v1, $zero, 0xFFFF
8000E62C: beq   $zero, $zero, 0x8000EAA4
8000E630: add.s F20, F8, F10
8000E634: lui   $t7, 0x8016
8000E638: lh    $t7, 0x347C ($t7)
8000E63C: lui   $t9, 0x8016
8000E640: beq   $t7, $zero, 0x8000E660
8000E644: nop
8000E648: lhu   $t9, 0x443E ($t9)
8000E64C: lh    $a3, 0x00CA ($sp)
8000E650: addiu $t3, $zero, 0x0003
8000E654: slti  $at, $t9, 0x0005
8000E658: beql  $at, $zero, 0x8000E66C
8000E65C: mfc1  $a2, F24
8000E660: beq   $zero, $zero, 0x8000EAA4
8000E664: ori   $v1, $zero, 0xFFFF
8000E668: mfc1  $a2, F24
8000E66C: mov.s F12, F22
8000E670: mov.s F14, F20
8000E674: jal   0x8000D2B4
8000E678: sw    $t3, 0x0010 ($sp)
8000E67C: andi  $a0, $v0, 0xFFFF
8000E680: or    $v1, $v0, $zero
8000E684: bltz  $a0, 0x8000E6A0
8000E688: sh    $v0, 0x00CA ($sp)
8000E68C: lui   $t2, 0x8016
8000E690: lhu   $t2, 0x45CE ($t2)
8000E694: slt   $at, $t2, $a0
8000E698: beql  $at, $zero, 0x8000E6A8
8000E69C: lhu   $t1, 0x00CA ($sp)
8000E6A0: sh    $zero, 0x00CA ($sp)
8000E6A4: lhu   $t1, 0x00CA ($sp)
8000E6A8: lui   $a1, 0x8016
8000E6AC: addiu $a1, $a1, 0x2FC0
8000E6B0: slti  $at, $t1, 0x001A
8000E6B4: beq   $at, $zero, 0x8000E7F0
8000E6B8: lui   $a2, 0x8016
8000E6BC: lui   $a3, 0x8016
8000E6C0: lhu   $a3, 0x45CE ($a3)
8000E6C4: addiu $t4, $t1, 0x0001
8000E6C8: addiu $t3, $t1, 0x0002
8000E6CC: div   $t4, $a3
8000E6D0: mfhi  $t5
8000E6D4: lui   $t0, 0x8016
8000E6D8: lw    $t0, 0x455C ($t0)
8000E6DC: div   $t3, $a3
8000E6E0: sll   $t6, $t5, 0x3
8000E6E4: addu  $v0, $t6, $t0
8000E6E8: lh    $t8, 0x0000 ($v0)
8000E6EC: lui   $a2, 0x8016
8000E6F0: addiu $a2, $a2, 0x2FB0
8000E6F4: mtc1  $t8, F6
8000E6F8: mfhi  $t2
8000E6FC: lui   $a1, 0x8016
8000E700: cvt.s.w F4, F6
8000E704: addiu $a1, $a1, 0x2FC0
8000E708: bnez  $a3, 0x8000E714
8000E70C: nop
8000E710: break
8000E714: addiu $at, $zero, 0xFFFF
8000E718: bne   $a3, $at, 0x8000E72C
8000E71C: lui   $at, 0x8000
8000E720: bne   $t4, $at, 0x8000E72C
8000E724: nop
8000E728: break
8000E72C: swc1  F4, 0x0000 ($a2)
8000E730: lh    $t7, 0x0002 ($v0)
8000E734: sll   $t4, $t2, 0x3
8000E738: addu  $v1, $t4, $t0
8000E73C: mtc1  $t7, F8
8000E740: or    $a0, $a2, $zero
8000E744: cvt.s.w F10, F8
8000E748: swc1  F10, 0x0004 ($a2)
8000E74C: lh    $t9, 0x0004 ($v0)
8000E750: mtc1  $t9, F6
8000E754: nop
8000E758: cvt.s.w F4, F6
8000E75C: swc1  F4, 0x0008 ($a2)
8000E760: lh    $t5, 0x0000 ($v1)
8000E764: bnez  $a3, 0x8000E770
8000E768: nop
8000E76C: break
8000E770: addiu $at, $zero, 0xFFFF
8000E774: bne   $a3, $at, 0x8000E788
8000E778: lui   $at, 0x8000
8000E77C: bne   $t3, $at, 0x8000E788
8000E780: nop
8000E784: break
8000E788: mtc1  $t5, F8
8000E78C: nop
8000E790: cvt.s.w F10, F8
8000E794: swc1  F10, 0x0000 ($a1)
8000E798: lh    $t6, 0x0002 ($v1)
8000E79C: mtc1  $t6, F6
8000E7A0: nop
8000E7A4: cvt.s.w F4, F6
8000E7A8: swc1  F4, 0x0004 ($a1)
8000E7AC: lh    $t8, 0x0004 ($v1)
8000E7B0: mtc1  $t8, F8
8000E7B4: nop
8000E7B8: cvt.s.w F10, F8
8000E7BC: jal   0x802B5224
8000E7C0: swc1  F10, 0x0008 ($a1)
8000E7C4: sll   $t7, $v0, 0x10
8000E7C8: subu  $t7, $t7, $v0
8000E7CC: ori   $at, $zero, 0xFFF0
8000E7D0: div   $t7, $at
8000E7D4: mflo  $t9
8000E7D8: lui   $a1, 0x8016
8000E7DC: lui   $a2, 0x8016
8000E7E0: addiu $a2, $a2, 0x2FB0
8000E7E4: addiu $a1, $a1, 0x2FC0
8000E7E8: beq   $zero, $zero, 0x8000E84C
8000E7EC: sh    $t9, 0x00C2 ($sp)
8000E7F0: addiu $a0, $a2, 0x2FB0
8000E7F4: swc1  F22, 0x0000 ($a0)
8000E7F8: swc1  F20, 0x0004 ($a0)
8000E7FC: swc1  F24, 0x0008 ($a0)
8000E800: lui   $at, 0x800F
8000E804: lwc1  F6, 0xD01C ($at)
8000E808: mtc1  $zero, F4
8000E80C: lui   $at, 0x800F
8000E810: swc1  F6, 0x0000 ($a1)
8000E814: swc1  F4, 0x0004 ($a1)
8000E818: lwc1  F8, 0xD020 ($at)
8000E81C: jal   0x802B5224
8000E820: swc1  F8, 0x0008 ($a1)
8000E824: sll   $t3, $v0, 0x10
8000E828: subu  $t3, $t3, $v0
8000E82C: ori   $at, $zero, 0xFFF0
8000E830: div   $t3, $at
8000E834: mflo  $t2
8000E838: lui   $a1, 0x8016
8000E83C: lui   $a2, 0x8016
8000E840: addiu $a2, $a2, 0x2FB0
8000E844: addiu $a1, $a1, 0x2FC0
8000E848: sh    $t2, 0x00C2 ($sp)
8000E84C: lwc1  F10, 0x0000 ($a1)
8000E850: lwc1  F6, 0x0000 ($a2)
8000E854: lui   $at, 0x3F00
8000E858: mtc1  $at, F0
8000E85C: add.s F4, F10, F6
8000E860: lwc1  F6, 0x0008 ($a2)
8000E864: lwc1  F10, 0x0008 ($a1)
8000E868: mul.s F8, F4, F0
8000E86C: add.s F4, F10, F6
8000E870: sub.s F14, F8, F22
8000E874: mul.s F8, F4, F0
8000E878: swc1  F14, 0x00F8 ($sp)
8000E87C: mul.s F10, F14, F14
8000E880: sub.s F16, F8, F24
8000E884: mul.s F6, F16, F16
8000E888: swc1  F16, 0x00F0 ($sp)
8000E88C: jal   sqrtf
8000E890: add.s F12, F10, F6
8000E894: lui   $at, 0x800F
8000E898: lwc1  F4, 0xD024 ($at)
8000E89C: lw    $t4, 0x0120 ($sp)
8000E8A0: lui   $t6, 0x8016
8000E8A4: c.lt.s F4, F0
8000E8A8: lwc1  F14, 0x00F8 ($sp)
8000E8AC: lwc1  F16, 0x00F0 ($sp)
8000E8B0: addiu $t6, $t6, 0x4038
8000E8B4: bc1f  0x8000E8E0
8000E8B8: sll   $t5, $t4, 0x6
8000E8BC: lwc1  F2, 0x003C ($s0)
8000E8C0: mul.s F8, F2, F14
8000E8C4: nop
8000E8C8: mul.s F6, F2, F16
8000E8CC: div.s F10, F8, F0
8000E8D0: div.s F4, F6, F0
8000E8D4: add.s F22, F22, F10
8000E8D8: beq   $zero, $zero, 0x8000E8FC
8000E8DC: add.s F24, F24, F4
8000E8E0: lui   $at, 0x40A0
8000E8E4: mtc1  $at, F0
8000E8E8: nop
8000E8EC: div.s F8, F14, F0
8000E8F0: div.s F10, F16, F0
8000E8F4: add.s F22, F22, F8
8000E8F8: add.s F24, F24, F10
8000E8FC: lui   $at, 0x44FA
8000E900: mtc1  $at, F14
8000E904: mfc1  $a2, F24
8000E908: addu  $a0, $t5, $t6
8000E90C: lhu   $a3, 0x000A ($a0)
8000E910: sw    $a0, 0x0048 ($sp)
8000E914: jal   0x802ABE30
8000E918: mov.s F12, F22
8000E91C: lui   $at, 0x4060
8000E920: mtc1  $at, F6
8000E924: lui   $at, 0x800F
8000E928: ldc1  F8, 0xD028 ($at)
8000E92C: add.s F20, F0, F6
8000E930: mfc1  $a2, F22
8000E934: lw    $a0, 0x0048 ($sp)
8000E938: lui   $a1, 0x4120
8000E93C: cvt.d.s F4, F20
8000E940: c.lt.d F4, F8
8000E944: nop
8000E948: bc1fl 0x8000E958
8000E94C: mfc1  $a3, F20
8000E950: lwc1  F20, 0x0004 ($s0)
8000E954: mfc1  $a3, F20
8000E958: jal   0x802ADDC8
8000E95C: swc1  F24, 0x0010 ($sp)
8000E960: beq   $zero, $zero, 0x8000EAA4
8000E964: ori   $v1, $zero, 0xFFFF
8000E968: lhu   $t8, 0x00CA ($sp)
8000E96C: lui   $a3, 0x8016
8000E970: lw    $a3, 0x4550 ($a3)
8000E974: sll   $t7, $t8, 0x3
8000E978: lui   $a2, 0x8016
8000E97C: addu  $v0, $a3, $t7
8000E980: lh    $t9, 0x0000 ($v0)
8000E984: addiu $a2, $a2, 0x2FB0
8000E988: lhu   $t4, 0x00CA ($sp)
8000E98C: mtc1  $t9, F10
8000E990: lui   $t6, 0x8016
8000E994: addiu $t5, $t4, 0x0001
8000E998: cvt.s.w F6, F10
8000E99C: lui   $a1, 0x8016
8000E9A0: addiu $a1, $a1, 0x2FC0
8000E9A4: swc1  F6, 0x0000 ($a2)
8000E9A8: lh    $t3, 0x0002 ($v0)
8000E9AC: mtc1  $t3, F4
8000E9B0: nop
8000E9B4: cvt.s.w F8, F4
8000E9B8: swc1  F8, 0x0004 ($a2)
8000E9BC: lh    $t2, 0x0004 ($v0)
8000E9C0: mtc1  $t2, F10
8000E9C4: nop
8000E9C8: cvt.s.w F6, F10
8000E9CC: swc1  F6, 0x0008 ($a2)
8000E9D0: lhu   $t6, 0x45C8 ($t6)
8000E9D4: div   $t5, $t6
8000E9D8: mfhi  $t8
8000E9DC: sll   $t7, $t8, 0x3
8000E9E0: addu  $v1, $t7, $a3
8000E9E4: lh    $t9, 0x0000 ($v1)
8000E9E8: bnez  $t6, 0x8000E9F4
8000E9EC: nop
8000E9F0: break
8000E9F4: addiu $at, $zero, 0xFFFF
8000E9F8: bne   $t6, $at, 0x8000EA0C
8000E9FC: lui   $at, 0x8000
8000EA00: bne   $t5, $at, 0x8000EA0C
8000EA04: nop
8000EA08: break
8000EA0C: mtc1  $t9, F4
8000EA10: lui   $at, 0x4F80
8000EA14: cvt.s.w F8, F4
8000EA18: swc1  F8, 0x0000 ($a1)
8000EA1C: lh    $t3, 0x0002 ($v1)
8000EA20: mtc1  $t3, F10
8000EA24: nop
8000EA28: cvt.s.w F6, F10
8000EA2C: mtc1  $s1, F10
8000EA30: swc1  F6, 0x0004 ($a1)
8000EA34: lh    $t2, 0x0004 ($v1)
8000EA38: cvt.s.w F6, F10
8000EA3C: mtc1  $t2, F4
8000EA40: nop
8000EA44: cvt.s.w F8, F4
8000EA48: bgez  $s1, 0x8000EA5C
8000EA4C: swc1  F8, 0x0008 ($a1)
8000EA50: mtc1  $at, F4
8000EA54: nop
8000EA58: add.s F6, F6, F4
8000EA5C: lui   $at, 0x800F
8000EA60: lwc1  F8, 0xD030 ($at)
8000EA64: lui   $at, 0x4040
8000EA68: mtc1  $at, F4
8000EA6C: mul.s F10, F6, F8
8000EA70: or    $a0, $a2, $zero
8000EA74: sub.s F6, F4, F10
8000EA78: jal   0x802B5224
8000EA7C: add.s F20, F20, F6
8000EA80: sll   $t4, $v0, 0x10
8000EA84: subu  $t4, $t4, $v0
8000EA88: ori   $at, $zero, 0xFFF0
8000EA8C: div   $t4, $at
8000EA90: mflo  $t5
8000EA94: sh    $t5, 0x00C2 ($sp)
8000EA98: beq   $zero, $zero, 0x8000EAA4
8000EA9C: ori   $v1, $zero, 0xFFFF
8000EAA0: ori   $v1, $zero, 0xFFFF
8000EAA4: lw    $t6, 0x004C ($sp)
8000EAA8: lhu   $t3, 0x00C2 ($sp)
8000EAAC: addiu $at, $zero, 0x0004
8000EAB0: bne   $t6, $at, 0x8000EB60
8000EAB4: subu  $a0, $v1, $t3
8000EAB8: mtc1  $s1, F8
8000EABC: lui   $at, 0x4F80
8000EAC0: bgez  $s1, 0x8000EAD4
8000EAC4: cvt.s.w F12, F8
8000EAC8: mtc1  $at, F4
8000EACC: nop
8000EAD0: add.s F12, F12, F4
8000EAD4: lhu   $t8, 0x00C2 ($sp)
8000EAD8: add.s F10, F12, F12
8000EADC: swc1  F12, 0x004C ($sp)
8000EAE0: subu  $a0, $v1, $t8
8000EAE4: andi  $t7, $a0, 0xFFFF
8000EAE8: swc1  F10, 0x0108 ($sp)
8000EAEC: or    $a0, $t7, $zero
8000EAF0: jal   0x802B8038
8000EAF4: sw    $t7, 0x0048 ($sp)
8000EAF8: lwc1  F12, 0x004C ($sp)
8000EAFC: lw    $a0, 0x0048 ($sp)
8000EB00: mul.s F6, F0, F12
8000EB04: jal   0x802B8018
8000EB08: swc1  F6, 0x0118 ($sp)
8000EB0C: lui   $at, 0x4040
8000EB10: mtc1  $at, F4
8000EB14: lwc1  F8, 0x0108 ($sp)
8000EB18: lui   $at, 0x800F
8000EB1C: lwc1  F6, 0xD034 ($at)
8000EB20: div.s F10, F8, F4
8000EB24: lwc1  F12, 0x004C ($sp)
8000EB28: addiu $s1, $s1, 0x0001
8000EB2C: andi  $t9, $s1, 0xFFFF
8000EB30: sub.s F8, F20, F6
8000EB34: slti  $at, $t9, 0x001F
8000EB38: mul.s F18, F0, F12
8000EB3C: or    $s1, $t9, $zero
8000EB40: add.s F2, F8, F10
8000EB44: swc1  F2, 0x00AC ($sp)
8000EB48: swc1  F2, 0x00A0 ($sp)
8000EB4C: swc1  F2, 0x0094 ($sp)
8000EB50: bnez  $at, 0x8000EC34
8000EB54: swc1  F2, 0x0088 ($sp)
8000EB58: beq   $zero, $zero, 0x8000EC34
8000EB5C: sh    $zero, 0x007E ($sp)
8000EB60: andi  $t2, $a0, 0xFFFF
8000EB64: or    $a0, $t2, $zero
8000EB68: jal   0x802B8038
8000EB6C: sw    $t2, 0x0048 ($sp)
8000EB70: lui   $at, 0x3FC0
8000EB74: mtc1  $at, F4
8000EB78: lw    $a0, 0x0048 ($sp)
8000EB7C: mul.s F6, F0, F4
8000EB80: jal   0x802B8018
8000EB84: swc1  F6, 0x0118 ($sp)
8000EB88: lhu   $v0, 0x007C ($sp)
8000EB8C: lui   $at, 0x3FC0
8000EB90: mtc1  $at, F18
8000EB94: lui   $at, 0x800F
8000EB98: lwc1  F16, 0xD038 ($at)
8000EB9C: mul.s F18, F0, F18
8000EBA0: addiu $at, $zero, 0x0003
8000EBA4: div   $v0, $at
8000EBA8: mfhi  $t4
8000EBAC: sub.s F16, F20, F16
8000EBB0: mtc1  $t4, F14
8000EBB4: lui   $at, 0x800F
8000EBB8: lwc1  F12, 0xD03C ($at)
8000EBBC: cvt.s.w F14, F14
8000EBC0: sll   $a0, $v0, 0x2
8000EBC4: addu  $a0, $a0, $v0
8000EBC8: sll   $a0, $a0, 0xE
8000EBCC: subu  $a0, $a0, $v0
8000EBD0: sll   $a0, $a0, 0x2
8000EBD4: mul.s F12, F14, F12
8000EBD8: subu  $a0, $a0, $v0
8000EBDC: sll   $a0, $a0, 0x2
8000EBE0: addiu $at, $zero, 0x0168
8000EBE4: div   $a0, $at
8000EBE8: sub.s F14, F16, F12
8000EBEC: mflo  $t5
8000EBF0: swc1  F18, 0x0114 ($sp)
8000EBF4: add.s F12, F16, F12
8000EBF8: swc1  F14, 0x00AC ($sp)
8000EBFC: swc1  F14, 0x0094 ($sp)
8000EC00: andi  $a0, $t5, 0xFFFF
8000EC04: swc1  F12, 0x00A0 ($sp)
8000EC08: swc1  F12, 0x0088 ($sp)
8000EC0C: jal   0x802B8018
8000EC10: sw    $v0, 0x004C ($sp)
8000EC14: lw    $v0, 0x004C ($sp)
8000EC18: addiu $at, $zero, 0x0012
8000EC1C: lwc1  F18, 0x0114 ($sp)
8000EC20: addiu $t8, $v0, 0x0001
8000EC24: div   $t8, $at
8000EC28: mfhi  $t7
8000EC2C: add.s F20, F20, F0
8000EC30: sh    $t7, 0x007C ($sp)
8000EC34: lwc1  F14, 0x0118 ($sp)
8000EC38: neg.s F12, F18
8000EC3C: sub.s F10, F14, F18
8000EC40: add.s F0, F18, F14
8000EC44: add.s F4, F10, F22
8000EC48: add.s F10, F0, F22
8000EC4C: swc1  F4, 0x000C ($s0)
8000EC50: lwc1  F6, 0x00AC ($sp)
8000EC54: add.s F8, F0, F24
8000EC58: swc1  F10, 0x0018 ($s0)
8000EC5C: swc1  F6, 0x0010 ($s0)
8000EC60: sub.s F6, F18, F14
8000EC64: swc1  F8, 0x0014 ($s0)
8000EC68: lwc1  F4, 0x00A0 ($sp)
8000EC6C: neg.s F2, F14
8000EC70: add.s F8, F6, F24
8000EC74: swc1  F4, 0x001C ($s0)
8000EC78: sub.s F10, F2, F18
8000EC7C: swc1  F8, 0x0020 ($s0)
8000EC80: add.s F8, F12, F14
8000EC84: add.s F4, F10, F22
8000EC88: add.s F10, F8, F24
8000EC8C: swc1  F4, 0x0024 ($s0)
8000EC90: lwc1  F6, 0x0094 ($sp)
8000EC94: add.s F4, F2, F18
8000EC98: swc1  F10, 0x002C ($s0)
8000EC9C: swc1  F6, 0x0028 ($s0)
8000ECA0: sub.s F10, F12, F14
8000ECA4: add.s F6, F4, F22
8000ECA8: add.s F4, F10, F24
8000ECAC: swc1  F6, 0x0030 ($s0)
8000ECB0: lwc1  F8, 0x0088 ($sp)
8000ECB4: swc1  F22, 0x0000 ($s0)
8000ECB8: swc1  F4, 0x0038 ($s0)
8000ECBC: swc1  F20, 0x0004 ($s0)
8000ECC0: swc1  F24, 0x0008 ($s0)
8000ECC4: swc1  F8, 0x0034 ($s0)
8000ECC8: lhu   $t9, 0x00CA ($sp)
8000ECCC: sh    $t9, 0x0042 ($s0)
8000ECD0: lwc1  F6, 0x00C4 ($sp)
8000ECD4: swc1  F6, 0x003C ($s0)
8000ECD8: lhu   $t3, 0x00C2 ($sp)
8000ECDC: sh    $t3, 0x0040 ($s0)
8000ECE0: lhu   $t2, 0x007E ($sp)
8000ECE4: sh    $t2, 0x0044 ($s0)
8000ECE8: lhu   $t4, 0x007C ($sp)
8000ECEC: sh    $s1, 0x0048 ($s0)
8000ECF0: sh    $t4, 0x0046 ($s0)
8000ECF4: lw    $ra, 0x003C ($sp)
8000ECF8: ldc1  F20, 0x0018 ($sp)
8000ECFC: ldc1  F22, 0x0020 ($sp)
8000ED00: ldc1  F24, 0x0028 ($sp)
8000ED04: lw    $s0, 0x0034 ($sp)
8000ED08: lw    $s1, 0x0038 ($sp)
8000ED0C: jr    $ra
8000ED10: addiu $sp, $sp, 0x0120

8000ED14: sw    $a1, 0x0004 ($sp)
8000ED18: sll   $t6, $a1, 0x10
8000ED1C: lui   $a2, 0x8016
8000ED20: lui   $v1, 0x8016
8000ED24: sra   $a1, $t6, 0x10
8000ED28: or    $v0, $zero, $zero
8000ED2C: addiu $v1, $v1, 0x42D8
8000ED30: addiu $a2, $a2, 0x41F8
8000ED34: lhu   $t8, 0x000C ($a2)
8000ED38: bnez  $t8, 0x8000ED58
8000ED3C: addiu $t9, $zero, 0x0001
8000ED40: sh    $t9, 0x000C ($a2)
8000ED44: sh    $a0, 0x000E ($a2)
8000ED48: sh    $a1, 0x0010 ($a2)
8000ED4C: sw    $zero, 0x0014 ($a2)
8000ED50: beq   $zero, $zero, 0x8000ED64
8000ED54: addiu $v0, $zero, 0x0001
8000ED58: addiu $a2, $a2, 0x001C
8000ED5C: bnel  $a2, $v1, 0x8000ED38
8000ED60: lhu   $t8, 0x000C ($a2)
8000ED64: bnel  $v0, $zero, 0x8000ED78
8000ED68: or    $v0, $zero, $zero
8000ED6C: jr    $ra
8000ED70: addiu $v0, $zero, 0xFFFE

8000ED74: or    $v0, $zero, $zero
8000ED78: jr    $ra
8000ED7C: nop

8000ED80: sll   $t6, $a0, 0x3
8000ED84: subu  $t6, $t6, $a0
8000ED88: sll   $t6, $t6, 0x4
8000ED8C: lui   $t7, 0x8016
8000ED90: addu  $t7, $t7, $t6
8000ED94: lh    $t7, 0xF9B8 ($t7)
8000ED98: addiu $sp, $sp, 0xFFE8
8000ED9C: addiu $at, $zero, 0x0008
8000EDA0: beq   $t7, $at, 0x8000EDB0
8000EDA4: sw    $ra, 0x0014 ($sp)
8000EDA8: beq   $zero, $zero, 0x8000EDB8
8000EDAC: addiu $v0, $zero, 0xFFFF
8000EDB0: jal   0x8000ED14
8000EDB4: or    $a1, $zero, $zero
8000EDB8: lw    $ra, 0x0014 ($sp)
8000EDBC: addiu $sp, $sp, 0x0018
8000EDC0: jr    $ra
8000EDC4: nop

8000EDC8: sll   $t6, $a0, 0x3
8000EDCC: subu  $t6, $t6, $a0
8000EDD0: sll   $t6, $t6, 0x4
8000EDD4: lui   $t7, 0x8016
8000EDD8: addu  $t7, $t7, $t6
8000EDDC: lh    $t7, 0xF9B8 ($t7)
8000EDE0: addiu $sp, $sp, 0xFFE8
8000EDE4: addiu $at, $zero, 0x0007
8000EDE8: beq   $t7, $at, 0x8000EDF8
8000EDEC: sw    $ra, 0x0014 ($sp)
8000EDF0: beq   $zero, $zero, 0x8000EE00
8000EDF4: addiu $v0, $zero, 0xFFFF
8000EDF8: jal   0x8000ED14
8000EDFC: addiu $a1, $zero, 0x0001
8000EE00: lw    $ra, 0x0014 ($sp)
8000EE04: addiu $sp, $sp, 0x0018
8000EE08: jr    $ra
8000EE0C: nop

8000EE10: sll   $t6, $a0, 0x3
8000EE14: subu  $t6, $t6, $a0
8000EE18: sll   $t6, $t6, 0x4
8000EE1C: lui   $t7, 0x8016
8000EE20: addu  $t7, $t7, $t6
8000EE24: lh    $t7, 0xF9B8 ($t7)
8000EE28: addiu $sp, $sp, 0xFFE8
8000EE2C: addiu $at, $zero, 0x002A
8000EE30: beq   $t7, $at, 0x8000EE40
8000EE34: sw    $ra, 0x0014 ($sp)
8000EE38: beq   $zero, $zero, 0x8000EE48
8000EE3C: addiu $v0, $zero, 0xFFFF
8000EE40: jal   0x8000ED14
8000EE44: addiu $a1, $zero, 0x0002
8000EE48: lw    $ra, 0x0014 ($sp)
8000EE4C: addiu $sp, $sp, 0x0018
8000EE50: jr    $ra
8000EE54: nop

8000EE58: lui   $v1, 0x8016
8000EE5C: lui   $a2, 0x8016
8000EE60: addiu $a2, $a2, 0x42D8
8000EE64: addiu $v1, $v1, 0x41F8
8000EE68: addiu $a1, $zero, 0x03E8
8000EE6C: lhu   $t6, 0x000E ($v1)
8000EE70: addiu $v0, $v1, 0x001C
8000EE74: bnel  $a0, $t6, 0x8000EE88
8000EE78: lhu   $t7, 0x002A ($v1)
8000EE7C: sh    $zero, 0x000C ($v1)
8000EE80: sh    $a1, 0x000E ($v1)
8000EE84: lhu   $t7, 0x002A ($v1)
8000EE88: bnel  $a0, $t7, 0x8000EE9C
8000EE8C: lhu   $t8, 0x0046 ($v1)
8000EE90: sh    $zero, 0x000C ($v0)
8000EE94: sh    $a1, 0x000E ($v0)
8000EE98: lhu   $t8, 0x0046 ($v1)
8000EE9C: addiu $v0, $v1, 0x0038
8000EEA0: bnel  $a0, $t8, 0x8000EEB4
8000EEA4: lhu   $t9, 0x0062 ($v1)
8000EEA8: sh    $zero, 0x000C ($v0)
8000EEAC: sh    $a1, 0x000E ($v0)
8000EEB0: lhu   $t9, 0x0062 ($v1)
8000EEB4: addiu $v0, $v1, 0x0054
8000EEB8: bnel  $a0, $t9, 0x8000EECC
8000EEBC: addiu $v1, $v1, 0x0070
8000EEC0: sh    $zero, 0x000C ($v0)
8000EEC4: sh    $a1, 0x000E ($v0)
8000EEC8: addiu $v1, $v1, 0x0070
8000EECC: bnel  $v1, $a2, 0x8000EE70
8000EED0: lhu   $t6, 0x000E ($v1)
8000EED4: jr    $ra
8000EED8: nop

8000EEDC: lui   $v1, 0x8016
8000EEE0: lui   $a0, 0x8016
8000EEE4: addiu $a0, $a0, 0x42D8
8000EEE8: addiu $v1, $v1, 0x41F8
8000EEEC: addiu $v0, $zero, 0x03E8
8000EEF0: addiu $v1, $v1, 0x0070
8000EEF4: sh    $zero, 0xFFB8 ($v1)
8000EEF8: sh    $v0, 0xFFBA ($v1)
8000EEFC: sh    $zero, 0xFFD4 ($v1)
8000EF00: sh    $v0, 0xFFD6 ($v1)
8000EF04: sh    $zero, 0xFFF0 ($v1)
8000EF08: sh    $v0, 0xFFF2 ($v1)
8000EF0C: sh    $zero, 0xFF9C ($v1)
8000EF10: bne   $v1, $a0, 0x8000EEF0
8000EF14: sh    $v0, 0xFF9E ($v1)
8000EF18: jr    $ra
8000EF1C: nop

8000EF20: addiu $sp, $sp, 0xFF98
8000EF24: sdc1  F30, 0x0040 ($sp)
8000EF28: lui   $at, 0x800F
8000EF2C: lwc1  F30, 0xD040 ($at)
8000EF30: sdc1  F28, 0x0038 ($sp)
8000EF34: lui   $at, 0x4248
8000EF38: mtc1  $at, F28
8000EF3C: sdc1  F26, 0x0030 ($sp)
8000EF40: lui   $at, 0x3F80
8000EF44: mtc1  $at, F26
8000EF48: sdc1  F24, 0x0028 ($sp)
8000EF4C: lui   $at, 0x800F
8000EF50: sw    $s6, 0x0060 ($sp)
8000EF54: sw    $s3, 0x0054 ($sp)
8000EF58: sw    $s0, 0x0048 ($sp)
8000EF5C: lwc1  F24, 0xD044 ($at)
8000EF60: sw    $s5, 0x005C ($sp)
8000EF64: sw    $s4, 0x0058 ($sp)
8000EF68: sw    $s2, 0x0050 ($sp)
8000EF6C: sdc1  F22, 0x0020 ($sp)
8000EF70: lui   $at, 0x800F
8000EF74: lui   $s0, 0x8016
8000EF78: lui   $s3, 0x8016
8000EF7C: lui   $s6, 0x8016
8000EF80: sw    $ra, 0x0064 ($sp)
8000EF84: sw    $s1, 0x004C ($sp)
8000EF88: sdc1  F20, 0x0018 ($sp)
8000EF8C: addiu $s6, $s6, 0x42D8
8000EF90: addiu $s3, $s3, 0xF9B8
8000EF94: addiu $s0, $s0, 0x41F8
8000EF98: lwc1  F22, 0xD048 ($at)
8000EF9C: addiu $s2, $zero, 0x0001
8000EFA0: addiu $s4, $zero, 0x0070
8000EFA4: addiu $s5, $zero, 0x0002
8000EFA8: lhu   $t6, 0x000C ($s0)
8000EFAC: bnel  $s2, $t6, 0x8000F098
8000EFB0: addiu $s0, $s0, 0x001C
8000EFB4: lhu   $t7, 0x000E ($s0)
8000EFB8: lw    $t9, 0x0014 ($s0)
8000EFBC: lh    $v0, 0x0010 ($s0)
8000EFC0: multu $t7, $s4
8000EFC4: addiu $t0, $t9, 0x0001
8000EFC8: sw    $t0, 0x0014 ($s0)
8000EFCC: mflo  $t8
8000EFD0: addu  $s1, $s3, $t8
8000EFD4: beql  $v0, $zero, 0x8000EFFC
8000EFD8: lw    $v0, 0x0014 ($s0)
8000EFDC: beql  $v0, $s2, 0x8000F020
8000EFE0: lw    $v0, 0x0014 ($s0)
8000EFE4: beql  $v0, $s5, 0x8000F040
8000EFE8: lw    $v0, 0x0014 ($s0)
8000EFEC: mov.s F20, F26
8000EFF0: beq   $zero, $zero, 0x8000F058
8000EFF4: or    $v0, $t0, $zero
8000EFF8: lw    $v0, 0x0014 ($s0)
8000EFFC: sltiu $at, $v0, 0x000A
8000F000: beq   $at, $zero, 0x8000F010
8000F004: nop
8000F008: beq   $zero, $zero, 0x8000F058
8000F00C: mov.s F20, F30
8000F010: lui   $at, 0x800F
8000F014: beq   $zero, $zero, 0x8000F058
8000F018: lwc1  F20, 0xD04C ($at)
8000F01C: lw    $v0, 0x0014 ($s0)
8000F020: sltiu $at, $v0, 0x000A
8000F024: beq   $at, $zero, 0x8000F034
8000F028: nop
8000F02C: beq   $zero, $zero, 0x8000F058
8000F030: mov.s F20, F22
8000F034: beq   $zero, $zero, 0x8000F058
8000F038: mov.s F20, F24
8000F03C: lw    $v0, 0x0014 ($s0)
8000F040: sltiu $at, $v0, 0x000A
8000F044: beql  $at, $zero, 0x8000F058
8000F048: mov.s F20, F24
8000F04C: beq   $zero, $zero, 0x8000F058
8000F050: mov.s F20, F22
8000F054: mov.s F20, F24
8000F058: andi  $t1, $v0, 0x0001
8000F05C: bnel  $t1, $zero, 0x8000F098
8000F060: addiu $s0, $s0, 0x001C
8000F064: jal   randInt
8000F068: addiu $a0, $zero, 0x001E
8000F06C: addiu $t2, $v0, 0x0014
8000F070: mtc1  $t2, F4
8000F074: addiu $a0, $s1, 0x0018
8000F078: lh    $a2, 0x0010 ($s0)
8000F07C: cvt.s.w F6, F4
8000F080: mul.s F8, F6, F20
8000F084: div.s F10, F8, F28
8000F088: mfc1  $a1, F10
8000F08C: jal   0x80076D70
8000F090: nop
8000F094: addiu $s0, $s0, 0x001C
8000F098: bnel  $s0, $s6, 0x8000EFAC
8000F09C: lhu   $t6, 0x000C ($s0)
8000F0A0: lw    $ra, 0x0064 ($sp)
8000F0A4: ldc1  F20, 0x0018 ($sp)
8000F0A8: ldc1  F22, 0x0020 ($sp)
8000F0AC: ldc1  F24, 0x0028 ($sp)
8000F0B0: ldc1  F26, 0x0030 ($sp)
8000F0B4: ldc1  F28, 0x0038 ($sp)
8000F0B8: ldc1  F30, 0x0040 ($sp)
8000F0BC: lw    $s0, 0x0048 ($sp)
8000F0C0: lw    $s1, 0x004C ($sp)
8000F0C4: lw    $s2, 0x0050 ($sp)
8000F0C8: lw    $s3, 0x0054 ($sp)
8000F0CC: lw    $s4, 0x0058 ($sp)
8000F0D0: lw    $s5, 0x005C ($sp)
8000F0D4: lw    $s6, 0x0060 ($sp)
8000F0D8: jr    $ra
8000F0DC: addiu $sp, $sp, 0x0068

8000F0E0: lui   $at, 0x8016
8000F0E4: sh    $zero, 0x4670 ($at)
8000F0E8: lui   $at, 0x8016
8000F0EC: sh    $zero, 0x4678 ($at)
8000F0F0: lui   $at, 0x8016
8000F0F4: sh    $zero, 0x4672 ($at)
8000F0F8: lui   $at, 0x8016
8000F0FC: sh    $zero, 0x467A ($at)
8000F100: lui   $at, 0x8016
8000F104: sh    $zero, 0x4674 ($at)
8000F108: lui   $at, 0x8016
8000F10C: sh    $zero, 0x467C ($at)
8000F110: lui   $at, 0x8016
8000F114: sh    $zero, 0x4676 ($at)
8000F118: lui   $at, 0x8016
8000F11C: jr    $ra
8000F120: sh    $zero, 0x467E ($at)

8000F124: addiu $sp, $sp, 0xFFD8
8000F128: lui   $v0, 0x8016
8000F12C: lui   $v1, 0x8016
8000F130: sw    $ra, 0x0024 ($sp)
8000F134: sw    $s2, 0x0020 ($sp)
8000F138: sw    $s1, 0x001C ($sp)
8000F13C: sw    $s0, 0x0018 ($sp)
8000F140: addiu $v1, $v1, 0x334C
8000F144: addiu $v0, $v0, 0x3348
8000F148: addiu $v0, $v0, 0x0002
8000F14C: bne   $v0, $v1, 0x8000F148
8000F150: sh    $zero, 0xFFFE ($v0)
8000F154: lui   $t6, 0x800E
8000F158: lhu   $t6, 0xC51C ($t6)
8000F15C: addiu $at, $zero, 0x0001
8000F160: lui   $t7, 0x800E
8000F164: beql  $t6, $at, 0x8000F2A8
8000F168: lw    $ra, 0x0024 ($sp)
8000F16C: lw    $t7, 0xC53C ($t7)
8000F170: lui   $s1, 0x8016
8000F174: addiu $s1, $s1, 0x3348
8000F178: bnez  $t7, 0x8000F2A4
8000F17C: or    $s0, $zero, $zero
8000F180: lui   $s2, 0x8019
8000F184: addiu $s2, $s2, 0xEDF3
8000F188: jal   randInt
8000F18C: addiu $a0, $zero, 0x0008
8000F190: lb    $a2, 0x0000 ($s2)
8000F194: sh    $v0, 0x0000 ($s1)
8000F198: or    $a1, $zero, $zero
8000F19C: slti  $at, $a2, 0x0003
8000F1A0: beq   $at, $zero, 0x8000F294
8000F1A4: lui   $t8, 0x800F
8000F1A8: blez  $a2, 0x8000F294
8000F1AC: addiu $v0, $t8, 0x86A8
8000F1B0: blez  $a2, 0x8000F1E4
8000F1B4: or    $a0, $zero, $zero
8000F1B8: lhu   $v1, 0x0000 ($s1)
8000F1BC: addu  $a0, $a2, $v0
8000F1C0: lb    $t9, 0x0000 ($v0)
8000F1C4: addiu $v0, $v0, 0x0001
8000F1C8: sltu  $at, $v0, $a0
8000F1CC: bne   $t9, $v1, 0x8000F1D8
8000F1D0: nop
8000F1D4: addiu $a1, $zero, 0x0001
8000F1D8: bnel  $at, $zero, 0x8000F1C4
8000F1DC: lb    $t9, 0x0000 ($v0)
8000F1E0: or    $a0, $zero, $zero
8000F1E4: blez  $s0, 0x8000F28C
8000F1E8: andi  $a3, $s0, 0x0003
8000F1EC: beq   $a3, $zero, 0x8000F228
8000F1F0: lhu   $v1, 0x0000 ($s1)
8000F1F4: lui   $t1, 0x8016
8000F1F8: addiu $t1, $t1, 0x3348
8000F1FC: sll   $t0, $a0, 0x1
8000F200: addu  $v0, $t0, $t1
8000F204: or    $a2, $a3, $zero
8000F208: lhu   $t2, 0x0000 ($v0)
8000F20C: addiu $a0, $a0, 0x0001
8000F210: bne   $t2, $v1, 0x8000F21C
8000F214: nop
8000F218: addiu $a1, $zero, 0x0001
8000F21C: bne   $a2, $a0, 0x8000F208
8000F220: addiu $v0, $v0, 0x0002
8000F224: beq   $a0, $s0, 0x8000F28C
8000F228: lui   $t4, 0x8016
8000F22C: addiu $t4, $t4, 0x3348
8000F230: sll   $t3, $a0, 0x1
8000F234: sll   $t5, $s0, 0x1
8000F238: addu  $a2, $t5, $t4
8000F23C: addu  $v0, $t3, $t4
8000F240: lhu   $t6, 0x0000 ($v0)
8000F244: bnel  $t6, $v1, 0x8000F254
8000F248: lhu   $t7, 0x0002 ($v0)
8000F24C: addiu $a1, $zero, 0x0001
8000F250: lhu   $t7, 0x0002 ($v0)
8000F254: bnel  $t7, $v1, 0x8000F264
8000F258: lhu   $t8, 0x0004 ($v0)
8000F25C: addiu $a1, $zero, 0x0001
8000F260: lhu   $t8, 0x0004 ($v0)
8000F264: bnel  $t8, $v1, 0x8000F274
8000F268: lhu   $t9, 0x0006 ($v0)
8000F26C: addiu $a1, $zero, 0x0001
8000F270: lhu   $t9, 0x0006 ($v0)
8000F274: addiu $v0, $v0, 0x0008
8000F278: bne   $t9, $v1, 0x8000F284
8000F27C: nop
8000F280: addiu $a1, $zero, 0x0001
8000F284: bnel  $v0, $a2, 0x8000F244
8000F288: lhu   $t6, 0x0000 ($v0)
8000F28C: bnez  $a1, 0x8000F188
8000F290: nop
8000F294: addiu $s0, $s0, 0x0001
8000F298: addiu $at, $zero, 0x0002
8000F29C: bne   $s0, $at, 0x8000F188
8000F2A0: addiu $s1, $s1, 0x0002
8000F2A4: lw    $ra, 0x0024 ($sp)
8000F2A8: lw    $s0, 0x0018 ($sp)
8000F2AC: lw    $s1, 0x001C ($sp)
8000F2B0: lw    $s2, 0x0020 ($sp)
8000F2B4: jr    $ra
8000F2B8: addiu $sp, $sp, 0x0028

8000F2BC: addiu $sp, $sp, 0xFFE8
8000F2C0: sw    $ra, 0x0014 ($sp)
8000F2C4: jal   bzero
8000F2C8: sll   $a1, $a1, 0x3
8000F2CC: lw    $ra, 0x0014 ($sp)
8000F2D0: addiu $sp, $sp, 0x0018
8000F2D4: jr    $ra
8000F2D8: nop

8000F2DC: addiu $sp, $sp, 0xFFC8
8000F2E0: lui   $t6, 0x800E
8000F2E4: lh    $t6, 0xC5A0 ($t6)
8000F2E8: lui   $t8, 0x800E
8000F2EC: addiu $t8, $t8, 0xD9D0
8000F2F0: sll   $t7, $t6, 0x4
8000F2F4: sw    $ra, 0x0034 ($sp)
8000F2F8: sw    $s7, 0x0030 ($sp)
8000F2FC: sw    $s6, 0x002C ($sp)
8000F300: sw    $s5, 0x0028 ($sp)
8000F304: sw    $s4, 0x0024 ($sp)
8000F308: sw    $s3, 0x0020 ($sp)
8000F30C: sw    $s2, 0x001C ($sp)
8000F310: sw    $s1, 0x0018 ($sp)
8000F314: sw    $s0, 0x0014 ($sp)
8000F318: addu  $v0, $t7, $t8
8000F31C: lhu   $t9, 0x0000 ($v0)
8000F320: lui   $v1, 0x8016
8000F324: addiu $v1, $v1, 0x3368
8000F328: sw    $t9, 0x0000 ($v1)
8000F32C: lhu   $t0, 0x0002 ($v0)
8000F330: sw    $t0, 0x0004 ($v1)
8000F334: lhu   $t1, 0x0004 ($v0)
8000F338: sw    $t1, 0x0008 ($v1)
8000F33C: lhu   $t2, 0x0006 ($v0)
8000F340: sw    $t2, 0x000C ($v1)
8000F344: lhu   $a1, 0x0008 ($v0)
8000F348: jal   0x802A7B70
8000F34C: sll   $a0, $a1, 0x2
8000F350: lui   $at, 0x8016
8000F354: lui   $s1, 0x8016
8000F358: lui   $s3, 0x8016
8000F35C: lui   $s4, 0x8016
8000F360: lui   $s2, 0x8016
8000F364: lui   $s6, 0x8016
8000F368: lui   $s7, 0x8016
8000F36C: lui   $s5, 0x8016
8000F370: lui   $s0, 0x8016
8000F374: sw    $v0, 0x3598 ($at)
8000F378: addiu $s0, $s0, 0x45B0
8000F37C: addiu $s5, $s5, 0x45A0
8000F380: addiu $s7, $s7, 0x4590
8000F384: addiu $s6, $s6, 0x4580
8000F388: addiu $s2, $s2, 0x4570
8000F38C: addiu $s4, $s4, 0x4560
8000F390: addiu $s3, $s3, 0x4550
8000F394: addiu $s1, $s1, 0x3368
8000F398: lw    $a0, 0x0000 ($s1)
8000F39C: sll   $t3, $a0, 0x3
8000F3A0: jal   0x802A7B70
8000F3A4: or    $a0, $t3, $zero
8000F3A8: lw    $a0, 0x0000 ($s1)
8000F3AC: sw    $v0, 0x0000 ($s3)
8000F3B0: sll   $t4, $a0, 0x3
8000F3B4: jal   0x802A7B70
8000F3B8: or    $a0, $t4, $zero
8000F3BC: lw    $a0, 0x0000 ($s1)
8000F3C0: sw    $v0, 0x0000 ($s4)
8000F3C4: sll   $t5, $a0, 0x3
8000F3C8: jal   0x802A7B70
8000F3CC: or    $a0, $t5, $zero
8000F3D0: lw    $a0, 0x0000 ($s1)
8000F3D4: sw    $v0, 0x0000 ($s2)
8000F3D8: sll   $t6, $a0, 0x1
8000F3DC: jal   0x802A7B70
8000F3E0: or    $a0, $t6, $zero
8000F3E4: lw    $a0, 0x0000 ($s1)
8000F3E8: sw    $v0, 0x0000 ($s6)
8000F3EC: sll   $t7, $a0, 0x1
8000F3F0: jal   0x802A7B70
8000F3F4: or    $a0, $t7, $zero
8000F3F8: lw    $a0, 0x0000 ($s1)
8000F3FC: sw    $v0, 0x0000 ($s7)
8000F400: sll   $t8, $a0, 0x1
8000F404: jal   0x802A7B70
8000F408: or    $a0, $t8, $zero
8000F40C: addiu $s5, $s5, 0x0004
8000F410: sltu  $at, $s5, $s0
8000F414: addiu $s1, $s1, 0x0004
8000F418: addiu $s3, $s3, 0x0004
8000F41C: addiu $s4, $s4, 0x0004
8000F420: addiu $s2, $s2, 0x0004
8000F424: addiu $s6, $s6, 0x0004
8000F428: addiu $s7, $s7, 0x0004
8000F42C: bnez  $at, 0x8000F398
8000F430: sw    $v0, 0xFFFC ($s5)
8000F434: lui   $t9, 0x8016
8000F438: lw    $t9, 0x4550 ($t9)
8000F43C: lui   $t0, 0x8016
8000F440: lw    $t0, 0x4560 ($t0)
8000F444: lui   $at, 0x8016
8000F448: lui   $t1, 0x8016
8000F44C: sw    $t9, 0x4490 ($at)
8000F450: lw    $t1, 0x4570 ($t1)
8000F454: lui   $at, 0x8016
8000F458: lui   $t2, 0x8016
8000F45C: sw    $t0, 0x31D0 ($at)
8000F460: lw    $t2, 0x4580 ($t2)
8000F464: lui   $at, 0x8016
8000F468: lui   $t3, 0x8016
8000F46C: sw    $t1, 0x31D4 ($at)
8000F470: lw    $t3, 0x4590 ($t3)
8000F474: lui   $at, 0x8016
8000F478: lui   $t4, 0x8016
8000F47C: sw    $t2, 0x31D8 ($at)
8000F480: lw    $t4, 0x45A0 ($t4)
8000F484: lui   $at, 0x8016
8000F488: sw    $t3, 0x31DC ($at)
8000F48C: lui   $at, 0x8016
8000F490: lui   $s1, 0x8016
8000F494: lui   $s3, 0x8016
8000F498: lui   $s4, 0x8016
8000F49C: lui   $s2, 0x8016
8000F4A0: lui   $s0, 0x8016
8000F4A4: addiu $s0, $s0, 0x4580
8000F4A8: addiu $s2, $s2, 0x4570
8000F4AC: addiu $s4, $s4, 0x4560
8000F4B0: addiu $s3, $s3, 0x4550
8000F4B4: addiu $s1, $s1, 0x3368
8000F4B8: sw    $t4, 0x45E0 ($at)
8000F4BC: lw    $a0, 0x0000 ($s3)
8000F4C0: jal   0x8000F2BC
8000F4C4: lw    $a1, 0x0000 ($s1)
8000F4C8: lw    $a0, 0x0000 ($s4)
8000F4CC: jal   0x8000F2BC
8000F4D0: lw    $a1, 0x0000 ($s1)
8000F4D4: lw    $a0, 0x0000 ($s2)
8000F4D8: jal   0x8000F2BC
8000F4DC: lw    $a1, 0x0000 ($s1)
8000F4E0: addiu $s2, $s2, 0x0004
8000F4E4: sltu  $at, $s2, $s0
8000F4E8: addiu $s1, $s1, 0x0004
8000F4EC: addiu $s3, $s3, 0x0004
8000F4F0: bnez  $at, 0x8000F4BC
8000F4F4: addiu $s4, $s4, 0x0004
8000F4F8: or    $s0, $zero, $zero
8000F4FC: addiu $s0, $s0, 0x0001
8000F500: slti  $at, $s0, 0x0004
8000F504: bnel  $at, $zero, 0x8000F500
8000F508: addiu $s0, $s0, 0x0001
8000F50C: lui   $s1, 0x8016
8000F510: addiu $s1, $s1, 0x3368
8000F514: or    $s0, $zero, $zero
8000F518: addiu $s2, $zero, 0x0004
8000F51C: lw    $t5, 0x0000 ($s1)
8000F520: slti  $at, $t5, 0x0002
8000F524: bnel  $at, $zero, 0x8000F558
8000F528: addiu $s0, $s0, 0x0001
8000F52C: jal   0x800100F0
8000F530: or    $a0, $s0, $zero
8000F534: jal   0x80010218
8000F538: or    $a0, $s0, $zero
8000F53C: jal   0x800107C4
8000F540: or    $a0, $s0, $zero
8000F544: jal   0x80010DBC
8000F548: or    $a0, $s0, $zero
8000F54C: jal   0x80010E6C
8000F550: or    $a0, $s0, $zero
8000F554: addiu $s0, $s0, 0x0001
8000F558: bne   $s0, $s2, 0x8000F51C
8000F55C: addiu $s1, $s1, 0x0004
8000F560: lui   $t6, 0x8016
8000F564: lhu   $t6, 0x45C8 ($t6)
8000F568: lui   $v0, 0x800E
8000F56C: lh    $v0, 0xC5A0 ($v0)
8000F570: lui   $at, 0x8016
8000F574: sh    $t6, 0x4430 ($at)
8000F578: addiu $at, $zero, 0x000A
8000F57C: beq   $v0, $at, 0x8000F5CC
8000F580: addiu $at, $zero, 0x000B
8000F584: beq   $v0, $at, 0x8000F59C
8000F588: addiu $at, $zero, 0x0012
8000F58C: beq   $v0, $at, 0x8000F5B4
8000F590: nop
8000F594: beq   $zero, $zero, 0x8000F5EC
8000F598: nop
8000F59C: jal   0x800120C8
8000F5A0: nop
8000F5A4: jal   0x800127E0
8000F5A8: nop
8000F5AC: beq   $zero, $zero, 0x8000F5EC
8000F5B0: nop
8000F5B4: jal   0x80012190
8000F5B8: nop
8000F5BC: jal   0x800132F4
8000F5C0: nop
8000F5C4: beq   $zero, $zero, 0x8000F5EC
8000F5C8: nop
8000F5CC: jal   0x800147E0
8000F5D0: nop
8000F5D4: jal   0x80014934
8000F5D8: nop
8000F5DC: jal   0x80014A88
8000F5E0: nop
8000F5E4: jal   0x80014BDC
8000F5E8: nop
8000F5EC: jal   0x8000DD78
8000F5F0: nop
8000F5F4: jal   0x8000EEDC
8000F5F8: nop
8000F5FC: lw    $ra, 0x0034 ($sp)
8000F600: lw    $s0, 0x0014 ($sp)
8000F604: lw    $s1, 0x0018 ($sp)
8000F608: lw    $s2, 0x001C ($sp)
8000F60C: lw    $s3, 0x0020 ($sp)
8000F610: lw    $s4, 0x0024 ($sp)
8000F614: lw    $s5, 0x0028 ($sp)
8000F618: lw    $s6, 0x002C ($sp)
8000F61C: lw    $s7, 0x0030 ($sp)
8000F620: jr    $ra
8000F624: addiu $sp, $sp, 0x0038

8000F628: addiu $sp, $sp, 0xFEE0
8000F62C: lui   $t6, 0x8016
8000F630: lui   $t7, 0x8016
8000F634: addiu $t7, $t7, 0x4390
8000F638: addiu $t6, $t6, 0x3210
8000F63C: sw    $t6, 0x00D4 ($sp)
8000F640: sw    $t7, 0x00D0 ($sp)
8000F644: lui   $t7, 0x8016
8000F648: lui   $t6, 0x8016
8000F64C: lui   $t8, 0x8016
8000F650: lui   $t9, 0x8016
8000F654: addiu $t9, $t9, 0xF898
8000F658: addiu $t8, $t8, 0x44D0
8000F65C: addiu $t6, $t6, 0x4408
8000F660: addiu $t7, $t7, 0x3258
8000F664: sw    $t7, 0x00B8 ($sp)
8000F668: sw    $t6, 0x00BC ($sp)
8000F66C: sw    $t8, 0x00CC ($sp)
8000F670: sw    $t9, 0x00C8 ($sp)
8000F674: lui   $t9, 0x8016
8000F678: lui   $t8, 0x8016
8000F67C: lui   $t6, 0x8016
8000F680: lui   $t7, 0x8016
8000F684: addiu $t7, $t7, 0x4450
8000F688: addiu $t6, $t6, 0x31F8
8000F68C: addiu $t8, $t8, 0x3270
8000F690: addiu $t9, $t9, 0x31E0
8000F694: sw    $t9, 0x00B0 ($sp)
8000F698: sw    $t8, 0x00B4 ($sp)
8000F69C: sw    $t6, 0x00AC ($sp)
8000F6A0: sw    $t7, 0x00A8 ($sp)
8000F6A4: lui   $t7, 0x8016
8000F6A8: lui   $t6, 0x8016
8000F6AC: lui   $t8, 0x8016
8000F6B0: lui   $t9, 0x8016
8000F6B4: addiu $t9, $t9, 0x3068
8000F6B8: addiu $t8, $t8, 0x3288
8000F6BC: addiu $t6, $t6, 0x3090
8000F6C0: addiu $t7, $t7, 0x3350
8000F6C4: sw    $t7, 0x0090 ($sp)
8000F6C8: sw    $t6, 0x0098 ($sp)
8000F6CC: sw    $t8, 0x00A4 ($sp)
8000F6D0: sw    $t9, 0x009C ($sp)
8000F6D4: lui   $t9, 0x8016
8000F6D8: lui   $t8, 0x8016
8000F6DC: lui   $t6, 0x8016
8000F6E0: lui   $t7, 0x8016
8000F6E4: addiu $t7, $t7, 0x33C8
8000F6E8: addiu $t6, $t6, 0x33B0
8000F6EC: addiu $t8, $t8, 0x44F8
8000F6F0: addiu $t9, $t9, 0x3398
8000F6F4: sw    $t9, 0x0088 ($sp)
8000F6F8: sw    $t8, 0x008C ($sp)
8000F6FC: sw    $t6, 0x0084 ($sp)
8000F700: sw    $t7, 0x0080 ($sp)
8000F704: lui   $t7, 0x8016
8000F708: lui   $t6, 0x8016
8000F70C: lui   $t8, 0x8016
8000F710: lui   $t9, 0x8016
8000F714: addiu $t9, $t9, 0x3318
8000F718: addiu $t8, $t8, 0x33F8
8000F71C: addiu $t6, $t6, 0x3450
8000F720: addiu $t7, $t7, 0x3380
8000F724: sw    $t7, 0x0070 ($sp)
8000F728: sw    $t6, 0x0074 ($sp)
8000F72C: sw    $t8, 0x007C ($sp)
8000F730: sw    $t9, 0x0078 ($sp)
8000F734: lui   $t9, 0x8016
8000F738: lui   $t8, 0x8016
8000F73C: lui   $t6, 0x8016
8000F740: lui   $t7, 0x8016
8000F744: addiu $t7, $t7, 0x3150
8000F748: addiu $t6, $t6, 0x3128
8000F74C: addiu $t8, $t8, 0x3490
8000F750: addiu $t9, $t9, 0x34A8
8000F754: sw    $t9, 0x0064 ($sp)
8000F758: sw    $t8, 0x0068 ($sp)
8000F75C: sw    $t6, 0x0060 ($sp)
8000F760: sw    $t7, 0x005C ($sp)
8000F764: sw    $ra, 0x0044 ($sp)
8000F768: sw    $s6, 0x0038 ($sp)
8000F76C: sw    $s5, 0x0034 ($sp)
8000F770: sw    $s4, 0x0030 ($sp)
8000F774: sw    $s2, 0x0028 ($sp)
8000F778: sw    $s1, 0x0024 ($sp)
8000F77C: sdc1  F20, 0x0018 ($sp)
8000F780: lui   $t7, 0x8016
8000F784: lui   $t6, 0x8016
8000F788: lui   $t8, 0x8016
8000F78C: lui   $t9, 0x8016
8000F790: sw    $s8, 0x0040 ($sp)
8000F794: sw    $s7, 0x003C ($sp)
8000F798: sw    $s0, 0x0020 ($sp)
8000F79C: addiu $t9, $t9, 0x34C0
8000F7A0: addiu $t8, $t8, 0x4538
8000F7A4: addiu $t6, $t6, 0x34D8
8000F7A8: addiu $t7, $t7, 0x30B8
8000F7AC: lui   $s1, 0x800F
8000F7B0: lui   $s2, 0x8016
8000F7B4: lui   $s4, 0x8016
8000F7B8: lui   $s5, 0x8016
8000F7BC: lui   $s6, 0x8016
8000F7C0: lui   $ra, 0x8016
8000F7C4: lui   $a3, 0x8016
8000F7C8: lui   $t0, 0x8016
8000F7CC: lui   $t1, 0x8016
8000F7D0: lui   $t2, 0x8016
8000F7D4: lui   $t3, 0x8016
8000F7D8: lui   $t4, 0x8016
8000F7DC: lui   $t5, 0x8016
8000F7E0: mtc1  $zero, F20
8000F7E4: sw    $s3, 0x002C ($sp)
8000F7E8: addiu $t5, $t5, 0x3178
8000F7EC: addiu $t4, $t4, 0x3100
8000F7F0: addiu $t3, $t3, 0x30E8
8000F7F4: addiu $t2, $t2, 0x3028
8000F7F8: addiu $t1, $t1, 0x3010
8000F7FC: addiu $t0, $t0, 0x2FF8
8000F800: addiu $a3, $a3, 0x3050
8000F804: addiu $ra, $ra, 0x31A0
8000F808: addiu $s6, $s6, 0x43E0
8000F80C: addiu $s5, $s5, 0x34F8
8000F810: addiu $s4, $s4, 0x43B8
8000F814: addiu $s2, $s2, 0x3330
8000F818: addiu $s1, $s1, 0x6990
8000F81C: sw    $t7, 0x004C ($sp)
8000F820: sw    $t6, 0x0050 ($sp)
8000F824: sw    $t8, 0x0058 ($sp)
8000F828: sw    $t9, 0x0054 ($sp)
8000F82C: or    $s0, $zero, $zero
8000F830: or    $s7, $zero, $zero
8000F834: or    $s8, $zero, $zero
8000F838: lui   $t8, 0x800E
8000F83C: lw    $t8, 0xC4DC ($t8)
8000F840: sh    $zero, 0x0000 ($a3)
8000F844: sh    $zero, 0x0000 ($t0)
8000F848: sh    $zero, 0x0000 ($t1)
8000F84C: lui   $v0, 0x800E
8000F850: lh    $v0, 0xC5A0 ($v0)
8000F854: addu  $t9, $s7, $t8
8000F858: sw    $t9, 0x0104 ($sp)
8000F85C: slti  $at, $v0, 0x0014
8000F860: beq   $at, $zero, 0x8000F8C0
8000F864: nop
8000F868: sw    $ra, 0x00D8 ($sp)
8000F86C: or    $a0, $s0, $zero
8000F870: or    $a1, $zero, $zero
8000F874: or    $a2, $zero, $zero
8000F878: sw    $a3, 0x00F8 ($sp)
8000F87C: sw    $t0, 0x00F4 ($sp)
8000F880: sw    $t1, 0x00F0 ($sp)
8000F884: sw    $t2, 0x00E8 ($sp)
8000F888: sw    $t3, 0x00E4 ($sp)
8000F88C: sw    $t4, 0x00E0 ($sp)
8000F890: jal   0x8000B95C
8000F894: sw    $t5, 0x00DC ($sp)
8000F898: lui   $v0, 0x800E
8000F89C: lh    $v0, 0xC5A0 ($v0)
8000F8A0: lw    $a3, 0x00F8 ($sp)
8000F8A4: lw    $t0, 0x00F4 ($sp)
8000F8A8: lw    $t1, 0x00F0 ($sp)
8000F8AC: lw    $t2, 0x00E8 ($sp)
8000F8B0: lw    $t3, 0x00E4 ($sp)
8000F8B4: lw    $t4, 0x00E0 ($sp)
8000F8B8: lw    $t5, 0x00DC ($sp)
8000F8BC: lw    $ra, 0x00D8 ($sp)
8000F8C0: lui   $t7, 0x800E
8000F8C4: lw    $t7, 0xC548 ($t7)
8000F8C8: sll   $t6, $v0, 0x4
8000F8CC: sw    $ra, 0x00D8 ($sp)
8000F8D0: sll   $t8, $t7, 0x2
8000F8D4: lui   $t7, 0x0D01
8000F8D8: addiu $t7, $t7, 0x9418
8000F8DC: addu  $t9, $t6, $t8
8000F8E0: addu  $a0, $t9, $t7
8000F8E4: sw    $a3, 0x00F8 ($sp)
8000F8E8: sw    $t0, 0x00F4 ($sp)
8000F8EC: sw    $t1, 0x00F0 ($sp)
8000F8F0: sw    $t2, 0x00E8 ($sp)
8000F8F4: sw    $t3, 0x00E4 ($sp)
8000F8F8: sw    $t4, 0x00E0 ($sp)
8000F8FC: jal   SegmentedToVirtualDupe
8000F900: sw    $t5, 0x00DC ($sp)
8000F904: lwc1  F4, 0x0000 ($v0)
8000F908: lw    $t2, 0x00E8 ($sp)
8000F90C: lw    $t3, 0x00E4 ($sp)
8000F910: lw    $t4, 0x00E0 ($sp)
8000F914: lw    $t5, 0x00DC ($sp)
8000F918: lw    $ra, 0x00D8 ($sp)
8000F91C: lw    $t6, 0x00D4 ($sp)
8000F920: lw    $a3, 0x00F8 ($sp)
8000F924: lw    $t0, 0x00F4 ($sp)
8000F928: lw    $t1, 0x00F0 ($sp)
8000F92C: swc1  F4, 0x0000 ($t2)
8000F930: sh    $zero, 0x0000 ($t3)
8000F934: sw    $zero, 0x0000 ($t4)
8000F938: swc1  F20, 0x0000 ($t5)
8000F93C: swc1  F20, 0x0000 ($ra)
8000F940: swc1  F20, 0x0000 ($t6)
8000F944: lw    $t9, 0x00D0 ($sp)
8000F948: addiu $t8, $zero, 0xFFFF
8000F94C: sw    $t8, 0x0000 ($t9)
8000F950: lw    $t7, 0x00CC ($sp)
8000F954: lui   $t8, 0x800E
8000F958: swc1  F20, 0x0000 ($t7)
8000F95C: lw    $t6, 0x00C8 ($sp)
8000F960: swc1  F20, 0x0000 ($t6)
8000F964: lw    $t8, 0xC53C ($t8)
8000F968: bnez  $t8, 0x8000F988
8000F96C: lui   $t9, 0x8016
8000F970: addiu $t9, $t9, 0x5270
8000F974: addu  $v1, $s8, $t9
8000F978: lh    $v0, 0x0000 ($v1)
8000F97C: sw    $v0, 0x0000 ($s4)
8000F980: beq   $zero, $zero, 0x8000F990
8000F984: sw    $v0, 0x0000 ($s6)
8000F988: sw    $s0, 0x0000 ($s4)
8000F98C: sw    $s0, 0x0000 ($s6)
8000F990: lw    $v0, 0x0000 ($s4)
8000F994: lui   $at, 0x8016
8000F998: lw    $t7, 0x00BC ($sp)
8000F99C: sll   $v1, $v0, 0x1
8000F9A0: addu  $at, $at, $v1
8000F9A4: sh    $s0, 0x4360 ($at)
8000F9A8: lui   $at, 0x8016
8000F9AC: addu  $at, $at, $v1
8000F9B0: sh    $s0, 0x4378 ($at)
8000F9B4: sw    $v0, 0x0000 ($t7)
8000F9B8: lw    $t6, 0x00B8 ($sp)
8000F9BC: addiu $a1, $zero, 0xFFEC
8000F9C0: lui   $at, 0x8016
8000F9C4: sh    $zero, 0x0000 ($t6)
8000F9C8: lw    $t8, 0x00B4 ($sp)
8000F9CC: addiu $s3, $s0, 0x0001
8000F9D0: or    $a0, $s0, $zero
8000F9D4: sh    $zero, 0x0000 ($t8)
8000F9D8: lw    $t9, 0x00B0 ($sp)
8000F9DC: sh    $zero, 0x0000 ($t9)
8000F9E0: lw    $t7, 0x00AC ($sp)
8000F9E4: sh    $zero, 0x0000 ($t7)
8000F9E8: lw    $t6, 0x00A8 ($sp)
8000F9EC: sw    $a1, 0x0000 ($t6)
8000F9F0: lw    $t8, 0x00A4 ($sp)
8000F9F4: sw    $a1, 0x0000 ($t8)
8000F9F8: lhu   $t9, 0x0254 ($s1)
8000F9FC: lw    $t6, 0x009C ($sp)
8000FA00: sll   $t7, $t9, 0x1
8000FA04: addu  $at, $at, $t7
8000FA08: sh    $s0, 0x4478 ($at)
8000FA0C: swc1  F20, 0x0000 ($t6)
8000FA10: lw    $t8, 0x0098 ($sp)
8000FA14: lui   $t9, 0x800E
8000FA18: lui   $at, 0x800E
8000FA1C: swc1  F20, 0x0000 ($t8)
8000FA20: lh    $t9, 0xC5A0 ($t9)
8000FA24: sw    $ra, 0x00D8 ($sp)
8000FA28: sw    $t5, 0x00DC ($sp)
8000FA2C: sll   $t7, $t9, 0x2
8000FA30: addu  $at, $at, $t7
8000FA34: lwc1  F6, 0xCAA0 ($at)
8000FA38: addiu $at, $zero, 0x0003
8000FA3C: div   $s3, $at
8000FA40: mfhi  $t6
8000FA44: addiu $t8, $t6, 0xFFFF
8000FA48: mtc1  $t8, F8
8000FA4C: swc1  F20, 0x0000 ($s5)
8000FA50: lui   $at, 0x800F
8000FA54: cvt.s.w F10, F8
8000FA58: sw    $t4, 0x00E0 ($sp)
8000FA5C: sw    $t3, 0x00E4 ($sp)
8000FA60: sw    $t2, 0x00E8 ($sp)
8000FA64: sw    $t1, 0x00F0 ($sp)
8000FA68: sw    $t0, 0x00F4 ($sp)
8000FA6C: mul.s F0, F6, F10
8000FA70: sw    $a3, 0x00F8 ($sp)
8000FA74: swc1  F0, 0x000C ($s5)
8000FA78: swc1  F0, 0x0004 ($s5)
8000FA7C: lwc1  F16, 0xD050 ($at)
8000FA80: jal   0x80011AB8
8000FA84: swc1  F16, 0x0008 ($s5)
8000FA88: lw    $t9, 0x0090 ($sp)
8000FA8C: lw    $a3, 0x00F8 ($sp)
8000FA90: lw    $t0, 0x00F4 ($sp)
8000FA94: lw    $t1, 0x00F0 ($sp)
8000FA98: lw    $t2, 0x00E8 ($sp)
8000FA9C: lw    $t3, 0x00E4 ($sp)
8000FAA0: lw    $t4, 0x00E0 ($sp)
8000FAA4: lw    $t5, 0x00DC ($sp)
8000FAA8: lw    $ra, 0x00D8 ($sp)
8000FAAC: sh    $zero, 0x0000 ($t9)
8000FAB0: lw    $t7, 0x008C ($sp)
8000FAB4: or    $s0, $s3, $zero
8000FAB8: slti  $at, $s3, 0x0008
8000FABC: sh    $zero, 0x0000 ($t7)
8000FAC0: lw    $t6, 0x0088 ($sp)
8000FAC4: lui   $s3, 0x8019
8000FAC8: addiu $s7, $s7, 0x0DD8
8000FACC: sh    $zero, 0x0000 ($t6)
8000FAD0: lw    $t8, 0x0084 ($sp)
8000FAD4: addiu $s8, $s8, 0x0002
8000FAD8: addiu $s4, $s4, 0x0004
8000FADC: sh    $zero, 0x0000 ($t8)
8000FAE0: lw    $t9, 0x0080 ($sp)
8000FAE4: addiu $s6, $s6, 0x0004
8000FAE8: addiu $s1, $s1, 0x0DD8
8000FAEC: sh    $zero, 0x0000 ($t9)
8000FAF0: lw    $t7, 0x007C ($sp)
8000FAF4: addiu $s5, $s5, 0x0010
8000FAF8: addiu $v0, $zero, 0xFFFF
8000FAFC: sh    $zero, 0x0000 ($t7)
8000FB00: lw    $t6, 0x0078 ($sp)
8000FB04: addiu $t7, $zero, 0x0006
8000FB08: addiu $s3, $s3, 0xEE08
8000FB0C: sh    $zero, 0x0000 ($t6)
8000FB10: lw    $t8, 0x0104 ($sp)
8000FB14: lw    $t9, 0x0074 ($sp)
8000FB18: addiu $a3, $a3, 0x0002
8000FB1C: lwc1  F18, 0x001C ($t8)
8000FB20: addiu $t0, $t0, 0x0002
8000FB24: addiu $t1, $t1, 0x0002
8000FB28: swc1  F18, 0x0000 ($t9)
8000FB2C: lw    $t6, 0x0070 ($sp)
8000FB30: addiu $t2, $t2, 0x0004
8000FB34: addiu $t3, $t3, 0x0002
8000FB38: sh    $t7, 0x0000 ($t6)
8000FB3C: lhu   $t8, 0xF228 ($s1)
8000FB40: addiu $t4, $t4, 0x0004
8000FB44: addiu $t5, $t5, 0x0004
8000FB48: andi  $t9, $t8, 0x4000
8000FB4C: beq   $t9, $zero, 0x8000FB60
8000FB50: addiu $ra, $ra, 0x0004
8000FB54: addiu $t7, $zero, 0x0003
8000FB58: beq   $zero, $zero, 0x8000FB64
8000FB5C: sh    $t7, 0x0000 ($s2)
8000FB60: sh    $zero, 0x0000 ($s2)
8000FB64: lw    $t6, 0x0068 ($sp)
8000FB68: lw    $v1, 0x004C ($sp)
8000FB6C: lw    $a0, 0x0050 ($sp)
8000FB70: lw    $a1, 0x0054 ($sp)
8000FB74: lw    $a2, 0x0058 ($sp)
8000FB78: sh    $zero, 0x0000 ($t6)
8000FB7C: lw    $t8, 0x0064 ($sp)
8000FB80: addiu $t6, $zero, 0x0001
8000FB84: addiu $v1, $v1, 0x0004
8000FB88: sh    $zero, 0x0000 ($t8)
8000FB8C: lw    $t9, 0x0060 ($sp)
8000FB90: addiu $a0, $a0, 0x0002
8000FB94: addiu $a1, $a1, 0x0002
8000FB98: sw    $v0, 0x0000 ($t9)
8000FB9C: lw    $t7, 0x005C ($sp)
8000FBA0: addiu $a2, $a2, 0x0002
8000FBA4: addiu $s2, $s2, 0x0002
8000FBA8: sw    $v0, 0x0000 ($t7)
8000FBAC: lw    $t7, 0x00D0 ($sp)
8000FBB0: lw    $t8, 0x00D4 ($sp)
8000FBB4: sw    $t6, 0xFFFC ($v1)
8000FBB8: addiu $t6, $t7, 0x0004
8000FBBC: addiu $t9, $t8, 0x0004
8000FBC0: lw    $t8, 0x00CC ($sp)
8000FBC4: lw    $t7, 0x00C8 ($sp)
8000FBC8: sw    $t9, 0x00D4 ($sp)
8000FBCC: sw    $t6, 0x00D0 ($sp)
8000FBD0: addiu $t9, $t8, 0x0004
8000FBD4: addiu $t6, $t7, 0x0004
8000FBD8: lw    $t7, 0x00B8 ($sp)
8000FBDC: lw    $t8, 0x00BC ($sp)
8000FBE0: sw    $t6, 0x00C8 ($sp)
8000FBE4: sw    $t9, 0x00CC ($sp)
8000FBE8: addiu $t6, $t7, 0x0002
8000FBEC: addiu $t9, $t8, 0x0004
8000FBF0: lw    $t8, 0x00B4 ($sp)
8000FBF4: lw    $t7, 0x00B0 ($sp)
8000FBF8: sw    $t9, 0x00BC ($sp)
8000FBFC: sw    $t6, 0x00B8 ($sp)
8000FC00: addiu $t9, $t8, 0x0002
8000FC04: addiu $t6, $t7, 0x0002
8000FC08: lw    $t7, 0x00A8 ($sp)
8000FC0C: lw    $t8, 0x00AC ($sp)
8000FC10: sw    $t6, 0x00B0 ($sp)
8000FC14: sw    $t9, 0x00B4 ($sp)
8000FC18: addiu $t6, $t7, 0x0004
8000FC1C: addiu $t9, $t8, 0x0002
8000FC20: lw    $t8, 0x00A4 ($sp)
8000FC24: lw    $t7, 0x009C ($sp)
8000FC28: sw    $t9, 0x00AC ($sp)
8000FC2C: sw    $t6, 0x00A8 ($sp)
8000FC30: addiu $t9, $t8, 0x0004
8000FC34: addiu $t6, $t7, 0x0004
8000FC38: lw    $t7, 0x0090 ($sp)
8000FC3C: lw    $t8, 0x0098 ($sp)
8000FC40: sw    $t6, 0x009C ($sp)
8000FC44: sw    $t9, 0x00A4 ($sp)
8000FC48: addiu $t6, $t7, 0x0002
8000FC4C: addiu $t9, $t8, 0x0004
8000FC50: lw    $t8, 0x008C ($sp)
8000FC54: lw    $t7, 0x0088 ($sp)
8000FC58: sw    $t9, 0x0098 ($sp)
8000FC5C: sw    $t6, 0x0090 ($sp)
8000FC60: addiu $t9, $t8, 0x0002
8000FC64: addiu $t6, $t7, 0x0002
8000FC68: lw    $t7, 0x0080 ($sp)
8000FC6C: lw    $t8, 0x0084 ($sp)
8000FC70: sw    $t6, 0x0088 ($sp)
8000FC74: sw    $t9, 0x008C ($sp)
8000FC78: addiu $t6, $t7, 0x0002
8000FC7C: addiu $t9, $t8, 0x0002
8000FC80: lw    $t8, 0x007C ($sp)
8000FC84: lw    $t7, 0x0078 ($sp)
8000FC88: sw    $t9, 0x0084 ($sp)
8000FC8C: sw    $t6, 0x0080 ($sp)
8000FC90: addiu $t9, $t8, 0x0002
8000FC94: addiu $t6, $t7, 0x0002
8000FC98: lw    $t7, 0x0070 ($sp)
8000FC9C: lw    $t8, 0x0074 ($sp)
8000FCA0: sw    $t6, 0x0078 ($sp)
8000FCA4: sw    $t9, 0x007C ($sp)
8000FCA8: addiu $t6, $t7, 0x0002
8000FCAC: addiu $t9, $t8, 0x0004
8000FCB0: lw    $t8, 0x0068 ($sp)
8000FCB4: lw    $t7, 0x0064 ($sp)
8000FCB8: sw    $t9, 0x0074 ($sp)
8000FCBC: sw    $t6, 0x0070 ($sp)
8000FCC0: addiu $t9, $t8, 0x0002
8000FCC4: addiu $t6, $t7, 0x0002
8000FCC8: lw    $t7, 0x005C ($sp)
8000FCCC: lw    $t8, 0x0060 ($sp)
8000FCD0: sw    $t6, 0x0064 ($sp)
8000FCD4: sw    $t9, 0x0068 ($sp)
8000FCD8: addiu $t6, $t7, 0x0004
8000FCDC: addiu $t9, $t8, 0x0004
8000FCE0: sw    $t9, 0x0060 ($sp)
8000FCE4: sw    $t6, 0x005C ($sp)
8000FCE8: sw    $a2, 0x0058 ($sp)
8000FCEC: sw    $a1, 0x0054 ($sp)
8000FCF0: sw    $a0, 0x0050 ($sp)
8000FCF4: sw    $v1, 0x004C ($sp)
8000FCF8: sh    $zero, 0xFFFE ($a0)
8000FCFC: sh    $zero, 0xFFFE ($a1)
8000FD00: bnez  $at, 0x8000F838
8000FD04: sh    $v0, 0xFFFE ($a2)
8000FD08: lui   $s5, 0x800E
8000FD0C: addiu $s5, $s5, 0xC51C
8000FD10: lhu   $t8, 0x0000 ($s5)
8000FD14: lui   $v0, 0x8016
8000FD18: addiu $v0, $v0, 0x37BC
8000FD1C: sh    $zero, 0x0000 ($v0)
8000FD20: bnez  $t8, 0x8000FDA4
8000FD24: sh    $zero, 0x0002 ($v0)
8000FD28: lui   $t9, 0x800E
8000FD2C: lw    $t9, 0xC53C ($t9)
8000FD30: lui   $v0, 0x8016
8000FD34: addiu $v0, $v0, 0x3344
8000FD38: bnez  $t9, 0x8000FDA4
8000FD3C: or    $s0, $zero, $zero
8000FD40: lui   $a0, 0x8016
8000FD44: lui   $t0, 0x8016
8000FD48: lui   $a2, 0x8016
8000FD4C: lui   $a1, 0x8016
8000FD50: addiu $a1, $a1, 0x4478
8000FD54: addiu $a2, $a2, 0x3330
8000FD58: addiu $t0, $t0, 0x334C
8000FD5C: addiu $a0, $a0, 0x3348
8000FD60: addiu $t1, $zero, 0x0002
8000FD64: addiu $a3, $zero, 0x0001
8000FD68: lhu   $t7, 0x0000 ($a0)
8000FD6C: addiu $v0, $v0, 0x0002
8000FD70: addiu $a0, $a0, 0x0002
8000FD74: sll   $t6, $t7, 0x1
8000FD78: addu  $t8, $a1, $t6
8000FD7C: lh    $t9, 0x0000 ($t8)
8000FD80: andi  $v1, $t9, 0xFFFF
8000FD84: sll   $t7, $v1, 0x1
8000FD88: addu  $t6, $a2, $t7
8000FD8C: sh    $a3, 0x0000 ($t6)
8000FD90: addu  $t8, $t0, $t7
8000FD94: sh    $s0, 0x0000 ($t8)
8000FD98: addiu $s0, $s0, 0x0001
8000FD9C: bne   $s0, $t1, 0x8000FD68
8000FDA0: sh    $t9, 0xFFFE ($v0)
8000FDA4: lb    $t9, 0x0000 ($s3)
8000FDA8: lui   $a2, 0x8016
8000FDAC: lui   $t0, 0x8016
8000FDB0: addiu $s1, $zero, 0x0001
8000FDB4: addiu $t0, $t0, 0x334C
8000FDB8: addiu $a2, $a2, 0x3330
8000FDBC: addiu $a3, $zero, 0x0001
8000FDC0: bne   $s1, $t9, 0x8000FE74
8000FDC4: addiu $t1, $zero, 0x0002
8000FDC8: lui   $t7, 0x800E
8000FDCC: lh    $t7, 0xC5A0 ($t7)
8000FDD0: addiu $at, $zero, 0x0014
8000FDD4: lui   $v1, 0x800E
8000FDD8: beq   $t7, $at, 0x8000FE74
8000FDDC: lui   $s2, 0x8016
8000FDE0: lui   $v0, 0x8016
8000FDE4: addiu $v0, $v0, 0x3340
8000FDE8: lw    $v1, 0xC53C ($v1)
8000FDEC: addiu $s2, $s2, 0x3330
8000FDF0: addiu $s2, $s2, 0x0002
8000FDF4: sltu  $at, $s2, $v0
8000FDF8: bnez  $at, 0x8000FDF0
8000FDFC: sh    $zero, 0xFFFE ($s2)
8000FE00: bne   $t1, $v1, 0x8000FE74
8000FE04: lui   $a1, 0x8016
8000FE08: lui   $t6, 0x8016
8000FE0C: lh    $t6, 0x479E ($t6)
8000FE10: addiu $a1, $a1, 0x3344
8000FE14: lui   $v0, 0x8016
8000FE18: andi  $v1, $t6, 0xFFFF
8000FE1C: sll   $t8, $v1, 0x1
8000FE20: addu  $t9, $a2, $t8
8000FE24: sh    $a3, 0x0000 ($t9)
8000FE28: addu  $t7, $t0, $t8
8000FE2C: lui   $a0, 0x8016
8000FE30: sh    $zero, 0x0000 ($t7)
8000FE34: addiu $a0, $a0, 0x47A8
8000FE38: addiu $v0, $v0, 0x3346
8000FE3C: or    $s0, $s1, $zero
8000FE40: sh    $t6, 0x0000 ($a1)
8000FE44: lh    $t6, 0x00AE ($a0)
8000FE48: addiu $v0, $v0, 0x0002
8000FE4C: addiu $a0, $a0, 0x00B8
8000FE50: andi  $v1, $t6, 0xFFFF
8000FE54: sll   $t8, $v1, 0x1
8000FE58: addu  $t9, $a2, $t8
8000FE5C: sh    $a3, 0x0000 ($t9)
8000FE60: addu  $t7, $t0, $t8
8000FE64: sh    $s0, 0x0000 ($t7)
8000FE68: addiu $s0, $s0, 0x0001
8000FE6C: bne   $s0, $t1, 0x8000FE44
8000FE70: sh    $t6, 0xFFFE ($v0)
8000FE74: lui   $s4, 0x8016
8000FE78: lui   $v0, 0x8016
8000FE7C: lui   $v1, 0x8016
8000FE80: lui   $a1, 0x8016
8000FE84: lui   $a0, 0x8016
8000FE88: addiu $a0, $a0, 0x45C8
8000FE8C: addiu $a1, $a1, 0x4448
8000FE90: addiu $v1, $v1, 0x4438
8000FE94: addiu $v0, $v0, 0x45B0
8000FE98: addiu $s4, $s4, 0x43B8
8000FE9C: andi  $t6, $zero, 0xFFFF
8000FEA0: sll   $t8, $t6, 0x1
8000FEA4: addu  $t9, $a0, $t8
8000FEA8: lhu   $t7, 0x0000 ($t9)
8000FEAC: lw    $t6, 0x0000 ($s4)
8000FEB0: addiu $v1, $v1, 0x0002
8000FEB4: sltu  $at, $v1, $a1
8000FEB8: subu  $t8, $t7, $t6
8000FEBC: addiu $t9, $t8, 0xFFFC
8000FEC0: addiu $s4, $s4, 0x0004
8000FEC4: addiu $v0, $v0, 0x0002
8000FEC8: sh    $zero, 0xFFFE ($v0)
8000FECC: bnez  $at, 0x8000FE9C
8000FED0: sh    $t9, 0xFFFE ($v1)
8000FED4: lui   $v0, 0x8016
8000FED8: addiu $v0, $v0, 0x347A
8000FEDC: sh    $zero, 0x0000 ($v0)
8000FEE0: lui   $t7, 0x800E
8000FEE4: lw    $t7, 0xC548 ($t7)
8000FEE8: addiu $at, $zero, 0x0003
8000FEEC: lui   $v1, 0x8016
8000FEF0: bne   $t7, $at, 0x8000FEFC
8000FEF4: addiu $v1, $v1, 0x2F10
8000FEF8: sh    $s1, 0x0000 ($v0)
8000FEFC: lui   $v0, 0x8016
8000FF00: lui   $a0, 0x8016
8000FF04: addiu $a0, $a0, 0x2F8C
8000FF08: addiu $v0, $v0, 0x2F50
8000FF0C: addiu $a1, $zero, 0xFFFF
8000FF10: addiu $v0, $v0, 0x0002
8000FF14: sltu  $at, $v0, $a0
8000FF18: addiu $v1, $v1, 0x0002
8000FF1C: sh    $a1, 0xFFFE ($v1)
8000FF20: bnez  $at, 0x8000FF10
8000FF24: sh    $a1, 0xFFFE ($v0)
8000FF28: lui   $t6, 0x0001
8000FF2C: ori   $t6, $t6, 0x86A0
8000FF30: lui   $at, 0x8016
8000FF34: sw    $t6, 0x31CC ($at)
8000FF38: lui   $at, 0x8016
8000FF3C: swc1  F20, 0x4698 ($at)
8000FF40: lui   $at, 0x42C8
8000FF44: mtc1  $at, F4
8000FF48: lui   $at, 0x8016
8000FF4C: lui   $t8, 0x8016
8000FF50: swc1  F4, 0x469C ($at)
8000FF54: lui   $at, 0x8016
8000FF58: swc1  F20, 0x46A0 ($at)
8000FF5C: lui   $at, 0x8016
8000FF60: sh    $zero, 0x4358 ($at)
8000FF64: lui   $at, 0x8016
8000FF68: sh    $s1, 0x435A ($at)
8000FF6C: lui   $at, 0x8016
8000FF70: sh    $s1, 0x435C ($at)
8000FF74: lui   $at, 0x8016
8000FF78: sh    $zero, 0x3478 ($at)
8000FF7C: lui   $at, 0x8016
8000FF80: lw    $t8, 0x4550 ($t8)
8000FF84: sw    $zero, 0x3378 ($at)
8000FF88: lui   $at, 0x8016
8000FF8C: sw    $zero, 0x337C ($at)
8000FF90: lh    $t9, 0x0004 ($t8)
8000FF94: lui   $at, 0x8016
8000FF98: mtc1  $t9, F8
8000FF9C: nop
8000FFA0: cvt.s.w F6, F8
8000FFA4: swc1  F6, 0x344C ($at)
8000FFA8: lui   $at, 0x8016
8000FFAC: sw    $zero, 0x34F0 ($at)
8000FFB0: lui   $at, 0x8016
8000FFB4: sw    $zero, 0x34F4 ($at)
8000FFB8: lui   $at, 0x8016
8000FFBC: sw    $zero, 0x3488 ($at)
8000FFC0: lui   $at, 0x8016
8000FFC4: sh    $zero, 0x348C ($at)
8000FFC8: lui   $at, 0x8016
8000FFCC: jal   0x8001AB00
8000FFD0: sh    $zero, 0x34EC ($at)
8000FFD4: lb    $t7, 0x0000 ($s3)
8000FFD8: bne   $s1, $t7, 0x800100B4
8000FFDC: nop
8000FFE0: lhu   $t6, 0x0000 ($s5)
8000FFE4: lui   $s2, 0x8016
8000FFE8: addiu $s2, $s2, 0x3330
8000FFEC: bne   $s1, $t6, 0x800100B4
8000FFF0: or    $s0, $zero, $zero
8000FFF4: lui   $v0, 0x800F
8000FFF8: addiu $v0, $v0, 0x6990
8000FFFC: addiu $a1, $zero, 0x0008
80010000: lui   $a0, 0x0200
