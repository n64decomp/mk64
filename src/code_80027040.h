#ifndef CODE_80027040_H
#define CODE_80027040_H

#include "macros.h"
#include "common_structs.h"

/* Function Prototypes */

void func_80027040(Player*, s8, s8, s8, s8);
void func_80027560(Player*, s8, s8, s8, s8);
void func_80027A20(Player*, s8, s8, s8);
void func_80027BDC(UNUSED Player*, s32, void*, u16);
void func_80027C74(UNUSED Player*, s32, void*, u16);

/* This is where I'd put my static data, if I had any */

extern u16 D_800DDEB0[];

extern u8 _kart_texturesSegmentRomStart[];

extern uintptr_t **gKartMarioTable0[];
extern uintptr_t **gKartLuigiTable0[];
extern uintptr_t **gKartYoshiTable0[];
extern uintptr_t **gKartToadTable0[];
extern uintptr_t **gKartDKTable0[];
extern uintptr_t **gKartWarioTable0[];
extern uintptr_t **gKartPeachTable0[];
extern uintptr_t **gKartBowserTable0[];

extern uintptr_t **gKartMarioTable1[];
extern uintptr_t **gKartLuigiTable1[];
extern uintptr_t **gKartYoshiTable1[];
extern uintptr_t **gKartToadTable1[];
extern uintptr_t **gKartDKTable1[];
extern uintptr_t **gKartWarioTable1[];
extern uintptr_t **gKartPeachTable1[];
extern uintptr_t **gKartBowserTable1[];

extern uintptr_t ***gKartTextureTable0[];
extern uintptr_t ***gKartTextureTable1[];

extern uintptr_t *gKartPalettes[];

extern uintptr_t *gKartTextureGroup18s[];

extern uintptr_t *gKartMarioGroup8[];
extern uintptr_t *gKartMarioGroup7[];
extern uintptr_t *gKartMarioGroup6[];
extern uintptr_t *gKartMarioGroup5[];
extern uintptr_t *gKartMarioGroup4[];
extern uintptr_t *gKartMarioGroup3[];
extern uintptr_t *gKartMarioGroup2[];
extern uintptr_t *gKartMarioGroup1[];
extern uintptr_t *gKartMarioGroup0[];

extern uintptr_t *gKartLuigiGroup8[];
extern uintptr_t *gKartLuigiGroup7[];
extern uintptr_t *gKartLuigiGroup6[];
extern uintptr_t *gKartLuigiGroup5[];
extern uintptr_t *gKartLuigiGroup4[];
extern uintptr_t *gKartLuigiGroup3[];
extern uintptr_t *gKartLuigiGroup2[];
extern uintptr_t *gKartLuigiGroup1[];
extern uintptr_t *gKartLuigiGroup0[];

extern uintptr_t *gKartYoshiGroup8[];
extern uintptr_t *gKartYoshiGroup7[];
extern uintptr_t *gKartYoshiGroup6[];
extern uintptr_t *gKartYoshiGroup5[];
extern uintptr_t *gKartYoshiGroup4[];
extern uintptr_t *gKartYoshiGroup3[];
extern uintptr_t *gKartYoshiGroup2[];
extern uintptr_t *gKartYoshiGroup1[];
extern uintptr_t *gKartYoshiGroup0[];

extern uintptr_t *gKartToadGroup8[];
extern uintptr_t *gKartToadGroup7[];
extern uintptr_t *gKartToadGroup6[];
extern uintptr_t *gKartToadGroup5[];
extern uintptr_t *gKartToadGroup4[];
extern uintptr_t *gKartToadGroup3[];
extern uintptr_t *gKartToadGroup2[];
extern uintptr_t *gKartToadGroup1[];
extern uintptr_t *gKartToadGroup0[];

extern uintptr_t *gKartDKGroup8[];
extern uintptr_t *gKartDKGroup7[];
extern uintptr_t *gKartDKGroup6[];
extern uintptr_t *gKartDKGroup5[];
extern uintptr_t *gKartDKGroup4[];
extern uintptr_t *gKartDKGroup3[];
extern uintptr_t *gKartDKGroup2[];
extern uintptr_t *gKartDKGroup1[];
extern uintptr_t *gKartDKGroup0[];

extern uintptr_t *gKartWarioGroup8[];
extern uintptr_t *gKartWarioGroup7[];
extern uintptr_t *gKartWarioGroup6[];
extern uintptr_t *gKartWarioGroup5[];
extern uintptr_t *gKartWarioGroup4[];
extern uintptr_t *gKartWarioGroup3[];
extern uintptr_t *gKartWarioGroup2[];
extern uintptr_t *gKartWarioGroup1[];
extern uintptr_t *gKartWarioGroup0[];

extern uintptr_t *gKartPeachGroup8[];
extern uintptr_t *gKartPeachGroup7[];
extern uintptr_t *gKartPeachGroup6[];
extern uintptr_t *gKartPeachGroup5[];
extern uintptr_t *gKartPeachGroup4[];
extern uintptr_t *gKartPeachGroup3[];
extern uintptr_t *gKartPeachGroup2[];
extern uintptr_t *gKartPeachGroup1[];
extern uintptr_t *gKartPeachGroup0[];

extern uintptr_t *gKartBowserGroup8[];
extern uintptr_t *gKartBowserGroup7[];
extern uintptr_t *gKartBowserGroup6[];
extern uintptr_t *gKartBowserGroup5[];
extern uintptr_t *gKartBowserGroup4[];
extern uintptr_t *gKartBowserGroup3[];
extern uintptr_t *gKartBowserGroup2[];
extern uintptr_t *gKartBowserGroup1[];
extern uintptr_t *gKartBowserGroup0[];

extern uintptr_t *gKartMarioGroup17[];
extern uintptr_t *gKartMarioGroup16[];
extern uintptr_t *gKartMarioGroup15[];
extern uintptr_t *gKartMarioGroup14[];
extern uintptr_t *gKartMarioGroup13[];
extern uintptr_t *gKartMarioGroup12[];
extern uintptr_t *gKartMarioGroup11[];
extern uintptr_t *gKartMarioGroup10[];
extern uintptr_t *gKartMarioGroup9[];

extern uintptr_t *gKartLuigiGroup17[];
extern uintptr_t *gKartLuigiGroup16[];
extern uintptr_t *gKartLuigiGroup15[];
extern uintptr_t *gKartLuigiGroup14[];
extern uintptr_t *gKartLuigiGroup13[];
extern uintptr_t *gKartLuigiGroup12[];
extern uintptr_t *gKartLuigiGroup11[];
extern uintptr_t *gKartLuigiGroup10[];
extern uintptr_t *gKartLuigiGroup9[];

extern uintptr_t *gKartYoshiGroup17[];
extern uintptr_t *gKartYoshiGroup16[];
extern uintptr_t *gKartYoshiGroup15[];
extern uintptr_t *gKartYoshiGroup14[];
extern uintptr_t *gKartYoshiGroup13[];
extern uintptr_t *gKartYoshiGroup12[];
extern uintptr_t *gKartYoshiGroup11[];
extern uintptr_t *gKartYoshiGroup10[];
extern uintptr_t *gKartYoshiGroup9[];

extern uintptr_t *gKartToadGroup17[];
extern uintptr_t *gKartToadGroup16[];
extern uintptr_t *gKartToadGroup15[];
extern uintptr_t *gKartToadGroup14[];
extern uintptr_t *gKartToadGroup13[];
extern uintptr_t *gKartToadGroup12[];
extern uintptr_t *gKartToadGroup11[];
extern uintptr_t *gKartToadGroup10[];
extern uintptr_t *gKartToadGroup9[];

extern uintptr_t *gKartDKGroup17[];
extern uintptr_t *gKartDKGroup16[];
extern uintptr_t *gKartDKGroup15[];
extern uintptr_t *gKartDKGroup14[];
extern uintptr_t *gKartDKGroup13[];
extern uintptr_t *gKartDKGroup12[];
extern uintptr_t *gKartDKGroup11[];
extern uintptr_t *gKartDKGroup10[];
extern uintptr_t *gKartDKGroup9[];

extern uintptr_t *gKartWarioGroup17[];
extern uintptr_t *gKartWarioGroup16[];
extern uintptr_t *gKartWarioGroup15[];
extern uintptr_t *gKartWarioGroup14[];
extern uintptr_t *gKartWarioGroup13[];
extern uintptr_t *gKartWarioGroup12[];
extern uintptr_t *gKartWarioGroup11[];
extern uintptr_t *gKartWarioGroup10[];
extern uintptr_t *gKartWarioGroup9[];

extern uintptr_t *gKartPeachGroup17[];
extern uintptr_t *gKartPeachGroup16[];
extern uintptr_t *gKartPeachGroup15[];
extern uintptr_t *gKartPeachGroup14[];
extern uintptr_t *gKartPeachGroup13[];
extern uintptr_t *gKartPeachGroup12[];
extern uintptr_t *gKartPeachGroup11[];
extern uintptr_t *gKartPeachGroup10[];
extern uintptr_t *gKartPeachGroup9[];

extern uintptr_t *gKartBowserGroup17[];
extern uintptr_t *gKartBowserGroup16[];
extern uintptr_t *gKartBowserGroup15[];
extern uintptr_t *gKartBowserGroup14[];
extern uintptr_t *gKartBowserGroup13[];
extern uintptr_t *gKartBowserGroup12[];
extern uintptr_t *gKartBowserGroup11[];
extern uintptr_t *gKartBowserGroup10[];
extern uintptr_t *gKartBowserGroup9[];

#endif
