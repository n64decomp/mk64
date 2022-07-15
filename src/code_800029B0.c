#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "variables.h"
#include "waypoints.h"
#include "actors.h"
#include "actor_types.h"
#include <defines.h>

extern void func_800C8F44(u16 arg0);
extern u16 D_800DC5A8;

extern struct Controller *gControllerOne[];

extern s32 D_800DC510;
extern s16 D_8015F6FE;
extern s16 D_800DC5B8;
extern u16 D_80152308;
extern s32 D_802BA038;
extern s16 D_802BA048;

extern s16 gCurrentlyLoadedCourseId;

extern f32 gCourseDirection;

extern s8 D_8018EDF3;

extern s8 gCupSelection;


extern s32 gScreenModeSelection;
extern u32 D_8015F730;
extern u32 D_8015F734;
extern u32 gPrevLoadedAddress;
extern s32 D_80150120;

void func_800CA008(u8, u8);

extern f32 D_8015F738, D_8015F748, D_8015F758, D_8015F768, D_8015F778;
extern u32 *D_802B91C8;

void vec3f_set(f32 *, f32, f32, f32);

// gfx?
extern u32 *D_0F04FE28;
extern u32 *D_0F050118;
extern u32 *D_0F051C54;
extern u32 *D_0F051FD8;
extern u32 *D_0F05232C;
extern u32 *D_0F0526B8;
extern u32 *D_0F052A20;
extern u32 *D_0F052D3C;
extern u32 *D_0F05300C;
extern u32 *D_0F0532F8;
extern u32 *D_0F05363C;
extern u32 *D_0F053950;
extern u32 *D_0F04F45C;

extern u32 *D_06009570;
extern u32 *D_06014330;

extern f32 gCourseDirection;

extern s16 D_800DC5C8;


s32 D_800DC5E0 = 32;

s16 D_800DC5E4 = 0;

// TODO: gPlayerWinningIndex (D_800DC5E8) accessed as word, D_800DC5EB as u8
s32 gPlayerWinningIndex = 0;

struct UnkStruct_800DC5EC D_8015F480[4];
struct UnkStruct_800DC5EC *D_800DC5EC = &D_8015F480[0];
struct UnkStruct_800DC5EC *D_800DC5F0 = &D_8015F480[1];
struct UnkStruct_800DC5EC *D_800DC5F4 = &D_8015F480[2];
struct UnkStruct_800DC5EC *D_800DC5F8 = &D_8015F480[3];
u16 D_800DC5FC = 0;
uintptr_t *pAppNmiBuffer = &osAppNmiBuffer;
s32 gIsMirrorMode = 0;
f32 D_800DC608 =  1.0f;
Lights1 D_800DC610[] = {
    gdSPDefLights1(175, 175, 175, 255, 255, 255, 0, 0, 120),
    gdSPDefLights1(115, 115, 115, 255, 255, 255, 0, 0, 120),
};
static s32 pad_800029B0 = 0x80000000;
s16 gCreditsCourseId = COURSE_LUIGI_RACEWAY;
s16 gPlaceItemBoxes = 1;

void func_800029B0(void) {
    switch(D_800DC5A8) {
        case 0:
            func_800C8F44(127);
            break;
        case 1:
            func_800C8F44(75);
            break;
        case 2:
            func_800C8F44(0);
            break;
    }
}

void setup_race(void) {
    struct Controller *controller;
    int i;

    gPlayerCountSelection1 = D_8018EDF3;
    if (gGamestate != RACING) {
        gIsMirrorMode = 0;
    }
    if (gIsMirrorMode) {
        gCourseDirection = -1.0f;
    } else {
        gCourseDirection = 1.0f;
    }
    if (gModeSelection == GRAND_PRIX) {
        gCurrentCourseId = gCupCourseOrder[gCupSelection][gCupCourseSelection];
    }
    gActiveScreenMode = gScreenModeSelection;
    if (gCurrentCourseId != gCurrentlyLoadedCourseId) {
        D_80150120 = 0;
        gCurrentlyLoadedCourseId = gCurrentCourseId;
        gPrevLoadedAddress = D_8015F734;
        load_course(gCurrentCourseId);
        func_80295D88();
        D_8015F730 = gPrevLoadedAddress;
    } else {
        gPrevLoadedAddress = D_8015F730;
    }
    func_802969F8();
    func_80005310();
    func_8003D080();
    func_8006E9C0();
    D_800DC510 = 0;
    D_8015F6FE = 0;
    D_800DC5B8 = 0;
    D_80152308 = 0;
    D_802BA038 = -1;
    D_802BA048 = 0;
    func_802A74BC();
    func_802A4D18();
    func_80091FA4();
    func_8029E158();

    if (gModeSelection != BATTLE) {
        D_8015F8D0[1] = (f32) (D_80164490->wayPointY - 15);;
        D_8015F8D0[2] = D_80164490->wayPointZ;
        if (gCurrentCourseId == COURSE_TOADS_TURNPIKE) {
            D_8015F8D0[0] = (gIsMirrorMode != 0) ?
                              D_80164490->wayPointX + 138.0f :
                              D_80164490->wayPointX - 138.0f;
        } else if (gCurrentCourseId == COURSE_WARIO_STADIUM) {
            D_8015F8D0[0] = (gIsMirrorMode != 0) ?
                              D_80164490->wayPointX + 12.0f :
                              D_80164490->wayPointX - 12.0f;
        } else {
            D_8015F8D0[0] = D_80164490->wayPointX;
        }
    }
    if (D_800DC51C == 0) {
        func_800CA008(gPlayerCountSelection1 - 1, gCurrentCourseId + 4);
        func_800CB2C4();
    }

    controller = *gControllerOne;

    for (i = 0; i < 7; i++, controller++){
        controller->rawStickX = 0;
        controller->rawStickY = 0;
        controller->buttonPressed = 0;
        controller->buttonDepressed = 0;
        controller->button = 0;
    }
}

void func_80002DAC(void) {
    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            vec3f_set(&D_8015F748, -223.0f, 94.0f, -155.0f);
            func_800C9D80(&D_8015F748, &D_802B91C8, 0x5103700B);
            break;
        case COURSE_ROYAL_RACEWAY:
            vec3f_set(&D_8015F748, 177.0f, 87.0f, -393.0f);
            func_800C9D80(&D_8015F748, &D_802B91C8, 0x5103700B);
            break;
        case COURSE_LUIGI_RACEWAY:
            vec3f_set(&D_8015F748, 85.0f, 21.0f, -219.0f);
            func_800C9D80(&D_8015F748, &D_802B91C8, 0x5103700B);
            break;
        case COURSE_WARIO_STADIUM:
            vec3f_set(&D_8015F748, 298.0f, 202.0f, -850.0f);
            func_800C9D80(&D_8015F748, &D_802B91C8, 0x5103700B);
            vec3f_set(&D_8015F758, -1600.0f, 202.0f, -2430.0f);
            func_800C9D80(&D_8015F758, &D_802B91C8, 0x5103700B);
            vec3f_set(&D_8015F768, -2708.0f, 202.0f, 1762.0f);
            func_800C9D80(&D_8015F768, &D_802B91C8, 0x5103700B);
            vec3f_set(&D_8015F778, -775.0f, 202.0f, 1930.0f);
            func_800C9D80(&D_8015F778, &D_802B91C8, 0x5103700B);
            break;
        case COURSE_KOOPA_BEACH:
            vec3f_set(&D_8015F738, 153.0f, 0.0f, 2319.0f);
            func_800C9D80(&D_8015F738, &D_802B91C8, 0x51028001);
            break;
        case COURSE_DK_JUNGLE:
            vec3f_set(&D_8015F738, -790.0f, -255.0f, -447.0f);
            func_800C9D80(&D_8015F738, &D_802B91C8, 0x51028001);
            break;
        default:
            break;
    }
}

/**
 * The nmi buffer allows developers to save 64 bytes of data through a soft reset.
 */
void clear_nmi_buffer(void) {
    s32 i;
    for (i = 0; i < 16; i++) {
        osAppNmiBuffer[i] = 0;
    }
}

void func_80003040(void) {
    Vec3f position;
    Vec3f velocity = {0, 0, 0};
    Vec3s rotation = {0, 0, 0};

    D_800DC5BC = 0;
    D_800DC5C8 = 0;
    gNumActors = 0;
    gIsMirrorMode = 0;
    gCourseDirection = 1.0f;

    gPlayerCountSelection1 = 1;
    set_segment_base_addr(3, (gPrevLoadedAddress + 0xFFFF7000));
    destroy_all_actors();
    switch (gCurrentCourseId) {
        case COURSE_MARIO_RACEWAY:
            func_802A84F4(&D_0F04F45C, 0x35B, 0x800);
            place_segment_06(&D_06009570);
            break;
        case COURSE_BOWSER_CASTLE:
            func_802AF8BC(0x7001350, 0x32, 0, 0, 0);
            break;
        case COURSE_BANSHEE_BOARDWALK:
            func_802AF8BC(0x7000878, -0x80, 0, 0, 0);
            break;
        case COURSE_YOSHI_VALLEY:
            vec3f_set(position, -2300.0f, 0.0f, 634.0f);
            position[0] *= gCourseDirection;
            func_8029EC88(position, rotation, velocity, ACTOR_YOSHI_VALLEY_EGG);
            break;
        case COURSE_MOO_MOO_FARM:
            func_802A84F4(&D_0F04FE28, 0x3E8, 0x800);
            func_802A84F4(&D_0F050118, 0x3E8, 0x800);
            func_802A84F4(&D_0F051C54, 0x400, 0x800);
            func_802A84F4(&D_0F051FD8, 0x400, 0x800);
            func_802A84F4(&D_0F05232C, 0x400, 0x800);
            func_802A84F4(&D_0F0526B8, 0x400, 0x800);
            func_802A84F4(&D_0F052A20, 0x400, 0x800);
            func_802A84F4(&D_0F052D3C, 0x400, 0x800);
            func_802A84F4(&D_0F05300C, 0x400, 0x800);
            func_802A84F4(&D_0F0532F8, 0x400, 0x800);
            func_802A84F4(&D_0F05363C, 0x400, 0x800);
            func_802A84F4(&D_0F053950, 0x400, 0x800);
            place_segment_06(&D_06014330);
            break;
        case COURSE_SHERBET_LAND:
            func_802AF8BC(0x7001EB8, -0x4C, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7002308, -0x6A, 0xFF, 0xFF, 0xFF);
            break;
        case COURSE_RAINBOW_ROAD:
            func_802AF8BC(0x7002068, -0x6A, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7001E18, -0x6A, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7001318, -1, 0xFF, 0xFF, 0);
            break;
        case COURSE_WARIO_STADIUM:
            vec3f_set(position, -131.0f, 83.0f, 286.0f);
            func_8029EC88(position, rotation, velocity, ACTOR_WARIO_STADIUM_SIGN);
            vec3f_set(position, -2353.0f, 72.0f, -1608.0f);
            func_8029EC88(position, rotation, velocity, ACTOR_WARIO_STADIUM_SIGN);
            vec3f_set(position, -2622.0f, 79.0f, 739.0f);
            func_8029EC88(position, rotation, velocity, ACTOR_WARIO_STADIUM_SIGN);
            func_802AF8BC(0x7000C50, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000BD8, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000B60, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000AE8, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000CC8, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000D50, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000DD0, 0x64, 0xFF, 0xFF, 0xFF);
            func_802AF8BC(0x7000E48, 0x64, 0xFF, 0xFF, 0xFF);
            break;
        case COURSE_DK_JUNGLE:
            func_802AF8BC(0x7003FA8, 0x78, 0xFF, 0xFF, 0xFF);
            break;
        default:
            break;
    }
    gNumPermanentActors = gNumActors;
}
