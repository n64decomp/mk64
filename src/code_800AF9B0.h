#ifndef CODE_800AF9B0_H
#define CODE_800AF9B0_H

#include "PR/os.h"
#include "common_structs.h"
#include <types.h>

union GrandPrixPointsUnion
{
    u8 grandPrixPointsArray[4];
    u8 grandPrixPointsMushroomCup;
};

/* Function Prototypes */

void func_800AF9B0();
void func_800B0004();
void func_800B053C(struct Controller*, u16);
void func_800B13B0(struct Controller*, u16);
void func_800B15AC(struct Controller*, u16);
void func_800B1C40(struct Controller*, u16);
void func_800B1C90(struct Controller*, u16);
void func_800B20F4(struct Controller*, u16);
void func_800B29D8(struct Controller*, u16);
s32  func_800B34E8(s32);
void func_800B3554(struct Controller*, u16);
void func_800B3B58(struct Controller*, u16);
void func_800B44AC();
void func_800B44BC();
s32  func_800B4520();
void func_800B45E0(s32);
void write_save_data_grand_prix_points_and_sound_mode();
void func_800B46D0();
void func_800B4728(s32);
void reset_save_data_grand_prix_points_and_sound_mode();
s32  func_800B4874(s32);
s32  compute_save_data_checksum_1();
s32  compute_save_data_checksum_2();
void func_800B4A10();
void func_800B4A9C(s32);
void validate_save_data(void);
s32  func_800B4E24(s32);
s32  func_800B4EB4(s32, s32);
s32  func_800B4F2C();
s32  func_800B4FB0(s32);
u8   func_800B54C0(s32, s32);
u8   func_800B54EC(s32, s32);
u8   func_800B5508(s32, s32, s32);
s32  func_800B5530(s32);
s32  func_800B555C();
s32  func_800B557C();
void func_800B559C(s32);
s32  func_800B578C(s32);
s32  func_800B5888(s32); 
void update_save_data_backup();
s32  compute_save_data_checksum_backup_1(void);
s32  compute_save_data_checksum_backup_2(void);
s32  validate_save_data_checksum_backup();
s32  func_800B5B2C(s32);
s32  func_800B5F30();
s32  func_800B6014();
u8   func_800B60E8(s32);
u8   func_800B6828(s32);
u8   func_800B68F4(s32); 
void func_800B69BC(s32);
s32  func_800B6A68();

// staff_ghosts.c
s32  func_800051C4();
void func_8000522C();
void func_80005AE8(Player*);

// audio/external.c
void play_sound2(s32);
void func_800CA330(s32);
void func_800CA388(s32);

// os
s32  func_800CE720(OSMesgQueue*, OSPfs*, s32);

// memory.c
u32  func_802A7B70(u16);


/* This is where I'd put my static data, if I had any */

extern u16         gEnableDebugMode; // D_800DC520
extern s32         gCCSelection; // D_800DC538
extern s32         gModeSelection; // D_800DC53C
extern s32         D_800DC540;
extern s16         gCurrentCourseId; // D_800DC5A0
extern s32         gIsMirrorMode; // D_800DC5F4
extern s16         gPlaceItemBoxes; // D_800DC638
extern u32*        D_800DC714;
extern s8          gGameModeRowSelectionForNumPlayers[SELECTED_PLAYER_DEFINES_TOTAL]; // D_800E869B. 0-4 players, game type row selected for each player amoun
extern s8          gGameModeSubMenuRowSelectionForNumPlayers[SELECTED_PLAYER_DEFINES_TOTAL][MAX_NUM_MAIN_MENU_GAME_TYPES]; // D_800E869D. 0-4 players, 3 possible game types per player amouunt
extern s32         D_800E86A4;
extern s8          gDisplayedControllerPakTableRows[5]; // D_800E86C6
extern s32         D_800E86E4;
extern u16         D_800E86F0;
extern s32         D_800E86F4;
extern s8          D_800E86F8;
extern s8          D_800E86FC;
extern s32         gGameModeFromNumPlayersAndRowSelection[SELECTED_PLAYER_DEFINES_TOTAL][MAX_NUM_MAIN_MENU_GAME_TYPES]; // D_800F2B60. 0-4 players, 3 possible game types per player amount
extern s16         gCupCourseOrder[NUM_CUPS][NUM_COURSES_PER_CUP]; // D_800F2BB4
extern u8          D_800F2E60[];
extern u8          D_800F2E64;
extern u8          D_800F2E74;
extern OSMesgQueue gSIEventMesgQueue; // D_8014F0B8
extern u16         D_80162DD6;
extern s32         D_80162DE0;
extern s32         D_80162DFC;
extern struct_8018EE10_entry* D_8018D9C0;
extern s32         D_8018E7A8;
extern s8          D_8018E7B0;
extern OSPfs       D_8018E868;
extern OSPfs       D_8018E8D0;
extern OSPfsState  D_8018E938[];
extern s32         D_8018EB38[16];
extern s32         D_8018EB78;
extern s32         D_8018EB7C;
extern s32         D_8018EB84;
extern s32         D_8018EB88;
extern SaveData    D_8018EB90;
extern union GrandPrixPointsUnion D_8018ED10; // Direct reference to the grandPrixPoints section of save data
extern u8          D_8018ED11;
extern u8          D_8018ED12;
extern u8          D_8018ED13;
extern u8          gSaveDataSoundMode; // D_8018ED14
extern u8          D_8018ED16; // D_8018EB90.checksum[1]
extern u8          D_8018ED17; // D_8018EB90.checksum[2]
extern u8          D_8018ED4E; // D_8018EB90.onlyBestTimeTrialRecords[0].unknownBytes[6]
extern union GrandPrixPointsUnion D_8018ED88; // D_8018EB90.grandPrixPointsBackup[0]
extern u8          D_8018ED89;
extern u8          D_8018ED8A;
extern u8          D_8018ED8B;
extern u8          D_8018ED8E; // D_8018EB90.checksumBackup[1]
extern u8          D_8018ED8F; // D_8018EB90.checksumBackup[2]
extern u32         D_8018EDB8;
extern u32         D_8018EDBC;
extern s8          D_8018EDE5;
extern s8          D_8018EDE6;
extern s8          D_8018EDE7;
extern s8          D_8018EDEC;
extern u8          gSoundMode; // D_8018EDF2
extern s8          D_8018EDF3;
extern s8          gTimeTrialDataCourseIndex; // D_8018EDF7
extern s8          gCourseRecordsMenuSelection; // D_8018EDF8
extern s8          D_8018EDFB;
extern s32         gMenuTimingCounter; // D_8018EE00
extern s8          gCupSelection; // D_8018EE09
extern s8          D_8018EE0A;
extern s8          gCupCourseSelection; // D_8018EE0B
extern struct_8018EE10_entry D_8018EE10[];

#endif
