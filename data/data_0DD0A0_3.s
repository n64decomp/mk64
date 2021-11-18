.include "macros.inc"

.section .rodata

.balign 4
glabel D_800EB710 # "ゴール直後の強制ソート\n"
.byte 0xa5, 0xb4, 0xa1, 0xbc, 0xa5, 0xeb, 0xc4, 0xbe, 0xb8, 0xe5, 0xa4, 0xce, 0xb6, 0xaf, 0xc0, 0xa9
.byte 0xa5, 0xbd, 0xa1, 0xbc, 0xa5, 0xc8, 0x0a, 0x00

.balign 4
glabel D_800EB728 # "2PGPで片方がゴール直後の強制ソート\n"
.byte 0x32, 0x50, 0x47, 0x50, 0xa4, 0xc7, 0xca, 0xd2, 0xca, 0xfd, 0xa4, 0xac, 0xa5, 0xb4, 0xa1, 0xbc
.byte 0xa5, 0xeb, 0xc4, 0xbe, 0xb8, 0xe5, 0xa4, 0xce, 0xb6, 0xaf, 0xc0, 0xa9, 0xa5, 0xbd, 0xa1, 0xbc
.byte 0xa5, 0xc8, 0x0a, 0x00

.balign 4
glabel D_800EB74C # "順位計算エラー！！ (num %d) (rank %d) (e_rank %d)\n"
.byte 0xbd, 0xe7, 0xb0, 0xcc, 0xb7, 0xd7, 0xbb, 0xbb, 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa
.byte 0xa1, 0xaa, 0x20, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x20, 0x28, 0x72, 0x61, 0x6e
.byte 0x6b, 0x20, 0x25, 0x64, 0x29, 0x20, 0x28, 0x65, 0x5f, 0x72, 0x61, 0x6e, 0x6b, 0x20, 0x25, 0x64
.byte 0x29, 0x0a, 0x00

.balign 4
glabel D_800EB780 # "バイパス切り替え エラー!!!(num %d  org_bipas %d  bipas %d)\n"
.byte 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1, 0xa5, 0xb9, 0xc0, 0xda, 0xa4, 0xea, 0xc2, 0xd8, 0xa4, 0xa8
.byte 0x20, 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0x21, 0x21, 0x21, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25
.byte 0x64, 0x20, 0x20, 0x6f, 0x72, 0x67, 0x5f, 0x62, 0x69, 0x70, 0x61, 0x73, 0x20, 0x25, 0x64, 0x20
.byte 0x20, 0x62, 0x69, 0x70, 0x61, 0x73, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EB7BC
.asciiz "(%d) rap %3d  rate_count_F %10.2f  rap_count_F %10.2f  area %5d \n"

.balign 4
glabel D_800EB800 # "迷路に突入！ enemy %d (%d --> %d)\n"
.byte 0xcc, 0xc2, 0xcf, 0xa9, 0xa4, 0xcb, 0xc6, 0xcd, 0xc6, 0xfe, 0xa1, 0xaa, 0x20, 0x65, 0x6e, 0x65
.byte 0x6d, 0x79, 0x20, 0x25, 0x64, 0x20, 0x28, 0x25, 0x64, 0x20, 0x2d, 0x2d, 0x3e, 0x20, 0x25, 0x64
.byte 0x29, 0x0a, 0x00

.balign 4
glabel D_800EB824 # "迷路から出た！ enemy %d (%d --> %d)\n"
.byte 0xcc, 0xc2, 0xcf, 0xa9, 0xa4, 0xab, 0xa4, 0xe9, 0xbd, 0xd0, 0xa4, 0xbf, 0xa1, 0xaa, 0x20, 0x65
.byte 0x6e, 0x65, 0x6d, 0x79, 0x20, 0x25, 0x64, 0x20, 0x28, 0x25, 0x64, 0x20, 0x2d, 0x2d, 0x3e, 0x20
.byte 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EB84C
.asciiz "enemy voice set (%d  slip_flag %x  weapon %x)\n"

.balign 4
glabel D_800EB87C # "スピンヴォイス！！(%d , name %d)\n"
.byte 0xa5, 0xb9, 0xa5, 0xd4, 0xa5, 0xf3, 0xa5, 0xf4, 0xa5, 0xa9, 0xa5, 0xa4, 0xa5, 0xb9, 0xa1, 0xaa
.byte 0xa1, 0xaa, 0x28, 0x25, 0x64, 0x20, 0x2c, 0x20, 0x6e, 0x61, 0x6d, 0x65, 0x20, 0x25, 0x64, 0x29
.byte 0x0a, 0x00

.balign 4
glabel D_800EB8A0 # "ダメージヴォイス！！(%d, name %d)\n"
.byte 0xa5, 0xc0, 0xa5, 0xe1, 0xa1, 0xbc, 0xa5, 0xb8, 0xa5, 0xf4, 0xa5, 0xa9, 0xa5, 0xa4, 0xa5, 0xb9
.byte 0xa1, 0xaa, 0xa1, 0xaa, 0x28, 0x25, 0x64, 0x2c, 0x20, 0x6e, 0x61, 0x6d, 0x65, 0x20, 0x25, 0x64
.byte 0x29, 0x0a, 0x00

.balign 4
glabel D_800EB8C4
.asciiz "===== ENEMY DRIVE SUB (%d) =====\n"

.balign 4
glabel D_800EB8E8 # "ENEMY END(手抜き)\n\n"
.byte 0x45, 0x4e, 0x45, 0x4d, 0x59, 0x20, 0x45, 0x4e, 0x44, 0x28, 0xbc, 0xea, 0xc8, 0xb4, 0xa4, 0xad
.byte 0x29, 0x0a, 0x0a, 0x00

.balign 4
glabel D_800EB8FC # "ENEMY END(手抜き)\n\n"
.byte 0x45, 0x4e, 0x45, 0x4d, 0x59, 0x20, 0x45, 0x4e, 0x44, 0x28, 0xbc, 0xea, 0xc8, 0xb4, 0xa4, 0xad
.byte 0x29, 0x0a, 0x0a, 0x00

.balign 4
glabel D_800EB910
.asciiz "(1)enemy stick angle over!! (%d)\n"

.balign 4
glabel D_800EB934
.asciiz "ENEMY END\n\n"

.balign 4
glabel D_800EB940
.asciiz "(2)enemy stick angle over!! (%d)\n"

.balign 4
glabel D_800EB964
.asciiz "ENEMY END\n\n"

.balign 4
glabel D_800EB970 # "AREA ERR!!! (現在のセンターライン %d に未登録のグループです) %d\n"
.byte 0x41, 0x52, 0x45, 0x41, 0x20, 0x45, 0x52, 0x52, 0x21, 0x21, 0x21, 0x20, 0x28, 0xb8, 0xbd, 0xba
.byte 0xdf, 0xa4, 0xce, 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5
.byte 0xf3, 0x20, 0x25, 0x64, 0x20, 0xa4, 0xcb, 0xcc, 0xa4, 0xc5, 0xd0, 0xcf, 0xbf, 0xa4, 0xce, 0xa5
.byte 0xb0, 0xa5, 0xeb, 0xa1, 0xbc, 0xa5, 0xd7, 0xa4, 0xc7, 0xa4, 0xb9, 0x29, 0x20, 0x25, 0x64, 0x0a
.byte 0x00

.balign 4
glabel D_800EB9B4 # "AREA ERR!!! (未登録のグループです) %d\n"
.byte 0x41, 0x52, 0x45, 0x41, 0x20, 0x45, 0x52, 0x52, 0x21, 0x21, 0x21, 0x20, 0x28, 0xcc, 0xa4, 0xc5
.byte 0xd0, 0xcf, 0xbf, 0xa4, 0xce, 0xa5, 0xb0, 0xa5, 0xeb, 0xa1, 0xbc, 0xa5, 0xd7, 0xa4, 0xc7, 0xa4
.byte 0xb9, 0x29, 0x20, 0x25, 0x64, 0x0a, 0x00

.balign 4
glabel D_800EB9DC # "get_oga_area_sub_BP() ... エリアが見つからないッス！ (b_num = %d)\n"
.byte 0x67, 0x65, 0x74, 0x5f, 0x6f, 0x67, 0x61, 0x5f, 0x61, 0x72, 0x65, 0x61, 0x5f, 0x73, 0x75, 0x62
.byte 0x5f, 0x42, 0x50, 0x28, 0x29, 0x20, 0x2e, 0x2e, 0x2e, 0x20, 0xa5, 0xa8, 0xa5, 0xea, 0xa5, 0xa2
.byte 0xa4, 0xac, 0xb8, 0xab, 0xa4, 0xc4, 0xa4, 0xab, 0xa4, 0xe9, 0xa4, 0xca, 0xa4, 0xa4, 0xa5, 0xc3
.byte 0xa5, 0xb9, 0xa1, 0xaa, 0x20, 0x28, 0x62, 0x5f, 0x6e, 0x75, 0x6d, 0x20, 0x3d, 0x20, 0x25, 0x64
.byte 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBA20 # "  状況: (%d, %d, %d) \n"
.byte 0x20, 0x20, 0xbe, 0xf5, 0xb6, 0xb7, 0x3a, 0x20, 0x28, 0x25, 0x64, 0x2c, 0x20, 0x25, 0x64, 0x2c
.byte 0x20, 0x25, 0x64, 0x29, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EBA38
.asciiz "<%d> (%d, %d, %d) [%d] lng %f\n"

.balign 4
glabel D_800EBA58 # "ワリオスタジアム  ジャンプ失敗！！！ (area %d, y %7.2f)\n"
.byte 0xa5, 0xef, 0xa5, 0xea, 0xa5, 0xaa, 0xa5, 0xb9, 0xa5, 0xbf, 0xa5, 0xb8, 0xa5, 0xa2, 0xa5, 0xe0
.byte 0x20, 0x20, 0xa5, 0xb8, 0xa5, 0xe3, 0xa5, 0xf3, 0xa5, 0xd7, 0xbc, 0xba, 0xc7, 0xd4, 0xa1, 0xaa
.byte 0xa1, 0xaa, 0xa1, 0xaa, 0x20, 0x28, 0x61, 0x72, 0x65, 0x61, 0x20, 0x25, 0x64, 0x2c, 0x20, 0x79
.byte 0x20, 0x25, 0x37, 0x2e, 0x32, 0x66, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBA94 # "水に落ちた！！  センターラインに強制移動しました (num %d: area %d ) (%d,%d,%d)\n"
.byte 0xbf, 0xe5, 0xa4, 0xcb, 0xcd, 0xee, 0xa4, 0xc1, 0xa4, 0xbf, 0xa1, 0xaa, 0xa1, 0xaa, 0x20, 0x20
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xcb
.byte 0xb6, 0xaf, 0xc0, 0xa9, 0xb0, 0xdc, 0xc6, 0xb0, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf
.byte 0x20, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x3a, 0x20, 0x61, 0x72, 0x65, 0x61, 0x20, 0x25
.byte 0x64, 0x20, 0x29, 0x20, 0x28, 0x25, 0x64, 0x2c, 0x25, 0x64, 0x2c, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBAE4 # "こーすあうと！！（手抜き中:バンプ有り）  センターラインに強制移動しました (num %d: area %d ==>%d) (group %d) (%d,%d,%d)\n"
.byte 0xa4, 0xb3, 0xa1, 0xbc, 0xa4, 0xb9, 0xa4, 0xa2, 0xa4, 0xa6, 0xa4, 0xc8, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0xa1, 0xca, 0xbc, 0xea, 0xc8, 0xb4, 0xa4, 0xad, 0xc3, 0xe6, 0x3a, 0xa5, 0xd0, 0xa5, 0xf3, 0xa5
.byte 0xd7, 0xcd, 0xad, 0xa4, 0xea, 0xa1, 0xcb, 0x20, 0x20, 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1
.byte 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xcb, 0xb6, 0xaf, 0xc0, 0xa9, 0xb0, 0xdc, 0xc6
.byte 0xb0, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0x20, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25
.byte 0x64, 0x3a, 0x20, 0x61, 0x72, 0x65, 0x61, 0x20, 0x25, 0x64, 0x20, 0x3d, 0x3d, 0x3e, 0x25, 0x64
.byte 0x29, 0x20, 0x28, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x25, 0x64, 0x29, 0x20, 0x28, 0x25, 0x64
.byte 0x2c, 0x25, 0x64, 0x2c, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBB60 # "こーすあうと！！（手抜き中:バンプ無し）  センターラインに強制移動しました (num %d: area %d ==>%d) (group %d) (%d,%d,%d)\n"
.byte 0xa4, 0xb3, 0xa1, 0xbc, 0xa4, 0xb9, 0xa4, 0xa2, 0xa4, 0xa6, 0xa4, 0xc8, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0xa1, 0xca, 0xbc, 0xea, 0xc8, 0xb4, 0xa4, 0xad, 0xc3, 0xe6, 0x3a, 0xa5, 0xd0, 0xa5, 0xf3, 0xa5
.byte 0xd7, 0xcc, 0xb5, 0xa4, 0xb7, 0xa1, 0xcb, 0x20, 0x20, 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1
.byte 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xcb, 0xb6, 0xaf, 0xc0, 0xa9, 0xb0, 0xdc, 0xc6
.byte 0xb0, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0x20, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25
.byte 0x64, 0x3a, 0x20, 0x61, 0x72, 0x65, 0x61, 0x20, 0x25, 0x64, 0x20, 0x3d, 0x3d, 0x3e, 0x25, 0x64
.byte 0x29, 0x20, 0x28, 0x67, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x25, 0x64, 0x29, 0x20, 0x28, 0x25, 0x64
.byte 0x2c, 0x25, 0x64, 0x2c, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBBDC # "こーすあうと！！！    エリアを再計算しました (num %d: area %d ==>%d)\n"
.byte 0xa4, 0xb3, 0xa1, 0xbc, 0xa4, 0xb9, 0xa4, 0xa2, 0xa4, 0xa6, 0xa4, 0xc8, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0xa1, 0xaa, 0x20, 0x20, 0x20, 0x20, 0xa5, 0xa8, 0xa5, 0xea, 0xa5, 0xa2, 0xa4, 0xf2, 0xba, 0xc6
.byte 0xb7, 0xd7, 0xbb, 0xbb, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0x20, 0x28, 0x6e, 0x75
.byte 0x6d, 0x20, 0x25, 0x64, 0x3a, 0x20, 0x61, 0x72, 0x65, 0x61, 0x20, 0x25, 0x64, 0x20, 0x3d, 0x3d
.byte 0x3e, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBC24 # "直接指定のBOM(%d) (%7.2f, %7.2f, %7.2f) \n"
.byte 0xc4, 0xbe, 0xc0, 0xdc, 0xbb, 0xd8, 0xc4, 0xea, 0xa4, 0xce, 0x42, 0x4f, 0x4d, 0x28, 0x25, 0x64
.byte 0x29, 0x20, 0x28, 0x25, 0x37, 0x2e, 0x32, 0x66, 0x2c, 0x20, 0x25, 0x37, 0x2e, 0x32, 0x66, 0x2c
.byte 0x20, 0x25, 0x37, 0x2e, 0x32, 0x66, 0x29, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EBC50
.asciiz "BOM HIT CHECK\n"

.balign 4
glabel D_800EBC60
.asciiz "BOM HIT !!!!! (%d)\n"

.balign 4
glabel D_800EBC74 # "BOM待機\n"
.byte 0x42, 0x4f, 0x4d, 0xc2, 0xd4, 0xb5, 0xa1, 0x0a, 0x00

.balign 4
glabel D_800EBC80
.asciiz "RESULT BOM area(%d)\n"

.balign 4
glabel D_800EBC98 # "BOM が 落ちました。\n"
.byte 0x42, 0x4f, 0x4d, 0x20, 0xa4, 0xac, 0x20, 0xcd, 0xee, 0xa4, 0xc1, 0xa4, 0xde, 0xa4, 0xb7, 0xa4
.byte 0xbf, 0xa1, 0xa3, 0x0a, 0x00

.balign 4
glabel D_800EBCB0 # "カメ用火柱 SET 失敗 (TABLE IS FULL)\n"
.byte 0xa5, 0xab, 0xa5, 0xe1, 0xcd, 0xd1, 0xb2, 0xd0, 0xc3, 0xec, 0x20, 0x53, 0x45, 0x54, 0x20, 0xbc
.byte 0xba, 0xc7, 0xd4, 0x20, 0x28, 0x54, 0x41, 0x42, 0x4c, 0x45, 0x20, 0x49, 0x53, 0x20, 0x46, 0x55
.byte 0x4c, 0x4c, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBCD8 # "赤ガメ火柱セットエラー！ (category %d)\n"
.byte 0xc0, 0xd6, 0xa5, 0xac, 0xa5, 0xe1, 0xb2, 0xd0, 0xc3, 0xec, 0xa5, 0xbb, 0xa5, 0xc3, 0xa5, 0xc8
.byte 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa, 0x20, 0x28, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f
.byte 0x72, 0x79, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBD00 # "青ガメ火柱セットエラー！ (category %d)\n"
.byte 0xc0, 0xc4, 0xa5, 0xac, 0xa5, 0xe1, 0xb2, 0xd0, 0xc3, 0xec, 0xa5, 0xbb, 0xa5, 0xc3, 0xa5, 0xc8
.byte 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa, 0x20, 0x28, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f
.byte 0x72, 0x79, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBD28 # "トゲガメ火柱セットエラー！ (category %d)\n"
.byte 0xa5, 0xc8, 0xa5, 0xb2, 0xa5, 0xac, 0xa5, 0xe1, 0xb2, 0xd0, 0xc3, 0xec, 0xa5, 0xbb, 0xa5, 0xc3
.byte 0xa5, 0xc8, 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa, 0x20, 0x28, 0x63, 0x61, 0x74, 0x65
.byte 0x67, 0x6f, 0x72, 0x79, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBD54 # "カメ火柱初期化！！\n"
.byte 0xa5, 0xab, 0xa5, 0xe1, 0xb2, 0xd0, 0xc3, 0xec, 0xbd, 0xe9, 0xb4, 0xfc, 0xb2, 0xbd, 0xa1, 0xaa
.byte 0xa1, 0xaa, 0x0a, 0x00

.balign 4
glabel D_800EBD68 # "センターライン初期化\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xbd, 0xe9
.byte 0xb4, 0xfc, 0xb2, 0xbd, 0x0a, 0x00

.balign 4
glabel D_800EBD80
.asciiz "MAP NUMBER %d\n"

.balign 4
glabel D_800EBD90
.asciiz "center_EX ptr      = %x %x (%x)\n"

.balign 4
glabel D_800EBDB4
.asciiz "\n"

.balign 4
glabel D_800EBDB8
.asciiz "center_BP[%d] ptr         = %x %x (%x)\n"

.balign 4
glabel D_800EBDE0
.asciiz "side_point_L_BP[%d] ptr   = %x %x (%x)\n"

.balign 4
glabel D_800EBE08
.asciiz "side_point_R_BP[%d] ptr   = %x %x (%x)\n"

.balign 4
glabel D_800EBE30
.asciiz "curve_BP[%d] ptr          = %x %x (%x)\n"

.balign 4
glabel D_800EBE58
.asciiz "angle_BP[%d] ptr          = %x %x (%x)\n"

.balign 4
glabel D_800EBE80
.asciiz "short_cut_data_BP[%d] ptr = %x %x (%x)\n"

.balign 4
glabel D_800EBEA8
.asciiz "\n"

.balign 4
glabel D_800EBEAC # "小川の使用メモリー合計 = %d\n"
.byte 0xbe, 0xae, 0xc0, 0xee, 0xa4, 0xce, 0xbb, 0xc8, 0xcd, 0xd1, 0xa5, 0xe1, 0xa5, 0xe2, 0xa5, 0xea
.byte 0xa1, 0xbc, 0xb9, 0xe7, 0xb7, 0xd7, 0x20, 0x3d, 0x20, 0x25, 0x64, 0x0a, 0x00

.balign 4
glabel D_800EBECC # "敵初期化\n"
.byte 0xc5, 0xa8, 0xbd, 0xe9, 0xb4, 0xfc, 0xb2, 0xbd, 0x0a, 0x00

.balign 4
glabel D_800EBED8 # "敵初期化終了\n"
.byte 0xc5, 0xa8, 0xbd, 0xe9, 0xb4, 0xfc, 0xb2, 0xbd, 0xbd, 0xaa, 0xce, 0xbb, 0x0a, 0x00

.balign 4
glabel D_800EBEE8 # "バイパス CENTER LINE 分割開始\n"
.byte 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1, 0xa5, 0xb9, 0x20, 0x43, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x20
.byte 0x4c, 0x49, 0x4e, 0x45, 0x20, 0xca, 0xac, 0xb3, 0xe4, 0xb3, 0xab, 0xbb, 0xcf, 0x0a, 0x00

.balign 4
glabel D_800EBF08 # "センターラインをROMから読みます (map:%d)\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xf2
.byte 0x52, 0x4f, 0x4d, 0xa4, 0xab, 0xa4, 0xe9, 0xc6, 0xc9, 0xa4, 0xdf, 0xa4, 0xde, 0xa4, 0xb9, 0x20
.byte 0x28, 0x6d, 0x61, 0x70, 0x3a, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBF34
.asciiz "ROM center (BP%d) line adr. = %x (%x)\n"

.balign 4
glabel D_800EBF5C # "センターラインを計算します (map:%d)\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xf2
.byte 0xb7, 0xd7, 0xbb, 0xbb, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb9, 0x20, 0x28, 0x6d, 0x61, 0x70, 0x3a
.byte 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EBF84
.asciiz "center (BP%d) line adr. = %x (%x)\n"

.balign 4
glabel D_800EBFA8
.asciiz "BP center_point_number : %d\n"

.balign 4
glabel D_800EBFC8 # "センターライン データ エラー！！\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0x20, 0xa5
.byte 0xc7, 0xa1, 0xbc, 0xa5, 0xbf, 0x20, 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0x0a, 0x00

.balign 4
glabel D_800EBFEC # "バイパス CENTER LINE 分割終了 (%d -> %d 個)\n"
.byte 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1, 0xa5, 0xb9, 0x20, 0x43, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x20
.byte 0x4c, 0x49, 0x4e, 0x45, 0x20, 0xca, 0xac, 0xb3, 0xe4, 0xbd, 0xaa, 0xce, 0xbb, 0x20, 0x28, 0x25
.byte 0x64, 0x20, 0x2d, 0x3e, 0x20, 0x25, 0x64, 0x20, 0xb8, 0xc4, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC01C # "センターラインが ありません。(map:%d)\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xac
.byte 0x20, 0xa4, 0xa2, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xbb, 0xa4, 0xf3, 0xa1, 0xa3, 0x28, 0x6d, 0x61
.byte 0x70, 0x3a, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC044 # "サイドポイント計算 (バイパス %d)\n"
.byte 0xa5, 0xb5, 0xa5, 0xa4, 0xa5, 0xc9, 0xa5, 0xdd, 0xa5, 0xa4, 0xa5, 0xf3, 0xa5, 0xc8, 0xb7, 0xd7
.byte 0xbb, 0xbb, 0x20, 0x28, 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1, 0xa5, 0xb9, 0x20, 0x25, 0x64, 0x29
.byte 0x0a, 0x00

.balign 4
glabel D_800EC068 # "カーブデータ計算 (バイパス %d)\n"
.byte 0xa5, 0xab, 0xa1, 0xbc, 0xa5, 0xd6, 0xa5, 0xc7, 0xa1, 0xbc, 0xa5, 0xbf, 0xb7, 0xd7, 0xbb, 0xbb
.byte 0x20, 0x28, 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1, 0xa5, 0xb9, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC088 # "センターラインが ありません。(map:%d)\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xac
.byte 0x20, 0xa4, 0xa2, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xbb, 0xa4, 0xf3, 0xa1, 0xa3, 0x28, 0x6d, 0x61
.byte 0x70, 0x3a, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC0B0 # "アングルデータ計算 (バイパス %d) \n"
.byte 0xa5, 0xa2, 0xa5, 0xf3, 0xa5, 0xb0, 0xa5, 0xeb, 0xa5, 0xc7, 0xa1, 0xbc, 0xa5, 0xbf, 0xb7, 0xd7
.byte 0xbb, 0xbb, 0x20, 0x28, 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1, 0xa5, 0xb9, 0x20, 0x25, 0x64, 0x29
.byte 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC0D4 # "センターラインが ありません。(map:%d)\n"
.byte 0xa5, 0xbb, 0xa5, 0xf3, 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xe9, 0xa5, 0xa4, 0xa5, 0xf3, 0xa4, 0xac
.byte 0x20, 0xa4, 0xa2, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xbb, 0xa4, 0xf3, 0xa1, 0xa3, 0x28, 0x6d, 0x61
.byte 0x70, 0x3a, 0x25, 0x64, 0x29, 0x0a, 0x00
.balign 4

glabel D_800EC0FC # "ショートカットデータ計算 (バイパス %d)\n"
.byte 0xa5, 0xb7, 0xa5, 0xe7, 0xa1, 0xbc, 0xa5, 0xc8, 0xa5, 0xab, 0xa5, 0xc3, 0xa5, 0xc8, 0xa5, 0xc7
.byte 0xa1, 0xbc, 0xa5, 0xbf, 0xb7, 0xd7, 0xbb, 0xbb, 0x20, 0x28, 0xa5, 0xd0, 0xa5, 0xa4, 0xa5, 0xd1
.byte 0xa5, 0xb9, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC124
.asciiz "extern POINT rom_center_KT%d_BP%d[] = {\n"

.balign 4
glabel D_800EC150
.asciiz "	{%d,%d,%d,%d},\n"

.balign 4
glabel D_800EC164
.asciiz "	0x8000,0x8000,0x8000,0\n};\n\n"

.balign 4
glabel D_800EC184
.asciiz "area read from ROM (%d)\n"

.balign 4
glabel D_800EC1A0 # "ノーマルジャンプ！！！(%d)\n"
.byte 0xa5, 0xce, 0xa1, 0xbc, 0xa5, 0xde, 0xa5, 0xeb, 0xa5, 0xb8, 0xa5, 0xe3, 0xa5, 0xf3, 0xa5, 0xd7
.byte 0xa1, 0xaa, 0xa1, 0xaa, 0xa1, 0xaa, 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC1BC # "ターボオン！！！(%d)\n"
.byte 0xa5, 0xbf, 0xa1, 0xbc, 0xa5, 0xdc, 0xa5, 0xaa, 0xa5, 0xf3, 0xa1, 0xaa, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC1D4 # "手抜き禁止！！！(%d)\n"
.byte 0xbc, 0xea, 0xc8, 0xb4, 0xa4, 0xad, 0xb6, 0xd8, 0xbb, 0xdf, 0xa1, 0xaa, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC1EC # "アクション開始データエラー！(num %d, act %d)\n"
.byte 0xa5, 0xa2, 0xa5, 0xaf, 0xa5, 0xb7, 0xa5, 0xe7, 0xa5, 0xf3, 0xb3, 0xab, 0xbb, 0xcf, 0xa5, 0xc7
.byte 0xa1, 0xbc, 0xa5, 0xbf, 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa, 0x28, 0x6e, 0x75, 0x6d
.byte 0x20, 0x25, 0x64, 0x2c, 0x20, 0x61, 0x63, 0x74, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC21C # "アクション終了データエラー！(num %d,  act %d,  old_act_num %d)\n"
.byte 0xa5, 0xa2, 0xa5, 0xaf, 0xa5, 0xb7, 0xa5, 0xe7, 0xa5, 0xf3, 0xbd, 0xaa, 0xce, 0xbb, 0xa5, 0xc7
.byte 0xa1, 0xbc, 0xa5, 0xbf, 0xa5, 0xa8, 0xa5, 0xe9, 0xa1, 0xbc, 0xa1, 0xaa, 0x28, 0x6e, 0x75, 0x6d
.byte 0x20, 0x25, 0x64, 0x2c, 0x20, 0x20, 0x61, 0x63, 0x74, 0x20, 0x25, 0x64, 0x2c, 0x20, 0x20, 0x6f
.byte 0x6c, 0x64, 0x5f, 0x61, 0x63, 0x74, 0x5f, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC25C
.asciiz "SL : center_point_number : %d\n"

.balign 4
glabel D_800EC27C # "SL: CENTER LINE 分割開始\n"
.byte 0x53, 0x4c, 0x3a, 0x20, 0x43, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x20, 0x4c, 0x49, 0x4e, 0x45, 0x20
.byte 0xca, 0xac, 0xb3, 0xe4, 0xb3, 0xab, 0xbb, 0xcf, 0x0a, 0x00

.balign 4
glabel D_800EC298 # "SL: CENTER LINE 分割終了 (%d -> %d 個)\n"
.byte 0x53, 0x4c, 0x3a, 0x20, 0x43, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x20, 0x4c, 0x49, 0x4e, 0x45, 0x20
.byte 0xca, 0xac, 0xb3, 0xe4, 0xbd, 0xaa, 0xce, 0xbb, 0x20, 0x28, 0x25, 0x64, 0x20, 0x2d, 0x3e, 0x20
.byte 0x25, 0x64, 0x20, 0xb8, 0xc4, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC2C0
.asciiz "SHIP : center_point_number : %d\n"

.balign 4
glabel D_800EC2E4 # "SHIP: CENTER LINE 分割開始\n"
.byte 0x53, 0x48, 0x49, 0x50, 0x3a, 0x20, 0x43, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x20, 0x4c, 0x49, 0x4e
.byte 0x45, 0x20, 0xca, 0xac, 0xb3, 0xe4, 0xb3, 0xab, 0xbb, 0xcf, 0x0a, 0x00

.balign 4
glabel D_800EC300 # "SHIP: CENTER LINE 分割終了 (%d -> %d 個)\n"
.byte 0x53, 0x48, 0x49, 0x50, 0x3a, 0x20, 0x43, 0x45, 0x4e, 0x54, 0x45, 0x52, 0x20, 0x4c, 0x49, 0x4e
.byte 0x45, 0x20, 0xca, 0xac, 0xb3, 0xe4, 0xbd, 0xaa, 0xce, 0xbb, 0x20, 0x28, 0x25, 0x64, 0x20, 0x2d
.byte 0x3e, 0x20, 0x25, 0x64, 0x20, 0xb8, 0xc4, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC32C # "汎用OBJキャラ初期化\n"
.byte 0xc8, 0xc6, 0xcd, 0xd1, 0x4f, 0x42, 0x4a, 0xa5, 0xad, 0xa5, 0xe3, 0xa5, 0xe9, 0xbd, 0xe9, 0xb4
.byte 0xfc, 0xb2, 0xbd, 0x0a, 0x00

.balign 4
glabel D_800EC344 # "SL OBJ設定\n"
.byte 0x53, 0x4c, 0x20, 0x4f, 0x42, 0x4a, 0xc0, 0xdf, 0xc4, 0xea, 0x0a, 0x00

.balign 4
glabel D_800EC350 # "SHIP OBJ設定\n"
.byte 0x53, 0x48, 0x49, 0x50, 0x20, 0x4f, 0x42, 0x4a, 0xc0, 0xdf, 0xc4, 0xea, 0x0a, 0x00

.balign 4
glabel D_800EC360 # "トラックOBJ設定\n"
.byte 0xa5, 0xc8, 0xa5, 0xe9, 0xa5, 0xc3, 0xa5, 0xaf, 0x4f, 0x42, 0x4a, 0xc0, 0xdf, 0xc4, 0xea, 0x0a
.byte 0x00

.balign 4
glabel D_800EC374 # "バスOBJ設定\n"
.byte 0xa5, 0xd0, 0xa5, 0xb9, 0x4f, 0x42, 0x4a, 0xc0, 0xdf, 0xc4, 0xea, 0x0a, 0x00

.balign 4
glabel D_800EC384 # "タンクOBJ設定\n"
.byte 0xa5, 0xbf, 0xa5, 0xf3, 0xa5, 0xaf, 0x4f, 0x42, 0x4a, 0xc0, 0xdf, 0xc4, 0xea, 0x0a, 0x00

.balign 4
glabel D_800EC394 # "RV OBJ設定\n"
.byte 0x52, 0x56, 0x20, 0x4f, 0x42, 0x4a, 0xc0, 0xdf, 0xc4, 0xea, 0x0a, 0x00

.balign 4
glabel D_800EC3A0 # "汎用OBJキャラ初期化終了\n"
.byte 0xc8, 0xc6, 0xcd, 0xd1, 0x4f, 0x42, 0x4a, 0xa5, 0xad, 0xa5, 0xe3, 0xa5, 0xe9, 0xbd, 0xe9, 0xb4
.byte 0xfc, 0xb2, 0xbd, 0xbd, 0xaa, 0xce, 0xbb, 0x0a, 0x00

.balign 4
glabel D_800EC3BC # "クラクション (num %d, permit %d, %d)\n"
.byte 0xa5, 0xaf, 0xa5, 0xe9, 0xa5, 0xaf, 0xa5, 0xb7, 0xa5, 0xe7, 0xa5, 0xf3, 0x20, 0x28, 0x6e, 0x75
.byte 0x6d, 0x20, 0x25, 0x64, 0x2c, 0x20, 0x70, 0x65, 0x72, 0x6d, 0x69, 0x74, 0x20, 0x25, 0x64, 0x2c
.byte 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC3E4
.asciiz "OGA CAMERA INIT (%d)\n"

.balign 4
glabel D_800EC3FC
.asciiz "OGA CAMERA INIT END\n"

.balign 4
glabel D_800EC414 # "高速カメラ ERR !!! (ncx = %f)\n"
.byte 0xb9, 0xe2, 0xc2, 0xae, 0xa5, 0xab, 0xa5, 0xe1, 0xa5, 0xe9, 0x20, 0x45, 0x52, 0x52, 0x20, 0x21
.byte 0x21, 0x21, 0x20, 0x28, 0x6e, 0x63, 0x78, 0x20, 0x3d, 0x20, 0x25, 0x66, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC434 # "高速カメラ ERR !!! (ncz = %f)\n"
.byte 0xb9, 0xe2, 0xc2, 0xae, 0xa5, 0xab, 0xa5, 0xe1, 0xa5, 0xe9, 0x20, 0x45, 0x52, 0x52, 0x20, 0x21
.byte 0x21, 0x21, 0x20, 0x28, 0x6e, 0x63, 0x7a, 0x20, 0x3d, 0x20, 0x25, 0x66, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC454 # "高速カメラ ERR !!! (ecx = %f)\n"
.byte 0xb9, 0xe2, 0xc2, 0xae, 0xa5, 0xab, 0xa5, 0xe1, 0xa5, 0xe9, 0x20, 0x45, 0x52, 0x52, 0x20, 0x21
.byte 0x21, 0x21, 0x20, 0x28, 0x65, 0x63, 0x78, 0x20, 0x3d, 0x20, 0x25, 0x66, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC474 # "高速カメラ ERR !!! (ecz = %f)\n"
.byte 0xb9, 0xe2, 0xc2, 0xae, 0xa5, 0xab, 0xa5, 0xe1, 0xa5, 0xe9, 0x20, 0x45, 0x52, 0x52, 0x20, 0x21
.byte 0x21, 0x21, 0x20, 0x28, 0x65, 0x63, 0x7a, 0x20, 0x3d, 0x20, 0x25, 0x66, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC494
.asciiz "OGA DRIVERS POINT CAMERA MODE \n"

.balign 4
glabel D_800EC4B4
.asciiz "OGA WINNER CAMERA MODE \n"

.balign 4
glabel D_800EC4D0
.asciiz "OGA TIMEATTACK QUICK CAMERA INIT \n"

.balign 4
glabel D_800EC4F4
.asciiz "OGA BATTLE CAMERA INIT win(%d)\n"

.balign 4
glabel D_800EC514
.asciiz "GOAL! <<rank 1>> camera %d  rank %d\n"

.balign 4
glabel D_800EC53C
.asciiz "GOAL! <<rank 2,3,4>> camera %d  rank %d\n"

.balign 4
glabel D_800EC568
.asciiz "GOAL! <<rank 5,6,7,8>> camera %d  rank %d\n"

.balign 4
glabel D_800EC594 # "カメラとカートが衝突しました！！！  (%d)\n"
.byte 0xa5, 0xab, 0xa5, 0xe1, 0xa5, 0xe9, 0xa4, 0xc8, 0xa5, 0xab, 0xa1, 0xbc, 0xa5, 0xc8, 0xa4, 0xac
.byte 0xbe, 0xd7, 0xc6, 0xcd, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xaa, 0xa1, 0xaa
.byte 0xa1, 0xaa, 0x20, 0x20, 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC5C0
.asciiz "<<< ITEM OBJ NUMBER ERR !! >>> item %d  obj_num %d \n"

.balign 4
glabel D_800EC5F8 # "<<< BANANA SET 失敗 >>> obj_num %d   zure %f \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0x53, 0x45, 0x54, 0x20, 0xbc
.byte 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a, 0x5f, 0x6e, 0x75, 0x6d, 0x20
.byte 0x25, 0x64, 0x20, 0x20, 0x20, 0x7a, 0x75, 0x72, 0x65, 0x20, 0x25, 0x66, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC628 # "BANANA 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1, 0xa5
.byte 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab, 0xa4
.byte 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64
.byte 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC65C # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC670 # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC684 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC694 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC6A0
.asciiz "BANANA HOLD (num %d  time %d   hold_time %d)\n"

.balign 4
glabel D_800EC6D0 # "設置 BANANA 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0xc0, 0xdf, 0xc3, 0xd6, 0x20, 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0xbd, 0xea, 0xcd, 0xad
.byte 0xbc, 0xd4, 0xa5, 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3
.byte 0xb3, 0xdd, 0xa4, 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e
.byte 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC708 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC71C # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC730 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC740 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC74C # "BANANA 置きました。 (num %d)\n"
.byte 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0xc3, 0xd6, 0xa4, 0xad, 0xa4, 0xde, 0xa4, 0xb7, 0xa4
.byte 0xbf, 0xa1, 0xa3, 0x20, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC76C # "<<< BANANA NAGE SET 失敗 >>> obj_num %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0x4e, 0x41, 0x47, 0x45, 0x20
.byte 0x53, 0x45, 0x54, 0x20, 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a
.byte 0x5f, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC798 # "BANANA NAGE MOVE 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0x4e, 0x41, 0x47, 0x45, 0x20, 0x4d, 0x4f, 0x56, 0x45
.byte 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4
.byte 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4
.byte 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC7D8 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC7EC # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC800 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC810 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC81C # "BANANA NAGE END 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0x4e, 0x41, 0x47, 0x45, 0x20, 0x45, 0x4e, 0x44, 0x20
.byte 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb
.byte 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf
.byte 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC858 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC86C # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC880 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC890 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC89C
.asciiz "G_SHELL HOLD (num %d  time %d   hold_time %d)\n"

.balign 4
glabel D_800EC8CC # "<<< G_SHELL SET 失敗 >>> obj_num %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x47, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0x53, 0x45, 0x54, 0x20
.byte 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a, 0x5f, 0x6e, 0x75, 0x6d
.byte 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC8F4 # "<<< G_SHELL SET 失敗 >>> object_count %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x47, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0x53, 0x45, 0x54, 0x20
.byte 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a, 0x65, 0x63, 0x74, 0x5f
.byte 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC920 # "G_SHELL 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x47, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1
.byte 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab
.byte 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25
.byte 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC954 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC968 # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC97C # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC98C # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800EC998 # "発射直前 G_SHELL 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0xc8, 0xaf, 0xbc, 0xcd, 0xc4, 0xbe, 0xc1, 0xb0, 0x20, 0x47, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c
.byte 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4
.byte 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4
.byte 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800EC9D8 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800EC9EC # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECA00 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECA10 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECA1C # "G_SHELL 発射 (num %d)\n"
.byte 0x47, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0xc8, 0xaf, 0xbc, 0xcd, 0x20, 0x28, 0x6e, 0x75
.byte 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECA34
.asciiz "R_SHELL HOLD (num %d  time %d   hold_time %d  obj_num %d)\n"

.balign 4
glabel D_800ECA70 # "<<< R_SHELL SET 失敗 >>> obj_num %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x52, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0x53, 0x45, 0x54, 0x20
.byte 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a, 0x5f, 0x6e, 0x75, 0x6d
.byte 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECA98 # "<<< R_SHELL SET 失敗 >>> object_count %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x52, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0x53, 0x45, 0x54, 0x20
.byte 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a, 0x65, 0x63, 0x74, 0x5f
.byte 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECAC4 # "R_SHELL 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x52, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1
.byte 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab
.byte 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25
.byte 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECAF8 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECB0C # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECB20 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECB30 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECB3C
.asciiz "R_SHELL SHOOT (num %d  time %d   hold_time %d  obj_num %d)\n"

.balign 4
glabel D_800ECB78 # "発射直前 R_SHELL 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0xc8, 0xaf, 0xbc, 0xcd, 0xc4, 0xbe, 0xc1, 0xb0, 0x20, 0x52, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c
.byte 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4
.byte 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4
.byte 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECBB8 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECBCC # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECBE0 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECBF0 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECBFC # "R_SHELL 発射 (num %d)\n"
.byte 0x52, 0x5f, 0x53, 0x48, 0x45, 0x4c, 0x4c, 0x20, 0xc8, 0xaf, 0xbc, 0xcd, 0x20, 0x28, 0x6e, 0x75
.byte 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECC14
.asciiz "S_BANANA HOLD (num %d  time %d   hold_time %d)\n"

.balign 4
glabel D_800ECC44 # "<<< SUPER_BANANA SET 失敗 >>> obj_num %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x53, 0x55, 0x50, 0x45, 0x52, 0x5f, 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41
.byte 0x20, 0x53, 0x45, 0x54, 0x20, 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62
.byte 0x6a, 0x5f, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECC70 # "<<< SUPER_BANANA SET 失敗 >>> object_count %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x53, 0x55, 0x50, 0x45, 0x52, 0x5f, 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41
.byte 0x20, 0x53, 0x45, 0x54, 0x20, 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62
.byte 0x6a, 0x65, 0x63, 0x74, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECCA0 # "S_BANANA 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x53, 0x5f, 0x42, 0x41, 0x4e, 0x41, 0x4e, 0x41, 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5
.byte 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4
.byte 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20
.byte 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECCD8 # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECCEC # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECCFC # "理由: sb_ok \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x62, 0x5f, 0x6f, 0x6b, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECD0C
.asciiz "S_BANANA RELEASE (num %d  time %d )\n"

.balign 4
glabel D_800ECD34 # "<<< FAKE IBOX SET 失敗 >>> obj_num %d \n"
.byte 0x3c, 0x3c, 0x3c, 0x20, 0x46, 0x41, 0x4b, 0x45, 0x20, 0x49, 0x42, 0x4f, 0x58, 0x20, 0x53, 0x45
.byte 0x54, 0x20, 0xbc, 0xba, 0xc7, 0xd4, 0x20, 0x3e, 0x3e, 0x3e, 0x20, 0x6f, 0x62, 0x6a, 0x5f, 0x6e
.byte 0x75, 0x6d, 0x20, 0x25, 0x64, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECD5C # "IBOX 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0x49, 0x42, 0x4f, 0x58, 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4, 0xa5, 0xc1, 0xa5, 0xa7, 0xa5
.byte 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd, 0xa4, 0xab, 0xa4, 0xea, 0xa4
.byte 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d, 0x20, 0x25, 0x64, 0x29, 0x0a
.byte 0x00

.balign 4
glabel D_800ECD90 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECDA4 # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECDB8 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECDC8 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECDD4
.asciiz "FBOX HOLD (num %d  time %d   hold_time %d)\n"

.balign 4
glabel D_800ECE00 # "設置 IBOX 所有者チェックに引っ掛かりました。(num %d)\n"
.byte 0xc0, 0xdf, 0xc3, 0xd6, 0x20, 0x49, 0x42, 0x4f, 0x58, 0x20, 0xbd, 0xea, 0xcd, 0xad, 0xbc, 0xd4
.byte 0xa5, 0xc1, 0xa5, 0xa7, 0xa5, 0xc3, 0xa5, 0xaf, 0xa4, 0xcb, 0xb0, 0xfa, 0xa4, 0xc3, 0xb3, 0xdd
.byte 0xa4, 0xab, 0xa4, 0xea, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3, 0x28, 0x6e, 0x75, 0x6d
.byte 0x20, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECE38 # "理由: EXISTOBJ \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x45, 0x58, 0x49, 0x53, 0x54, 0x4f, 0x42, 0x4a, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECE4C # "理由: category \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x20, 0x0a
.byte 0x00

.balign 4
glabel D_800ECE60 # "理由: sparam \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x73, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECE70 # "理由: num \n"
.byte 0xcd, 0xfd, 0xcd, 0xb3, 0x3a, 0x20, 0x6e, 0x75, 0x6d, 0x20, 0x0a, 0x00

.balign 4
glabel D_800ECE7C # "雷START (%d)\n"
.byte 0xcd, 0xeb, 0x53, 0x54, 0x41, 0x52, 0x54, 0x20, 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECE8C # "雷END (%d)\n"
.byte 0xcd, 0xeb, 0x45, 0x4e, 0x44, 0x20, 0x28, 0x25, 0x64, 0x29, 0x0a, 0x00

.balign 4
glabel D_800ECE98 # "---------- 表彰台初期化\n"
.byte 0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x20, 0xc9, 0xbd, 0xbe, 0xb4, 0xc2
.byte 0xe6, 0xbd, 0xe9, 0xb4, 0xfc, 0xb2, 0xbd, 0x0a, 0x00

.balign 4
glabel D_800ECEB4 # "map_number = %d - > 20 書き換え中。\n"
.byte 0x6d, 0x61, 0x70, 0x5f, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x20, 0x3d, 0x20, 0x25, 0x64, 0x20
.byte 0x2d, 0x20, 0x3e, 0x20, 0x32, 0x30, 0x20, 0xbd, 0xf1, 0xa4, 0xad, 0xb4, 0xb9, 0xa4, 0xa8, 0xc3
.byte 0xe6, 0xa1, 0xa3, 0x0a, 0x00

.balign 4
glabel D_800ECEDC # "OGA 表彰 move 開始\n"
.byte 0x4f, 0x47, 0x41, 0x20, 0xc9, 0xbd, 0xbe, 0xb4, 0x20, 0x6d, 0x6f, 0x76, 0x65, 0x20, 0xb3, 0xab
.byte 0xbb, 0xcf, 0x0a, 0x00

.balign 4
glabel D_800ECEF0 # "４位の人の表示をコールしました。\n"
.byte 0xa3, 0xb4, 0xb0, 0xcc, 0xa4, 0xce, 0xbf, 0xcd, 0xa4, 0xce, 0xc9, 0xbd, 0xbc, 0xa8, 0xa4, 0xf2
.byte 0xa5, 0xb3, 0xa1, 0xbc, 0xa5, 0xeb, 0xa4, 0xb7, 0xa4, 0xde, 0xa4, 0xb7, 0xa4, 0xbf, 0xa1, 0xa3
.byte 0x0a, 0x00

.balign 4
glabel D_800ECF14 # "表彰台に到着\n"
.byte 0xc9, 0xbd, 0xbe, 0xb4, 0xc2, 0xe6, 0xa4, 0xcb, 0xc5, 0xfe, 0xc3, 0xe5, 0x0a, 0x00

.balign 4
glabel D_800ECF24 # "全員集合！\n"
.byte 0xc1, 0xb4, 0xb0, 0xf7, 0xbd, 0xb8, 0xb9, 0xe7, 0xa1, 0xaa, 0x0a, 0x00

.balign 4
glabel D_800ECF30 # "道路に到着\n"
.byte 0xc6, 0xbb, 0xcf, 0xa9, 0xa4, 0xcb, 0xc5, 0xfe, 0xc3, 0xe5, 0x0a, 0x00

.balign 4
glabel D_800ECF3C # "４位の人終了\n"
.byte 0xa3, 0xb4, 0xb0, 0xcc, 0xa4, 0xce, 0xbf, 0xcd, 0xbd, 0xaa, 0xce, 0xbb, 0x0a, 0x00

.balign 4
glabel D_800ECF4C # "OGA 表彰 move 終了\n"
.byte 0x4f, 0x47, 0x41, 0x20, 0xc9, 0xbd, 0xbe, 0xb4, 0x20, 0x6d, 0x6f, 0x76, 0x65, 0x20, 0xbd, 0xaa
.byte 0xce, 0xbb, 0x0a, 0x00

.balign 4
glabel D_800ECF60
.asciiz "OGAWA DEBUG DRAW\n"

glabel D_800ECF74
.float 0.01

glabel D_800ECF78
.double 0.16666666666666666

glabel D_800ECF80
.double 0.41666666666666669

glabel D_800ECF88
.double 1.6666666666666667

glabel D_800ECF90
.float 4900.0

glabel D_800ECF94
.float 22500.0

glabel D_800ECF98
.float 90000.0

glabel D_800ECF9C
.float 3.3333333

glabel D_800ECFA0
.float 1.6666666

glabel D_800ECFA4
.float 0.01666666

glabel D_800ECFA8
.float 1300.0

glabel D_800ECFAC
.float -1300.0

glabel D_800ECFB0
.float 4.3

glabel D_800ECFB4
.float 8.33333333

glabel D_800ECFB8
.float 0.9

glabel D_800ECFBC
.float -0.9

glabel D_800ECFC0
.float 0.9

glabel D_800ECFC4
.float -0.9

glabel D_800ECFC8
.float 3.33333333

glabel D_800ECFCC
.float 0.2

glabel D_800ECFD0
.float 0.2

glabel D_800ECFD4
.float 0.2

glabel D_800ECFD8
.float 1.1

glabel D_800ECFDC
.float -1.1

glabel D_800ECFE0
.float 0.01

glabel D_800ECFE4
.float 0.01

glabel D_800ECFE8
.float 1000000

glabel D_800ECFEC
.float 1000000

glabel D_800ECFF0
.float 250000

glabel D_800ECFF4
.float 160000

glabel D_800ECFF8
.float 250000

glabel D_800ECFFC
.float 0.01

glabel D_800ED000
.float 0.01

glabel D_800ED004
.float 0.01

glabel D_800ED008
.word L8000E1F4, L8000E45C, L8000E618, L8000E968
.word L8000E634

glabel D_800ED01C
.float -2409.197021

glabel D_800ED020
.float -355.253998

glabel D_800ED024
.float 0.01

glabel D_800ED028
.double -1000.0

glabel D_800ED030
.float 0.3

glabel D_800ED034
.float 2.3

glabel D_800ED038
.float 2.3

glabel D_800ED03C
.float 0.15

glabel D_800ED040
.float 0.3

glabel D_800ED044
.float 0.45

glabel D_800ED048
.float 0.15

glabel D_800ED04C
.float 0.9

glabel D_800ED050
.float 0.015
.word 0x00000000

glabel D_800ED058
.double -0.1

glabel D_800ED060
.double 0.1

glabel D_800ED068
.double 0.05

glabel D_800ED070
.double -500.0

glabel D_800ED078
.double 0.05

glabel D_800ED080
.word L80011BE8, L80011C04, L80011C3C, L80011C54
.word L80011C70, L80011C8C, L80011C9C, L80011CB0
.word L80011CD4, L80011D2C, L80011CC0

glabel D_800ED0AC
.float -0.6

glabel D_800ED0B0
.float 0.6

glabel D_800ED0B4
.word L80011DC4, L80011E20, L80011DF4, L80011DF4
.word L80011DF4, L80011E20, L80011E20, L80011E20
.word L80011E20, L80011E20, L80011E20

glabel D_800ED0E0
.double -0.8

glabel D_800ED0E8
.double 0.8

glabel D_800ED0F0
.float 1.1
.word 0x00000000

glabel D_800ED0F8
.double 65.0

glabel D_800ED100
.float 0.42299348
.word 0x00000000

glabel D_800ED108
.double 0.1

glabel D_800ED110
.float 0.72017353
.word 0x00000000

glabel D_800ED118
.double 0.1

glabel D_800ED120
.double 0.01

glabel D_800ED128
.float 1.66666666
.word 0x00000000

glabel D_800ED130
.double 45.0

glabel D_800ED138
.double 180.0

glabel D_800ED140
.double 0.2

glabel D_800ED148
.double 0.04

glabel D_800ED150
.double 0.02

glabel D_800ED158
.double 300.0

glabel D_800ED160
.double -300.0

glabel D_800ED168
.double 0.6

glabel D_800ED170
.float -0.7

glabel D_800ED174
.float 0.7

glabel D_800ED178
.double 0.06

glabel D_800ED180
.double 0.06

glabel D_800ED188
.double -300.0

glabel D_800ED190
.double 300.0

glabel D_800ED198
.double -300.0

glabel D_800ED1A0
.double 300.0

glabel D_800ED1A8
.float -0.8

glabel D_800ED1AC
.float 0.8

glabel D_800ED1B0
.double 1.6666666666666667

glabel D_800ED1B8
.double 90.0

glabel D_800ED1C0
.double 4.583333333333333

glabel D_800ED1C8
.double 2.9166666666666665

glabel D_800ED1D0
.double 90.0

glabel D_800ED1D8
.double 4.583333333333333

glabel D_800ED1E0
.double 2.9166666666666665

glabel D_800ED1E8
.double 90.0

glabel D_800ED1F0
.double 4.583333333333333

glabel D_800ED1F8
.double 2.9166666666666665

glabel D_800ED200
.double 90.0

glabel D_800ED208
.double 4.583333333333333

glabel D_800ED210
.double 2.9166666666666665

glabel D_800ED218
.double 3000.0

glabel D_800ED220
.double -0.7

glabel D_800ED228
.double 0.7

glabel D_800ED230
.double 3000.0

glabel D_800ED238
.double 0.01

glabel D_800ED240
.double 0.01

glabel D_800ED248
.double 0.4

glabel D_800ED250
.double 0.4

glabel D_800ED258
.double 3000.0

glabel D_800ED260
.float 0.1

glabel D_800ED264
.float -0.1

glabel D_800ED268
.float 16.666666031
.word 0x00000000

glabel D_800ED270
.double -10000.0

glabel D_800ED278
.double 10000.0

glabel D_800ED280
.double 10000.0

glabel D_800ED288
.double 0.1

glabel D_800ED290
.double 0.1

glabel D_800ED298
.double 0.1

glabel D_800ED2A0
.double 0.1

glabel D_800ED2A8
.double 0.2

glabel D_800ED2B0
.double 0.7

glabel D_800ED2B8
.double 0.01

glabel D_800ED2C0
.double -0.9

glabel D_800ED2C8
.float -0.9
.word 0x00000000

glabel D_800ED2D0
.double 0.8

glabel D_800ED2D8
.double 0.2

glabel D_800ED2E0
.double 1.3

glabel D_800ED2E8
.double 0.01

glabel D_800ED2F0
.double 0.9

glabel D_800ED2F8
.float 0.9
.word 0x00000000

glabel D_800ED300
.double 1.2

glabel D_800ED308
.double 3000.0

glabel D_800ED310
.double 3000.0

glabel D_800ED318
.double 0.8

glabel D_800ED320
.double 0.2

glabel D_800ED328
.word L80019928, L80019A08, L8001993C, L80019954
.word L800199B4, L800199D4, L8001996C, L80019990
.word L80019A48, L800199F4, L80019AE8


.word L80019AE8
.word L80019A68, L80019A88, L80019A28, L80019AA8
.word L80019AC8

glabel D_800ED36C
.word L8001A25C, L8001A274, L8001A28C
.word L8001A2A4, L8001A2BC, L8001A2D4

glabel D_800ED384
.word L8001A998
.word L8001AA10, L8001A9B0, L8001A9B0, L8001A9E0
.word L8001A9E0, L8001A9C8, L8001A9C8, L8001AA40


.word L8001A9F8, L8001AA88, L8001AA88, L8001AA58
.word L8001AA58, L8001AA28, L8001AA70, L8001AA70

glabel D_800ED3C8
.word L8001ABB0, L8001ABCC, L8001ABCC, L8001ABCC
.word L8001ABCC, L8001ABCC, L8001ABCC


.word L8001ABB8
.word L8001ABA0, L8001ABC0, L8001ABA8, L8001ABC8
.word L8001ABCC, L8001ABCC, L8001ABCC
glabel D_800ED404
.word L8001ACAC
.word L8001AD64, L8001AF34, L8001AFD8, L8001B4AC
.word L8001B528, L8001B5B8, L8001B630, L8001B6AC
.word L8001B738, L8001B7BC, L8001B838, L8001B90C
.word L8001BA38, L8001BA98, L8001BB30, L8001BE30
.word L8001BE30, L8001BE30, L8001BE30, L8001BE30
.word L8001BE30, L8001BC28, L8001BC64, L8001BE30
.word L8001BC8C, L8001BCBC, L8001BCE0, L8001BD10
.word L8001BD34, L8001BD60, L8001BD94, L8001BDC8
.word L8001BDE4, L8001B0EC, L8001B2C4, L8001B3B4

glabel D_800ED498
.double 0.4

glabel D_800ED4A0
.word L8001B970, L8001B988, L8001B9A0, L8001B9B8
.word L8001B9D0

glabel D_800ED4B4
.float 19.166999817

glabel D_800ED4B8
.float -3202.475097656

glabel D_800ED4BC
.float -477.623992920

glabel D_800ED4C0
.float -3205.080078125

glabel D_800ED4C4
.float -462.851989746

glabel D_800ED4C8
.float -3199.870117188

glabel D_800ED4CC
.float -492.395996094

glabel D_800ED4D0
.float -2409.197021484

glabel D_800ED4D4
.float -355.253997803

.word 0x00000000, 0x00000000

glabel D_800ED4E0
.word L8001C524, L8001C524, L8001C9CC, L8001C524
.word L8001C9CC, L8001C9CC, L8001C9CC, L8001C9CC
.word L8001C524, L8001C524, L8001C524

glabel D_800ED50C
.float 11.600000381

glabel D_800ED510
.float 19.200000763

glabel D_800ED514
.float 11.600000381

glabel D_800ED518
.float 19.200000763

glabel D_800ED51C
.float 9.600000381

glabel D_800ED520
.float 11.600000381

glabel D_800ED524
.float 19.200000763

glabel D_800ED528
.double 0.7

glabel D_800ED530
.double 0.8

glabel D_800ED538
.double 0.1

glabel D_800ED540
.double 0.9

glabel D_800ED548
.double 0.1

glabel D_800ED550
.double 0.1

glabel D_800ED558
.double 0.1

glabel D_800ED560
.double 0.85

glabel D_800ED568
.double 0.02

glabel D_800ED570
.double 0.01

glabel D_800ED578
.double 0.15

glabel D_800ED580
.double 0.7

glabel D_800ED588
.double 0.8

glabel D_800ED590
.double 0.1

glabel D_800ED598
.double 0.9

glabel D_800ED5A0
.double 0.1

glabel D_800ED5A8
.double 0.1

glabel D_800ED5B0
.double 0.1

glabel D_800ED5B8
.double 0.85

glabel D_800ED5C0
.double 0.02

glabel D_800ED5C8
.double 0.01

glabel D_800ED5D0
.double 0.15

glabel D_800ED5D8 # jump table
.word L8001F4E0, L8001F54C, L8001F5DC, L8001F654
.word L8001F6D8

.word 0x00000000

glabel D_800ED5F0
.double 0.8

.word 0x00000000, 0x00000000

.balign 4
glabel D_800ED600
.asciiz "S_MARIO"

.balign 4
glabel D_800ED608
.asciiz "S_LUIZI"

.balign 4
glabel D_800ED610
.asciiz "S_YOSSY"

.balign 4
glabel D_800ED618
.asciiz "S_KINOP"

.balign 4
glabel D_800ED620
.asciiz "S_DONKY"

.balign 4
glabel D_800ED628
.asciiz "S_WARIO"

.balign 4
glabel D_800ED630
.asciiz "S_PEACH"

.balign 4
glabel D_800ED638
.asciiz "S_KUPPA"

.balign 4
glabel D_800ED640
.asciiz "J_MARIO"

.balign 4
glabel D_800ED648
.asciiz "J_LUIZI"

.balign 4
glabel D_800ED650
.asciiz "J_YOSSY"

.balign 4
glabel D_800ED658
.asciiz "J_KINOP"

.balign 4
glabel D_800ED660
.asciiz "J_DONKY"

.balign 4
glabel D_800ED668
.asciiz "J_WARIO"

.balign 4
glabel D_800ED670
.asciiz "J_PEACH"

.balign 4
glabel D_800ED678
.asciiz "J_KUPPA"

glabel D_800ED680
.double 0.001

glabel D_800ED688
.double -0.001

glabel D_800ED690
.double 0.7

glabel D_800ED698
.double 0.8

glabel D_800ED6A0
.double 0.1

glabel D_800ED6A8
.double 2.3

glabel D_800ED6B0
.double 0.7

glabel D_800ED6B8
.double 0.8

glabel D_800ED6C0
.double 0.1

glabel D_800ED6C8
.double 0.02

glabel D_800ED6D0
.double 0.8

glabel D_800ED6D8
.double 0.8

glabel D_800ED6E0
.double 0.1

.word 0x00000000, 0x00000000

glabel D_800ED6F0
.word L80027F38, L80027FC0, L80028048, L800280D0
.word L80028854, L80028854, L80028854, L80028854
.word L80028158, L80028854, L800281E0, L80028854
.word L8002825C, L80028854, L80028854, L80028854
.word L80028854, L80028854, L800282E4

glabel D_800ED73C
.word L80028424
.word L800284AC, L80028534, L800285BC, L80028854
.word L80028854, L80028854, L80028854, L80028644
.word L80028854, L800286CC, L80028854, L80028748
.word L80028854, L80028854, L80028854, L80028854
.word L80028854, L800287D0

glabel D_800ED788
.double 1.6

glabel D_800ED790
.double 0.9

glabel D_800ED798
.double 3.6

glabel D_800ED7A0
.double 3.6

glabel D_800ED7A8
.double 2.6

glabel D_800ED7B0
.double 2.6

glabel D_800ED7B8
.float 3500.0

glabel D_800ED7BC
.float 1100.0

glabel D_800ED7C0
.float 1500.0

glabel D_800ED7C4
.float 1900.0

glabel D_800ED7C8
.float 550.0
.word 0x00000000

glabel D_800ED7D0
.double 4.2

glabel D_800ED7D8
.double 0.6

glabel D_800ED7E0
.double 0.925

glabel D_800ED7E8
.double 0.1

glabel D_800ED7F0
.float 4500.0
.word 0x00000000

glabel D_800ED7F8
.double 0.12

glabel D_800ED800
.double 6000.0

glabel D_800ED808
.double 0.6

glabel D_800ED810
.double 0.12

glabel D_800ED818
.double 6000.0

glabel D_800ED820
.double 0.12

glabel D_800ED828
.double 6000.0

glabel D_800ED830
.double 0.02

glabel D_800ED838
.float 2.8
.word 0x00000000

glabel D_800ED840
.double 0.08

glabel D_800ED848
.double 0.1

glabel D_800ED850
.double 6000.0

glabel D_800ED858
.double 0.12

glabel D_800ED860
.double 6000.0

glabel D_800ED868
.double 0.2

glabel D_800ED870
.double 0.08

glabel D_800ED878
.double 0.12

glabel D_800ED880
.float 0.06

glabel D_800ED884
.float 0.06

glabel D_800ED888
.double 0.13

glabel D_800ED890
.double 0.2

glabel D_800ED898
.double 0.12

glabel D_800ED8A0
.double 6000.0

glabel D_800ED8A8
.double 780.0

glabel D_800ED8B0
.double 6500.0

glabel D_800ED8B8
.float -1100.0
.word 0x00000000

glabel D_800ED8C0
.double 0.13

glabel D_800ED8C8
.double 0.2

glabel D_800ED8D0
.double 0.018

glabel D_800ED8D8
.double 1.1

glabel D_800ED8E0
.double 1.1

glabel D_800ED8E8
.double 0.0125

glabel D_800ED8F0
.double 1.2

glabel D_800ED8F8
.double 0.025

glabel D_800ED900
.double 1.2

glabel D_800ED908
.double 0.7

glabel D_800ED910
.double 0.7

glabel D_800ED918
.double 0.004

glabel D_800ED920
.double 0.004

glabel D_800ED928
.double 0.7

glabel D_800ED930
.double 0.0126

glabel D_800ED938
.double 0.026

glabel D_800ED940
.double -0.2

glabel D_800ED948
.double -0.55

glabel D_800ED950
.double 0.004

glabel D_800ED958
.double 0.004

glabel D_800ED960
.double 0.01

glabel D_800ED968
.double 0.01

glabel D_800ED970
.double 0.008

glabel D_800ED978
.double 0.008

glabel D_800ED980
.double 0.3

glabel D_800ED988
.double 0.15

glabel D_800ED990
.double 0.05

glabel D_800ED998
.double 0.04

glabel D_800ED9A0
.double -0.85

glabel D_800ED9A8
.double -0.55

glabel D_800ED9B0
.double 0.05

glabel D_800ED9B8
.float 0.35

glabel D_800ED9BC
.float 0.55

glabel D_800ED9C0
.float 0.94

glabel D_800ED9C4
.float 0.85

glabel D_800ED9C8
.float 0.46

glabel D_800ED9CC
.float 0.48

glabel D_800ED9D0
.float 0.3

glabel D_800ED9D4
.float 0.54

glabel D_800ED9D8
.double 0.1

glabel D_800ED9E0
.double 0.05

glabel D_800ED9E8
.double 0.05

glabel D_800ED9F0
.double 0.1

glabel D_800ED9F8
.double 0.2

glabel D_800EDA00
.double 0.2

glabel D_800EDA08
.double 0.3

glabel D_800EDA10
.double 0.3

glabel D_800EDA18
.double 0.4

glabel D_800EDA20
.double 0.4

glabel D_800EDA28
.double 0.6

glabel D_800EDA30
.double 0.6

glabel D_800EDA38
.double 0.7

glabel D_800EDA40
.double 0.7

glabel D_800EDA48
.double 0.8

glabel D_800EDA50
.double 0.8

glabel D_800EDA58
.double 0.9

glabel D_800EDA60
.double 0.9

glabel D_800EDA68
.double 0.1

glabel D_800EDA70
.double 0.05

glabel D_800EDA78
.double 0.05

glabel D_800EDA80
.double 0.1

glabel D_800EDA88
.double 0.2

glabel D_800EDA90
.double 0.2

glabel D_800EDA98
.double 0.3

glabel D_800EDAA0
.double 0.3

glabel D_800EDAA8
.double 0.4

glabel D_800EDAB0
.double 0.4

glabel D_800EDAB8
.double 0.6

glabel D_800EDAC0
.double 0.6

glabel D_800EDAC8
.double 0.7

glabel D_800EDAD0
.double 0.7

glabel D_800EDAD8
.double 0.8

glabel D_800EDAE0
.double 0.8

glabel D_800EDAE8
.double 0.9

glabel D_800EDAF0
.double 0.9

glabel D_800EDAF8
.double 0.2

glabel D_800EDB00
.double 0.02

glabel D_800EDB08
.double 1.2

glabel D_800EDB10
.double 0.1

glabel D_800EDB18
.double 0.1

glabel D_800EDB20
.double 0.2

glabel D_800EDB28
.double 0.2

glabel D_800EDB30
.double 0.3

glabel D_800EDB38
.double 0.3

glabel D_800EDB40
.double 0.4

glabel D_800EDB48
.double 0.4

glabel D_800EDB50
.double 0.6

glabel D_800EDB58
.double 0.6

glabel D_800EDB60
.double 0.7

glabel D_800EDB68
.double 0.7

glabel D_800EDB70
.double 0.8

glabel D_800EDB78
.double 0.8

glabel D_800EDB80
.double 0.9

glabel D_800EDB88
.double 0.9

glabel D_800EDB90
.float 0.9
.word 0x00000000

glabel D_800EDB98
.double 0.2

glabel D_800EDBA0
.double 0.7

glabel D_800EDBA8
.double 0.1

glabel D_800EDBB0
.double 3.2

glabel D_800EDBB8
.double 3.2

glabel D_800EDBC0
.double 0.1

glabel D_800EDBC8
.double 0.2

glabel D_800EDBD0
.double 0.2

glabel D_800EDBD8
.double 0.3

glabel D_800EDBE0
.double 0.3

glabel D_800EDBE8
.double 0.4

glabel D_800EDBF0
.double 0.4

glabel D_800EDBF8
.double 0.6

glabel D_800EDC00
.double 0.6

glabel D_800EDC08
.double 0.7

glabel D_800EDC10
.double 0.7

glabel D_800EDC18
.double 0.8

glabel D_800EDC20
.double 2.8

glabel D_800EDC28
.double 2.8

glabel D_800EDC30
.double 0.8

glabel D_800EDC38
.double 0.9

glabel D_800EDC40
.double 0.9

glabel D_800EDC48
.double 0.1

glabel D_800EDC50
.double 3.2

glabel D_800EDC58
.double 3.2

glabel D_800EDC60
.double 0.1

glabel D_800EDC68
.double 0.2

glabel D_800EDC70
.double 0.2

glabel D_800EDC78
.double 0.3

glabel D_800EDC80
.double 0.3

glabel D_800EDC88
.double 0.4

glabel D_800EDC90
.double 0.4

glabel D_800EDC98
.double 0.6

glabel D_800EDCA0
.double 0.6

glabel D_800EDCA8
.double 0.7

glabel D_800EDCB0
.double 0.7

glabel D_800EDCB8
.double 0.8

glabel D_800EDCC0
.double 2.8

glabel D_800EDCC8
.double 2.8

glabel D_800EDCD0
.double 0.8

glabel D_800EDCD8
.double 0.9

glabel D_800EDCE0
.double 0.9

glabel D_800EDCE8
.double 1.2

glabel D_800EDCF0
.double 1.05

glabel D_800EDCF8
.float 0.9

glabel D_800EDCFC
.float 0.9

glabel D_800EDD00
.float 0.9

glabel D_800EDD04
.float 0.9

glabel D_800EDD08
.float 0.9

glabel D_800EDD0C
.float 1.05

glabel D_800EDD10
.float 1.05

glabel D_800EDD14
.float 1.05

glabel D_800EDD18
.float 1.05

glabel D_800EDD1C
.float 1.05

glabel D_800EDD20
.float 1.2

glabel D_800EDD24
.float 1.2

glabel D_800EDD28
.float 1.2

glabel D_800EDD2C
.float 1.2

glabel D_800EDD30
.float 1.2

glabel D_800EDD34
.float 1.6

glabel D_800EDD38
.float 1.6

glabel D_800EDD3C
.float 1.6

glabel D_800EDD40
.float 1.6

glabel D_800EDD44
.float 1.6

glabel D_800EDD48
.float 1.9

glabel D_800EDD4C
.float 1.9

glabel D_800EDD50
.float 1.9

glabel D_800EDD54
.float 1.9

glabel D_800EDD58
.float 1.9

glabel D_800EDD5C
.float 1.9

glabel D_800EDD60
.double 0.15

glabel D_800EDD68
.double 1.6

glabel D_800EDD70
.double 0.9

glabel D_800EDD78
.double 0.65

glabel D_800EDD80
.double 1.7

glabel D_800EDD88
.double 0.8

glabel D_800EDD90
.double 0.02

glabel D_800EDD98
.double 0.01

glabel D_800EDDA0
.double 0.05

glabel D_800EDDA8
.double 0.1

glabel D_800EDDB0
.double 0.15

glabel D_800EDDB8
.double 0.1

glabel D_800EDDC0
.double 0.05

glabel D_800EDDC8
.double 0.02

glabel D_800EDDD0
.double 0.01

glabel D_800EDDD8
.double 0.05

glabel D_800EDDE0
.double 0.1

glabel D_800EDDE8
.double 0.15

glabel D_800EDDF0
.double 0.1

glabel D_800EDDF8
.double 0.05

glabel D_800EDE00
.double 0.12

glabel D_800EDE08
.double 6000.0

glabel D_800EDE10
.double 0.02
.balign 0x10

glabel D_800EDE20
.float -34.6

glabel D_800EDE24
.float -6.95

glabel D_800EDE28
.float 36400.0

glabel D_800EDE2C
.float -8.059

glabel D_800EDE30
.float 45500.0

glabel D_800EDE34
.float -23.224

glabel D_800EDE38
.float 28210.0

glabel D_800EDE3C
.float -23.224

glabel D_800EDE40
.float 28210.0

glabel D_800EDE44
.float -34.6

glabel D_800EDE48
.float -6.95

glabel D_800EDE4C
.float 36400.0

glabel D_800EDE50
.float -8.059

glabel D_800EDE54
.float 45500.0

glabel D_800EDE58
.float -23.224

glabel D_800EDE5C
.float 28210.0

glabel D_800EDE60
.word L8003C12C, L8003C12C, L8003C12C, L8003C12C
.word L8003C12C, L8003C12C, L8003C12C, L8003C12C
.word L8003C12C, L8003C12C, L8003C12C, L8003C12C
.word L8003C12C, L8003C12C, L8003C12C, L8003C1B4
.word L8003C1B4, L8003C1B4, L8003C12C, L8003C1B4

glabel D_800EDE80
.word L8003C1F0, L8003C1F0, L8003C1F0, L8003C1F0
.word L8003C1F0, L8003C1F0, L8003C1F0, L8003C1F0
.word L8003C1F0, L8003C1F0, L8003C1F0, L8003C1F0
.word L8003C1F0, L8003C1F0, L8003C1F0, L8003C62C
.word L8003C74C, L8003C86C, L8003C1F0, L8003C98C

glabel D_800EDF00
.float -575.0

glabel D_800EDF04
.float 575.0

glabel D_800EDF08
.float -575.0

glabel D_800EDF0C
.float 575.0

glabel D_800EDF10
.double 0.1736

glabel D_800EDF18
.double 0.1736

glabel D_800EDF20
.double 0.1736

glabel D_800EDF28
.double 0.1736

glabel D_800EDF30
.double 0.1

glabel D_800EDF38
.float 0.8829
.word 0x00000000

glabel D_800EDF40
.double 0.2

glabel D_800EDF48
.float 0.7318
.word 0x00000000

glabel D_800EDF50
.double 0.1

glabel D_800EDF58
.float 0.8829
.word 0x00000000

glabel D_800EDF60
.double 0.1

glabel D_800EDF68
.float 0.835699975
.word 0x00000000

glabel D_800EDF70
.double 0.1

glabel D_800EDF78
.float 0.8357
.word 0x00000000

glabel D_800EDF80
.double 0.1

glabel D_800EDF88
.float 0.835699975

glabel D_800EDF8C
.word L8003F59C, L8003F5D0, L8003F604, L8003F6D4
.word L8003F6D4, L8003F6D4, L8003F5D0, L8003F6D4
.word L8003F638, L8003F6D4, L8003F6D4, L8003F6D4
.word L8003F6D4, L8003F6D4, L8003F66C, L8003F6D4
.word L8003F6D4, L8003F6D4, L8003F6A0

glabel D_800EDFD8
.double 0.1

glabel D_800EDFE0
.double 0.1

glabel D_800EDFE8
.double -0.00001

glabel D_800EDFF0
.double 0.1

glabel D_800EDFF8
.double -0.00001

glabel D_800EE000
.double 0.1

glabel D_800EE008
.double 0.1

glabel D_800EE010
.double -0.00001

glabel D_800EE018
.double 0.1

glabel D_800EE020
.double -0.00001

.word 0x00000000, 0x00000000

glabel D_800EE030
.double 0.8

glabel D_800EE038
.double 0.8

glabel D_800EE040
.double 0.8

glabel D_800EE048
.double 0.8

glabel D_800EE050
.word L80050C50, L80050A88, L80050AC0, L80050B1C
.word L80050BA8

glabel D_800EE064
.float 0.6

glabel D_800EE068
.word L80053520, L80053574, L800535C8, L8005361C
.word L80053670

.word 0x00000000

glabel D_800EE080
.double 0.8

glabel D_800EE088
.double 0.8

glabel D_800EE090
.word L80057D14, L80057D28, L80057D3C, L80057D50
.word L80057D64, L80057DC0, L80057DC0, L80057DC0
.word L80057D78, L80057D8C, L80057DA0, L80057DB4

glabel D_800EE0C0
.word L80058038, L80058048, L80058058, L80058068
.word L80058078

glabel D_800EE0D4
.word L80058100, L80058110, L80058120, L80058130
.word L80058140, L80058150, L80058160, L80058170
.word L80058180, L80058190, L800581A0, L800581B0

glabel D_800EE104
.word L800585A8, L800585B8, L800585C8, L800585D8
.word L800585E8, L80058630, L80058630, L80058630
.word L800585F8, L80058608, L80058618, L80058628

glabel D_800EE134
.word L80058B00, L80058B00, L8005892C, L80058944
.word L80058980, L800589AC, L800589D0, L80058B00
.word L80058A38, L80058A58, L80058B00, L80058A7C
.word L80058A8C, L80058AB8, L80058B00, L80058B00
.word L80058B00, L80058B00, L80058AE4

glabel D_800EE180
.word L80058C88, L80058C98, L80058CB8, L80058CD8
.word L80058CF8, L80058DA4, L80058DA4, L80058DA4
.word L80058D18, L80058D38, L80058D58, L80058D78

glabel D_800EE1B0
.word L80058E1C, L80058E2C, L80058E4C, L80058E6C
.word L80058E8C, L80058F38, L80058F38, L80058F38
.word L80058EAC, L80058ECC, L80058EEC, L80058F0C

glabel D_800EE1E0
.float 0.6

glabel D_800EE1E4
.word L8005A950, L8005A950, L8005A77C, L8005A794
.word L8005A7EC, L8005A818, L8005A844, L8005A950
.word L8005A89C, L8005A8BC, L8005A950, L8005A8E0
.word L8005A8F0, L8005A91C, L8005A950, L8005A950
.word L8005A950, L8005A950, L8005A948

glabel D_800EE230
.word L8005AD64, L8005AB98, L8005ABE0, L8005AC20
.word L8005AC60, L8005ACA0, L8005ACE0, L8005AD20
.word L8005AD60

glabel D_800EE254
.word L8005AF2C, L8005ADF4, L8005AE20, L8005AE4C
.word L8005AE78, L8005AEA4, L8005AED0, L8005AEFC
.word L8005AF28

glabel D_800EE278
.word L8005B088, L8005AF50, L8005AF7C, L8005AFA8
.word L8005AFD4, L8005B000, L8005B02C, L8005B058
.word L8005B084

glabel D_800EE29C
.word L8005B1E4, L8005B0AC, L8005B0D8, L8005B104
.word L8005B130, L8005B15C, L8005B188, L8005B1B4
.word L8005B1E0

glabel D_800EE2C0
.word L8005B378, L8005B240, L8005B26C, L8005B298
.word L8005B2C4, L8005B2F0, L8005B31C, L8005B348
.word L8005B374

glabel D_800EE2E4
.word L8005B4D4, L8005B39C, L8005B3C8, L8005B3F4
.word L8005B420, L8005B44C, L8005B478, L8005B4A4
.word L8005B4D0

glabel D_800EE308
.word L8005B630, L8005B4F8, L8005B524, L8005B550
.word L8005B57C, L8005B5A8, L8005B5D4, L8005B600
.word L8005B62C

glabel D_800EE32C
.word L8005B78C, L8005B654, L8005B680, L8005B6AC
.word L8005B6D8, L8005B704, L8005B730, L8005B75C
.word L8005B788

glabel D_800EE350
.word L8005BB2C, L8005BB40, L8005BB54, L8005BB84
.word L8005BB98, L8005BBC8, L8005BBDC, L8005BC0C
.word L8005BC20, L8005BC50, L8005BC64, L8005BCF0
.word L8005BD04, L8005BD54, L8005BD68, L8005BDB8
.word L8005BDCC, L8005BE1C, L8005BE30, L8005BE80
.word L8005BE94, L8005BEE4, L8005BEF8, L8005BF48
.word L8005BF5C, L8005BFAC, L8005BFC0, L8005C000
.word L8005C014, L8005C290, L8005C04C, L8005C290
.word L8005C290, L8005C290, L8005C290, L8005C290
.word L8005C290, L8005C290, L8005C290, L8005C290
.word L8005C060, L8005C090, L8005C0A4, L8005C0D4
.word L8005C0E8, L8005C118, L8005C12C, L8005C15C
.word L8005C170, L8005C1A0, L8005C1B4, L8005C1E4
.word L8005C1F8, L8005C228, L8005C23C, L8005C26C
.word L8005C280

glabel D_800EE434
.word L8005C290, L8005B974, L8005B988, L8005B9D0
.word L8005B9E4, L8005BA08, L8005BA1C, L8005C290
.word L8005C290, L8005C290, L8005C290, L8005C290
.word L8005C290, L8005C290, L8005C290, L8005C290
.word L8005C290, L8005C290, L8005C290, L8005C290
.word L8005BA48, L8005BA68, L8005BA7C, L8005BA9C
.word L8005BAB0, L8005BAD0, L8005BAE4, L8005BB04
.word L8005BB18

glabel D_800EE4A8
.double 268.8

glabel D_800EE4B0
.word L8005E870, L8005DBD8, L8005E25C, L8005E870
.word L8005E6F0, L8005E870, L8005E0DC, L8005DEF0
.word L8005EA7C, L8005E3DC, L8005E6F0, L8005EA7C
.word L8005E55C

.word 0x00000000

glabel D_800EE4E8
.double 0.04

glabel D_800EE4F0
.double 0.04

glabel D_800EE4F8
.word L8005F7E0, L8005EE2C, L8005F380, L8005F7E0
.word L8005F6C8, L8005F7E0, L8005F268, L8005F0DC
.word L8005F8F4, L8005F498, L8005F6C8, L8005F8F4
.word L8005F5B0

glabel D_800EE52C
.word L800603C8, L8005F9A0, L8005FF28, L800603C8
.word L800602A0, L800603C8, L8005FE00, L8005FC60
.word L800604EC, L80060050, L800602A0, L800604EC
.word L80060178

glabel D_800EE560
.float 3000.0
.word 0x00000000

glabel D_800EE568
.double 0.1

glabel D_800EE570
.float 5000.0
.word 0x00000000

glabel D_800EE578
.double 0.1

glabel D_800EE580
.double 0.1

glabel D_800EE588
.double -1.8

glabel D_800EE590
.double -1.8

glabel D_800EE598
.double -1.8

glabel D_800EE5A0
.double -1.8

glabel D_800EE5A8
.double -5.8

glabel D_800EE5B0
.double -5.8

glabel D_800EE5B8
.double 1.9

glabel D_800EE5C0
.float 0.15

glabel D_800EE5C4
.float 0.4

glabel D_800EE5C8
.word L80062810, L80062528, L800626E0, L80062810
.word L800627C4, L80062810, L80062694, L80062648
.word L8006285C, L8006272C, L800627C4, L8006285C
.word L80062778

glabel D_800EE5FC
.float 0.2

glabel D_800EE600
.float 0.2

glabel D_800EE604
.float 0.2

glabel D_800EE608
.float 0.2

glabel D_800EE60C
.float 0.1

glabel D_800EE610
.double 0.07

glabel D_800EE618
.double 0.3

glabel D_800EE620
.double 0.1

glabel D_800EE628
.double 0.1

glabel D_800EE630
.double 0.3

glabel D_800EE638
.float 5000.0

glabel D_800EE63C
.float 6000.0

glabel D_800EE640
.double 0.06

glabel D_800EE648
.double 0.3

glabel D_800EE650
.double -5.8

glabel D_800EE658
.double -5.8

glabel D_800EE660
.double 0.05

glabel D_800EE668
.double 0.08

glabel D_800EE670
.double 0.2

glabel D_800EE678
.double 0.1

glabel D_800EE680
.float -1.8

glabel D_800EE684
.float -1.8

glabel D_800EE688
.float -1.8

glabel D_800EE68C
.float -1.8

glabel D_800EE690
.double 0.3

glabel D_800EE698
.double 0.15

glabel D_800EE6A0
.double 0.2

glabel D_800EE6A8
.double 0.06

glabel D_800EE6B0
.double 0.2

glabel D_800EE6B8
.double 0.1

glabel D_800EE6C0
.double 0.4

glabel D_800EE6C8
.double 0.1

glabel D_800EE6D0
.double 0.35

glabel D_800EE6D8
.double -1.2

glabel D_800EE6E0
.double -1.2

glabel D_800EE6E8
.double 0.2

glabel D_800EE6F0
.double -0.7

glabel D_800EE6F8
.double 0.2

glabel D_800EE700
.double -0.6

glabel D_800EE708
.double 0.1

glabel D_800EE710
.double -0.8

glabel D_800EE718
.double -0.8

glabel D_800EE720
.double 0.06

glabel D_800EE728
.double 0.1

glabel D_800EE730
.double 0.3

glabel D_800EE738
.double 0.04

glabel D_800EE740
.double 1.2

glabel D_800EE748
.double 0.1

glabel D_800EE750
.double 0.4

glabel D_800EE758
.double 0.8

glabel D_800EE760
.double 1.2

glabel D_800EE768
.double 1.8

glabel D_800EE770
.double 0.15

glabel D_800EE778
.double 1.2

glabel D_800EE780
.float 1.2
.word 0x00000000

glabel D_800EE788
.double 0.8

glabel D_800EE790
.double 0.4

glabel D_800EE798
.double 0.08

glabel D_800EE7A0
.double 0.2

glabel D_800EE7A8
.double 1.2

glabel D_800EE7B0
.float 1.2
.word 0x00000000

glabel D_800EE7B8
.double 0.4

glabel D_800EE7C0
.double 1.4

glabel D_800EE7C8
.double 0.8

glabel D_800EE7D0
.float 0.1
.word 0x00000000

glabel D_800EE7D8
.double -3.8

glabel D_800EE7E0
.double 0.0006

glabel D_800EE7E8
.double -0.003

glabel D_800EE7F0
.double 0.05

glabel D_800EE7F8
.float 0.05
.word 0x00000000

glabel D_800EE800
.double -0.05

glabel D_800EE808
.float -0.05
.word 0x00000000

glabel D_800EE810
.double 0.06

glabel D_800EE818
.float 0.06
.word 0x00000000

glabel D_800EE820
.double -0.06

glabel D_800EE828
.float -0.06
.word 0x00000000

glabel D_800EE830
.double -3.2

glabel D_800EE838
.double 0.2

glabel D_800EE840
.float 0.3
.word 0x00000000

glabel D_800EE848
.double 1.8

glabel D_800EE850
.float 1.8
.word 0x00000000

glabel D_800EE858
.double 0.3

glabel D_800EE860
.float 0.3

glabel D_800EE864
.word L8006C734, L8006C750, L8006C76C, L8006C788
.word L8006C7A4, L8006C9A4, L8006C9A4, L8006C9A4
.word L8006C7C0, L8006C9A4, L8006C7DC

glabel D_800EE890
.word L8006CA50, L8006CA74, L8006CA98, L8006CABC
.word L8006CAE0, L8006CB04, L8006CB28, L8006CB4C
.word L8006CB70

glabel D_800EE8B4
.word L8006CF38, L8006D184, L8006CF4C, L8006D184
.word L8006CF60, L8006CF74, L8006CF88

glabel D_800EE8D0
.word L8006D200, L8006D22C, L8006D258, L8006D284
.word L8006D2B0

glabel D_800EE8E4
.word L8006D628, L8006D69C, L8006D720, L8006D794
.word L8006D808, L8006D87C, L8006D8F0, L8006D964
.word L8006D628

glabel D_800EE908
.word L8006D9F8, L8006DA6C, L8006DA6C, L8006DA6C
.word L8006DA6C, L8006DBC8, L8006DBC8, L8006DBC8
.word L8006DAE0, L8006DBC8, L8006DB54

glabel D_800EE934
.word L8006DED0, L8006DF00, L8006DF30, L8006DF60
.word L8006DF90

glabel D_800EE948
.float 1.6

glabel D_800EE94C
.float 1.6

glabel D_800EE950
.word L8006F0E4, L8006F174, L8006F1AC, L8006F1E4
.word L8006F248, L8006F2A4, L8006F2FC, L8006F360
.word L8006F3E8, L8006F470, L8006F4D4, L8006F50C
.word L8006F578, L8006F600, L8006F640, L8006F678
.word L8006F6A4, L8006F6D0, L8006F6FC, L8006F734

glabel D_800EE9A0
.float 0.022

glabel D_800EE9A4
.float 0.022

glabel D_800EE9A8
.float 0.0174

glabel D_800EE9AC
.float 0.016

glabel D_800EE9B0
.float 0.018

glabel D_800EE9B4
.float 0.016

glabel D_800EE9B8
.float 0.014

glabel D_800EE9BC
.float 0.014

glabel D_800EE9C0
.float 0.0155

glabel D_800EE9C4
.float 0.0155

glabel D_800EE9C8
.float 0.013

glabel D_800EE9CC
.float 0.015

glabel D_800EE9D0
.float 0.015

glabel D_800EE9D4
.float 0.0103

glabel D_800EE9D8
.float 0.0155

glabel D_800EE9DC
.float 0.0335

glabel D_800EE9E0
.float 0.0445

glabel D_800EE9E4
.float 0.0285

glabel D_800EE9E8
.float 0.0155

glabel D_800EE9EC
.float 0.0257

glabel D_800EE9F0
.word L800705A0, L800706EC, L800706EC, L800706EC
.word L800705B4, L800705C8, L80070640, L80070654
.word L80070668, L8007067C, L80070690, L800706A4
.word L800706B8, L800706CC, L800706E0

glabel D_800EEA2C
.word L800707CC
.word L80071400, L80070848, L80070AA8, L80070B30
.word L80070C60, L80070DD8, L80070F10, L80070F8C
.word L80071024, L80071400, L800712A0, L80071348
.word L80071378, L80071400, L80071400, L80071400
.word L80071400, L800713E4

glabel D_800EEA78
.float 0.7
.word 0x00000000

glabel D_800EEA80
.float 0.15
.word 0x00000000

glabel D_800EEA88
.double 180.0

glabel D_800EEA90
.double 150.0

glabel D_800EEA98
.double 0.8

glabel D_800EEAA0
.double 0.2

glabel D_800EEAA8
.double 0.4

glabel D_800EEAB0
.double 0.0005

glabel D_800EEAB8
.double 0.05

glabel D_800EEAC0
.double 0.05

glabel D_800EEAC8
.double 0.1

glabel D_800EEAD0
.double 0.03

glabel D_800EEAD8
.float 0.1
.word 0x00000000

glabel D_800EEAE0
.double 0.03

glabel D_800EEAE8
.float 0.1

glabel D_800EEAEC
.word L80076524, L8007641C, L8007642C, L80076450
.word L80076514

glabel D_800EEB00
.word L80076AD8, L80076A28, L80076A38
.word L80076A5C, L80076AC8

glabel D_800EEB14
.float 0.3

glabel D_800EEB18
.float 0.8

glabel D_800EEB1C
.float 0.05

glabel D_800EEB20
.double 0.01

glabel D_800EEB28
.double 0.01

glabel D_800EEB30
.double 0.15

glabel D_800EEB38
.float 0.1

glabel D_800EEB3C
.float 0.15

glabel D_800EEB40
.double 0.01

glabel D_800EEB48
.float 0.15
.word 0x00000000

glabel D_800EEB50
.double 0.03

glabel D_800EEB58
.double 0.01

glabel D_800EEB60
.double -0.3

glabel D_800EEB68
.double 45.0

glabel D_800EEB70
.double 0.03

glabel D_800EEB78
.double 0.01

glabel D_800EEB80
.double -0.6

glabel D_800EEB88
.word L80078AFC, L80078B38, L80078B74, L80078BB0
.word L80078BEC

glabel D_800EEB9C
.word L80078CA4, L80078CDC, L80078D14
.word L80078D54, L80078D8C

glabel D_800EEBB0
.double 1.7578125

glabel D_800EEBB8
.word L80078E70, L80078F54, L80078F54, L80078F54
.word L80078E84, L80078E98, L80078EA8, L80078EBC
.word L80078ED0, L80078EE4, L80078EF8, L80078F0C
.word L80078F20, L80078F34, L80078F48

glabel D_800EEBF4
.float 0.15

glabel D_800EEBF8
.word L8007962C, L800793C8, L800793D8, L80079424
.word L80079454, L8007948C, L8007949C, L800794C0
.word L800794FC, L80079520, L80079548, L80079580
.word L800795BC, L800795E0, L80079614, L80079624

glabel D_800EEC38
.float 5000.0

glabel D_800EEC3C
.float 0.15

glabel D_800EEC40
.word L8007979C, L80079740, L80079750, L8007976C
.word L80079794

glabel D_800EEC54
.float 0.15

glabel D_800EEC58
.word L80079D04, L80079C4C, L80079C6C, L80079C84
.word L80079CB8, L80079CD8

glabel D_800EEC70
.word L80079E5C, L80079E88, L80079EAC, L80079F2C
.word L80079F40, L80079F9C, L80079FD4, L80079FE8

glabel D_800EEC90
.float 5000.0

glabel D_800EEC94
.float 0.15

glabel D_800EEC98
.word L8007A218, L8007A168, L8007A178, L8007A194
.word L8007A1A4, L8007A1CC, L8007A1DC, L8007A204

glabel D_800EECB8
.float 5000.0

glabel D_800EECBC
.float 0.15

glabel D_800EECC0
.word L8007A3E0, L8007A330, L8007A340, L8007A35C
.word L8007A36C, L8007A394, L8007A3A4, L8007A3CC

glabel D_800EECE0
.float 5000.0

glabel D_800EECE4
.float 0.15

glabel D_800EECE8
.word L8007A5C0, L8007A554, L8007A568, L8007A58C
.word L8007A5B8

glabel D_800EECFC
.word L8007AA30, L8007A9A0, L8007A9B8
.word L8007A9D0, L8007A9E0, L8007A9F8, L8007AA10
.word L8007AA28

glabel D_800EED1C
.word L8007ABE8, L8007AABC, L8007AAE8
.word L8007AB14, L8007AB40, L8007AB6C, L8007AB98
.word L8007ABC4

glabel D_800EED3C
.word L8007B998, L8007B41C, L8007B430
.word L8007B5A4, L8007B5D0, L8007B5FC, L8007B628
.word L8007B680, L8007B998, L8007B6A8, L8007B6D4
.word L8007B6E8, L8007B834, L8007B998, L8007B998
.word L8007B998, L8007B998, L8007B998, L8007B998
.word L8007B998, L8007B844, L8007B894, L8007B998
.word L8007B998, L8007B998, L8007B998, L8007B998
.word L8007B998, L8007B998, L8007B998, L8007B8B0
.word L8007B900, L8007B998, L8007B998, L8007B998
.word L8007B998, L8007B998, L8007B998, L8007B998
.word L8007B998, L8007B914, L8007B964, L8007B998
.word L8007B998, L8007B998, L8007B998, L8007B998
.word L8007B998, L8007B998, L8007B998, L8007B978

glabel D_800EEE08
.double -1650.0

glabel D_800EEE10
.float 0.2
.word 0x00000000

glabel D_800EEE18
.double 55.0

glabel D_800EEE20
.word L8007BFA0, L8007BF0C, L8007BF1C, L8007BF4C
.word L8007BF68, L8007BF8C

glabel D_800EEE38
.word L8007C220, L8007C000
.word L8007C040, L8007C060, L8007C0BC, L8007C0F8
.word L8007C180, L8007C1B0, L8007C214

glabel D_800EEE5C
.float -0.2

glabel D_800EEE60
.double 0.0015

glabel D_800EEE68
.double 0.0015

glabel D_800EEE70
.float 0.001
.word 0x00000000

glabel D_800EEE78
.double 0.004

glabel D_800EEE80
.double 0.0002

glabel D_800EEE88
.double 0.05

glabel D_800EEE90
.double 0.01

glabel D_800EEE98
.float 0.000001

glabel D_800EEE9C
.float 0.001

glabel D_800EEEA0
.float 0.15

glabel D_800EEEA4
.word L8007C798, L8007C704, L8007C734, L8007C764
.word L8007C780

glabel D_800EEEB8
.float 0.15

glabel D_800EEEBC
.word L8007CF70, L8007CF2C, L8007CF3C, L8007CF50
.word L8007CF64

glabel D_800EEED0
.word L8007D05C, L8007CFB8, L8007CFE4
.word L8007D038, L8007D054

.word 0x00000000

glabel D_800EEEE8
.double -1775.0

glabel D_800EEEF0
.double 130.0

glabel D_800EEEF8
.double -2500.0

glabel D_800EEF00
.double 220.0

glabel D_800EEF08
.double -2100.0

glabel D_800EEF10
.double -290.0

glabel D_800EEF18
.float 0.1
.word 0x00000000

glabel D_800EEF20
.double 2540.0

glabel D_800EEF28
.double -2540.0

glabel D_800EEF30
.double 2150.0

glabel D_800EEF38
.double -2150.0

glabel D_800EEF40
.float 1150.0

glabel D_800EEF44
.float 1765.0

glabel D_800EEF48
.float -1765.0

glabel D_800EEF4C
.word L8007E198, L8007E058, L8007E198, L8007E068
.word L8007E084, L8007E154, L8007E180

glabel D_800EEF68
.float -1371.0

glabel D_800EEF6C
.word L8007E4B4, L8007E42C, L8007E4B4, L8007E43C
.word L8007E454, L8007E4A8

glabel D_800EEF84
.word L8007E8CC, L8007E8F4
.word L8007E908, L8007E930, L8007E98C, L8007E9B4
.word L8007EA44, L8007EA80, L8007EB88

glabel D_800EEFA8
.word L8007E6E0
.word L8007E748, L8007E82C, L8007E844, L8007E85C

glabel D_800EEFBC
.word L8007EE24, L8007EDBC, L8007EDCC, L8007EDE0
.word L8007EDF4

glabel D_800EEFD0
.word L8007F26C, L8007F008, L8007F05C
.word L8007F084, L8007F26C, L8007F0B8, L8007F0E4
.word L8007F10C, L8007F26C, L8007F144, L8007F170
.word L8007F198, L8007F26C, L8007F1D0, L8007F200
.word L8007F228, L8007F26C, L8007F260

glabel D_800EF018
.word L8007F530
.word L8007F2CC, L8007F320, L8007F348, L8007F530
.word L8007F37C, L8007F3A8, L8007F3D0, L8007F530
.word L8007F408, L8007F434, L8007F45C, L8007F530
.word L8007F494, L8007F4C0, L8007F4E8, L8007F530
.word L8007F524

glabel D_800EF060
.word L8007FE94, L8007FBBC, L8007FBE4
.word L8007FE94, L8007FDE0, L8007FE4C

glabel D_800EF078
.double -1000.0

glabel D_800EF080
.double 1000.0

glabel D_800EF088
.word L80080294, L80080248, L80080258, L8008026C
.word L80080280

glabel D_800EF09C
.word L80080500, L80080454, L80080464
.word L800804AC, L800804E4

glabel D_800EF0B0
.double 17.5

glabel D_800EF0B8
.double 0.6

glabel D_800EF0C0
.double 0.6

glabel D_800EF0C8
.float 0.025

glabel D_800EF0CC
.word L80081318, L80081328, L80081338, L80081348
.word L80081368, L80081358

glabel D_800EF0E4
.float 0.15

glabel D_800EF0E8
.double 0.8

glabel D_800EF0F0
.double 0.01

glabel D_800EF0F8
.double 4.8

glabel D_800EF100
.double 0.1

glabel D_800EF108
.float 0.15

glabel D_800EF10C
.word L80081A74, L80081970, L8008199C, L800819B0
.word L800819D8, L800819F8, L80081A74, L80081A74
.word L80081A74, L80081A74, L80081A08

glabel D_800EF138
.double 0.184

glabel D_800EF140
.word L80081D0C, L80081B70, L80081B80, L80081BC4
.word L80081C0C, L80081D0C, L80081D0C, L80081D0C
.word L80081D0C, L80081D0C, L80081C44

glabel D_800EF16C
.float 0.2

glabel D_800EF170
.double -360.0

glabel D_800EF178
.double -1300.0

glabel D_800EF180
.double 328.0

glabel D_800EF188
.double 2541.0

glabel D_800EF190
.double -985.0

glabel D_800EF198
.double 1200.0

glabel D_800EF1A0
.float 0.15

glabel D_800EF1A4
.word L80082C84, L80082CFC, L80082D38, L80082D68
.word L80082D94

glabel D_800EF1B8
.float 0.8

glabel D_800EF1BC
.float 0.027

glabel D_800EF1C0
.float 0.2
.word 0x00000000

glabel D_800EF1C8
.double 0.1

glabel D_800EF1D0
.word L80083368, L80083298, L800832EC, L80083300
.word L8008334C

.word 0x00000000

glabel D_800EF1E8
.double 0.001

glabel D_800EF1F0
.double 0.05

glabel D_800EF1F8
.double 2.6

glabel D_800EF200
.double 0.1

glabel D_800EF208
.float 0.1

glabel D_800EF20C
.word L80083A3C, L80083998, L800839A8, L800839BC
.word L80083A3C, L80083A3C, L80083A3C, L80083A3C
.word L80083A3C, L80083A3C, L800839D0, L800839EC
.word L80083A3C, L80083A3C, L80083A3C, L80083A3C
.word L80083A3C, L80083A3C, L80083A3C, L80083A3C
.word L80083A0C

glabel D_800EF260
.float 0.1

glabel D_800EF264
.word L80083D30, L80083C54, L80083C64, L80083D30
.word L80083D30, L80083D30, L80083D30, L80083D30
.word L80083D30, L80083D30, L80083C78, L80083C9C
.word L80083CCC, L80083D14

glabel D_800EF29C
.float 0.001

glabel D_800EF2A0
.float 0.0025
.word 0x00000000

glabel D_800EF2A8
.double 0.0002

glabel D_800EF2B0
.double 0.04

glabel D_800EF2B8
.double 0.05

glabel D_800EF2C0
.double 0.1

glabel D_800EF2C8
.float 0.2
.word 0x00000000

glabel D_800EF2D0
.double -383.0

glabel D_800EF2D8
.double -2960.0

glabel D_800EF2E0
.double -2490.0

glabel D_800EF2E8
.double -2098.0

glabel D_800EF2F0
.double -2080.0

glabel D_800EF2F8
.float 0.08

glabel D_800EF2FC
.word L80084848, L80084904, L80084968, L800849CC
.word L80084A30, L80084A94

.word 0x00000000

glabel D_800EF318
.double 146.0

glabel D_800EF320
.double 380.0

glabel D_800EF328
.float 0.15
.word 0x00000000

glabel D_800EF330
.double 380.0

glabel D_800EF338
.double -2300.0

glabel D_800EF340
.double -2500.0

glabel D_800EF348
.double -535.0

glabel D_800EF350
.double -250.0

glabel D_800EF358
.float 0.04

glabel D_800EF35C
.word L80084C80, L80084BCC, L80084BDC, L80084C48
.word L80084C6C

glabel D_800EF370
.word L80085000, L80084D7C, L80084DBC
.word L80084E5C, L80084F10, L80084F3C, L80084FAC

glabel D_800EF38C
.float 0.4

glabel D_800EF390
.word L80085104, L80085114, L80085124, L80085138
.word L8008514C, L80085160

glabel D_800EF3A8
.float 1.3
.word 0x00000000

glabel D_800EF3B0
.double -1250.0

glabel D_800EF3B8
.word L80085588, L800855BC, L80085600, L80085614
.word L8008565C, L80085670, L800856B4, L800856FC
.word L80085710

glabel D_800EF3DC
.float 0.03

glabel D_800EF3E0
.float 0.03
.word 0x00000000

glabel D_800EF3E8
.double -1431.0

glabel D_800EF3F0
.word L80085DA8, L80085CE0, L80085CF0, L80085D18
.word L80085D38, L80085D48, L80085D70, L80085D80
.word L80085DA0

.word 0x00000000

glabel D_800EF418
.double 799.0

glabel D_800EF420
.word L80085EE8, L80085E78, L80085E88, L80085EB0
.word L80085ED0, L80085EE0

glabel D_800EF438
.double -2013.0

glabel D_800EF440
.word L80086064, L80085FB4, L80085FC4, L80085FEC
.word L80085FFC, L80086014, L80086024, L8008604C
.word L8008605C

.word 0x00000000

glabel D_800EF468
.double 0.1

glabel D_800EF470
.float 0.005

glabel D_800EF474
.word L80086BB0, L80086990, L800869A0, L80086A04
.word L80086A18, L80086AFC, L80086B6C, L80086B8C

glabel D_800EF494
.float -0.4

.word 0x00000000, 0x00000000

glabel D_800EF4A0
.float 0.025

glabel D_800EF4A4
.float 0.075

glabel D_800EF4A8
.float 0.15

glabel D_800EF4AC
.float 0.1

glabel D_800EF4B0
.float 0.15

glabel D_800EF4B4
.float 0.2

glabel D_800EF4B8
.float 0.025

glabel D_800EF4BC
.float 0.075

glabel D_800EF4C0
.float 0.1

glabel D_800EF4C4
.float 0.15

glabel D_800EF4C8
.float 0.06

glabel D_800EF4CC
.float 0.07

glabel D_800EF4D0
.float 0.075

glabel D_800EF4D4
.float 0.1

glabel D_800EF4D8
.double 1.1

glabel D_800EF4E0
.double 1.1

glabel D_800EF4E8
.double 1.1

glabel D_800EF4F0
.double 500.0

glabel D_800EF4F8
.double 0.6666666666666666

glabel D_800EF500
.double 0.16666666666666666

glabel D_800EF508
.double 10000.0

glabel D_800EF510
.double 10000.0

glabel D_800EF518
.word L8008C1A8, L8008C040, L8008C060, L8008C088
.word L8008C0B0, L8008C0F8, L8008C140, L8008C168

.word 0x00000000, 0x00000000

glabel D_800EF540
.double 0.2

glabel D_800EF548
.double 0.8

glabel D_800EF550
.double 0.1

glabel D_800EF558
.double 0.9

glabel D_800EF560
.double 1.3

glabel D_800EF568
.float 2002.0

glabel D_800EF56C
.float -2002.0

glabel D_800EF570
.double 0.13

glabel D_800EF578
.float 3458.0
.word 0x00000000

glabel D_800EF580
.double 0.085

glabel D_800EF588
.double 0.6

glabel D_800EF590
.double 0.6

glabel D_800EF598
.double 0.9

glabel D_800EF5A0
.double 0.7

glabel D_800EF5A8
.double 0.05

glabel D_800EF5B0
.word L8008FF40, L8008FFB8, L80090010, L80090028
.word L80090140, L80090084, L80090140, L80090140
.word L80090140, L80090140, L80090140, L80090010
.word L80090140, L80090138, L80090138, L80090138
.word L800900E0, L80090138

glabel D_800EF5F8
.word L80090474, L80090698, L80090698, L80090698
.word L80090698, L80090698, L80090698, L80090698
.word L80090698, L80090698, L80090698, L80090580
.word L800905C4, L8009060C, L80090698, L80090650
glabel D_800EF638
.word L800909D0, L80090B80, L80090C84, L80090CDC
.word L80090E08

.word 0x00000000

glabel D_800EF650
.double 0.9

glabel D_800EF658
.float 1820.0

glabel D_800EF65C
.float -1820.0

glabel D_800EF660
.word L8009117C, L80091184, L80091158, L80091158
.word L80091158, L80091158

glabel D_800EF678
.float 0.002

glabel D_800EF67C
.float 2.6

glabel D_800EF680
.double 1.08
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 #balign 64 instead ?

glabel D_800EF690
.hword 0x000c, 0x000d, 0x000b, 0x000b, 0x000a, 0x000b, 0x000b, 0x000d
.hword 0x0007, 0x000a, 0x000c, 0x000a, 0x0012, 0x000d, 0x000c, 0x000c
.hword 0x000c, 0x000c, 0x000b, 0x000d, 0x000c, 0x000c, 0x0012, 0x000d
.hword 0x000c, 0x000c, 0x000a, 0x000a, 0x000a, 0x0006, 0x001e, 0x0006
.hword 0x000a, 0x0008, 0x000b, 0x000c, 0x000c, 0x000d, 0x000a, 0x000b
.hword 0x000a, 0x000a, 0x0008, 0x001c, 0x000a, 0x0010, 0x000f, 0x0010
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000e
.hword 0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000e, 0x000e, 0x000e, 0x000e, 0x000e
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000e, 0x000f, 0x000e
.hword 0x000f, 0x000e, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000e, 0x000e, 0x000e, 0x000e, 0x000e
.hword 0x000b, 0x000f, 0x000f, 0x000f, 0x000f, 0x001d, 0x001d, 0x001d
.hword 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x001d, 0x000f
.hword 0x000f, 0x0017, 0x000f, 0x0017, 0x0017, 0x0017, 0x000f, 0x000f
.hword 0x000f, 0x000f, 0x000f, 0x000f

.balign 4

glabel D_800EF868
.asciiz "mushroom cup"

.balign 4
glabel D_800EF878
.asciiz "flower cup"

.balign 4
glabel D_800EF884
.asciiz "star cup"

.balign 4
glabel D_800EF890
.asciiz "special cup"

.balign 4
glabel D_800EF89C
.asciiz "battle"

.balign 4
glabel D_800EF8A4
.asciiz "mushroom cup"

.balign 4
glabel D_800EF8B4
.asciiz "flower cup"

.balign 4
glabel D_800EF8C0
.asciiz "star cup"

.balign 4
glabel D_800EF8CC
.asciiz "special cup"

.balign 4
glabel D_800EF8D8
.asciiz "mario raceway"

.balign 4
glabel D_800EF8E8
.asciiz "choco mountain"

.balign 4
glabel D_800EF8F8
.asciiz "bowser's castle"

.balign 4
glabel D_800EF908
.asciiz "banshee boardwalk"

.balign 4
glabel D_800EF91C
.asciiz "yoshi valley"

.balign 4
glabel D_800EF92C
.asciiz "frappe snowland"

.balign 4
glabel D_800EF93C
.asciiz "koopa troopa beach"

.balign 4
glabel D_800EF950
.asciiz "royal raceway"

.balign 4
glabel D_800EF960
.asciiz "luigi raceway"

.balign 4
glabel D_800EF970
.asciiz "moo moo farm"

.balign 4
glabel D_800EF980
.asciiz "toad's turnpike"

.balign 4
glabel D_800EF990
.asciiz "kalimari desert"

.balign 4
glabel D_800EF9A0
.asciiz "sherbet land"

.balign 4
glabel D_800EF9B0
.asciiz "rainbow road"

.balign 4
glabel D_800EF9C0
.asciiz "wario stadium"

.balign 4
glabel D_800EF9D0
.asciiz "block fort"

.balign 4
glabel D_800EF9DC
.asciiz "skyscraper"

.balign 4
glabel D_800EF9E8
.asciiz "double deck"

.balign 4
glabel D_800EF9F4
.asciiz "d.k.'s jungle parkway"

.balign 4
glabel D_800EFA0C
.asciiz "big donut"

.balign 4
glabel D_800EFA18
.asciiz "mario raceway"

.balign 4
glabel D_800EFA28
.asciiz "choco mountain"

.balign 4
glabel D_800EFA38
.asciiz "bowser's castle"

.balign 4
glabel D_800EFA48
.asciiz "banshee boardwalk"

.balign 4
glabel D_800EFA5C
.asciiz "yoshi valley"

.balign 4
glabel D_800EFA6C
.asciiz "frappe snowland"

.balign 4
glabel D_800EFA7C
.asciiz "koopa troopa beach"

.balign 4
glabel D_800EFA90
.asciiz "royal raceway"

.balign 4
glabel D_800EFAA0
.asciiz "luigi raceway"

.balign 4
glabel D_800EFAB0
.asciiz "moo moo farm"

.balign 4
glabel D_800EFAC0
.asciiz "toad's turnpike"

.balign 4
glabel D_800EFAD0
.asciiz "kalimari desert"

.balign 4
glabel D_800EFAE0
.asciiz "sherbet land"

.balign 4
glabel D_800EFAF0
.asciiz "rainbow road"

.balign 4
glabel D_800EFB00
.asciiz "wario stadium"

.balign 4
glabel D_800EFB10
.asciiz "block fort"

.balign 4
glabel D_800EFB1C
.asciiz "skyscraper"

.balign 4
glabel D_800EFB28
.asciiz "double deck"

.balign 4
glabel D_800EFB34
.asciiz "d.k.'s jungle parkway"

.balign 4
glabel D_800EFB4C
.asciiz "big donut"

.balign 4
glabel D_800EFB58
.asciiz "mario raceway"

.balign 4
glabel D_800EFB68
.asciiz "choco mountain"

.balign 4
glabel D_800EFB78
.asciiz "bowser's castle"

.balign 4
glabel D_800EFB88
.asciiz "banshee boardwalk"

.balign 4
glabel D_800EFB9C
.asciiz "yoshi valley"

.balign 4
glabel D_800EFBAC
.asciiz "frappe snowland"

.balign 4
glabel D_800EFBBC
.asciiz "koopa troopa beach"

.balign 4
glabel D_800EFBD0
.asciiz "royal raceway"

.balign 4
glabel D_800EFBE0
.asciiz "luigi raceway"

.balign 4
glabel D_800EFBF0
.asciiz "moo moo farm"

.balign 4
glabel D_800EFC00
.asciiz "toad's turnpike"

.balign 4
glabel D_800EFC10
.asciiz "kalimari desert"

.balign 4
glabel D_800EFC20
.asciiz "sherbet land"

.balign 4
glabel D_800EFC30
.asciiz "rainbow road"

.balign 4
glabel D_800EFC40
.asciiz "wario stadium"

.balign 4
glabel D_800EFC50
.asciiz "block fort"

.balign 4
glabel D_800EFC5C
.asciiz "skyscraper"

.balign 4
glabel D_800EFC68
.asciiz "double deck"

.balign 4
glabel D_800EFC74
.asciiz "d.k.'s jungle parkway"

.balign 4
glabel D_800EFC8C
.asciiz "big donut"

.balign 4
glabel D_800EFC98
.asciiz "m circuit"

.balign 4
glabel D_800EFCA4
.asciiz "mountain"

.balign 4
glabel D_800EFCB0
.asciiz "castle"

.balign 4
glabel D_800EFCB8
.asciiz "ghost"

.balign 4
glabel D_800EFCC0
.asciiz "maze"

.balign 4
glabel D_800EFCC8
.asciiz "snow"

.balign 4
glabel D_800EFCD0
.asciiz "beach"

.balign 4
glabel D_800EFCD8
.asciiz "p circuit"

.balign 4
glabel D_800EFCE4
.asciiz "l circuit"

.balign 4
glabel D_800EFCF0
.asciiz "farm"

.balign 4
glabel D_800EFCF8
.asciiz "highway"

.balign 4
glabel D_800EFD00
.asciiz "desert"

.balign 4
glabel D_800EFD08
.asciiz "sherbet"

.balign 4
glabel D_800EFD10
.asciiz "rainbow"

.balign 4
glabel D_800EFD18
.asciiz "stadium"

.balign 4
glabel D_800EFD20
.asciiz "block"

.balign 4
glabel D_800EFD28
.asciiz "skyscraper"

.balign 4
glabel D_800EFD34
.asciiz "deck"

.balign 4
glabel D_800EFD3C
.asciiz "jungle"

.balign 4
glabel D_800EFD44
.asciiz "doughnut"

.balign 4
glabel D_800EFD50
.byte 0x03, 0x02, 0x03, 0x02, 0x01, 0x01, 0x02, 0x02, 0x00, 0x01, 0x00, 0x03, 0x01, 0x03, 0x00, 0x01
.byte 0x03, 0x02, 0x00, 0x00

glabel D_800EFD64
.byte 0x00, 0x01, 0x04, 0x03, 0x05, 0x06, 0x02, 0x07

.balign 4

glabel D_800EFD6C
.asciiz "none"

.balign 4
glabel D_800EFD74
.asciiz "bronze"

.balign 4
glabel D_800EFD7C
.asciiz "silver"

.balign 4
glabel D_800EFD84
.asciiz "gold"

.balign 4
glabel D_800EFD8C
.asciiz "MARIO"

.balign 4
glabel D_800EFD94
.asciiz "LUIGI"

.balign 4
glabel D_800EFD9C
.asciiz "YOSHI"

.balign 4
glabel D_800EFDA4
.asciiz "KINOPIO"

.balign 4
glabel D_800EFDAC
.asciiz "D.KONG"

.balign 4
glabel D_800EFDB4
.asciiz "WARIO"

.balign 4
glabel D_800EFDBC
.asciiz "PEACH"

.balign 4
glabel D_800EFDC4
.asciiz "KOOPA"

.balign 4
glabel D_800EFDCC
.asciiz "MARIO"

.balign 4
glabel D_800EFDD4
.asciiz "LUIGI"

.balign 4
glabel D_800EFDDC
.asciiz "YOSHI"

.balign 4
glabel D_800EFDE4
.asciiz "TOAD"

.balign 4
glabel D_800EFDEC
.asciiz "D.K."

.balign 4
glabel D_800EFDF4
.asciiz "WARIO"

.balign 4
glabel D_800EFDFC
.asciiz "PEACH"

.balign 4
glabel D_800EFE04
.asciiz "BOWSER"

.balign 4
glabel D_800EFE0C # "ーーーー"
.byte 0xa1, 0xbc, 0xa1, 0xbc, 0xa1, 0xbc, 0xa1, 0xbc, 0x00

.balign 4
glabel D_800EFE18
.asciiz "50("

.balign 4
glabel D_800EFE1C
.asciiz "100("

.balign 4
glabel D_800EFE24
.asciiz "150("

.balign 4
glabel D_800EFE2C
.asciiz "extra"

.balign 4
glabel D_800EFE34
.asciiz "50("

.balign 4
glabel D_800EFE38
.asciiz "100("

.balign 4
glabel D_800EFE40
.asciiz "150("

.balign 4
glabel D_800EFE48
.asciiz "extra"

.balign 4
glabel D_800EFE50
.asciiz "1p"

.balign 4
glabel D_800EFE54
.asciiz "2players UD"

.balign 4
glabel D_800EFE60
.asciiz "2players LR"

.balign 4
glabel D_800EFE6C
.asciiz "3players"

.balign 4
glabel D_800EFE78
.asciiz "4players"

.balign 4
glabel D_800EFE84
.asciiz "stereo"

.balign 4
glabel D_800EFE8C
.asciiz "head phone"

.balign 4
glabel D_800EFE98
.asciiz "xxx"

.balign 4
glabel D_800EFE9C
.asciiz "monaural"

.balign 4
glabel D_800EFEA8
.asciiz "STEREO"

.balign 4
glabel D_800EFEB0
.asciiz "HEADPHONE"

.balign 4
glabel D_800EFEBC
.asciiz ""

.balign 4
glabel D_800EFEC0
.asciiz "MONO"

.balign 4
glabel D_800EFEC8
.asciiz "WINNER!"

.balign 4
glabel D_800EFED0
.asciiz "LOSER!"

.balign 4
glabel D_800EFED8
.asciiz "BEST RECORDS"

.balign 4
glabel D_800EFEE8
.asciiz "BEST LAP"

.balign 4
glabel D_800EFEF4
.asciiz "LAP TIME"

.balign 4
glabel D_800EFF00
.asciiz "LAP 1"

.balign 4
glabel D_800EFF08
.asciiz "LAP 2"

.balign 4
glabel D_800EFF10
.asciiz "LAP 3"

.balign 4
glabel D_800EFF18
.asciiz "TOTAL"

.balign 4

glabel D_800EFF20 # "1 ｓ"
.byte 0x31, 0x20, 0xa3, 0xf3, 0x00

.balign 4
glabel D_800EFF28 # "2 ｎ"
.byte 0x32, 0x20, 0xa3, 0xee, 0x00

.balign 4
glabel D_800EFF30 # "3 ｒ"
.byte 0x33, 0x20, 0xa3, 0xf2, 0x00

.balign 4
glabel D_800EFF38 # "4 ｔ"
.byte 0x34, 0x20, 0xa3, 0xf4, 0x00

.balign 4
glabel D_800EFF40 # "5 ｔ"
.byte 0x35, 0x20, 0xa3, 0xf4, 0x00

.balign 4
glabel D_800EFF48
.asciiz " "

.balign 4
glabel D_800EFF4C
.asciiz "CONTINUE GAME"

.balign 4
glabel D_800EFF5C
.asciiz "RETRY"

.balign 4
glabel D_800EFF64
.asciiz "COURSE CHANGE"

.balign 4
glabel D_800EFF74
.asciiz "DRIVER CHANGE"

.balign 4
glabel D_800EFF84
.asciiz "QUIT"

.balign 4
glabel D_800EFF8C
.asciiz "REPLAY"

.balign 4
glabel D_800EFF94
.asciiz "SAVE GHOST"

.balign 4
glabel D_800EFFA0
.asciiz "VS MATCH RANKING"

.balign 4
glabel D_800EFFB4
.asciiz "BATTLE RANKING"

.balign 4
glabel D_800EFFC4
.asciiz "CONNECT A CONTROLLER TO SOCKET 1,"

.balign 4
glabel D_800EFFE8
.asciiz "THEN POWER ON AGAIN"

.balign 4
glabel D_800EFFFC
.asciiz "BATTLE GAME"

.balign 4
glabel D_800F0008
.asciiz "POP OPPOSING PLAYER'S BALLOONS"

.balign 4
glabel D_800F0028
.asciiz "WHEN ALL 3 ARE GONE,THEY ARE OUT!"

.balign 4
glabel D_800F004C
.asciiz "567m"

.balign 4
glabel D_800F0054
.asciiz "687m"

.balign 4
glabel D_800F005C
.asciiz "777m"

.balign 4
glabel D_800F0064
.asciiz "747m"

.balign 4
glabel D_800F006C
.asciiz "772m"

.balign 4
glabel D_800F0074
.asciiz "734m"

.balign 4
glabel D_800F007C
.asciiz "691m"

.balign 4
glabel D_800F0084
.asciiz "1025m"

.balign 4
glabel D_800F008C
.asciiz "717m"

.balign 4
glabel D_800F0094
.asciiz "527m"

.balign 4
glabel D_800F009C
.asciiz "1036m"

.balign 4
glabel D_800F00A4
.asciiz "753m"

.balign 4
glabel D_800F00AC
.asciiz "756m"

.balign 4
glabel D_800F00B4
.asciiz "2000m"

.balign 4
glabel D_800F00BC
.asciiz "1591m"

.balign 4
glabel D_800F00C4
.asciiz ""

.balign 4
glabel D_800F00C8
.asciiz ""

.balign 4
glabel D_800F00CC
.asciiz ""

.balign 4
glabel D_800F00D0
.asciiz "893m"

.balign 4
glabel D_800F00D8
.asciiz ""

.balign 4
glabel D_800F00DC
.asciiz "return to menu"

.balign 4
glabel D_800F00EC
.asciiz "erase records for this course"

.balign 4
glabel D_800F010C
.asciiz "erase ghost from this course"

.balign 4
glabel D_800F012C
.asciiz "quit"

.balign 4
glabel D_800F0134
.asciiz "erase"

.balign 4
glabel D_800F013C
.asciiz "THE BEST RECORDS AND BEST"

.balign 4
glabel D_800F0158
.asciiz "LAP FOR THIS COURSE WILL BE"

.balign 4
glabel D_800F0174
.asciiz "ERASED.  IS THIS OK?"

.balign 4
glabel D_800F018C
.asciiz "GHOST DATA FOR THIS"

.balign 4
glabel D_800F01A0
.asciiz "COURSE WILL BE ERASED."

.balign 4
glabel D_800F01B8
.asciiz "IS THIS OK?"

.balign 4
glabel D_800F01C4
.asciiz "UNABLE TO ERASE "

.balign 4
glabel D_800F01D8
.asciiz "GHOST DATA"

.balign 4
glabel D_800F01E4
.asciiz "RETURN TO GAME SELECT"

.balign 4
glabel D_800F01FC
.asciiz "SOUND MODE"

.balign 4
glabel D_800F0208
.asciiz "COPY N64 CONTROLLER PAK"

.balign 4
glabel D_800F0220
.asciiz "ERASE ALL DATA"

.balign 4
glabel D_800F0230
.asciiz "ALL SAVED DATA WILL BE"

.balign 4
glabel D_800F0248
.asciiz "PERMANENTLY ERASED."

.balign 4
glabel D_800F025C
.asciiz "ARE YOU REALLY SURE?"

.balign 4
glabel D_800F0274
.asciiz ""

.balign 4
glabel D_800F0278
.asciiz "ALL SAVED DATA"

.balign 4
glabel D_800F0288
.asciiz "HAS BEEN NOW ERASED."

.balign 4
glabel D_800F02A0
.asciiz "CONTROLLER 1 DOES NOT HAVE "

.balign 4
glabel D_800F02BC
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F02D0
.asciiz ""

.balign 4
glabel D_800F02D4
.asciiz ""

.balign 4
glabel D_800F02D8
.asciiz "UNABLE TO READ "

.balign 4
glabel D_800F02E8
.asciiz "N64 CONTROLLER PAK DATA "

.balign 4
glabel D_800F0304
.asciiz "FROM CONTROLLER 1"

.balign 4
glabel D_800F0318
.asciiz ""

.balign 4
glabel D_800F031C
.asciiz "UNABLE TO CREATE GAME DATA "

.balign 4
glabel D_800F0338
.asciiz "FROM CONTROLLER 1 "

.balign 4
glabel D_800F034C
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F0360
.asciiz ""

.balign 4
glabel D_800F0364
.asciiz "UNABLE TO COPY GHOST "

.balign 4
glabel D_800F037C
.asciiz "-- INSUFFICIENT FREE PAGES "

.balign 4
glabel D_800F0398
.asciiz "IN CONTROLLER 1 "

.balign 4
glabel D_800F03AC
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F03C0
.asciiz "NO GHOST DATA "

.balign 4
glabel D_800F03D0
.asciiz "IN CONTROLLER 2 "

.balign 4
glabel D_800F03E4
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F03F8
.asciiz "NO MARIO KART 64 DATA "

.balign 4
glabel D_800F0410
.asciiz "PRESENT IN CONTROLLER 2 "

.balign 4
glabel D_800F042C
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F0440
.asciiz "CONTROLLER 2 "

.balign 4
glabel D_800F0450
.asciiz "DOES NOT HAVE "

.balign 4
glabel D_800F0460
.asciiz "N64 CONTROLLER PAK SET"

.balign 4
glabel D_800F0478
.asciiz "UNABLE TO READ DATA "

.balign 4
glabel D_800F0490
.asciiz "FROM CONTROLLER 2 "

.balign 4
glabel D_800F04A4
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F04B8
.asciiz "UNABLE TO COPY DATA "

.balign 4
glabel D_800F04D0
.asciiz "FROM CONTROLLER 1 "

.balign 4
glabel D_800F04E4
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F04F8
.asciiz "UNABLE TO READ DATA "

.balign 4
glabel D_800F0510
.asciiz "FROM CONTROLLER 2 "

.balign 4
glabel D_800F0524
.asciiz "N64 CONTROLLER PAK"

.balign 4
glabel D_800F0538
.asciiz "CONTROLLER 1"

.balign 4
glabel D_800F0548
.asciiz "CONTROLLER 2"

.balign 4
glabel D_800F0558
.asciiz "WHICH FILE DO YOU WANT TO MAKE A COPY OF?"

.balign 4
glabel D_800F0584
.asciiz "TO WHICH FILE DO YOU WANT TO COPY?"

.balign 4
glabel D_800F05A8
.asciiz "CURRENT DATA WILL BE ERASED,"

.balign 4
glabel D_800F05C8
.asciiz "IS THIS OK?"

.balign 4
glabel D_800F05D4
.asciiz "QUIT"

.balign 4
glabel D_800F05DC
.asciiz "COPY"

.balign 4
glabel D_800F05E4
.asciiz "COPYING"

.balign 4
glabel D_800F05EC
.asciiz "DATA COPY COMPLETED"

.balign 4
glabel D_800F0600
.asciiz "NO N64 CONTROLLER PAK DETECTED"

.balign 4
glabel D_800F0620
.asciiz "TO SAVE GHOST DATA, "

.balign 4
glabel D_800F0638
.asciiz "INSERT N64 CONTROLLER PAK "

.balign 4
glabel D_800F0654
.asciiz "INTO CONTROLLER 1"

.balign 4
glabel D_800F0668
.asciiz "UNABLE TO READ "

.balign 4
glabel D_800F0678
.asciiz "N64 CONTROLLER PAK DATA"

.balign 4
glabel D_800F0690
.asciiz ""

.balign 4
glabel D_800F0694
.asciiz ""

.balign 4
glabel D_800F0698
.asciiz ""

.balign 4
glabel D_800F069C
.asciiz ""

.balign 4
glabel D_800F06A0
.asciiz ""

.balign 4
glabel D_800F06A4
.asciiz ""

.balign 4
glabel D_800F06A8
.asciiz "INSUFFICIENT FREE PAGES AVAILABLE "

.balign 4
glabel D_800F06CC
.asciiz "IN N64 CONTROLLER PAK TO CREATE "

.balign 4
glabel D_800F06F0
.asciiz "GAME DATA, PLEASE FREE 121 PAGES."

.balign 4
glabel D_800F0714
.asciiz "SEE INSTRUCTION BOOKLET FOR DETAILS."

.balign 4
glabel D_800F073C
.asciiz "TO SAVE GHOST DATA, "

.balign 4
glabel D_800F0754
.asciiz "INSERT N64 CONTROLLER PAK "

.balign 4
glabel D_800F0770
.asciiz "INTO CONTROLLER 1"

.balign 4
glabel D_800F0784
.asciiz "N64 CONTROLLER PAK "

.balign 4
glabel D_800F0798
.asciiz "NOT DETECTED. "

.balign 4
glabel D_800F07A8
.asciiz "IF YOU WANT TO SAVE "

.balign 4
glabel D_800F07C0
.asciiz "THE GHOST DATA, "

.balign 4
glabel D_800F07D4
.asciiz "PLEASE INSERT "

.balign 4
glabel D_800F07E4
.asciiz "N64 CONTROLLER PAK "

.balign 4
glabel D_800F07F8
.asciiz "INTO CONTROLLER 1"

.balign 4
glabel D_800F080C
.asciiz ""

.balign 4
glabel D_800F0810
.asciiz "UNABLE TO SAVE "

.balign 4
glabel D_800F0820
.asciiz "     THE GHOST"

.balign 4
glabel D_800F0830
.asciiz ""

.balign 4
glabel D_800F0834
.asciiz ""

.balign 4
glabel D_800F0838
.asciiz ""

.balign 4
glabel D_800F083C
.asciiz ""

.balign 4
glabel D_800F0840
.asciiz ""

.balign 4
glabel D_800F0844
.asciiz "UNABLE TO SAVE "

.balign 4
glabel D_800F0854
.asciiz "     THE GHOST"

.balign 4
glabel D_800F0864
.asciiz ""

.balign 4
glabel D_800F0868
.asciiz ""

.balign 4
glabel D_800F086C
.asciiz ""

.balign 4
glabel D_800F0870
.asciiz ""

.balign 4
glabel D_800F0874
.asciiz "INSUFFICIENT "

.balign 4
glabel D_800F0884
.asciiz "FREE PAGES AVAILABLE "

.balign 4
glabel D_800F089C
.asciiz ""

.balign 4
glabel D_800F08A0
.asciiz "-- GHOST DATA "

.balign 4
glabel D_800F08B0
.asciiz "COULD NOT BE SAVED"

.balign 4
glabel D_800F08C4
.asciiz ""

.balign 4
glabel D_800F08C8
.asciiz ""

.balign 4
glabel D_800F08CC
.asciiz ""

.balign 4
glabel D_800F08D0
.asciiz "CANNOT CREATE "

.balign 4
glabel D_800F08E0
.asciiz "     GAME DATA"

.balign 4
glabel D_800F08F0
.asciiz ""

.balign 4
glabel D_800F08F4
.asciiz ""

.balign 4
glabel D_800F08F8
.asciiz ""

.balign 4
glabel D_800F08FC
.asciiz ""

.balign 4
glabel D_800F0900
.asciiz ""

.balign 4
glabel D_800F0904
.asciiz "THIS GHOST IS "

.balign 4
glabel D_800F0914
.asciiz "     ALREADY SAVED"

.balign 4
glabel D_800F0928
.asciiz ""

.balign 4
glabel D_800F092C
.asciiz ""

.balign 4
glabel D_800F0930
.asciiz ""

.balign 4
glabel D_800F0934
.asciiz ""

.balign 4
glabel D_800F0938
.asciiz "RACE DATA CANNOT "

.balign 4
glabel D_800F094C
.asciiz "BE SAVED FOR GHOST"

.balign 4
glabel D_800F0960
.asciiz "SELECT THE FILE "

.balign 4
glabel D_800F0974
.asciiz "YOU WANT TO SAVE"

.balign 4
glabel D_800F0988
.asciiz "NO DATA"

.balign 4
glabel D_800F0990
.asciiz "CREATING "

.balign 4
glabel D_800F099C
.asciiz "MARIO KART 64 "

.balign 4
glabel D_800F09AC
.asciiz "GAME DATA"

.balign 4
glabel D_800F09B8
.asciiz "CANNOT CREATE GAME DATA"
.balign 4

glabel D_800F09D0
.asciiz ""

.balign 4
glabel D_800F09D4
.asciiz ""

.balign 4
glabel D_800F09D8
.asciiz "THE PREVIOUS DATA "

.balign 4
glabel D_800F09EC
.asciiz "WILL BE ERASED, "

.balign 4
glabel D_800F0A00
.asciiz "IS THIS OK?"

.balign 4
glabel D_800F0A0C
.asciiz "QUIT"

.balign 4
glabel D_800F0A14
.asciiz "SAVE"

.balign 4
glabel D_800F0A1C
.asciiz "SAVING GHOST DATA"

.balign 4
glabel D_800F0A30
.asciiz ""

.balign 4
glabel D_800F0A34
.asciiz "PLEASE WAIT"

.balign 4
glabel D_800F0A40
.asciiz "UNABLE TO SAVE "

.balign 4
glabel D_800F0A50
.asciiz "THE GHOST"

.balign 4
glabel D_800F0A5C
.asciiz "YOU ARE AWARDED THE"

.balign 4
glabel D_800F0A70
.asciiz "GOLD CUP"

.balign 4
glabel D_800F0A7C
.asciiz "SILVER CUP"

.balign 4
glabel D_800F0A88
.asciiz "BRONZE CUP"

.balign 4
glabel D_800F0A94
.asciiz "MAYBE NEXT TIME!"

.balign 4
glabel D_800F0AA8
.asciiz "CONGRATULATIONS!"

.balign 4
glabel D_800F0ABC
.asciiz "WHAT A PITY!"

.balign 4
glabel D_800F0ACC
.asciiz "YOU PLACED"

.balign 4
glabel D_800F0AD8
.asciiz "    st"

.balign 4
glabel D_800F0AE0
.asciiz "    nd"

.balign 4
glabel D_800F0AE8
.asciiz "    rd"

.balign 4
glabel D_800F0AF0
.asciiz "    th"

.balign 4
glabel D_800F0AF8
.asciiz "    th"

.balign 4
glabel D_800F0B00
.asciiz "    th"

.balign 4
glabel D_800F0B08
.asciiz "    th"

.balign 4
glabel D_800F0B10
.asciiz "    th"

.balign 4
glabel D_800F0B18
.byte 0x09
glabel D_800F0B19
.byte 0x06
glabel D_800F0B1A
.byte 0x03
glabel D_800F0B1B
.byte 0x01

glabel D_800F0B1C
.byte 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x01, 0x02, 0x03

glabel D_800F0B28
.byte 0x00, 0x01, 0x02, 0x01
.byte 0x02, 0x01, 0x02, 0x01, 0x02, 0x00, 0x00, 0x01, 0x02, 0x02, 0x01, 0x02, 0x02, 0x01, 0x02, 0x02
.byte 0x01, 0x02, 0x02, 0x01, 0x02, 0x02, 0x01, 0x03, 0x03, 0x03, 0x03, 0x03
.byte 0x03, 0x03, 0x03, 0x03
.byte 0x03, 0x03, 0x03, 0x03

glabel D_800F0B50
.byte 0x1f, 0x0b, 0x15, 0x29

glabel D_800F0B54
.byte 0x20, 0x0f, 0x18, 0x2c

.balign 4
glabel D_800F0B58
.asciiz "debug_mode"

.balign 4
glabel D_800F0B64
.asciiz "*"

.balign 4
glabel D_800F0B68
.asciiz "*"

.balign 4
glabel D_800F0B6C
.asciiz "*"

.balign 4
glabel D_800F0B70
.asciiz "*"

.balign 4
glabel D_800F0B74
.asciiz "*"

.balign 4
glabel D_800F0B78
.asciiz "*"

.balign 4
glabel D_800F0B7C
.asciiz "on"

.balign 4
glabel D_800F0B80
.asciiz "off"

.balign 4
glabel D_800F0B84
.asciiz "map_number"

.balign 4
glabel D_800F0B90
.asciiz "screen_mode"

.balign 4
glabel D_800F0B9C
.asciiz "player"

.balign 4
glabel D_800F0BA4
.asciiz "sound mode"

.balign 4
glabel D_800F0BB0
.asciiz "push b to get all goldcup"

.balign 4
glabel D_800F0BCC
.asciiz "effectcount < 0 !!!!!!(kawano)\n"

.balign 4
glabel D_800F0BEC
.asciiz "MAX effectcount(760) over!!!!(kawano)\n"

.balign 4
glabel D_800F0C14
.asciiz "'"

.balign 4
glabel D_800F0C18
.asciiz "\""

.balign 4
glabel D_800F0C1C
.asciiz "results"

.balign 4
glabel D_800F0C24
.asciiz "round"

.balign 4
glabel D_800F0C2C
.asciiz "'"

.balign 4
glabel D_800F0C30
.asciiz "\""

.balign 4
glabel D_800F0C34
.asciiz "driver's points"

.balign 4
glabel D_800F0C44
.asciiz "round"

.balign 4
glabel D_800F0C4C
.asciiz "'"

.balign 4
glabel D_800F0C50
.asciiz "\""

.balign 4
glabel D_800F0C54
.asciiz "'"

.balign 4
glabel D_800F0C58
.asciiz "\""

.balign 4
glabel D_800F0C5C
.asciiz "'"

.balign 4
glabel D_800F0C60
.asciiz "\""

.balign 4
glabel D_800F0C64
.asciiz "'"

.balign 4
glabel D_800F0C68
.asciiz "\""

.balign 4
glabel D_800F0C6C
.asciiz "'"

.balign 4
glabel D_800F0C70
.asciiz "\""

.balign 4
glabel D_800F0C74
.asciiz "'"

.balign 4
glabel D_800F0C78
.asciiz "\""

.balign 4

glabel D_800F0C7C # "ー"
.byte 0xa1, 0xbc, 0x00
.balign 4

glabel D_800F0C80 # "1 ｓ ー"
.byte 0x31, 0x20, 0xa3, 0xf3, 0x20, 0xa1, 0xbc, 0x00
.balign 4

glabel D_800F0C88 # "2 ｎ ー"
.byte 0x32, 0x20, 0xa3, 0xee, 0x20, 0xa1, 0xbc, 0x00
.balign 4


glabel D_800F0C90 # "3 ｒ ー"
.byte 0x33, 0x20, 0xa3, 0xf2, 0x20, 0xa1, 0xbc, 0x00
.balign 4 # Should I add this balign? CHECK

glabel D_800F0C98
.asciiz "'"
.balign 4

glabel D_800F0C9C
.asciiz "\""
.balign 4

# glabel D_800F0C9F begins in the middle of D_800F0C9C.
# Likely a bit field
.byte 0x03, 0x03, 0x03, 0x02, 0x00, 0x02, 0x02

glabel D_800F0CA7 # Second OK menu button
.byte 0x01, 0x03, 0x02, 0x00

glabel D_800F0CAB # Third OK menu button
.byte 0x00, 0x03, 0x03, 0x02, 0x00

glabel D_800F0CB0
.double 2147483647.0

glabel D_800F0CB8
.double -2147483647.0

glabel D_800F0CC0
.double 1.414213562373095

glabel D_800F0CC8
.double 0.6931471805599453

glabel D_800F0CD0
.double 0.6931471805599453

glabel D_800F0CD8
.word L800926B8, L800926D4, L80092704, L80092734
.word L80092764, L80092794, L800927EC, L80092844
.word L8009289C, L800928CC, L80092938, L800929A4
.word L800929FC, L80092A2C, L80092A70, L80092B04
.word L80092B5C, L80092BA0, L80092C5C

glabel D_800F0D24
.word L80092D58, L80092DE4, L80092D58, L80092D38
.word L80092D48, L80092DE4, L80092DE4, L80092DE4
.word L80092DE4, L80092DE4, L80092D58

glabel D_800F0D50
.word L80092D88, L80092DB8, L80092DE0, L80092DA8
.word L80092DE0, L80092DE0, L80092DA0, L80092DD0
.word L80092DE0, L80092DC0, L80092DC8, L80092DD8
.word L80092D90, L80092DB0, L80092DE0, L80092DE0
.word L80092DE0, L80092DE0, L80092DE0, L80092DE0
.word L80092DE0, L80092DE0, L80092DE0, L80092DE0
.word L80092DE0, L80092DE0, L80092DE0, L80092DE0
.word L80092DE0, L80092DE0, L80092D98

glabel D_800F0DCC
.word L80092F44, L80092F4C, L80092F44, L80092F54
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L80092F5C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L80092F64, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L80092F84, L80092F84
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L80092F6C, L8009302C, L80092F74
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L80092F7C, L80092F84

glabel D_800F0EBC
.word L80092FDC, L80092FD4, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L80092FE4
.word L8009302C, L80092FEC, L8009302C, L80092FF4
.word L8009300C, L80093004, L8009302C, L80093014
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L80092FDC, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L8009302C
.word L8009302C, L8009302C, L8009302C, L80092FE4
.word L8009302C, L80092FEC, L8009302C, L80092FF4
.word L80092FFC, L80093004, L8009302C, L80093014

glabel D_800F0F8C
.word L80093AAC, L80093AC4, L80093AC4, L80093AC4
.word L80093AC4, L80093B34, L80093B34, L80093B34
.word L80093B00, L80093B00, L80093B00, L80093B00

glabel D_800F0FBC
.word L80093BC4, L80093BE4, L80093BD4, L80093BD4
.word L80093BE4, L80093C0C, L80093C0C, L80093C0C
.word L80093BD4, L80093BE4, L80093BF4, L80093C04

glabel D_800F0FEC
.word L80094BE8, L80094BE8, L80094BE8, L80094BE8
.word L80094BE8, L80094BD0, L80094BE8, L80094BE8
.word L80094BE8

glabel D_800F1010
.word L80095530, L80095530, L80095530, L80095530
.word L80095530, L80094CE4, L80094D28, L80094EAC
.word L80094F18, L80094F34, L80094FF0, L80095094
.word L800951E8, L8009531C

glabel D_800F1048
.word L80095600, L8009561C, L80095638, L80095654
.word L80095670, L8009568C
 
glabel D_800F1060
.word L8009BB00, L8009BB14, L8009BB28, L8009BB44
.word L8009BB64

glabel D_800F1074
.float 0.457

glabel D_800F1078
.word L8009CBD4, L8009CB6C, L8009CB7C, L8009CB8C
.word L8009CB9C, L8009CBAC, L8009CBD4, L8009CBBC
.word L8009CBCC

glabel D_800F109C
.word L8009D06C, L8009D07C, L8009D08C, L8009D09C
.word L8009D0AC, L8009D0AC, L8009D0AC, L8009D0AC
.word L8009D0AC, L8009D0AC, L8009D07C, L8009D08C
.word L8009D09C, L8009D0AC, L8009D0AC, L8009D0AC
.word L8009D0AC, L8009D0AC, L8009D0AC, L8009D0AC
.word L8009D09C, L8009D0AC, L8009D0AC, L8009D0AC
.word L8009D0AC, L8009D0AC, L8009D0AC, L8009D0AC
.word L8009D0AC, L8009D0AC, L8009D07C, L8009D08C
.word L8009D09C

glabel D_800F1120
.word L8009D0FC, L8009D11C, L8009D138, L8009D154
.word L8009D170

glabel D_800F1134
.word L8009D1DC, L8009D214, L8009D22C, L8009D4D8
.word L8009D50C

glabel D_800F1148
.word L8009D280, L8009D2C8, L8009D318, L8009D364
.word L8009D3C4, L8009D414

glabel D_800F1160
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0

glabel D_800F125C
.word L8009EF08, L8009EF08, L8009EF08, L8009EF08
.word L8009EF08, L8009F5D0, L8009EF08, L8009EF08
.word L8009EF08, L8009EF08, L8009EF08, L8009EF00
.word L8009EF74, L8009EF34, L8009EF34, L8009EF34
.word L8009EF34, L8009F5D0, L8009F5D0, L8009EF90
.word L8009EF90, L8009EFB8, L8009F050, L8009F094
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F0E0, L8009F0E0
.word L8009F0E0, L8009F0E0, L8009F174, L8009F174
.word L8009F174, L8009F174, L8009F174, L8009F174
.word L8009F174, L8009F174, L8009F174, L8009F174
.word L8009F174, L8009F174, L8009F174, L8009F174
.word L8009F174, L8009F174, L8009F10C, L8009F158
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009EED0, L8009EED0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F264
.word L8009F264, L8009F264, L8009F264, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F388, L8009F5D0, L8009F5D0
.word L8009F530, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009E888, L8009E8E4, L8009E940, L8009E9AC
.word L8009EC38, L8009EC5C, L8009EC98, L8009EC98
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F430, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F500, L8009F510
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009E774, L8009E800

glabel D_800F1504
.word L8009ECAC, L8009ECD4, L8009ED08, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009ED9C, L8009EDC8, L8009EDC8
.word L8009EDC8, L8009EDC8, L8009ED94, L8009ED9C
.word L8009ED9C, L8009ED9C, L8009ED9C, L8009ED9C
.word L8009ED9C, L8009ED9C, L8009ED9C, L8009ED9C
.word L8009ED9C, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009F5D0, L8009ED1C, L8009ED1C
.word L8009ED1C, L8009F5D0, L8009F5D0, L8009F5D0
.word L8009F5D0, L8009EE10, L8009EE74, L8009EE74
.word L8009EE74, L8009EE74, L8009EE74, L8009EE74
.word L8009EE74, L8009EE74, L8009EE28, L8009EE4C
.word L8009EE4C, L8009EE4C, L8009EE4C

glabel D_800F15E0
.float 750.0

glabel D_800F15E4
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC, L800A08BC
.word L800A08BC, L800A08BC, L800A08BC

glabel D_800F16E0
.word L800A07FC, L800A080C, L800A081C, L800A082C
.word L800A083C, L800A084C

glabel D_800F16F8
.word L800A0240, L800A0280, L800A0280, L800A0280
.word L800A0280, L800A08C4, L800A01F8, L800A01F8
.word L800A01F8, L800A01F8, L800A01F8, L800A02A4
.word L800A0620, L800A0270, L800A0270, L800A0270
.word L800A0270, L800A08C4, L800A08C4, L800A02DC
.word L800A02DC, L800A036C, L800A037C, L800A03F4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A035C, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A0404, L800A0404
.word L800A0404, L800A0404, L800A0568, L800A0568
.word L800A0568, L800A0568, L800A0568, L800A0568
.word L800A0568, L800A0568, L800A0568, L800A0568
.word L800A0568, L800A0568, L800A0568, L800A0568
.word L800A0568, L800A0568, L800A0428, L800A0558
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A0578, L800A05C4, L800A0610, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A01DC, L800A01DC
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A0644, L800A0654, L800A0664, L800A08C4
.word L800A08C4, L800A0674, L800A0684, L800A0694
.word L800A0694, L800A0694, L800A0694, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A071C
.word L800A072C, L800A08C4, L800A073C, L800A075C
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A074C, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L8009F6FC, L8009F714, L8009F72C, L8009F74C
.word L8009F804, L8009F820, L8009F830, L8009F830
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A076C, L800A077C, L800A078C, L800A079C
.word L800A07AC, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A07BC, L800A07CC
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L8009F6CC, L8009F6E4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A07EC

glabel D_800F19EC
.word L8009F844, L8009F874, L8009F8B8, L8009FB24
.word L8009F904, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L8009FD14, L8009FD34, L8009FD34
.word L8009FD34, L8009FD34, L8009FD58, L8009FD90
.word L8009FD90, L8009FE9C, L8009FE9C, L8009FE9C
.word L8009FE9C, L8009FE9C, L8009FE9C, L8009FE9C
.word L8009FE9C, L800A08C4, L800A00CC, L800A08C4
.word L800A08C4, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A08C4, L8009FCD8, L8009FCD8
.word L8009FCD8, L800A08C4, L800A08C4, L800A08C4
.word L800A08C4, L800A00DC, L800A01BC, L800A01BC
.word L800A01BC, L800A01BC, L800A01BC, L800A01BC
.word L800A01BC, L800A01BC, L800A0184, L800A00FC
.word L800A00FC, L800A00FC, L800A00FC

glabel D_800F1AC8
.float 0.9

glabel D_800F1ACC
.float 0.9

glabel D_800F1AD0
.word L8009FF0C, L8009FF0C, L8009FF0C, L8009FF0C
.word L8009FF50, L8009FF50, L8009FF90, L8009FF90

glabel D_800F1AF0
.float 0.6

glabel D_800F1AF4
.float 0.8

glabel D_800F1AF8
.float 0.8

glabel D_800F1AFC
.float 0.55

glabel D_800F1B00
.word L800A0FE0, L800A103C, L800A0FE0, L800A0FE0
.word L800A103C

glabel D_800F1B14
.float 0.65

glabel D_800F1B18
.word L800A12F0, L800A1310, L800A12F0, L800A1310
.word L800A12F0

glabel D_800F1B2C
.word L800A139C, L800A13E0, L800A139C, L800A13E0
.word L800A139C

glabel D_800F1B40
.word L800A1470, L800A14A8, L800A1470, L800A1470
.word L800A14A8

glabel D_800F1B54
.float 0.6

glabel D_800F1B58
.float 0.65

glabel D_800F1B5C
.word L800A2054, L800A2054, L800A2054, L800A2054
.word L800A2C7C, L800A2C7C, L800A2C7C, L800A2C7C
.word L800A2C7C, L800A2118, L800A2118, L800A21E4
.word L800A2C7C, L800A2C7C, L800A2C7C, L800A2C7C
.word L800A2C7C, L800A2C7C, L800A2C7C, L800A23DC
.word L800A23DC, L800A223C, L800A223C, L800A223C
.word L800A223C, L800A2C7C, L800A2C7C, L800A2C7C
.word L800A2C7C, L800A23DC, L800A23DC, L800A22AC
.word L800A22AC, L800A22AC, L800A22AC, L800A26A8
.word L800A26A8, L800A29D0, L800A29D0, L800A29D0
.word L800A2C7C, L800A2C7C, L800A2C7C, L800A2C7C
.word L800A2314, L800A2314, L800A2C7C, L800A2C7C
.word L800A2C7C, L800A2384, L800A2384

glabel D_800F1C28
.float 0.9

glabel D_800F1C2C
.float 0.9

glabel D_800F1C30
.float 0.8

glabel D_800F1C34
.float 0.9

glabel D_800F1C38
.float 0.6

glabel D_800F1C3C
.float 0.8

glabel D_800F1C40
.float 0.6

glabel D_800F1C44
.float 0.6

glabel D_800F1C48
.word L800A2CA0, L800A2CA0, L800A2CBC, L800A2CBC
.word L800A2CBC, L800A2CBC, L800A2CBC, L800A2CBC
.word L800A2CBC, L800A2CBC, L800A2CA0, L800A2CA0
.word L800A2CBC, L800A2CBC, L800A2CBC, L800A2CBC
.word L800A2CA0, L800A2CA0

glabel D_800F1C90
.float 0.7

glabel D_800F1C94
.float 0.7

glabel D_800F1C98
.float 0.6

glabel D_800F1C9C
.float 0.6

glabel D_800F1CA0
.float 0.6

glabel D_800F1CA4
.float 0.7

glabel D_800F1CA8
.float 0.65

glabel D_800F1CAC
.float 0.8

glabel D_800F1CB0
.float 0.7

glabel D_800F1CB4
.float 0.7

glabel D_800F1CB8
.float 0.6

glabel D_800F1CBC
.float 0.6

glabel D_800F1CC0
.float 0.6

glabel D_800F1CC4
.float 0.7

glabel D_800F1CC8
.float 0.6

glabel D_800F1CCC
.float 0.6

glabel D_800F1CD0
.word L800A3FA4, L800A4478, L800A4478, L800A4478
.word L800A3FA4, L800A3FA4, L800A3FA4, L800A3FA4
.word L800A3FA4, L800A3FA4, L800A40C4, L800A40C4
.word L800A40C4, L800A40C4, L800A40C4, L800A40C4
.word L800A412C, L800A412C, L800A42A8, L800A4308
.word L800A4308, L800A4478, L800A4478, L800A4478
.word L800A43C4, L800A4424, L800A4478, L800A4478
.word L800A4478, L800A3FA4

glabel D_800F1D48
.float 0.7

glabel D_800F1D4C
.float 0.45

glabel D_800F1D50
.float 0.8

glabel D_800F1D54
.float 0.67

glabel D_800F1D58
.float 0.67

glabel D_800F1D5C
.word L800A449C, L800A449C, L800A449C, L800A449C
.word L800A449C, L800A449C, L800A4528, L800A4528
.word L800A4528, L800A4528, L800A4528, L800A4528
.word L800A44B4, L800A44B4, L800A4528, L800A44CC
.word L800A44CC, L800A4528, L800A4528, L800A4528
.word L800A4528, L800A4528, L800A4528, L800A4528
.word L800A4528, L800A44E4

glabel D_800F1DC4
.float 0.7

glabel D_800F1DC8
.float 0.65

glabel D_800F1DCC
.float 0.85

glabel D_800F1DD0
.float 0.85

glabel D_800F1DD4
.float 0.8

glabel D_800F1DD8
.float 0.8

glabel D_800F1DDC
.word L800A5940, L800A5F90, L800A5F90, L800A5F90
.word L800A5F90, L800A5F90, L800A5F90, L800A5F90
.word L800A5F90, L800A5F90, L800A5940, L800A5940
.word L800A5940, L800A5940, L800A5940, L800A5940
.word L800A5F90, L800A5F90, L800A5F90, L800A5F90
.word L800A5BA8, L800A5BA8, L800A5BA8, L800A5BA8
.word L800A5BA8, L800A5BA8, L800A5F90, L800A5F90
.word L800A5F90, L800A5C18, L800A5C18, L800A5DA0
.word L800A5F90, L800A5F90, L800A5E00, L800A5E00
.word L800A5F90, L800A5F90, L800A5F90, L800A5ED4
.word L800A5F34

glabel D_800F1E80
.float 0.8

glabel D_800F1E84
.float 0.8

glabel D_800F1E88
.float 0.8

glabel D_800F1E8C
.float 0.8

glabel D_800F1E90
.float 0.8

glabel D_800F1E94
.float 0.8

glabel D_800F1E98
.float 0.8

glabel D_800F1E9C
.word L800A5FB4, L800A5FB4, L800A5FB4, L800A5FB4
.word L800A5FB4, L800A5FB4, L800A6014, L800A6014
.word L800A6014, L800A6014, L800A6014, L800A6014
.word L800A6014, L800A6014, L800A6014, L800A6014
.word L800A6014, L800A6014, L800A6014, L800A5FCC
.word L800A5FCC, L800A6014, L800A6014, L800A6014
.word L800A5FE4, L800A5FE4

glabel D_800F1F04
.float 0.85

glabel D_800F1F08
.float 0.65

glabel D_800F1F0C
.float 0.85

glabel D_800F1F10
.float 0.8
.word 0x00000000

glabel D_800F1F18
.double 0.95

glabel D_800F1F20
.float 1.2

glabel D_800F1F24
.float 0.65

glabel D_800F1F28
.float 0.8

glabel D_800F1F2C
.float 0.45

glabel D_800F1F30
.float 1.300000

glabel D_800F1F34
.float 1.2

glabel D_800F1F38
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164, L800A8164
.word L800A8164, L800A8164, L800A8164

glabel D_800F2034
.word L800A8134, L800A8144, L800A8144, L800A8144
.word L800A8144, L800A8154

glabel D_800F204C
.word L800A7F20, L800A7F20, L800A7F20, L800A7F20
.word L800A816C, L800A7F74, L800A7F74, L800A7F74
.word L800A7F74, L800A816C, L800A7F10, L800A8014
.word L800A7F94, L800A7F94, L800A7F94, L800A7F94
.word L800A816C, L800A7F84, L800A7FA4, L800A7FA4
.word L800A7FB4, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A7FC4, L800A7FC4, L800A7FC4
.word L800A7FC4, L800A7FE4, L800A7FE4, L800A7FE4
.word L800A7FE4, L800A7FE4, L800A7FE4, L800A7FE4
.word L800A7FE4, L800A7FE4, L800A7FE4, L800A7FE4
.word L800A7FE4, L800A7FE4, L800A7FE4, L800A7FE4
.word L800A7FE4, L800A7FC4, L800A7FD4, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A7FF4
.word L800A8004, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A8024
.word L800A8034, L800A8044, L800A816C, L800A816C
.word L800A8054, L800A8064, L800A8074, L800A8074
.word L800A8074, L800A8074, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A8084, L800A8094
.word L800A816C, L800A80A4, L800A80C4, L800A8114
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A80B4, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A7D20, L800A816C, L800A7D10
.word L800A816C, L800A816C, L800A816C, L800A7D00
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A80D4
.word L800A816C, L800A80E4, L800A80F4, L800A8104
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A7B78
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A8124

glabel D_800F233C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A7D30, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A7D8C, L800A7E00
.word L800A7E00, L800A7E00, L800A7E00, L800A7DE8
.word L800A7D9C, L800A7D9C, L800A7E54, L800A7E54
.word L800A7E54, L800A7E54, L800A7E54, L800A7E54
.word L800A7E54, L800A7E54, L800A816C, L800A7E64
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A816C
.word L800A816C, L800A816C, L800A816C, L800A7E84
.word L800A7E84, L800A7E84, L800A7E84, L800A7E84
.word L800A7E84, L800A7E84, L800A7E84, L800A7F10
.word L800A7E74, L800A7E74, L800A7E74, L800A7E74

.word 0x00000000

glabel D_800F2420
.double 0.1

glabel D_800F2428
.double 0.1

glabel D_800F2430
.double 0.1

glabel D_800F2438
.double 0.3

glabel D_800F2440
.word L800A7DC8, L800A7DC8, L800A7DC8, L800A7DD8
.word L800A7DD8, L800A7DD8, L800A7DD8, L800A7DD8

glabel D_800F2460
.word L800A7E2C, L800A7E2C, L800A7E2C, L800A7E3C
.word L800A7E3C, L800A7E3C, L800A7E3C, L800A7E3C

glabel D_800F2480
.word L800A7EB4, L800A7EB4, L800A7EB4, L800A7EB4
.word L800A7EB4, L800A7EB4, L800A7EB4, L800A7EB4

glabel D_800F24A0
.float 0.6

glabel D_800F24A4
.float 0.65

glabel D_800F24A8
.float 0.7

glabel D_800F24AC
.float 0.8

glabel D_800F24B0
.float 0.7

glabel D_800F24B4
.float 0.8

glabel D_800F24B8
.float 0.7, 0.0

glabel D_800F24C0
.double 127.0

glabel D_800F24C8
.word L800A9748, L800A9748, L800A9770, L800A9750
.word L800A9750, L800A9758, L800A9760, L800A9768

glabel D_800F24E8
.word L800A9BC8, L800A9BD8, L800A9C28, L800A9C30
.word L800A9BEC

glabel D_800F24FC
.word L800A9C6C, L800A9CD0, L800A9D4C, L800A9D2C
.word L800A9CA4

glabel D_800F2510
.word L800A9E48, L800A9E48, L800A9DB0, L800A9DF0
.word L800A9E48

glabel D_800F2524
.word L800A9E88, L800A9E88, L800A9E88, L800A9E88
.word L800A9EA0, L800A9EA0, L800A9EBC, L800A9EBC

glabel D_800F2544
.word L800A9F7C, L800A9F7C, L800A9F7C, L800A9FD8
.word L800A9FD8

glabel D_800F2558
.word L800AA09C, L800AA09C, L800AA09C, L800AA09C
.word L800AA09C

glabel D_800F256C
.word L800AA198, L800AA198, L800AA198, L800AA198
.word L800AA198

glabel D_800F2580
.word L800AA328, L800AA328, L800AA328, L800AA328
.word L800AA334, L800AA334, L800AA334, L800AA334

glabel D_800F25A0
.word L800AA6F4, L800AA7CC, L800AA8A4, L800AA8F0
.word L800AA9C4, L800AA9C4

glabel D_800F25B8
.word L800AAB28, L800AAAD4, L800AAB80, L800AAACC
.word L800AAB5C

glabel D_800F25CC
.word L800AAC10, L800AABB4, L800AABCC, L800AABD8
.word L800AAC10

glabel D_800F25E0
.word L800AAC50, L800AACF0, L800AAD14, L800AACF0
.word L800AAD14

glabel D_800F25F4
.word L800AB090, L800AB044, L800AB088, L800AB090
.word L800AB04C

glabel D_800F2608
.word L800AB0BC, L800AB114, L800AB15C, L800AB13C
.word L800AB0E8

glabel D_800F261C
.word L800AB1B8, L800AB250, L800AB1E4, L800AB1F8
.word L800AB250

glabel D_800F2630
.double 0.05

glabel D_800F2638
.double 0.0085

glabel D_800F2640
.double 0.4

glabel D_800F2648
.double 0.05

glabel D_800F2650
.double 0.0085

glabel D_800F2658
.double 0.4

glabel D_800F2660
.double 0.07

glabel D_800F2668
.double 0.6

glabel D_800F2670
.double 0.004

glabel D_800F2678
.double 0.8

glabel D_800F2680
.double 0.002

glabel D_800F2688
.word L800AC488, L800AC4EC, L800AC580, L800AC5D0
.word L800AC5D0, L800AC5D0, L800AC5D0, L800AC738
.word L800AC78C, L800AC7CC, L800AC878, L800AC8A0
.word L800AC8E0, L800AC968

glabel D_800F26C0
.double 4.2

glabel D_800F26C8
.double 4.2

glabel D_800F26D0
.double 4.2

glabel D_800F26D8
.word L800ACC84, L800ACCF4, L800ACD20, L800ACF2C
.word L800ACF2C, L800ACF2C, L800ACF2C, L800ACF2C
.word L800ACF2C, L800ACF2C, L800ACD68, L800ACD68
.word L800ACD68, L800ACD68

glabel D_800F2710
.double 4.2

glabel D_800F2718
.double 4.2

glabel D_800F2720
.double 4.2

glabel D_800F2728
.word L800ACF94, L800ACFB8, L800AD01C, L800AD128
.word L800AD190

glabel D_800F273C
.word L800AD1D8, L800AD208, L800AD234, L800AD254
.word L800AD298

glabel D_800F2750
.word L800AD31C, L800AD380, L800ADF34, L800ADF34
.word L800ADF34, L800AD438, L800AD438, L800AD438
.word L800AD438, L800AD438, L800AD438

glabel D_800F277C
.word L800AD8E8, L800AD8E8, L800AD8E8, L800AD8E8
.word L800AD8E8, L800AD8E8, L800AD954, L800AD954

glabel D_800F279C
.word L800ADB5C, L800ADBA4, L800ADBA4, L800ADF34
.word L800ADF34, L800ADF34, L800ADD64, L800AD8E8

glabel D_800F27BC
.word L800ADF34, L800ADF34, L800ADF34, L800ADE14
.word L800ADF30

glabel D_800F27D0
.double 4.2

glabel D_800F27D8
.double 4.2

glabel D_800F27E0
.double 4.2

glabel D_800F27E8
.word L800AD728, L800AD728, L800AD718, L800AD764
.word L800AD738, L800AD758, L800AD758, L800AD758
.word L800AD758, L800AD758, L800AD758, L800AD758
.word L800AD758, L800AD748, L800AD738

.word 0x00000000

glabel D_800F2828
.double 4.2

glabel D_800F2830
.double 4.2

glabel D_800F2838
.double 4.2

glabel D_800F2840
.double 4.2

glabel D_800F2848
.double 4.2

glabel D_800F2850
.double 4.2

glabel D_800F2858
.double 4.2

glabel D_800F2860
.double 4.2

glabel D_800F2868
.word L800ADE80, L800ADEA0, L800ADEB0, L800ADEC0
.word L800ADED0

glabel D_800F287C
.word L800ADF84, L800AE208, L800AE208, L800AE208
.word L800AE208, L800AE208, L800AE208, L800AE208
.word L800AE208, L800AE208, L800AE208, L800ADFA0
.word L800ADFA0, L800ADFA0, L800ADFA0, L800ADFA0
.word L800AE208, L800AE208, L800AE208, L800AE208
.word L800AE208, L800ADFA0, L800ADFA0, L800ADFA0
.word L800ADFA0, L800AE208, L800AE208, L800AE208
.word L800AE208, L800AE208, L800AE208, L800ADFA0
.word L800ADFA0, L800AE208, L800AE208, L800AE208
.word L800AE208, L800AE208, L800AE208, L800AE208
.word L800AE208, L800ADFA0, L800ADFA0, L800ADFA0
.word L800ADFA0

glabel D_800F2930
.double 4.2

glabel D_800F2938
.double 4.2

glabel D_800F2940
.double 4.2

glabel D_800F2948
.word L800AE260, L800AE2C8, L800AEC40, L800AEC40
.word L800AEC40, L800AEC40, L800AEC40, L800AEC40
.word L800AEC40, L800AEC40, L800AEC40, L800AE2E8
.word L800AE2E8, L800AE2E8, L800AE2E8, L800AE2E8
.word L800AE2E8, L800AEC40, L800AEC40, L800AEC40
.word L800AEC40, L800AE71C, L800AE71C, L800AE71C
.word L800AE71C, L800AE71C, L800AE71C, L800AEC40
.word L800AEC40, L800AEC40, L800AE788, L800AE788
.word L800AE98C, L800AEC40, L800AEC40, L800AE9D4
.word L800AE9D4, L800AEC40, L800AEC40, L800AEC40
.word L800AEB94, L800AE71C

glabel D_800F29F0
.double 4.2

glabel D_800F29F8
.double 4.2

glabel D_800F2A00
.double 4.2

glabel D_800F2A08
.word L800AE560, L800AE560, L800AE550, L800AE59C
.word L800AE570, L800AE590, L800AE590, L800AE590
.word L800AE590, L800AE590, L800AE590, L800AE590
.word L800AE590, L800AE580, L800AE570

.word 0x00000000

glabel D_800F2A48
.double 4.2

glabel D_800F2A50
.double 4.2

glabel D_800F2A58
.double 4.2

glabel D_800F2A60
.double 4.2

glabel D_800F2A68
.double 4.2

glabel D_800F2A70
.double 4.2

glabel D_800F2A78
.double 4.2

glabel D_800F2A80
.double 4.2

glabel D_800F2A88
.word L800AEC88, L800AECE4, L800AED10, L800AED50
.word L800AED34

glabel D_800F2A9C
.word L800AF038, L800AF0BC, L800AF0BC, L800AF0BC
.word L800AF0BC, L800AF0FC, L800AF178, L800AF198

glabel D_800F2ABC
.word L800AF2C8, L800AF2F4, L800AF34C, L800AF408
.word L800AF46C

glabel D_800F2AD0
.word L800AF530, L800AF59C, L800AF62C, L800AF6D4
.word L800AF6F0

.word 0x00000000

glabel D_800F2AE8
.double 0.05

glabel D_800F2AF0
.double 0.0085

glabel D_800F2AF8
.double 0.4

glabel D_800F2B00
.word L800AF794, L800AF800, L800AF890, L800AF938
.word L800AF954

.word 0x00000000

glabel D_800F2B18
.double 0.05

glabel D_800F2B20
.double 0.0085

glabel D_800F2B28
.double 0.4

glabel D_800F2B30
.float -0.07
.word 0x00000000

glabel D_800F2B38
.double 0.001

glabel D_800F2B40
.float 0.001

glabel D_800F2B44
.float 0.18
.word 0x00000000, 0x00000000

glabel D_800F2B50
.word 0x00010203
.word 0x03000000

glabel D_800F2B58
.byte 0x01, 0x02, 0x02, 0x03, 0x04, 0x00, 0x00

glabel D_800F2B5F
.byte 0x00

glabel D_800F2B60
.byte 0x01

glabel D_800F2B61
.byte 0x02, 0x01, 0x01, 0x02, 0x01, 0x00, 0x02, 0x02, 0x00, 0x02, 0x00, 0x00

glabel D_800F2B6D
.byte 0x02, 0x00, 0x00

glabel D_800F2B70
.byte 0x03, 0x01, 0x00, 0x03, 0x03, 0x00, 0x03, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
.byte 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00
.byte 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

glabel D_800F2BAB
.byte 0x00, 0x00, 0x01, 0x06, 0x03
.byte 0x02, 0x04, 0x05, 0x07

glabel gCupTrackOrder
.hword 0x0008, 0x0009, 0x0006, 0x000b # mushroom cup: LR, MMF, KTB, KD
.hword 0x000a, 0x0005, 0x0001, 0x0000 # flower cup:   TT, FS, CM, MR
.hword 0x000e, 0x000c, 0x0007, 0x0002 # star cup:     WS, SL, RRy, BC
.hword 0x0012, 0x0004, 0x0003, 0x000d # special cup:  DKJP, YV, BB, RRd
.hword 0x0013, 0x000f, 0x0011, 0x0010 # battle mode:  BD, BF, DD, Sky
.byte 0x01, 0x00
.byte 0x00

glabel D_800F2BDF
.byte 0x00, 0x00, 0x01, 0x03, 0x04

glabel D_800F2BE4
.word 0x00010203

glabel D_800F2BE8
.asciiz "ghost_kart=%d,"
.balign 4

glabel D_800F2BF8
.asciiz "pak1_ghost_kart=%d,"
.balign 4

glabel D_800F2C0C
.asciiz "pak2_ghost_kart=%d\n"
.balign 4

glabel D_800F2C20
.word L800B04B8, L800B04D0, L800B04E8, L800B0500
.word L800B0510, L800B043C, L800B0454, L800B046C
.word L800B0484, L800B049C, L800B04B8, L800B04D0
.word L800B04E8, L800B0500

glabel D_800F2C58
.word L800B05E0, L800B05E0
.word L800B05E0, L800B05E0, L800B13A0, L800B13A0
.word L800B13A0, L800B13A0, L800B13A0, L800B0AF4
.word L800B0AF4, L800B0C88, L800B13A0, L800B13A0
.word L800B13A0, L800B13A0, L800B13A0, L800B13A0
.word L800B13A0, L800B0CAC, L800B0CAC, L800B1020
.word L800B1020, L800B1020, L800B1020, L800B13A0
.word L800B13A0, L800B13A0, L800B13A0, L800B0E5C
.word L800B0E5C, L800B1020, L800B1020, L800B13A0
.word L800B1020, L800B1044, L800B1044, L800B11C8
.word L800B11FC, L800B1020, L800B13A0, L800B13A0
.word L800B13A0, L800B13A0, L800B1020, L800B1020
.word L800B13A0, L800B13A0, L800B13A0, L800B1318
.word L800B134C

.word 0x00000000

glabel D_800F2D28
.double 4.2

glabel D_800F2D30
.double 4.2

glabel D_800F2D38 # jump table
.word L800B0948, L800B096C, L800B0980, L800B09C0
.word L800B09C0, L800B09A0

glabel D_800F2D50
.double 4.2

glabel D_800F2D58
.double 4.2

glabel D_800F2D60
.double 4.2

glabel D_800F2D68
.double 4.2

glabel D_800F2D70
.double 4.2

glabel D_800F2D78
.double 4.2

glabel D_800F2D80
.double 4.2

glabel D_800F2D88
.double 4.2

glabel D_800F2D90
.double 4.2

glabel D_800F2D98
.double 4.2

glabel D_800F2DA0
.double 4.2

glabel D_800F2DA8
.double 4.2

glabel D_800F2DB0
.double 4.2

glabel D_800F2DB8
.word L800B1CE8, L800B1D34, L800B1F78, L800B1F2C
.word L800B1D84, L800B1FE8, L800B1FF4, L800B20D4
.word L800B20D4, L800B20D4

glabel D_800F2DE0
.word L800B2178, L800B21CC
.word L800B2240, L800B231C, L800B2414, L800B24DC
.word L800B2604

glabel D_800F2DFC
.word L800B2A6C, L800B3468, L800B3468, L800B2AA4
.word L800B2D30, L800B2F70, L800B32B4
.word L800B32B4, L800B2F70

glabel D_800F2E20
.word L800B4070, L800B4100
.word L800B4230, L800B43B0, L800B4494, L800B4014
.word L800B4024, L800B4030, L800B4040, L800B4054
.word L800B4070, L800B4100, L800B4230, L800B43B0

.balign 16

glabel D_800F2E60
.byte 0xc0, 0x27, 0x09, 0x00

glabel D_800F2E64 # u8* game_name param to osPfsFindFile
.byte 0x26, 0x1a, 0x2b, 0x22, 0x28, 0x24, 0x1a, 0x2b, 0x2d, 0x16, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800F2E74 # u8* ext_name param to osPfsFindFile
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800F2E80
.float 262159.0

glabel D_800F2E84
.word L800BA210, L800BA1E4, L800BA14C, L800BA094
.word L800BA050

glabel D_800F2E98
.float 0.001171875

glabel D_800F2E9C
.float 2880000.0

glabel D_800F2EA0
.float 20.0304203

glabel D_800F2EA4
.float 16.546

glabel D_800F2EA8
.float 16.713
.word 0x00000000

glabel D_800F2EB0
.float 0.707

glabel D_800F2EB4
.float 4095.999

glabel D_800F2EB8
.float 1.9999599

glabel D_800F2EBC
.float 3.9999199

glabel D_800F2EC0
.float 1.9999599

glabel D_800F2EC4
.float 1.0465

glabel D_800F2EC8
.float 0.52325

glabel D_800F2ECC
.float 0.26263

glabel D_800F2ED0
.float 0.13081

.word 0x00000000, 0x00000000, 0x00000000

glabel jpt_800F2EE0
.word L800BE60C, L800BE618, L800BE62C, L800BE638
.word L800BE794, L800BE864, L800BE7C4, L800BE7C4
.word L800BE844

glabel D_800F2F04
.float 32767.0

glabel D_800F2F08
.float 0.00001
.word 0x00000000

glabel D_800F2F10
.word L800BF3E8, L800BF600, L800BF600, L800BF380
.word L800BF348, L800BF600, L800BF600, L800BF3C8
.word L800BF308, L800BF600, L800BF600, L800BF2D0

glabel D_800F2F40
.word L800BF408, L800BF450, L800BF4B0, L800BF478
.word L800BF478, L800BF4C4, L800BF534, L800BF5BC
.word L800BF450, L800BF408, L800BF5C4, L800BF5F0

glabel D_800F2F70
.float 16129.0

glabel D_800F2F74
.float 16129.0

glabel D_800F2F78
.float 16129.0

glabel D_800F2F7C
.word L800BFA20, L800BFA28, L800BFA20, L800BFA28
.word L800BFA20





















glabel D_800F2F90
.word L800C0124, L800C0078, L800C0140, L800C0150
.word L800C0094, L800C035C, L800C03B4, L800C03EC
.word L800C03EC, L800C0438, L800C0448, L800C03EC
.word L800BFE40, L800BFE40, L800BFE40, L800C0468
.word L800C048C, L800C049C, L800C01E8, L800C034C
.word L800BFE40, L800BFE40, L800C02B4, L800C0298
.word L800C0288, L800C026C, L800C0254, L800C0238
.word L800C021C, L800C01B4, L800C0160, L800C0184
.word L800C0304, L800C02D0, L800C0338, L800C04BC
.word L800C04AC, L800C0518, L800C0528, L800C0590
.word L800C0630, L800BFEC4, L800C00D0, L800C0608
.word L800BFE40, L800BFE40, L800C0640, L800C0068
.word L800C0040, L800BFFF8, L800BFFF8, L800BFFF8
.word L800BFFA0, L800BFF90, L800BFF48, L800BFF10
.word L800BFFA0, L800BFFA0, L800BFFA0, L800BFED4
.word L800BFEB4, L800C0880, L800BFE7C

glabel D_800F308C
.word L800C0684, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C07E4, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C0814, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C0830, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C0858, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C06EC, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C0708, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C06BC, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C06CC, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C0714, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C0760, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800BFE40, L800BFE40, L800BFE40, L800BFE40
.word L800C077C

glabel D_800F3350
.word L800C0FF4, L800C0FE4, L800C0AE8, L800C0AE8
.word L800C0FD4, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0FC4, L800C0F98, L800C0F98, L800C0F88
.word L800C0F78, L800C0F4C, L800C0F30, L800C0F14
.word L800C0AE8, L800C0EE8, L800C0DD4, L800C0E50
.word L800C0D50, L800C0D50, L800C0D30, L800C0D2C
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0D1C, L800C0CF4, L800C0CAC, L800C0CAC
.word L800C0CAC, L800C0C54, L800C0AE8, L800C0C0C
.word L800C0BD4, L800C0C54, L800C0C54, L800C0C54
.word L800C0B90, L800C0AE8, L800C0AE8, L800C0AE8

glabel D_800F3430
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C1084, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C1090, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C1098, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C10A0, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8, L800C0AE8, L800C0AE8, L800C0AE8
.word L800C0AE8

.word 0x00000000, 0x00000000, 0x00000000

glabel D_800F35C0
.float 3.333333333

glabel D_800F35C4
.word L800C1A34, L800C1A34, L800C1A34, L800C1A34
.word L800C1AEC, L800C1A34

glabel D_800F35DC
.float 0.1

glabel D_800F35E0
.float 100000.0

glabel D_800F35E4
.float 100000.0

glabel D_800F35E8
.float 0.85

glabel D_800F35EC
.word L800C2A80, L800C2AB8, L800C2AD8, L800C2CDC
.word L800C2E40, L800C2F04, L800C3008, L800C3118
.word L800C3154, L800C31E4, L800C3218, L800C32B8
.word L800C32EC, L800C3430, L800C3390, L800C33E0

glabel D_800F362C
.word L800C3DEC, L800C3E10, L800C3E30, L800C3E70
.word L800C3E98, L800C3EBC, L800C3F04

glabel D_800F3648
.float 100000.0

glabel D_800F364C
.word L800C423C, L800C4268, L800C42A4, L800C42C8
.word L800C42FC, L800C4330

glabel D_800F3664
.float 100000.0

glabel D_800F3668
.float 100000.0

glabel D_800F366C
.float 4000000.0

glabel D_800F3670
.float 10000000000.0

glabel D_800F3674
.float 0.6

glabel D_800F3678
.float 0.4

glabel D_800F367C
.float 0.005000

glabel D_800F3680
.float 0.01

glabel D_800F3684
.float 12000.0

glabel D_800F3688
.float 0.03

glabel D_800F368C
.float 0.03

glabel D_800F3690
.float 0.4

glabel D_800F3694
.word L800C6544, L800C6618, L800C64E4, L800C65B8
.word L800C65B8, L800C65B8, L800C65B8, L800C65B8
.word L800C65B8, L800C65B8, L800C65B8, L800C65B8
.word L800C6544, L800C6544, L800C6618, L800C6618
.word L800C6544, L800C6618, L800C6618, L800C6618
.word L800C6618, L800C65B8, L800C65B8, L800C65B8
.word L800C6618, L800C6618, L800C6618, L800C6618
.word L800C65B8, L800C65B8, L800C65B8

glabel D_800F3710
.float 0.2

glabel D_800F3714
.float 3500.0

glabel D_800F3718
.float 3000.0

glabel D_800F371C
.float 0.4

glabel D_800F3720
.float 0.2

glabel D_800F3724
.float 0.06

glabel D_800F3728
.float 0.56

glabel D_800F372C
.float 0.9

glabel D_800F3730
.float 0.6

glabel D_800F3734
.float 13000.0

glabel D_800F3738
.float 0.95

glabel D_800F373C
.word L800C69C8, L800C6A0C, L800C6910, L800C6C74
.word L800C6CB8, L800C6CFC, L800C6D40, L800C6D84
.word L800C6DC8, L800C6E0C, L800C6E50, L800C6E94
.word L800C6FA4, L800C6E0C, L800C6A98, L800C6ADC
.word L800C6A50, L800C6958, L800C6990, L800C6B20
.word L800C7070, L800C6FA4, L800C6FE8, L800C702C
.word L800C6B64, L800C6BA8, L800C6BEC, L800C6C30
.word L800C6ED8, L800C6F1C, L800C6F60

glabel D_800F37B8
.float 3500.0

glabel D_800F37BC
.word L800C718C, L800C7198, L800C71B0, L800C71BC
.word L800C71A4, L800C71F4, L800C71F4, L800C71C8
.word L800C71F4, L800C71F4, L800C71F4, L800C71F4
.word L800C71EC, L800C71F4, L800C71D4, L800C71E0

glabel D_800F37FC
.word L800C7238, L800C7244, L800C725C, L800C7268
.word L800C7250, L800C7294, L800C7294, L800C7274
.word L800C7294, L800C7294, L800C7294, L800C7294
.word L800C7290, L800C7294, L800C7280, L800C7288

glabel D_800F383C
.word L800C72F8, L800C72B8, L800C742C, L800C73B8
.word L800C7378, L800C742C, L800C7338, L800C7428
.word L800C742C, L800C7418, L800C7420

glabel D_800F3868
.word L800C7494, L800C7454, L800C75C8, L800C7554
.word L800C7514, L800C75C8, L800C74D4, L800C75C4
.word L800C75C8, L800C75B4, L800C75BC

glabel D_800F3894
.float 0.7

glabel D_800F3898
.float 0.1

glabel D_800F389C
.float 0.03

glabel D_800F38A0
.float 0.16

glabel D_800F38A4
.float 0.15

glabel D_800F38A8
.float 0.03

glabel D_800F38AC
.float 0.012000

glabel D_800F38B0
.float 0.85

glabel D_800F38B4
.float 0.85

glabel D_800F38B8
.word L800C9560, L800C9560, L800C95BC, L800C9618
.word L800C9674, L800C96D0, L800C95BC, L800C96D0

glabel D_800F38D8
.float 0.35

glabel D_800F38DC
.float 2.800000

glabel D_800F38E0
.float 3844.0

glabel D_800F38E4
.float -0.8

glabel D_800F38E8
.float 1568.979614

glabel D_800F38EC
.float 1067.777832

glabel D_800F38F0
.float 2766.064941

glabel D_800F38F4
.float 0.6

glabel D_800F38F8
.float 3.200000

glabel D_800F38FC
.float 3844.0

glabel D_800F3900
.float -1.700000

glabel D_800F3904
.float 1478.461548

glabel D_800F3908
.float 784.489807

glabel D_800F390C
.float 12813.334961

glabel D_800F3910
.float 0.6

glabel D_800F3914
.float 2.800000

glabel D_800F3918
.float 3844.0

glabel D_800F391C
.float -0.6

glabel D_800F3920
.float 1747.272827

glabel D_800F3924
.float 1130.588257

glabel D_800F3928
.float 3844.000977

glabel D_800F392C
.float 0.2

glabel D_800F3930
.float 3844.0

glabel D_800F3934
.float -0.4

glabel D_800F3938
.float 2135.555664

glabel D_800F393C
.float 1601.666626

glabel D_800F3940
.float 3203.333008

glabel D_800F3944
.float 0.4

glabel D_800F3948
.float 2.400000

glabel D_800F394C
.float 3844.0

glabel D_800F3950
.float -0.8

glabel D_800F3954
.float 1922.0

glabel D_800F3958
.float 1201.250000

glabel D_800F395C
.float 4805.0

glabel D_800F3960
.word L800C9B3C, L800C9B3C, L800C9B68, L800C9B94
.word L800C9BC0, L800C9BEC, L800C9B68, L800C9BEC

glabel D_800F3980
.float 0.35

glabel D_800F3984
.float 1568.979614

glabel D_800F3988
.float 0.6

glabel D_800F398C
.float 1478.461548

glabel D_800F3990
.float 0.6

glabel D_800F3994
.float 1747.272827

glabel D_800F3998
.float 0.2

glabel D_800F399C
.float 2135.555664

glabel D_800F39A0
.float 0.4

glabel D_800F39A4
.float 1922.0

glabel D_800F39A8
.float 0.55

glabel D_800F39AC
.float 0.45

glabel D_800F39B0
.float 0.7

glabel D_800F39B4
.float 0.1

.balign 16

glabel D_800F39C0
.word L800CBE60, L800CBE78, L800CBE90, L800CBEA8
.word L800CBEC0, L800CBECC, L800CBF08, L800CBEEC


# guRotateF rodata
#glabel D_800F39E0
#.float 0.017453292
#.balign 16
