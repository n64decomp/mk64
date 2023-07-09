#ifndef CODE_800B045E0_H
#define CODE_800B045E0_H

#include "PR/os.h"
#include "common_structs.h"
#include <types.h>

/* define symbols */

#define CONTROLLER_1 0
#define CONTROLLER_2 1
#define CONTROLLER_3 2
#define CONTROLLER_4 3

#define PFS_NO_ERROR 0 // controller pak no error return
#define PFS_NO_PAK_INSERTED 1 // no pak pressent or wrong device inserted into the controller
#define PFS_PAK_BAD_READ 2 // controller pak error while data transfer
#define PFS_FILE_OVERFLOW 4 // too many files written to in the controller pak
#define PFS_INVALID_DATA -1 // bad arguments, game note does not exist, osPfsInit was not called.
// controller pak test functions
#define PFS_NUM_FILES_ERROR -2
#define PFS_FREE_BLOCKS_ERROR -3
#define PFS_PAK_STATE_OK -4

#define NO_PAK 0
#define PAK 1
#define PAK_NOT_INSERTED -1

union GrandPrixPointsUnion
{
    u8 grandPrixPointsArray[4];
    u8 grandPrixPointsMushroomCup;
};

/* Function Prototypes */

void load_save_data(void);
void func_800B45E0(s32);
void write_save_data_grand_prix_points_and_sound_mode();
void func_800B46D0(void);
void func_800B4728(s32);
void reset_save_data_grand_prix_points_and_sound_mode();
u8   func_800B4874(s32);
s32  func_800B639C(s32);
u8   compute_save_data_checksum_1();
u8   compute_save_data_checksum_2();
void func_800B4A10();
void func_800B4A9C(s32);
void validate_save_data(void);
s32  func_800B4E24(s32);
u32  func_800B4EB4(s32, s32);
s32  func_800B4F2C();
s32  func_800B4FB0(s32);
void func_800B5404(s32, s32);
u8   func_800B54C0(s32, s32);
u8   func_800B54EC(s32, s32);
s32  func_800B5020(u32 time, s32 charId);
u8   func_800B5508(s32, s32, s32);
s32  func_800B5530(s32);
s32  func_800B555C();
s32  func_800B557C();
void func_800B559C(s32);
s32  func_800B578C(s32);
s32  func_800B5888(s32); 
void update_save_data_backup();
u8  compute_save_data_checksum_backup_1(void);
u8  compute_save_data_checksum_backup_2(void);
s32  validate_save_data_checksum_backup();
s32  func_800B5B2C(s32);
s32  controller_pak_1_status(void);
s32  controller_pak_2_status(void);
s32  func_800B5F30();
s32  func_800B6014();
s32  func_800B6088(s32);
u8   func_800B60E8(s32);
s32  func_800B6178(s32);
s32  func_800B64EC(s32);
s32  func_800B65F4(s32, s32);
void func_800B6708(void);
void func_800B6798(void);
u8   func_800B6828(s32);
u8   func_800B68F4(s32); 
s32  func_800B69BC(s32);
s32  func_800B6A68();

/* data */
// these might not be in this file, but for now...

extern u32*        D_800DC714;

extern u16         gCompanyCode;
extern u32         gGameCode; // osPfs gamecode
extern s8          gControllerPak1State; // Current state of Controller Pak 1
extern struct_8018EE10_entry D_8018EE10[];
extern struct_8018EE10_entry *D_8018D9C0;
extern u8          D_8018ED16; // D_8018EB90.checksum[1]
extern u8          D_8018ED17; // D_8018EB90.checksum[2]
extern u8          D_8018ED4E; // D_8018EB90.onlyBestTimeTrialRecords[0].unknownBytes[6]
extern union GrandPrixPointsUnion D_8018ED10; // Direct reference to the grandPrixPoints section of save data
extern union GrandPrixPointsUnion D_8018ED88; // D_8018EB90.grandPrixPointsBackup[0]

extern s8          sControllerPak2State; // Current state of the Controller Pak 2
extern const u8    D_800F2E60[];
extern const u8    gGameName[];
extern const u8    gExtCode[];
extern OSMesgQueue gSIEventMesgQueue; // D_8014F0B8
extern u16         D_80162DD6;
extern s32         D_80162DE0;
extern s32         D_80162DFC;
extern OSPfs       gControllerPak1FileHandle;
extern OSPfs       gControllerPak2FileHandle;
extern OSPfsState  D_8018E938[];
extern s32         D_8018EB38[16];
extern s32         gControllerPak1NumFilesUsed;
extern s32         gControllerPak1MaxWriteableFiles;
extern s32         gControllerPak1FileNote; // osPfs file_no receiver/out param
extern s32         gControllerPak2FileNo;
extern SaveData    D_8018EB90;
extern u8          D_8018ED11;
extern u8          D_8018ED12;
extern u8          D_8018ED13;
extern u8          gSaveDataSoundMode; // D_8018ED14
extern u8          D_8018ED89;
extern u8          D_8018ED8A;
extern u8          D_8018ED8B;
extern u8          D_8018ED8E; // D_8018EB90.checksumBackup[1]
extern u8          D_8018ED8F; // D_8018EB90.checksumBackup[2]
extern s8          D_8018EDE5;
extern s8          D_8018EDE6;
extern s8          D_8018EDE7;
extern u8          gSoundMode; // D_8018EDF2
extern s8          gTimeTrialDataCourseIndex; // D_8018EDF7
extern s8          gCourseRecordsMenuSelection; // D_8018EDF8
extern s32         gMenuTimingCounter; // D_8018EE00
extern s8          gCupSelection; // D_8018EE09
extern s8          gCupCourseSelection; // D_8018EE0B


#endif /* CODE_800B045E0_H */
