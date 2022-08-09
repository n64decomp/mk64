#ifndef _COMMON_STRUCTS_H_
#define _COMMON_STRUCTS_H_

#include "ultra64.h"

typedef f32 Vec3f[3];

typedef s16 Vec3s[3];
typedef u16 Vec3su[3];
typedef s16 Vec4s[4];

#define COURSE_NULL 0xFF

typedef enum {
    /* 0x00 */ COURSE_MARIO_RACEWAY = 0,
    /* 0x01 */ COURSE_CHOCO_MOUNTAIN,
    /* 0x02 */ COURSE_BOWSER_CASTLE,
    /* 0x03 */ COURSE_BANSHEE_BOARDWALK,
    /* 0x04 */ COURSE_YOSHI_VALLEY,
    /* 0x05 */ COURSE_FRAPPE_SNOWLAND,
    /* 0x06 */ COURSE_KOOPA_BEACH,
    /* 0x07 */ COURSE_ROYAL_RACEWAY,
    /* 0x08 */ COURSE_LUIGI_RACEWAY,
    /* 0x09 */ COURSE_MOO_MOO_FARM,
    /* 0x0A */ COURSE_TOADS_TURNPIKE,
    /* 0x0B */ COURSE_KALAMARI_DESERT,
    /* 0x0C */ COURSE_SHERBET_LAND,
    /* 0x0D */ COURSE_RAINBOW_ROAD,
    /* 0x0E */ COURSE_WARIO_STADIUM,
    /* 0x0F */ COURSE_BLOCK_FORT,
    /* 0x10 */ COURSE_SKYSCRAPER,
    /* 0x11 */ COURSE_DOUBLE_DECK,
    /* 0x12 */ COURSE_DK_JUNGLE,
    /* 0x13 */ COURSE_BIG_DONUT,
    /* 0x14 */ COURSE_AWARD_CEREMONY,
    /* 0x15 */ NUM_COURSES
} COURSES;

typedef enum {
    /* 0x00 */ TIME_TRIAL_DATA_LUIGI_RACEWAY,
    /* 0x01 */ TIME_TRIAL_DATA_MOO_MOO_FARM,
    /* 0x02 */ TIME_TRIAL_DATA_KOOPA_BEACH,
    /* 0x03 */ TIME_TRIAL_DATA_KALAMARI_DESERT,
    /* 0x04 */ TIME_TRIAL_DATA_TOADS_TURNPIKE,
    /* 0x05 */ TIME_TRIAL_DATA_FRAPPE_SNOWLAND,
    /* 0x06 */ TIME_TRIAL_DATA_CHOCO_MOUNTAIN,
    /* 0x07 */ TIME_TRIAL_DATA_MARIO_RACEWAY,
    /* 0x08 */ TIME_TRIAL_DATA_WARIO_STADIUM,
    /* 0x09 */ TIME_TRIAL_DATA_SHERBET_LAND,
    /* 0x0A */ TIME_TRIAL_DATA_ROYAL_RACEWAY,
    /* 0x0B */ TIME_TRIAL_DATA_BOWSER_CASTLE,
    /* 0x0C */ TIME_TRIAL_DATA_DK_JUNGLE,
    /* 0x0D */ TIME_TRIAL_DATA_YOSHI_VALLEY,
    /* 0x0E */ TIME_TRIAL_DATA_BANSHEE_BOARDWALK,
    /* 0x0F */ TIME_TRIAL_DATA_RAINBOW_ROAD,
    /* 0x10 */ NUM_TIME_TRIAL_DATA
} TIME_TRIAL_DATA_INDEX;

enum SURFACE_TYPE {
    /* 0x00 */ AIRBORNE,
    /* 0x01 */ PAVEMENT, // Luigi's Raceway, Toad's Turnpike, Koopa Troop beach shortcut tunnel, Mario Raceway, Royal Raceway, Rainbow Road, Block Fort, Double Deck, Skyscraper
    /* 0x02 */ SAND_ONE, // Luigi's Raceway, Moo Moo Farm, Kalimiari Desert on course, Choco Mountain, Wario Stadium, DK Jungle on course, Yoshi Valley
    /* 0x03 */ SAND_TWO, // Koopa Troopa Beach light color, Royal Raceway
    /* 0x04 */ STONE_TWO, // Royal Raceway castle entrance, Bowser's Castle
    /* 0x05 */ SNOW_ONE, // Frappe Snowland on course, Sherber Land tunnel
    /* 0x06 */ STONE_ONE, // Royal Raceway castle bridges (even the wooden one), Banshee's Boardwalk, Big Donut
    /* 0x07 */ SAND_FIVE, // Mario Raceway
    /* 0x08 */ GRASS, // Luigi's Raceway, Mario Raceway, Royal Raceway, Bowser's Castle, DK Jungle, Yoshi Valley
    /* 0x09 */ ICE, // Sherbert Land
    /* 0x0A */ SAND_THREE, // Koop Troopa Beach dark color
    /* 0x0B */ SNOW_TWO, // Frappe Snowland off course
    /* 0x0C */ CLIFF, // Koopa Troopa Beach, Choco Mountain
    /* 0x0D */ SAND_FOUR, // Kalimari Desert off course
    /* 0x0E */ TRAIN_TRACK, // Kalimari Desert
    /* 0x0F */ DIRT, // DK Jungle cave
    /* 0x10 */ WOOD_TWO, // Bowser's Castle bridge 2, DK Jungle bridge
    /* 0x11 */ WOOD_ONE, // Frappe Snowland bridge, Bowser's Castle bridge 1,3, Yoshi Valley bridge 2
    /* 0xFC */ BOOST_PAD_TWO = 0xFC, // DK Jungle
    /* 0xFD */ OUT_OF_BOUNDS, // DK Jungle river island
    /* 0xFE */ BOOST_PAD_ONE, // Royal Raceway
    /* 0xFF */ RAMP // Koopa Troopa beach
};

// This was added as a silly idea:
// In the data to use "A, B, Z, R" instead of hex numbers.
typedef enum {
    A = 0x80,
    B = 0x40,
    Z = 0x20,
    R = 0x10
} GhostController;

typedef struct {
    u8 button;
    s8 frameDuration;
    s8 stickY;
    s8 stickX;
} StaffGhost;
// 80160ADC Banana's remaining

typedef struct {
    /* 0x00 */ u16 unk30;
    /* 0x02 */ u16 unk32;
    /* 0x04 */ u16 unk34;
    /* 0x06 */ u16 unk36;
    /* 0x08 */ u16 unk38;
    // This may be an index to the tilemap?
    /* 0x0A */ u16 unk3A;
    /* 0x0C */ f32 unk3C;
    /* 0x10 */ f32 unk40;
    /* 0x14 */ f32 unk44;
    /* 0x18 */ Vec3f unk48;
    /* 0x24 */ Vec3f unk54;
    /* 0x30 */ Vec3f unk60;
    /* 0x3C */ f32 unk6C;
} UnkActorInner;

typedef struct {
    /* 0x00 */ Vec3f unk_000;
    /* 0x0C */ f32 unk_00C;
    /* 0x10 */ u16 unk_010;
    /* 0x12 */ u16 unk_012;
    /* 0x14 */ f32 unk_014;
    /* 0x18 */ f32 unk_018;
    /* 0x1C */ s16 unk_01C;
    /* 0x1E */ s16 unk_01E;
    /* 0x20 */ s16 unk_020;
    /* 0x22 */ s16 unk_022;
    /* 0x24 */ f32 unk_024;
    /* 0x28 */ s16 unk_028;
    /* 0x2A */ s16 unk_02A;
    /* 0x2C */ s16 unk_02C;
    /* 0x2E */ s16 unk_02E;
    /* 0x30 */ s16 unk_030;
    /* 0x32 */ s16 unk_032;
    /* 0x34 */ s16 unk_034;
    /* 0x36 */ s16 unk_036;
    /* 0x38 */ s16 unk_038;
    /* 0x3A */ s16 unk_03A;
    /* 0x3C */ s16 unk_03C;
    /* 0x3E */ s16 unk_03E;
    /* 0x40 */ s16 unk_040;
    /* 0x42 */ s16 unk_042;
    /* 0x44 */ s16 unk_044;
    /* 0x46 */ s16 unk_046;
} UnkPlayerStruct258; // size = 0x48

// This struct is almost identical to the GBI Vtx_t type,
// except that its missing the "flag" member.
typedef struct {
    s16        ob[3];    /* x, y, z */
    s16        tc[2];    /* texture coord */
    u8    ca[4];    /* color & alpha */

} mk64_Vtx;

/*
This struct has been copied (with only minor modifications) from
https://github.com/micro500/mariokart64/wiki/Surface-Map
on January 23rd, 2022
The original author is assumed to be RenaKunisaki
*/
typedef struct {
    /* 0x00 */ u16 flags;
        // Top bytes is a collections of flags, bottom byte is of unknown purpose
        //bit 7: 1 = only tangible if landed on, not if driven onto?
        //       very weird. game crashes sometimes when playing with this.
        //bit 6: 1 = Lakitu can drop you here (XXX verify)
        //bit 4: 1 = out of bounds
        //bit 3: 1 = player tumbles upon contact (may fall right through)
    /* 0x02 */ u16 surfaceType;
    /* 0x04 */ s16 vtx3[3]; //X, Y, Z of poly's third vertex
    /* 0x0A */ s16 vtx2[3]; //X, Y, Z of poly's second vertex
    /* 0x10 */ Vtx *vtxs[3]; //pointer to the 3 vertices of this poly
        //unsure why this exists along with a copy of two of the vertices.
        //both are involved in hit detection.
    /* 0x1C */ f32 height;
        //normally 0; read at 0x802AB1A4. this value is added to the height Lakitu
        //drops you at. changing it seems to make the surface intangible.
    /* 0x20 */ f32 gravity;
        //normally 1. The height Lakitu drops you off at is divided by this value
        //(before adding the value at 0x1C), although if set to zero, he just tries
        //to drop you at about the height of the finish line banner. Changing it
        //has various unusual effects, making the polygon intangible or
        //significantly reducing the gravity above it, probably depending on its Y
        //position.
    /* 0x24 */ f32 rotation; //normally about -0.001. no idea what this actually is.
    /* 0x28 */ f32 height2; //changes Y position of all vertices (but not graphics or
        //Lakitu drop position). Normally set to (track_height * -1) + about 6.
} mk64_surface_map_ram; // size = 0x2C

typedef struct {
    /* 0x00 */ f32 cornerX;
    /* 0x04 */ f32 cornerY;
    /* 0x08 */ f32 cornerZ;
    // Type of surface the corner is above
    /* 0x0C */ u8  surfaceType;
    // Close to being a copy of the top byte of the surface_map "flag" member
    /* 0x0D */ u8  surfaceFlags;
    // Don't know if "tile" is right the right term
    // D_8015F580 is a pointer to an array of "tile" structs. This is an index to that array
    /* 0x0E */ u16 surfaceMapIndex;
    // cornerX/Y/Z place the corner "in the air" as it were, this member indicates the Y position of the corner's "on the ground" sibling
    // On flat ground this value should be cornerY - gKartBoundingBoxTable[characterId]
    /* 0x10 */ f32 cornerGroundY;
    // Something lighting related. 1 when in a shaded region, 2 when in a tree's shadow
    // 3 when getting crushed by a whomp, but curiously only the front left tyre will ever have this value
    /* 0x14 */ s32 unk_14;
} KartBoundingBoxCorner; // size = 0x18

#define FRONT_LEFT_TYRE  0
#define FRONT_RIGHT_TYRE 1
#define BACK_LEFT_TYRE   2
#define BACK_RIGHT_TYRE  3

typedef struct {
    /* 0x0000 */ u16 unk_000;
    /* 0x0002 */ u16 unk_002;
    /* 0x0004 */ s16 currentRank;
    /* 0x0006 */ u16 unk_006;
    /* 0x0008 */ s16 lapCount;
    /* 0x000A */ char unk_00A[0x2];
    /* 0x000C */ s32 unk_00C;
    /* 0x0010 */ s16 unk_010;
    /* 0x0012 */ s16 unk_012;
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ f32 rotX;
    /* 0x0024 */ f32 rotY;
    /* 0x0028 */ f32 rotZ;
    /* 0x002C */ Vec3s unk_02C;
    /* 0x0032 */ char unk_032[0x2];
    /* 0x0034 */ Vec3f unk_034;
    /* 0x0040 */ s16 unk_040;
    /* 0x0042 */ s16 unk_042;
    /* 0x0044 */ s16 unk_044;
    /* 0x0046 */ u16 unk_046;
    /* 0x0048 */ Vec3s unk_048;
    /* 0x004E */ char unk_04E[0xA];
    /* 0x0058 */ f32 unk_058;
    /* 0x005C */ f32 unk_05C;
    /* 0x0060 */ f32 unk_060;
    /* 0x0064 */ f32 unk_064;
    /* 0x0068 */ f32 unk_068;
    /* 0x006C */ f32 unk_06C;
    /* 0x0070 */ f32 boundingBoxSize;
    /* 0x0074 */ f32 unk_074;
    /* 0x0078 */ s16 unk_078;
    /* 0x007A */ s16 unk_07A;
    /* 0x007C */ s32 unk_07C;
    /* 0x0080 */ f32 boostPower;
    /* 0x0084 */ f32 unk_084;
    /* 0x0088 */ f32 unk_088;
    /* 0x008C */ f32 unk_08C;
    /* 0x0090 */ f32 unk_090;
    /* 0x0094 */ f32 unk_094;
    /* 0x0098 */ f32 unk_098;
    /* 0x009C */ f32 unk_09C;
    /* 0x00A0 */ f32 unk_0A0;
    /* 0x00A4 */ f32 unk_0A4;
    /* 0x00A8 */ s16 unk_0A8;
    /* 0x00AA */ s16 unk_0AA;
    /* 0x00AC */ s16 unk_0AC;
    /* 0x00AE */ s16 unk_0AE;
    /* 0x00B0 */ s16 unk_0B0;
    /* 0x00B2 */ s16 unk_0B2;
    /* 0x00B4 */ u16 unk_0B4;
    /* 0x00B6 */ u16 unk_0B6;
    /* 0x00B8 */ f32 unk_0B8;
    /* 0x00BC */ s32 unk_0BC;
    /* 0x00C0 */ s16 unk_0C0;
    /* 0x00C2 */ s16 unk_0C2;
    /* 0x00C4 */ s16 unk_0C4;
    /* 0x00C6 */ s16 unk_0C6;
    /* 0x00C8 */ s16 unk_0C8;
    /* 0x00CA */ s16 unk_0CA;
    /* 0x00CC */ char unk_0CC[0x10];
    /* 0x00DC */ s16 boostTimer;
    /* 0x00DE */ u16 unk_0DE;
    /* 0x00E0 */ s16 unk_0E0;
    /* 0x00E2 */ s16 unk_0E2;
    /* 0x00E4 */ f32 unk_0E4;
    /* 0x00E8 */ f32 unk_0E8;
    /* 0x00EC */ f32 kartHopVelocity;
    /* 0x00F0 */ f32 kartHopJerk;
    /* 0x00F4 */ f32 kartHopAcceleration;
    /* 0x00F8 */ u16 unk_0F8;
    /* 0x00FA */ s16 unk_0FA;
    /* 0x00FC */ f32 unk_0FC;
    /* 0x0100 */ f32 unk_100;
    /* 0x0104 */ f32 unk_104;
    /* 0x0108 */ f32 unk_108;
    /* 0x010C */ s16 unk_10C;
    /* 0x010E */ char unk_10E[0x2];
    /* 0x0110 */ UnkActorInner unk_110;
    /* 0x0150 */ f32 unk_150[9];
    /* 0x0174 */ f32 unk_174[9];
    /* 0x0198 */ KartBoundingBoxCorner boundingBoxCorners[4];
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ f32 unk_1FC;
    /* 0x0200 */ s32 unk_200;
    /* 0x0204 */ s16 unk_204;
    /* 0x0206 */ s16 unk_206;
    /* 0x0208 */ f32 unk_208;
    /* 0x020C */ f32 unk_20C;
    /* 0x0210 */ f32 unk_210;
    /* 0x0214 */ f32 unk_214;
    /* 0x0218 */ f32 unk_218;
    /* 0x021C */ f32 unk_21C;
    /* 0x0220 */ s16 unk_220;
    /* 0x0222 */ s16 unk_222;
    /* 0x0224 */ f32 unk_224;
    /* 0x0228 */ s16 unk_228;
    /* 0x022A */ s16 unk_22A;
    /* 0x022C */ f32 unk_22C;
    /* 0x0230 */ f32 unk_230;
    /* 0x0234 */ s16 unk_234;
    /* 0x0236 */ s16 unk_236;
    /* 0x0238 */ s16 unk_238;
    /* 0x023A */ s16 unk_23A;
    /* 0x023C */ f32 unk_23C;
    /* 0x0240 */ s32 unk_240;
    /* 0x0244 */ u16 unk_244[4]; // [0] Active texture group
    /* 0x024C */ u16 unk_24C[4];
    /* 0x0254 */ u16 characterId;
    /* 0x0256 */ s16 unk_256;
    /* 0x0258 */ UnkPlayerStruct258 unk_258[40];
    /* 0x0D98 */ s16 unk_D98;
    /* 0x0D9A */ s16 unk_D9A;
    /* 0x0D9C */ f32 unk_D9C;
    /* 0x0DA0 */ f32 unk_DA0;
    /* 0x0DA4 */ s16 unk_DA4;
    /* 0x0DA6 */ s16 unk_DA6;
    /* 0x0DA8 */ f32 unk_DA8;
    /* 0x0DAC */ f32 unk_DAC;
    /* 0x0DB0 */ f32 unk_DB0;
    /* 0x0DB4 */ s16 unk_DB4;
    /* 0x0DB6 */ s16 unk_DB6;
    /* 0x0DB8 */ f32 unk_DB8;
    /* 0x0DBC */ f32 unk_DBC;
    /* 0x0DC0 */ f32 unk_DC0;
    /* 0x0DC4 */ f32 unk_DC4;
    /* 0x0DC8 */ f32 unk_DC8;
    /* 0x0DCC */ s16 unk_DCC;
    /* 0x0DCE */ s16 unk_DCE;
    /* 0x0DD0 */ s16 unk_DD0;
    /* 0x0DD2 */ s16 unk_DD2;
    /* 0x0DD4 */ s16 unk_DD4;
} Player; // size = 0xDD8

typedef struct {
    // 6 little endian 3-byte records.
    // When converted to big endian the bottom 5 nibbles can be interpreted as the centisecond count for that record.
    // The top nibble is the character ID of the charcter used to set that record
    // The first 5 records are the top 5 3-lap records
    // The 6th record is the best 1-lap record
    u8 records[6][3];
    // It's unknown what these bytes are used for
    // Byte 1 might be an indicator that there is a ghost available for that course
    u8 unknownBytes[6];
} CourseTimeTrialRecords; // size = 0x18

typedef struct {
    // Each cup is made up of 4 courses
    CourseTimeTrialRecords courseRecords[4];
} CupTimeTrialRecords; // size = 0x60

typedef struct {
    // There are 4 cups total
    CupTimeTrialRecords cupRecords[4];
} AllCourseTimeTrialRecords; // size = 0x180

typedef struct {
    // Records 0 through 3 are for the first cup's courses
    // Records 4 through 7 are for the second cup's courses
    u8 bestThreelaps[8][3];
    u8 bestSinglelaps[8][3];
    // It's unknown what these bytes are used for
    u8 unknownBytes[8];
} OnlyBestTimeTrialRecords; // size = 0x38

typedef struct {
    AllCourseTimeTrialRecords allCourseTimeTrialRecords;
    // GP Points scored for each CC mode
    // 1st place is 3 points, 2nd is 2, etc.
    // Lowest dibit is the Mushroom Cup, 2nd dibit is the Flower Cup, etc
    u8 grandPrixPoints[4];
    u8 soundMode;
    // It's unknown what the first byte is used for
    u8 checksum[3];
    // For some reason there's 2 entries covering 4 cups
    // Instead of 4 entries, one per cup. Or even just one big entry for all 4 cups
    // Its also unknown why these are here when they're identical to the values found
    // in allCourseTimeTrialRecords
    OnlyBestTimeTrialRecords onlyBestTimeTrialRecords[2];
    // If checksum[1] or checksum[2] does not match their expected value,
    // the grandPrixPoints and soundMode are reset. Then if the backup data's
    // checksums are valid, copy the backup data to the main data.
    u8 grandPrixPointsBackup[4];
    u8 soundModeBackup;
    u8 checksumBackup[3];
} SaveData; // size = 0x200

typedef struct {
    /* 0x00 */ char unk_00[0x1D];
    /* 0x1D */ s8 unk_1D;
    /* 0x1E */ s8 unk_1E;
} struct_D_802874D8;

typedef struct {
    s16 unk_00;
    char unk_02[0xE];
    s16 unk_10;
    char unk_12[0xE];
    s16 unk_20;
    char unk_22[0xE];
    s16 unk_30;
    char unk_32[0xE]; // guessed
} struct_D_801650D0;

typedef struct {
    char unk_00[0x4];
    f32 unk_04;
    char unk_08[0x4];
    f32 unk_0C;
    char unk_10[0x10];
} struct_D_8018CE10; // size = 0x20

typedef struct
{ 
    // Something related to time trial ghost data?
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ u8  ghostDataSaved;
    /* 0x05 */ s8  courseIndex;
    /* 0x06 */ u8  characterId;
    /* 0x07 */ s8  unk_07[0x3C];
    /* 0x43 */ u8  pad_43[0x7F-0x43];
    /* 0x7F */ u8  checksum;
} struct_8018EE10_entry; // size = 0x80

typedef struct {
    /* 0x00 */ u16 red;
    /* 0x02 */ u16 green;
    /* 0x04 */ u16 blue;
    /* 0x06 */ u16 alpha;
} RGBA16; // size = 0x08

// Something related to human players
// Also might be used for the camera during the post race screens
typedef struct {
    /* 0x00 */ f32 unknownScaling; // Looks to be some type of scaling, unknown use
    /* 0x04 */ f32 rankScaling; // Scaling done on the rank text in the bottom left corner of the screen
    // All time measurements are in centiseconds
    /* 0x08 */ u32 someTimer; // The someTimers seem to always have the same value, the total time since race start
    /* 0x0C */ u32 someTimer1;
    /* 0x10 */ u32 timeLastTouchedFinishLine; // Sum of time of all completed laps
    // Times at which each lap was completed
    /* 0x14 */ u32 lap1CompletionTime;
    /* 0x18 */ u32 lap2CompletionTime;
    /* 0x1C */ u32 lap3CompletionTime;
    // Time each lap took to complete
    /* 0x20 */ u32 lap1Duration;
    /* 0x24 */ u32 lap2Duration;
    /* 0x28 */ u32 lap3Duration;
    // Integer parts of the player's X/Y/X coordinates
    /* 0x2C */ s32 posXInt;
    /* 0x30 */ s32 posYInt;
    /* 0x34 */ s32 posZInt;
    /* 0x38 */ s32 unk_38;
    // Timer for how long the on screen should blink on lap completion
    // Blinking occurs as long as this is a non-zero value.
    // Other on screen effects may override the blinking
    /* 0x3C */ s16 blinkTimer;
    /* 0x3E */ s16 speedometerX;
    /* 0x40 */ s16 speedometerY;
    /* 0x42 */ s16 itemBoxX;
    /* 0x44 */ s16 itemBoxY;
    /* 0x46 */ s16 slideItemBoxX;
    /* 0x48 */ s16 slideItemBoxY;
    // These 2 s16's have values, but I have yet to identify any places that read them
    /* 0x4A */ s16 unk_4A;
    /* 0x4C */ s16 unk_4C;
    /* 0x4E */ s16 timerX; // X coordinate of the on screen timer
    // These 4 X coordinates are "slide" values
    /* 0x50 */ s16 lap1CompletionTimeX; // Pulls double-duty as timerAfterImage1X
    /* 0x52 */ s16 lap2CompletionTimeX; // Pulls double-duty as timerAfterImage2X
    /* 0x54 */ s16 lap3CompletionTimeX;
    /* 0x56 */ s16 totalTimeX;
    /* 0x58 */ s16 timerY; // Y coordinate of the on screen timer (used as Y coordinate for lap completion times in post-race screen)
    /* 0x5A */ s16 lapX; // X coordinate of the on screen lap counter
    // 0x5C and 0x5E seem to be relative to lapX
    /* 0x5C */ s16 lapAfterImage1X;
    /* 0x5E */ s16 lapAfterImage2X;
    /* 0x60 */ s16 lapY; // Y coordinate of the on screen lap counter
    /* 0x62 */ s16 rankX; // X coordinate of the on screen rank indicator
    /* 0x64 */ s16 rankY; // Y coordinate of the on screen rank indicator
    /* 0x66 */ s16 slideRankX; // Adds with the other rankX, used during post race screen to make the rank "slide" into place
    /* 0x68 */ s16 slideRankY; // Adds with the other rankY, used during post race screen to make the rank "slide" into place
    /* 0x6A */ s16 stagingPosition; // Position to take during race staging
    // These s16's occasionally have values, but I have yet to identify any places that read them
    // They appear to have values when in 3/4 player split screen mode, otherwise they're 0
    /* 0x6C */ s16 unk_6C;
    /* 0x6E */ s16 unk_6E;
    /* 0x70 */ s8 raceCompleteBool; // Indicates if race is over?
    /* 0x71 */ s8 lapCount; // This increases to 3 when a race is over, while alsoLapCount stays at 2
    /* 0x72 */ s8 alsoLapCount;
    // Related to the timer blinking on lap completion
    // If blinkTimer is counting down:
    //     0: Show timer
    //     1: Hide timer
    //     2: ? Seems to be a transition state, never lasts a long enough for blinkTimer to tick
    /* 0x73 */ s8 blinkState;
    /* 0x74 */ s8 unk_74;
    /* 0x75 */ s8 unk_75;
    /* 0x76 */ s16 itemOverride; // Something related to item generation. If non-zero, it determines the item you get
    // 0x78 to 0x7F appear to be some type of "state" trackers for the lap and timer text during a race start
    // When a race starts those texts (and their afterimages) slide in and "bounce" a bit. These states control the bouncing (somehow)
    /* 0x78 */ s8 unk_78;
    /* 0x79 */ s8 unk_79;
    /* 0x7A */ s8 unk_7A;
    /* 0x7B */ s8 unk_7B;
    /* 0x7C */ s8 unk_7C;
    /* 0x7D */ s8 unk_7D;
    /* 0x7E */ s8 unk_7E;
    /* 0x7F */ s8 unk_7F;
    /* 0x80 */ s8 unk_80;
    /* 0x81 */ s8 unk_81;
    /* 0x82 */ s8 unk_82;
    /* 0x83 */ s8 unk_83;
} struct_8018CA70_entry; // size = 0x84

#define D_8018CA70_SIZE 4

#endif
