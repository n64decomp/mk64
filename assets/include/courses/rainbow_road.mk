RAINBOW_ROAD_DIR := assets/courses/rainbow_road

RAINBOW_ROAD_MUSHROOM_PALETTES := \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMushroom1.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMushroom2.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMushroom3.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMushroom4.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMushroom5.png

RAINBOW_ROAD_MUSHROOM_PNG := $(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonMushroom.png

RAINBOW_ROAD_MARIO_PALETTES := \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMario1.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMario2.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMario3.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMario4.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMario5.png

RAINBOW_ROAD_MARIO_PNG := $(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonMario.png

RAINBOW_ROAD_BOO_PALETTES := \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBoo1.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBoo2.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBoo3.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBoo4.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBoo5.png

RAINBOW_ROAD_BOO_PNG := $(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonBoo.png

RAINBOW_ROAD_CHARACTER_PALETTES := \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonPeach.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonLuigi.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonDonkeyKong.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonYoshi.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBowser.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonWario.png \
$(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonToad.png

RAINBOW_ROAD_CHARACTER_PNG := \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonPeach.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonLuigi.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonDonkeyKong.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonYoshi.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonBowser.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonWario.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeonToad.png

RAINBOW_ROAD_PNG := \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadSphere.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadReflectionMapMetal.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadReflectionMapGold.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadChainChompTongue.png \
$(RAINBOW_ROAD_DIR)/gTextureRainbowRoadChainChompEye.png

RAINBOW_ROAD_EXPORT_SENTINEL := $(RAINBOW_ROAD_DIR)/.export

$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_MUSHROOM_PNG:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_MARIO_PNG:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_BOO_PNG:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_CHARACTER_PNG:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_MUSHROOM_PALETTES:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_MARIO_PALETTES:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_BOO_PALETTES:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_CHARACTER_PALETTES:%.png=%.inc.c)
$(BUILD_DIR)/courses/rainbow_road/course_data.o: $(RAINBOW_ROAD_PNG:%.png=%.inc.c)

$(RAINBOW_ROAD_MUSHROOM_PNG:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMushroom4.png

$(RAINBOW_ROAD_MARIO_PNG:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonMario5.png

$(RAINBOW_ROAD_BOO_PNG:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeonBoo5.png

$(RAINBOW_ROAD_CHARACTER_PNG:%.png=%.inc.c) : $(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeon%.inc.c : $(RAINBOW_ROAD_DIR)/gTextureRainbowRoadNeon%.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(RAINBOW_ROAD_DIR)/gTLUTRainbowRoadNeon$*.png

$(RAINBOW_ROAD_MUSHROOM_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(RAINBOW_ROAD_MARIO_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(RAINBOW_ROAD_BOO_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(RAINBOW_ROAD_CHARACTER_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(RAINBOW_ROAD_PNG:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(RAINBOW_ROAD_MUSHROOM_PALETTES) $(RAINBOW_ROAD_MUSHROOM_PNG): $(RAINBOW_ROAD_EXPORT_SENTINEL) ;
$(RAINBOW_ROAD_MARIO_PALETTES) $(RAINBOW_ROAD_MARIO_PNG): $(RAINBOW_ROAD_EXPORT_SENTINEL) ;
$(RAINBOW_ROAD_BOO_PALETTES) $(RAINBOW_ROAD_BOO_PNG): $(RAINBOW_ROAD_EXPORT_SENTINEL) ;
$(RAINBOW_ROAD_CHARACTER_PALETTES) $(RAINBOW_ROAD_CHARACTER_PNG): $(RAINBOW_ROAD_EXPORT_SENTINEL) ;
$(RAINBOW_ROAD_PNG): $(RAINBOW_ROAD_EXPORT_SENTINEL) ;

$(RAINBOW_ROAD_EXPORT_SENTINEL): $(ASSET_DIR)/courses/rainbow_road.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_rainbow_road
distclean_rainbow_road:
	rm -rf $(RAINBOW_ROAD_DIR)

distclean_assets: distclean_rainbow_road
