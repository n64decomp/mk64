OTHER_TEXTURES_DIR := textures/standalone

MARIO_RACEWAY_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_blue_gray.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_yellow_pink.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/flag_red.rgba16.inc.c                 \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_1.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_10.rgba16.inc.c                 \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_5.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_7.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_0.rgba16.inc.c                   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_finish_0.rgba16.inc.c            \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_0.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_1.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_0.rgba16.inc.c            \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_1.rgba16.inc.c            \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_0.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_1.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_1.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_shell_shot_0.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_shell_shot_1.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_yoshi.rgba16.inc.c               \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64619C.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64BB60.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_663F90.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6640B4.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6642A4.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66C8F4.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_670AC8.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_674354.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67B9B0.rgba16.inc.c

$(BUILD_DIR)/courses/mario_raceway/course_textures.linkonly.o: $(MARIO_RACEWAY_TEXTURES)

CHOCO_MOUNTAIN_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_blue_gray.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_backside.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_falling_rocks.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_0.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_1.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_0.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_1.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_yoshi.rgba16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64619C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64647C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_647F4C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64FBF4.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_652B54.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65315C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_653DB0.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6774D8.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_679C04.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67B864.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67DC20.rgba16.inc.c

$(BUILD_DIR)/courses/choco_mountain/course_textures.linkonly.o: $(CHOCO_MOUNTAIN_TEXTURES)

BOWSERS_CASTLE_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_6.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/roof_tile.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_bowser_0.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_bowser_1.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_green_arrow.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64313C.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_651F40.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6522E0.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6528DC.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_653DB0.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66ABA4.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66CA98.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66EBF0.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66ED38.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_673118.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6733CC.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_673990.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_673FF8.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_674B28.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_676C6C.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_676D7C.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_676EA8.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_679D34.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67A370.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67A91C.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67ADF0.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67EFEC.rgba16.inc.c   \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68D834.rgba16.inc.c

$(BUILD_DIR)/courses/bowsers_castle/course_textures.linkonly.o: $(BOWSERS_CASTLE_TEXTURES)

BANSHEE_BOARDWALK_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_welcome_0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_welcome_1.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wood_red_arrow.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wooden_back_0.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wooden_back_1.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_643B3C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6447C4.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64BB60.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64BCCC.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64FBF4.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_651B20.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66262C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_668728.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66A3DC.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66CA98.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66CD64.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66D698.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66E608.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_676FB0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67B388.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_685AC0.ia16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68D940.rgba16.inc.c

$(BUILD_DIR)/courses/banshee_boardwalk/course_textures.linkonly.o: $(BANSHEE_BOARDWALK_TEXTURES)

YOSHI_VALLEY_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_black_white.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/fence_rope.rgba16.inc.c               \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_4.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wood_red_arrow.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_643B3C.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64CC20.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65E2EC.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66EBF0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6775EC.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6846DC.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_685108.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68DEC0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68E2D0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/wood_bridge_slats.rgba16.inc.c

$(BUILD_DIR)/courses/yoshi_valley/course_textures.linkonly.o: $(YOSHI_VALLEY_TEXTURES)

FRAPPE_SNOWLAND_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66CA98.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66EBF0.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_675434.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_677F04.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_678118.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_679258.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67973C.rgba16.inc.c

$(BUILD_DIR)/courses/frappe_snowland/course_textures.linkonly.o: $(FRAPPE_SNOWLAND_TEXTURES)

KOOPA_TROOPA_BEACH_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_12.rgba16.inc.c            \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sand_finish.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wood_red_arrow.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_643430.ia16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_643B3C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6609D0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_660D8C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_669570.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66A3DC.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66CA98.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66DD38.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66EBF0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67BEE8.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/waves_1.rgba16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/waves_2.rgba16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/wheel_steam_engine.rgba16.inc.c

$(BUILD_DIR)/courses/koopa_troopa_beach/course_textures.linkonly.o:  $(KOOPA_TROOPA_BEACH_TEXTURES)

ROYAL_RACEWAY_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/bricks_red.rgba16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/castle_bricks.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/castle_bridge.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_blue_gray.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_pink.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/crown.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/crown_jewel_blue.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/crown_jewel_pink.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/fence_post_wooden.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/flag_red.rgba16.inc.c               \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/flag_red_2.rgba16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_3.rgba16.inc.c                \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_8.rgba16.inc.c                \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_9.rgba16.inc.c                \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_0.rgba16.inc.c                 \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_finish_0.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_0.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_1.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_1.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_yoshi.rgba16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/stainglass_peach_0.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/stainglass_peach_1.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6449D4.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_645134.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64619C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_648508.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64BB60.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64F9E8.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_664408.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6646B8.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_665C0C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6661AC.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6663A4.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_667BAC.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66CA98.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66DB60.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_670AC8.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67FE0C.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/wood_door_1.rgba16.inc.c

$(BUILD_DIR)/courses/royal_raceway/course_textures.linkonly.o: $(ROYAL_RACEWAY_TEXTURES)

LUIGI_RACEWAY_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_blue_gray.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_blue_green.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerbord_yellow_blue.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/flag_red.rgba16.inc.c                \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_11.rgba16.inc.c                \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_3.rgba16.inc.c                 \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_1.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_2.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_finish_1.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_blue_64.rgba16.inc.c            \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_0.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_1.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigi_face_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigi_face_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_1.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_0.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_1.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_shell_shot_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_shell_shot_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_yoshi.rgba16.inc.c              \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64619C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65100C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65112C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_653608.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66C7A8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_670AC8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_671A88.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6735DC.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_673C68.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6747C4.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67BBD8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68272C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682928.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682B24.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682D20.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682F1C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_683118.rgba16.inc.c

$(BUILD_DIR)/courses/luigi_raceway/course_textures.linkonly.o: $(LUIGI_RACEWAY_TEXTURES)

MOO_MOO_FARM_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_2.rgba16.inc.c                 \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_1.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_0.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_1.rgba16.inc.c         \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6442D4.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64440C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6446AC.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64ACAC.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64AF50.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64B090.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64B3F8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64B54C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66D698.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66EBF0.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_674D58.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_675064.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_675220.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6775EC.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_683314.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68CDA0.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/wheel_steam_engine_real.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/wood_door_0.rgba16.inc.c

$(BUILD_DIR)/courses/moo_moo_farm/course_textures.linkonly.o: $(MOO_MOO_FARM_TEXTURES)

TOADS_TURNPIKE_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/grass_11.rgba16.inc.c            \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_2.rgba16.inc.c              \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_3.rgba16.inc.c              \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_4.rgba16.inc.c              \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_5.rgba16.inc.c              \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/road_finish_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_merging_lanes.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_0.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_1.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_toad_green.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_toad_red.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_toad_yellow.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_645134.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64FE68.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65127C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6607C0.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6608C8.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_668228.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_671A88.rgba16.inc.c

$(BUILD_DIR)/courses/toads_turnpike/course_textures.linkonly.o: $(TOADS_TURNPIKE_TEXTURES)

KALIMARI_DESERT_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_blue_gray.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/fence_barbed_wire.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/railroad_crossing_track.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/railroad_track.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_0.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_koopa_air_1.rgba16.inc.c        \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_luigis_1.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_mario_star_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_0.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_nintendo_red_1.rgba16.inc.c     \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_shell_shot_0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_shell_shot_1.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_yoshi.rgba16.inc.c              \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_646CA8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6473E4.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_647994.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_668920.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67291C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67490C.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67D304.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67E010.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67EEAC.rgba16.inc.c

$(BUILD_DIR)/courses/kalimari_desert/course_textures.linkonly.o: $(KALIMARI_DESERT_TEXTURES)

SHERBET_LAND_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wood_red_arrow.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_643B3C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_651428.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_651984.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_662924.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66D024.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_678118.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67842C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67893C.rgba16.inc.c      \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_678CC8.rgba16.inc.c

$(BUILD_DIR)/courses/sherbet_land/course_textures.linkonly.o: $(SHERBET_LAND_TEXTURES)

RAINBOW_ROAD_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_black_white.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/rainbow.rgba16.inc.c                  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/star_outline.ia16.inc.c               \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_662A34.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67A1B8.rgba16.inc.c

$(BUILD_DIR)/courses/rainbow_road/course_textures.linkonly.o: $(RAINBOW_ROAD_TEXTURES)

WARIO_STADIUM := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/checkerboard_black_white.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_wario_face.rgba16.inc.c          \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_643A34.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64C11C.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64C7B4.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_668228.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_668358.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66AEB8.ia16.inc.c             \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66EBF0.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_670AC8.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_677A40.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67E428.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67F15C.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67F450.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68272C.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682928.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682B24.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682D20.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_682F1C.rgba16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_683118.rgba16.inc.c

$(BUILD_DIR)/courses/wario_stadium/course_textures.linkonly.o: $(WARIO_STADIUM)

BLOCK_FORT_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/gray_checkerboard.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/gray_cobblestone.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64275C.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64286C.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_642978.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6442D4.rgba16.inc.c    \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6747C4.rgba16.inc.c

$(BUILD_DIR)/courses/block_fort/course_textures.linkonly.o: $(BLOCK_FORT_TEXTURES)

SKYSCRAPER_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/number_yellow_blue_1.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/number_yellow_blue_2.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/number_yellow_blue_3.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/number_yellow_blue_4.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_645660.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6457D8.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6462C0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64B8D8.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_668608.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67B75C.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6835F0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6864E8.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_686CF0.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6875A8.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_687EE8.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68876C.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_689230.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_689C00.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68A484.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68AC5C.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68B6A4.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68BE6C.rgba16.inc.c       \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_68C310.rgba16.inc.c

$(BUILD_DIR)/courses/skyscraper/course_textures.linkonly.o: $(SKYSCRAPER_TEXTURES)

DOUBLE_DECK_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/gray_cobblestone.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_642978.rgba16.inc.c

$(BUILD_DIR)/courses/double_deck/course_textures.linkonly.o: $(DOUBLE_DECK_TEXTURES)

DKS_JUNGLE_PARKWAY_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/sign_pink_arrow.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_648508.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_654460.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_654F74.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_655998.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_655F38.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_656AF4.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6575C8.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_658370.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65912C.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_659EE8.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65ADE0.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65BB3C.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65C8DC.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65D5D4.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65E2EC.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65E59C.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65EAEC.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65EE38.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_65FB18.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6684F8.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_683844.rgba16.inc.c  \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/waves_0.ia16.inc.c           \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/wood_bridge_slats.rgba16.inc.c

$(BUILD_DIR)/courses/dks_jungle_parkway/course_textures.linkonly.o: $(DKS_JUNGLE_PARKWAY_TEXTURES)

BIG_DONUT_TEXTURES := \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_64BA50.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_66ABA4.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_6747C4.rgba16.inc.c \
$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/texture_67490C.rgba16.inc.c

$(BUILD_DIR)/courses/big_donut/course_textures.linkonly.o: $(BIG_DONUT_TEXTURES)

$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/%.rgba16.inc.c: $(OTHER_TEXTURES_DIR)/%.rgba16.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BUILD_DIR)/$(OTHER_TEXTURES_DIR)/%.ia16.inc.c: $(OTHER_TEXTURES_DIR)/%.ia16.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f ia16
