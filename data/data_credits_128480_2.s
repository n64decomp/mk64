.include "macros.inc"

.data

# English credits
.asciiz "executive producer"
.balign 4
.asciiz "hiroshi yamauchi"
.balign 4
.asciiz "producer"
.balign 4
.asciiz "shigeru miyamoto"
.balign 4
.asciiz "director"
.balign 4
.asciiz "hideki konno"
.balign 4
.asciiz "assistant director"
.balign 4
.asciiz "yasuyuki oyagi"
.balign 4
.asciiz "programmer"
.balign 4
.asciiz "masato kimura"
.balign 4
.asciiz "kenji yamamoto"
.balign 4
.asciiz "yasuhiro kawaguchi"
.balign 4
.asciiz "yuzuru ogawa"
.balign 4
.asciiz "masahiro kawano"
.balign 4
.asciiz "hirohito yoshimoto"
.balign 4
.asciiz "demo sequence programmer"
.balign 4
.asciiz ""
.balign 4
.asciiz "hajime yajima"
.balign 4
.asciiz "takumi kawagoe"
.balign 4
.asciiz "visual director"
.balign 4
.asciiz "tadashi sugiyama"
.balign 4
.asciiz "c.g.character designer"
.balign 4
.asciiz ""
.balign 4
.asciiz "tomoaki kuroume"
.balign 4
.asciiz "hiroaki takenaka"
.balign 4
.asciiz "tokihiko toyoda"
.balign 4
.asciiz "shigefumi hino"
.balign 4
.asciiz "masanao arimoto"
.balign 4
.asciiz "hisashi nogami"
.balign 4
.asciiz "c.g.map designer"
.balign 4
.asciiz "makoto miyanaga"
.balign 4
.asciiz "naoki mori"
.balign 4
.asciiz "hiroyasu kuwabara"
.balign 4
.asciiz "music composer"
.balign 4
.asciiz "kenta nagata"
.balign 4
.asciiz "sound programmer"
.balign 4
.asciiz "taro bando"
.balign 4
.asciiz "yoji inagaki"
.balign 4
.asciiz "sampling voice"
.balign 4
.asciiz "charles martinet"
.balign 4
.asciiz "leslie swan"
.balign 4
.asciiz "isaac marshall"
.balign 4
.asciiz ""
.balign 4
.asciiz ""
.balign 4
.asciiz ""
.balign 4
.asciiz "technical support"
.balign 4
.asciiz "takao sawano"
.balign 4
.asciiz "tsuyoshi takahashi"
.balign 4
.asciiz "hirohito yada"
.balign 4
.asciiz "progress management"
.balign 4
.asciiz "kimiyoshi fukui"
.balign 4
.asciiz "keizo kato"
.balign 4
.asciiz "special thanks"
.balign 4
.asciiz "yasuhiro sakai"
.balign 4
.asciiz "yoshitaka nishikawa"
.balign 4
.asciiz "hideki fujii"
.balign 4
.asciiz "yusuke nakano"
.balign 4
.asciiz "wataru yamaguchi"
.balign 4
.asciiz "phil sandhop"
.balign 4
.asciiz "super mario club"
.balign 4
.asciiz "Donkey Kong 3-D Model Provided Courtesy of Rare U.K."
.balign 4
.asciiz "the end"
.balign 4
.asciiz "mariokart64 staff"

/*
The encoding on these strings is very odd.
As best as I can tell they are encoded as specified by either:
the euc-jis-2004 standard
or
the JIS X 0213 standard
I can't tell which, they may be the same thing, or one may have
superceded the other. I can't quite tell

See http://x0213.org/codetable/euc-jis-2004-std.txt for a table
that maps euc-jis-2004 codes to equivalent Unicode

If the MSB of a character is 0 its treated like plain Unicode.
So 0x20 is still a space, 0x4D is still "m", like in Unicode/ASCII

If the MSB of a character is 1 its a control character, which
indicates that the next byte has a special interpretation.
For our purposes its always(?) a katakana glyph.

See char_to_glyph_index for reference, it looks for those
control characters if the byte isn't in the usual ASCII range
*/
# Japanse credits
.word 0xA5A8A5B0, 0xA5BCA5AF, 0xA5C6A5A3, 0xA5D620A5
.word 0xD7A5EDA5, 0xC7A5E5A1, 0xBCA5B5A1, 0xBC000000
.word 0xA4E4A4DE, 0xA4A6A4C1, 0x20A4D2A4, 0xEDA4B700
.word 0xA5D7A5ED, 0xA5C7A5E5, 0xA1BCA5B5, 0xA1BC0000
.word 0xA4DFA4E4, 0xA4E2A4C8, 0x20A4B7A4, 0xB2A4EB00
.word 0xA5C7A5A3, 0xA5ECA5AF, 0xA5BFA1BC, 0x00000000
.word 0xA4B3A4F3, 0xA4CE20A4, 0xD2A4C7A4, 0xAD000000
.word 0xA5A2A5B7, 0xA5B9A5BF, 0xA5F3A5C8, 0x20A5C7A5
.word 0xA3A5ECA5, 0xAFA5BFA1, 0xBC000000, 0xA4AAA4AA
.word 0xA4E4A4AE, 0x20A4E4A4, 0xB9A4E6A4, 0xAD000000
.word 0xA5D7A5ED, 0xA5B0A5E9, 0xA5DEA1BC, 0x00000000
.word 0xA4ADA4E0, 0xA4E920A4, 0xDEA4B5A4, 0xC8000000
.word 0xA4E4A4DE, 0xA4E2A4C8, 0x20A4B1A4, 0xF3A4B800
.word 0xA4ABA4EF, 0xA4B0A4C1, 0x20A4E4A4, 0xB9A4D2A4
.word 0xED000000, 0xA4AAA4AC, 0xA4EF20A4, 0xE6A4BAA4
.word 0xEB000000, 0xA4ABA4EF, 0xA4CE20A4, 0xDEA4B5A4
.word 0xD2A4ED00, 0xA4E8A4B7, 0xA4E2A4C8, 0x20A4D2A4
.word 0xEDA4D2A4, 0xC8000000, 0xA5C7A5E2, 0x20A5B7A1
.word 0xBCA5B1A5, 0xF3A5B920, 0xA5D7A5ED, 0xA5B0A5E9
.word 0xA5DEA1BC, 0x00000000, 0x00000000, 0xA4E4A4B8
.word 0xA4DE20A4, 0xCFA4B8A4, 0xE1000000, 0xA4ABA4EF
.word 0xA4B4A4A8, 0x20A4BFA4, 0xAFA4DF00, 0xA5D3A5B8
.word 0xA5E5A5A2, 0xA5EB20A5, 0xC7A5A3A5, 0xECA5AFA5
.word 0xBFA1BC00, 0xA4B9A4AE, 0xA4E4A4DE, 0x20A4BFA4
.word 0xC0A4B700, 0x636720A5, 0xADA5E3A5, 0xE9A5AFA5
.word 0xBFA1BC20, 0xA5C7A5B6, 0xA5A4A5CA, 0xA1BC0000
.word 0x00000000, 0xA4AFA4ED, 0xA4A6A4E1, 0x20A4C8A4
.word 0xE2A4A2A4, 0xAD000000, 0xA4BFA4B1, 0xA4CAA4AB
.word 0x20A4D2A4, 0xEDA4A2A4, 0xAD000000, 0xA4C8A4E8
.word 0xA4C020A4, 0xC8A4ADA4, 0xD2A4B300, 0xA4D2A4CE
.word 0x20A4B7A4, 0xB2A4D5A4, 0xDF000000, 0xA4A2A4EA
.word 0xA4E2A4C8, 0x20A4DEA4, 0xB5A4CAA4, 0xAA000000
.word 0xA4CEA4AC, 0xA4DF20A4, 0xD2A4B5A4, 0xB7000000
.word 0x636720A5, 0xDEA5C3A5, 0xD720A5C7, 0xA5B6A5A4
.word 0xA5CAA1BC, 0x00000000, 0xA4DFA4E4, 0xA4CAA4AC
.word 0x20A4DEA4, 0xB3A4C800, 0xA4E2A4EA, 0x20A4CAA4
.word 0xAAA4AD00, 0xA4AFA4EF, 0xA4D0A4E9, 0x20A4D2A4
.word 0xEDA4E4A4, 0xB9000000, 0xA5DFA5E5, 0xA1BCA5B8
.word 0xA5C3A5AF, 0x20A5B3A5, 0xF3A5DDA1, 0xBCA5B6A1
.word 0xBC000000, 0xA4CAA4AC, 0xA4BF20A4, 0xB1A4F3A4
.word 0xBF000000, 0xA5B5A5A6, 0xA5F3A5C9, 0x20A5D7A5
.word 0xEDA5B0A5, 0xE9A5DEA1, 0xBC000000, 0xA4D0A4F3
.word 0xA4C9A4A6, 0x20A4BFA4, 0xEDA4A600, 0xA4A4A4CA
.word 0xA4ACA4AD, 0x20A4E8A4, 0xA6A4B800, 0xA5B5A5F3
.word 0xA5D7A5EA, 0xA5F3A5F3, 0xA5B020A5, 0xDCA5A4A5
.word 0xB9000000, 0xA4B3A4A6, 0xA4C5A4AD, 0x20A4A2A4
.word 0xB5A4B300, 0xA4DEA4EB, 0xA4CE20A4, 0xC8A4E2A4
.word 0xB3000000, 0xA4C1A4E3, 0xA1BCA4EB, 0xA4BA20A4
.word 0xDEA4EBA4, 0xC6A4A3A4, 0xCD000000, 0xA4B8A4E5
.word 0xA4EAA4A2, 0xA4F320A4, 0xD0A4EBA4, 0xC0A4B3A4
.word 0xD5000000, 0xA4C8A4DE, 0xA4B920A4, 0xB9A4D4A4
.word 0xF3A4C9A4, 0xE9A1BC00, 0xA4B8A4E7, 0xA4F320A4
.word 0xD2A4E5A1, 0xBCA4E9A4, 0xC8A4F300, 0xA5C6A5AF
.word 0xA5CBA5AB, 0xA5EB20A5, 0xB5A5DDA1, 0xBCA5C800
.word 0xA4B5A4EF, 0xA4CE20A4, 0xBFA4ABA4, 0xAA000000
.word 0xA4BFA4AB, 0xA4CFA4B7, 0x20A4C4A4, 0xE8A4B700
.word 0xA4E4A4C0, 0x20A4D2A4, 0xEDA4D2A4, 0xC8000000
.word 0xA5D7A5ED, 0xA5B0A5EC, 0xA5B920A5, 0xDEA5CDA1
.word 0xBCA5B8A5, 0xE1A5F3A5, 0xC8000000, 0xA4D5A4AF
.word 0xA4A420A4, 0xADA4DFA4, 0xE8A4B700, 0xA4ABA4C8
.word 0xA4A620A4, 0xB1A4A4A4, 0xBEA4A600, 0xA5B9A5DA
.word 0xA5B7A5E3, 0xA5EB20A5, 0xB5A5F3A5, 0xAFA5B900
.word 0xA4B5A4AB, 0xA4A420A4, 0xE4A4B9A4, 0xD2A4ED00
.word 0xA4CBA4B7, 0xA4ABA4EF, 0x20A4E8A4, 0xB7A4BFA4
.word 0xAB000000, 0xA4D5A4B8, 0xA4A420A4, 0xD2A4C7A4
.word 0xAD000000, 0xA4CAA4AB, 0xA4CE20A4, 0xE6A4A6A4
.word 0xB9A4B100, 0xA4E4A4DE, 0xA4B0A4C1, 0x20A4EFA4
.word 0xBFA4EB00, 0xA4CBA4F3, 0xA4C6A4F3, 0xA4C9A4A6
.word 0x20A4B8A4, 0xE7A1BCA4, 0xABA4A400, 0xA4B9A1BC
.word 0xA4D1A1BC, 0x20A4DEA4, 0xEAA4AA20, 0xA4AFA4E9
.word 0xA4D60000, 0xA4ECA4A2, 0x20A4EAA4, 0xDFA4C6A4
.word 0xC3A4C900, 0x2020A4AA, 0xA4B7A4DE, 0xA4A40000
.word 0x20A4DEA4, 0xEAA4AAA4, 0xABA1BCA4, 0xC8363420
.word 0xA4B9A4BF, 0xA4C3A4D5

.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_80287470
.word 0x3F2AAAAB

glabel D_80287474
.word 0x3E2AAAAB

glabel D_80287478
.word 0x3F666666

glabel D_8028747C
.word 0xC52EC000
glabel jpt_80287480
.word L80284B1C, L80284B4C, L80284B7C
.word L80284BAC
.word L80284BE8
.word 0x00000000
.word 0x00000000, 0x00000000
