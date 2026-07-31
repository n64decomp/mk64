# JP luigi_raceway display lists.
#
# JP ships a different build of this course - different vertices and
# display lists - and there is no disassembler here that round-trips the
# packed format, so the stream is checked in as data. It was produced by
# unpacking the real JP blob with the game's own unpack_* logic (see
# dlunpack.py), verified two ways: unpacking OUR US blob reproduces our US
# course_displaylists.inc.bin byte for byte, and re-packing this stream with
# tools/displaylist_packer reproduces the real JP blob byte for byte.
#
# Symbol names keep their US spelling (they are just identifiers); the
# addresses are the JP ones, which is what course_data.c needs.

.include "macros.inc"

.section .data

.balign 8

glabel d_course_luigi_raceway_packed_dl_0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x0, 0x68

glabel d_course_luigi_raceway_packed_dl_68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x68, 0x10

glabel d_course_luigi_raceway_packed_dl_78
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x78, 0x68

glabel d_course_luigi_raceway_packed_dl_E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xe0, 0x10

glabel d_course_luigi_raceway_packed_dl_F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xf0, 0x18

glabel d_course_luigi_raceway_packed_dl_108
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x108, 0x10

glabel d_course_luigi_raceway_packed_dl_118
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x118, 0x78

glabel d_course_luigi_raceway_packed_dl_190
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x190, 0x78

glabel d_course_luigi_raceway_packed_dl_208
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x208, 0x78

glabel d_course_luigi_raceway_packed_dl_280
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x280, 0x78

glabel d_course_luigi_raceway_packed_dl_2F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2f8, 0x78

glabel d_course_luigi_raceway_packed_dl_370
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x370, 0x78

glabel d_course_luigi_raceway_packed_dl_3E8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3e8, 0x68

glabel d_course_luigi_raceway_packed_dl_450
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x450, 0x68

glabel d_course_luigi_raceway_packed_dl_4B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4b8, 0x70

glabel d_course_luigi_raceway_packed_dl_528
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x528, 0x78

glabel d_course_luigi_raceway_packed_dl_5A0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5a0, 0x70

glabel d_course_luigi_raceway_packed_dl_610
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x610, 0x78

glabel d_course_luigi_raceway_packed_dl_688
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x688, 0x78

glabel d_course_luigi_raceway_packed_dl_700
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x700, 0x78

glabel d_course_luigi_raceway_packed_dl_778
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x778, 0x78

glabel d_course_luigi_raceway_packed_dl_7F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7f0, 0x68

glabel d_course_luigi_raceway_packed_dl_858
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x858, 0x78

glabel d_course_luigi_raceway_packed_dl_8D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8d0, 0x68

glabel d_course_luigi_raceway_packed_dl_938
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x938, 0x70

glabel d_course_luigi_raceway_packed_dl_9A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9a8, 0x78

glabel d_course_luigi_raceway_packed_dl_A20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa20, 0x78

glabel d_course_luigi_raceway_packed_dl_A98
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa98, 0xb0

glabel d_course_luigi_raceway_packed_dl_B48
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb48, 0x88

glabel d_course_luigi_raceway_packed_dl_BD0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbd0, 0x88

glabel d_course_luigi_raceway_packed_dl_C58
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc58, 0x88

glabel d_course_luigi_raceway_packed_dl_CE0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xce0, 0x88

glabel d_course_luigi_raceway_packed_dl_D68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xd68, 0x88

glabel d_course_luigi_raceway_packed_dl_DF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xdf0, 0x88

glabel d_course_luigi_raceway_packed_dl_E78
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xe78, 0x88

glabel d_course_luigi_raceway_packed_dl_F00
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xf00, 0x88

glabel d_course_luigi_raceway_packed_dl_F88
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xf88, 0x78

glabel d_course_luigi_raceway_packed_dl_1000
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1000, 0x88

glabel d_course_luigi_raceway_packed_dl_1088
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1088, 0x88

glabel d_course_luigi_raceway_packed_dl_1110
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1110, 0xa8

glabel d_course_luigi_raceway_packed_dl_11B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x11b8, 0xa8

glabel d_course_luigi_raceway_packed_dl_1260
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1260, 0xa8

glabel d_course_luigi_raceway_packed_dl_1308
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1308, 0xa8

glabel d_course_luigi_raceway_packed_dl_13B0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x13b0, 0x88

glabel d_course_luigi_raceway_packed_dl_1438
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1438, 0xa8

glabel d_course_luigi_raceway_packed_dl_14E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x14e0, 0x78

glabel d_course_luigi_raceway_packed_dl_1558
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1558, 0x88

glabel d_course_luigi_raceway_packed_dl_15E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x15e0, 0xa8

glabel d_course_luigi_raceway_packed_dl_1688
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1688, 0xa8

glabel d_course_luigi_raceway_packed_dl_1730
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1730, 0xb0

glabel d_course_luigi_raceway_packed_dl_17E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x17e0, 0x68

glabel d_course_luigi_raceway_packed_dl_1848
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1848, 0x70

glabel d_course_luigi_raceway_packed_dl_18B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x18b8, 0x68

glabel d_course_luigi_raceway_packed_dl_1920
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1920, 0x68

glabel d_course_luigi_raceway_packed_dl_1988
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1988, 0xa0

glabel d_course_luigi_raceway_packed_dl_1A28
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1a28, 0xa0

glabel d_course_luigi_raceway_packed_dl_1AC8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1ac8, 0x60

glabel d_course_luigi_raceway_packed_dl_1B28
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1b28, 0xb0

glabel d_course_luigi_raceway_packed_dl_1BD8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1bd8, 0xb8

glabel d_course_luigi_raceway_packed_dl_1C90
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1c90, 0x70

glabel d_course_luigi_raceway_packed_dl_1D00
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1d00, 0x68

glabel d_course_luigi_raceway_packed_dl_1D68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1d68, 0xa8

glabel d_course_luigi_raceway_packed_dl_1E10
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1e10, 0x60

glabel d_course_luigi_raceway_packed_dl_1E70
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1e70, 0xa8

glabel d_course_luigi_raceway_packed_dl_1F18
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1f18, 0x78

glabel d_course_luigi_raceway_packed_dl_1F90
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1f90, 0x60

glabel d_course_luigi_raceway_packed_dl_1FF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x1ff0, 0x60

glabel d_course_luigi_raceway_packed_dl_2050
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2050, 0x70

glabel d_course_luigi_raceway_packed_dl_20C0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x20c0, 0x70

glabel d_course_luigi_raceway_packed_dl_2130
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2130, 0x78

glabel d_course_luigi_raceway_packed_dl_21A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x21a8, 0x68

glabel d_course_luigi_raceway_packed_dl_2210
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2210, 0x70

glabel d_course_luigi_raceway_packed_dl_2280
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2280, 0x78

glabel d_course_luigi_raceway_packed_dl_22F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x22f8, 0x70

glabel d_course_luigi_raceway_packed_dl_2368
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2368, 0x78

glabel d_course_luigi_raceway_packed_dl_23E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x23e0, 0x78

glabel d_course_luigi_raceway_packed_dl_2458
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2458, 0x88

glabel d_course_luigi_raceway_packed_dl_24E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x24e0, 0x80

glabel d_course_luigi_raceway_packed_dl_2560
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2560, 0x88

glabel d_course_luigi_raceway_packed_dl_25E8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x25e8, 0x70

glabel d_course_luigi_raceway_packed_dl_2658
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2658, 0x60

glabel d_course_luigi_raceway_packed_dl_26B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x26b8, 0x68

glabel d_course_luigi_raceway_packed_dl_2720
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2720, 0x78

glabel d_course_luigi_raceway_packed_dl_2798
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2798, 0x78

glabel d_course_luigi_raceway_packed_dl_2810
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2810, 0x78

glabel d_course_luigi_raceway_packed_dl_2888
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2888, 0x78

glabel d_course_luigi_raceway_packed_dl_2900
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2900, 0x78

glabel d_course_luigi_raceway_packed_dl_2978
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2978, 0x78

glabel d_course_luigi_raceway_packed_dl_29F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x29f0, 0x78

glabel d_course_luigi_raceway_packed_dl_2A68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2a68, 0x78

glabel d_course_luigi_raceway_packed_dl_2AE0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2ae0, 0x78

glabel d_course_luigi_raceway_packed_dl_2B58
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2b58, 0x70

glabel d_course_luigi_raceway_packed_dl_2BC8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2bc8, 0x78

glabel d_course_luigi_raceway_packed_dl_2C40
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2c40, 0x78

glabel d_course_luigi_raceway_packed_dl_2CB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2cb8, 0x78

glabel d_course_luigi_raceway_packed_dl_2D30
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2d30, 0x78

glabel d_course_luigi_raceway_packed_dl_2DA8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2da8, 0x78

glabel d_course_luigi_raceway_packed_dl_2E20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2e20, 0x70

glabel d_course_luigi_raceway_packed_dl_2E90
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2e90, 0x68

glabel d_course_luigi_raceway_packed_dl_2EF8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2ef8, 0x68

glabel d_course_luigi_raceway_packed_dl_2F60
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x2f60, 0x120

glabel d_course_luigi_raceway_packed_dl_3080
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3080, 0x78

glabel d_course_luigi_raceway_packed_dl_30F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x30f8, 0x78

glabel d_course_luigi_raceway_packed_dl_3170
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3170, 0x78

glabel d_course_luigi_raceway_packed_dl_31E8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x31e8, 0x78

glabel d_course_luigi_raceway_packed_dl_3260
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3260, 0x78

glabel d_course_luigi_raceway_packed_dl_32D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x32d8, 0x78

glabel d_course_luigi_raceway_packed_dl_3350
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3350, 0x78

glabel d_course_luigi_raceway_packed_dl_33C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x33c8, 0x80

glabel d_course_luigi_raceway_packed_dl_3448
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3448, 0x80

glabel d_course_luigi_raceway_packed_dl_34C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x34c8, 0x80

glabel d_course_luigi_raceway_packed_dl_3548
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3548, 0x88

glabel d_course_luigi_raceway_packed_dl_35D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x35d0, 0xa8

glabel d_course_luigi_raceway_packed_dl_3678
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3678, 0x80

glabel d_course_luigi_raceway_packed_dl_36F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x36f8, 0x70

glabel d_course_luigi_raceway_packed_dl_3768
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3768, 0x78

glabel d_course_luigi_raceway_packed_dl_37E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x37e0, 0x78

glabel d_course_luigi_raceway_packed_dl_3858
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3858, 0x78

glabel d_course_luigi_raceway_packed_dl_38D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x38d0, 0x78

glabel d_course_luigi_raceway_packed_dl_3948
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3948, 0x80

glabel d_course_luigi_raceway_packed_dl_39C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x39c8, 0x90

glabel d_course_luigi_raceway_packed_dl_3A58
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3a58, 0x78

glabel d_course_luigi_raceway_packed_dl_3AD0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3ad0, 0x68

glabel d_course_luigi_raceway_packed_dl_3B38
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3b38, 0x98

glabel d_course_luigi_raceway_packed_dl_3BD0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3bd0, 0x70

glabel d_course_luigi_raceway_packed_dl_3C40
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3c40, 0xb0

glabel d_course_luigi_raceway_packed_dl_3CF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3cf0, 0x70

glabel d_course_luigi_raceway_packed_dl_3D60
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3d60, 0x78

glabel d_course_luigi_raceway_packed_dl_3DD8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3dd8, 0xe0

glabel d_course_luigi_raceway_packed_dl_3EB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3eb8, 0x108

glabel d_course_luigi_raceway_packed_dl_3FC0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x3fc0, 0x188

glabel d_course_luigi_raceway_packed_dl_4148
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4148, 0x1e8

glabel d_course_luigi_raceway_packed_dl_4330
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4330, 0x1e8

glabel d_course_luigi_raceway_packed_dl_4518
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4518, 0x28

glabel d_course_luigi_raceway_packed_dl_4540
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4540, 0x78

glabel d_course_luigi_raceway_packed_dl_45B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x45b8, 0xd8

glabel d_course_luigi_raceway_packed_dl_46A0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4690, 0x1e0

glabel d_course_luigi_raceway_packed_dl_4860
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4870, 0x20

glabel d_course_luigi_raceway_packed_dl_4880
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4890, 0xe0

glabel d_course_luigi_raceway_packed_dl_4960
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4970, 0x58

glabel d_course_luigi_raceway_packed_dl_49B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x49c8, 0x70

glabel d_course_luigi_raceway_packed_dl_4A28
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4a38, 0xe8

glabel d_course_luigi_raceway_packed_dl_4B10
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4b20, 0x118

glabel d_course_luigi_raceway_packed_dl_4C28
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4c38, 0x2c0

glabel d_course_luigi_raceway_packed_dl_4EE8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4ef8, 0x38

glabel d_course_luigi_raceway_packed_dl_4F20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x4f30, 0x118

glabel d_course_luigi_raceway_packed_dl_5038
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5048, 0x1a0

glabel d_course_luigi_raceway_packed_dl_51D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x51e8, 0x208

glabel d_course_luigi_raceway_packed_dl_53E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x53f0, 0x208

glabel d_course_luigi_raceway_packed_dl_55E8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x55f8, 0x1a0

glabel d_course_luigi_raceway_packed_dl_5788
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5798, 0x118

glabel d_course_luigi_raceway_packed_dl_58A0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x58b0, 0x118

glabel d_course_luigi_raceway_packed_dl_59B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x59c8, 0x100

glabel d_course_luigi_raceway_packed_dl_5AB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5ac8, 0x100

glabel d_course_luigi_raceway_packed_dl_5BB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5bc8, 0x118

glabel d_course_luigi_raceway_packed_dl_5CD0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5ce0, 0x208

glabel d_course_luigi_raceway_packed_dl_5ED8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x5ee8, 0x208

glabel d_course_luigi_raceway_packed_dl_60E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x60f0, 0x208

glabel d_course_luigi_raceway_packed_dl_6300
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x62f8, 0x118

glabel d_course_luigi_raceway_packed_dl_6418
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6410, 0x140

glabel d_course_luigi_raceway_packed_dl_6558
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6550, 0x80

glabel d_course_luigi_raceway_packed_dl_65D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x65d0, 0xa8

glabel d_course_luigi_raceway_packed_dl_6680
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6678, 0xa8

glabel d_course_luigi_raceway_packed_dl_6728
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6720, 0xa8

glabel d_course_luigi_raceway_packed_dl_67D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x67c8, 0xa8

glabel d_course_luigi_raceway_packed_dl_6878
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6870, 0xa8

glabel d_course_luigi_raceway_packed_dl_6920
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6918, 0xa0

glabel d_course_luigi_raceway_packed_dl_69C0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x69b8, 0x98

glabel d_course_luigi_raceway_packed_dl_6A58
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6a50, 0xa8

glabel d_course_luigi_raceway_packed_dl_6B00
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6af8, 0xf0

glabel d_course_luigi_raceway_packed_dl_6BF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6be8, 0xb8

glabel d_course_luigi_raceway_packed_dl_6CA8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6ca0, 0xb8

glabel d_course_luigi_raceway_packed_dl_6D60
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6d58, 0xb8

glabel d_course_luigi_raceway_packed_dl_6E18
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6e10, 0xd8

glabel d_course_luigi_raceway_packed_dl_6EF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6ee8, 0xb8

glabel d_course_luigi_raceway_packed_dl_6FA8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x6fa0, 0xa8

glabel d_course_luigi_raceway_packed_dl_7050
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7048, 0xa8

glabel d_course_luigi_raceway_packed_dl_70F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x70f0, 0xa8

glabel d_course_luigi_raceway_packed_dl_71A0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7198, 0xa8

glabel d_course_luigi_raceway_packed_dl_7248
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7240, 0xa8

glabel d_course_luigi_raceway_packed_dl_72F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x72e8, 0xa8

glabel d_course_luigi_raceway_packed_dl_7398
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7390, 0xa8

glabel d_course_luigi_raceway_packed_dl_7440
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7438, 0xb0

glabel d_course_luigi_raceway_packed_dl_74F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x74e8, 0xb8

glabel d_course_luigi_raceway_packed_dl_75A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x75a0, 0xa8

glabel d_course_luigi_raceway_packed_dl_7650
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7648, 0xa8

glabel d_course_luigi_raceway_packed_dl_76F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x76f0, 0xb8

glabel d_course_luigi_raceway_packed_dl_77B0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x77a8, 0xc8

glabel d_course_luigi_raceway_packed_dl_7878
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7870, 0xc8

glabel d_course_luigi_raceway_packed_dl_7940
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7938, 0xa8

glabel d_course_luigi_raceway_packed_dl_79E8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x79e0, 0xa0

glabel d_course_luigi_raceway_packed_dl_7A88
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7a80, 0xf8

glabel d_course_luigi_raceway_packed_dl_7B80
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7b78, 0x78

glabel d_course_luigi_raceway_packed_dl_7BF8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7bf0, 0x88

glabel d_course_luigi_raceway_packed_dl_7C80
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7c78, 0x70

glabel d_course_luigi_raceway_packed_dl_7CF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7ce8, 0x70

glabel d_course_luigi_raceway_packed_dl_7D60
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7d58, 0x78

glabel d_course_luigi_raceway_packed_dl_7DD8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7dd0, 0x78

glabel d_course_luigi_raceway_packed_dl_7E50
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7e48, 0x68

glabel d_course_luigi_raceway_packed_dl_7EB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7eb0, 0x40

glabel d_course_luigi_raceway_packed_dl_7EF8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7ef0, 0x70

glabel d_course_luigi_raceway_packed_dl_7F68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7f60, 0x78

glabel d_course_luigi_raceway_packed_dl_7FE0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x7fd8, 0x68

glabel d_course_luigi_raceway_packed_dl_8048
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8040, 0x68

glabel d_course_luigi_raceway_packed_dl_80B0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x80a8, 0x78

glabel d_course_luigi_raceway_packed_dl_8128
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8120, 0x68

glabel d_course_luigi_raceway_packed_dl_8190
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8188, 0x70

glabel d_course_luigi_raceway_packed_dl_8200
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x81f8, 0x40

glabel d_course_luigi_raceway_packed_dl_8240
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8238, 0xe0

glabel d_course_luigi_raceway_packed_dl_8320
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8318, 0xa8

glabel d_course_luigi_raceway_packed_dl_83C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x83c0, 0x18

glabel d_course_luigi_raceway_packed_dl_83E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x83d8, 0x68

glabel d_course_luigi_raceway_packed_dl_8448
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8440, 0x68

glabel d_course_luigi_raceway_packed_dl_84B0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x84a8, 0x18

glabel d_course_luigi_raceway_packed_dl_84C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x84c0, 0x60

glabel d_course_luigi_raceway_packed_dl_8528
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8520, 0xc0

glabel d_course_luigi_raceway_packed_dl_85F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x85e0, 0x170

glabel d_course_luigi_raceway_packed_dl_8768
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8750, 0x20

glabel d_course_luigi_raceway_packed_dl_8788
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8770, 0x68

glabel d_course_luigi_raceway_packed_dl_87F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x87d8, 0x68

glabel d_course_luigi_raceway_packed_dl_8858
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8840, 0x68

glabel d_course_luigi_raceway_packed_dl_88C0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x88a8, 0x68

glabel d_course_luigi_raceway_packed_dl_8928
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8910, 0x68

glabel d_course_luigi_raceway_packed_dl_8990
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8978, 0x68

glabel d_course_luigi_raceway_packed_dl_89F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x89e0, 0x60

glabel d_course_luigi_raceway_packed_dl_8A58
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8a40, 0x60

glabel d_course_luigi_raceway_packed_dl_8AB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8aa0, 0x60

glabel d_course_luigi_raceway_packed_dl_8B18
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8b00, 0x68

glabel d_course_luigi_raceway_packed_dl_8B80
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8b68, 0x68

glabel d_course_luigi_raceway_packed_dl_8BE8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8bd0, 0x68

glabel d_course_luigi_raceway_packed_dl_8C50
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8c38, 0x68

glabel d_course_luigi_raceway_packed_dl_8CB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8ca0, 0x68

glabel d_course_luigi_raceway_packed_dl_8D20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8d08, 0x68

glabel d_course_luigi_raceway_packed_dl_8D88
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8d70, 0x60

glabel d_course_luigi_raceway_packed_dl_8DE8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8dd0, 0x68

glabel d_course_luigi_raceway_packed_dl_8E50
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8e38, 0x60

glabel d_course_luigi_raceway_packed_dl_8EB0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8e98, 0x68

glabel d_course_luigi_raceway_packed_dl_8F18
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8f00, 0x68

glabel d_course_luigi_raceway_packed_dl_8F80
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8f68, 0x68

glabel d_course_luigi_raceway_packed_dl_8FE8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x8fd0, 0xb0

glabel d_course_luigi_raceway_packed_dl_9098
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9080, 0x88

glabel d_course_luigi_raceway_packed_dl_9120
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9108, 0x88

glabel d_course_luigi_raceway_packed_dl_91A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9190, 0x88

glabel d_course_luigi_raceway_packed_dl_9230
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9218, 0x88

glabel d_course_luigi_raceway_packed_dl_92B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x92a0, 0x88

glabel d_course_luigi_raceway_packed_dl_9340
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9328, 0x88

glabel d_course_luigi_raceway_packed_dl_93C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x93b0, 0x78

glabel d_course_luigi_raceway_packed_dl_9440
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9428, 0x78

glabel d_course_luigi_raceway_packed_dl_94B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x94a0, 0x78

glabel d_course_luigi_raceway_packed_dl_9530
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9518, 0x88

glabel d_course_luigi_raceway_packed_dl_95B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x95a0, 0x88

glabel d_course_luigi_raceway_packed_dl_9640
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9628, 0x88

glabel d_course_luigi_raceway_packed_dl_96C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x96b0, 0x88

glabel d_course_luigi_raceway_packed_dl_9750
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9738, 0x88

glabel d_course_luigi_raceway_packed_dl_97D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x97c0, 0x88

glabel d_course_luigi_raceway_packed_dl_9860
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9848, 0x78

glabel d_course_luigi_raceway_packed_dl_98D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x98c0, 0x88

glabel d_course_luigi_raceway_packed_dl_9960
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9948, 0x78

glabel d_course_luigi_raceway_packed_dl_99D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x99c0, 0x88

glabel d_course_luigi_raceway_packed_dl_9A60
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9a48, 0x88

glabel d_course_luigi_raceway_packed_dl_9AE8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9ad0, 0x88

glabel d_course_luigi_raceway_packed_dl_9B70
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9b58, 0xb0

glabel d_course_luigi_raceway_packed_dl_9C20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9c08, 0x2a0

glabel d_course_luigi_raceway_packed_dl_9EC0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9ea8, 0x10

glabel d_course_luigi_raceway_packed_dl_9ED0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9eb8, 0xa0

glabel d_course_luigi_raceway_packed_dl_9F70
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9f58, 0xa0

glabel d_course_luigi_raceway_packed_dl_A010
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0x9ff8, 0x18

glabel d_course_luigi_raceway_packed_dl_A028
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa010, 0x60

glabel d_course_luigi_raceway_packed_dl_A088
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa070, 0x68

glabel d_course_luigi_raceway_packed_dl_A0F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa0d8, 0x60

glabel d_course_luigi_raceway_packed_dl_A150
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa138, 0x60

glabel d_course_luigi_raceway_packed_dl_A1B0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa198, 0x60

glabel d_course_luigi_raceway_packed_dl_A210
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa1f8, 0x60

glabel d_course_luigi_raceway_packed_dl_A270
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa258, 0x38

glabel d_course_luigi_raceway_packed_dl_A2A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa290, 0x60

glabel d_course_luigi_raceway_packed_dl_A308
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa2f0, 0x60

glabel d_course_luigi_raceway_packed_dl_A368
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa350, 0x60

glabel d_course_luigi_raceway_packed_dl_A3C8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa3b0, 0x68

glabel d_course_luigi_raceway_packed_dl_A430
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa418, 0x60

glabel d_course_luigi_raceway_packed_dl_A490
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa478, 0x68

glabel d_course_luigi_raceway_packed_dl_A4F8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa4e0, 0x60

glabel d_course_luigi_raceway_packed_dl_A558
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa540, 0x68

glabel d_course_luigi_raceway_packed_dl_A5C0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa5a8, 0x60

glabel d_course_luigi_raceway_packed_dl_A620
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa608, 0x68

glabel d_course_luigi_raceway_packed_dl_A688
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa670, 0x60

glabel d_course_luigi_raceway_packed_dl_A6E8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa6d0, 0x60

glabel d_course_luigi_raceway_packed_dl_A748
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa730, 0x60

glabel d_course_luigi_raceway_packed_dl_A7A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa790, 0x68

glabel d_course_luigi_raceway_packed_dl_A810
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa7f8, 0x60

glabel d_course_luigi_raceway_packed_dl_A870
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa858, 0x60

glabel d_course_luigi_raceway_packed_dl_A8D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa8b8, 0x60

glabel d_course_luigi_raceway_packed_dl_A930
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa918, 0x68

glabel d_course_luigi_raceway_packed_dl_A998
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa980, 0x68

glabel d_course_luigi_raceway_packed_dl_AA00
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xa9e8, 0x68

glabel d_course_luigi_raceway_packed_dl_AA68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xaa50, 0x68

glabel d_course_luigi_raceway_packed_dl_AAD0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xaab8, 0x68

glabel d_course_luigi_raceway_packed_dl_AB38
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xab20, 0x68

glabel d_course_luigi_raceway_packed_dl_ABA0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xab88, 0x68

glabel d_course_luigi_raceway_packed_dl_AC08
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xabf0, 0x68

glabel d_course_luigi_raceway_packed_dl_AC70
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xac58, 0x68

glabel d_course_luigi_raceway_packed_dl_ACD8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xacc0, 0x68

glabel d_course_luigi_raceway_packed_dl_AD40
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xad28, 0x68

glabel d_course_luigi_raceway_packed_dl_ADA8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xad90, 0x68

glabel d_course_luigi_raceway_packed_dl_AE10
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xadf8, 0x68

glabel d_course_luigi_raceway_packed_dl_AE78
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xae60, 0x68

glabel d_course_luigi_raceway_packed_dl_AEE0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xaec8, 0x68

glabel d_course_luigi_raceway_packed_dl_AF48
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xaf30, 0x68

glabel d_course_luigi_raceway_packed_dl_AFB0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xaf98, 0x60

glabel d_course_luigi_raceway_packed_dl_B010
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xaff8, 0x68

glabel d_course_luigi_raceway_packed_dl_B078
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb060, 0x120

glabel d_course_luigi_raceway_packed_dl_B198
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb180, 0x68

glabel d_course_luigi_raceway_packed_dl_B200
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb1e8, 0x68

glabel d_course_luigi_raceway_packed_dl_B268
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb250, 0x68

glabel d_course_luigi_raceway_packed_dl_B2D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb2b8, 0x68

glabel d_course_luigi_raceway_packed_dl_B338
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb320, 0x68

glabel d_course_luigi_raceway_packed_dl_B3A0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb388, 0x68

glabel d_course_luigi_raceway_packed_dl_B408
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb3f0, 0x68

glabel d_course_luigi_raceway_packed_dl_B470
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb458, 0x60

glabel d_course_luigi_raceway_packed_dl_B4D0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb4b8, 0x60

glabel d_course_luigi_raceway_packed_dl_B530
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb518, 0x60

glabel d_course_luigi_raceway_packed_dl_B590
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb578, 0x70

glabel d_course_luigi_raceway_packed_dl_B600
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb5e8, 0x78

glabel d_course_luigi_raceway_packed_dl_B678
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb660, 0x60

glabel d_course_luigi_raceway_packed_dl_B6D8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb6c0, 0x68

glabel d_course_luigi_raceway_packed_dl_B740
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb728, 0x68

glabel d_course_luigi_raceway_packed_dl_B7A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb790, 0x68

glabel d_course_luigi_raceway_packed_dl_B810
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb7f8, 0x68

glabel d_course_luigi_raceway_packed_dl_B878
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb860, 0x68

glabel d_course_luigi_raceway_packed_dl_B8E0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb8c8, 0x68

glabel d_course_luigi_raceway_packed_dl_B948
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb930, 0x70

glabel d_course_luigi_raceway_packed_dl_B9B8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xb9a0, 0x68

glabel d_course_luigi_raceway_packed_dl_BA20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xba08, 0x60

glabel d_course_luigi_raceway_packed_dl_BA80
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xba68, 0x70

glabel d_course_luigi_raceway_packed_dl_BAF0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbad8, 0x60

glabel d_course_luigi_raceway_packed_dl_BB50
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbb38, 0x70

glabel d_course_luigi_raceway_packed_dl_BBC0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbba8, 0x60

glabel d_course_luigi_raceway_packed_dl_BC20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbc08, 0x68

glabel d_course_luigi_raceway_packed_dl_BC88
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbc70, 0xe0

glabel d_course_luigi_raceway_packed_dl_BD68
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbd50, 0x60

glabel d_course_luigi_raceway_packed_dl_BDC8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbdb0, 0x60

glabel d_course_luigi_raceway_packed_dl_BE28
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbe10, 0x60

glabel d_course_luigi_raceway_packed_dl_BE88
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbe70, 0x98

glabel d_course_luigi_raceway_packed_dl_BF20
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbf08, 0x98

glabel d_course_luigi_raceway_packed_dl_BFB8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xbfa0, 0x98

glabel d_course_luigi_raceway_packed_dl_C050
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc038, 0xa0

glabel d_course_luigi_raceway_packed_dl_C0F0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc0d8, 0xb0

glabel d_course_luigi_raceway_packed_dl_C1A0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc188, 0x60

glabel d_course_luigi_raceway_packed_dl_C200
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc1e8, 0x60

glabel d_course_luigi_raceway_packed_dl_C260
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc248, 0xa0

glabel d_course_luigi_raceway_packed_dl_C300
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc2e8, 0xa8

glabel d_course_luigi_raceway_packed_dl_C3A8
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc390, 0x68

glabel d_course_luigi_raceway_packed_dl_C410
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc3f8, 0xb0

glabel d_course_luigi_raceway_packed_dl_C4C0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc4a8, 0x80

glabel d_course_luigi_raceway_packed_dl_C540
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc528, 0x80

glabel d_course_luigi_raceway_packed_dl_C5C0
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc5a8, 0x80

glabel d_course_luigi_raceway_packed_dl_C640
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc628, 0x28

glabel d_course_luigi_raceway_packed_dl_C668
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc650, 0xc8

glabel d_course_luigi_raceway_packed_dl_C730
.incbin "bin/jp.v11/luigi_raceway_displaylists.bin", 0xc718, 0x10
