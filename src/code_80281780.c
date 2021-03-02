#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "variables.h"

#include "code_80281780.h"

extern s32 gPrevLoadedAddress;

// unk4 is buttonDown?
void func_80281780(void) {
    if (gEnableDebugMode != 0) {
        if (D_800DC4BC->unk4 & 0x0F0F) {
            if (D_800DC4BC->unk4 & 8) {
                D_800E86A8[0] = 1;
            }
            else if (D_800DC4BC->unk4 & 2) {
                D_800E86A8[0] = 2;
            }
            else if (D_800DC4BC->unk4 & 1) {
                D_800E86A8[0] = 3;
            }
            else if (D_800DC4BC->unk4 & 4) {
                D_800E86A8[0] = 4;
            }
            else if (D_800DC4BC->unk4 & 0x800) {
                D_800E86A8[0] = 5;
            }
            else if (D_800DC4BC->unk4 & 0x200) {
                D_800E86A8[0] = 6;
            }
            else if (D_800DC4BC->unk4 & 0x100) {
                D_800E86A8[0] = 7;
            } else {
                D_800E86A8[0] = 0;
            }
            bcopy(&D_80284ED0, &D_8018D9D0, 8);
        }
    }
}

s32 func_80281880(s32 arg0) {
    s32 i;
    for (i = 0; i < 8; i++) {
        if (D_8018D9D0[i] == D_800E86A8[arg0]) break;
    }
    return i;
}

void func_802818BC(void) {
    s32 temp_v0;
    UNUSED s32 pad;
    s32 sp1C;
    s32 temp_v0_2;

    if (D_8018EDF3 != 2) {
        D_802874D8.unk_1D = func_80281880(0);
        D_802874D8.unk_1E = D_800E86A8[0];
        return;
    }
    // weird pattern but if it matches it matches
    temp_v0 = sp1C = func_80281880(0);
    temp_v0_2 = func_80281880(1);
    if (sp1C < temp_v0_2) {
        D_802874D8.unk_1E = D_800E86A8[0];
        D_802874D8.unk_1D = temp_v0;
    } else {
        D_802874D8.unk_1E = D_800E86A8[1];
        D_802874D8.unk_1D = temp_v0_2;
    }
}

void load_ending_sequence_royalraceway(void) {
    gCurrentCourseId = COURSE_ROYAL_RACEWAY;
    D_800DC5B4 = (u16)1;
    gIsMirrorMode = 0;
    D_80287550 = 0xFFFF;
    D_80287554 = 0;
    func_802A4D18();
    func_802A74BC();
    D_801647A4 = 60.0f;
    D_80150130 = 60.0f;
    D_800DC5EC->unk2C = (u16)0x140;
    D_800DC5EC->unk2E = (u16)0xF0;
    D_800DC5EC->unk30 = (u16)0xA0;
    D_800DC5EC->unk32 = (u16)0x78;
    D_800DC530 = 0;
    gPrevLoadedAddress = (s32) D_8015F734;
    D_800DC52C = 0;
    gModeSelection = 0;
    load_course(gCurrentCourseId);
    D_8015F730 = (s32) gPrevLoadedAddress;
    set_segment_base_addr(0xB, func_802AA88C(&_data_821D10SegmentRomStart, &_data_825800SegmentRomStart));
    set_segment_base_addr(6, func_802AA88C(&_course_banshee_boardwalk_dl_mio0SegmentRomStart, &_course_yoshi_valley_dl_mio0SegmentRomStart));
    D_8015F8E4 = -2000.0f;

    D_8015F6EA = -0x15A1;
    D_8015F6EE = -0x15A1;
    D_8015F6F2 = -0x15A1;

    D_8015F6E8 = 0x15A1;
    D_8015F6EC = 0x15A1;
    D_8015F6F0 = 0x15A1;

    D_8015F59C = 0;
    D_8015F5A0 = 0;
    D_8015F58C = 0;
    D_8015F588 = (u16)0;
    D_800DC5BC = (u16)0;
    D_800DC5C8 = (u16)0;
    D_8015F580 = (s32) gPrevLoadedAddress;
    func_802AF5AC(0x70067E8, -1);
    func_802AF5AC(0x700AEF8, -1);
    func_802AF5AC(0x700A970, 8);
    func_802AF5AC(0x700AC30, 8);
    func_802AF5AC(0x7000CE0, 0x10);
    func_802AF5AC(0x7000E88, 0x10);
    func_802AF5AC(0x700A618, -1);
    func_802AF5AC(0x700A618, -1);
    func_802AF5AC(0x70023F8, 1);
    func_802AF5AC(0x7002478, 1);
    func_80295C6C();
    func_80281780();
    func_802818BC();
    func_8003D080();
    func_8006E9C0();
    func_8001C05C();
    func_80280FB0();
    func_802816B8();
    func_80093E60();
    D_801625F8 = (s32) gHeapEndPtr - gPrevLoadedAddress;
    D_801625FC = ((f32) D_801625F8 / 1000.0f);
}
