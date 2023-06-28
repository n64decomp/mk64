SHERBET_LAND_DIR := assets/courses/sherbet_land

SHERBET_LAND_ICE := $(SHERBET_LAND_DIR)/gTextureSherbetLandIce.png

PENGUIN_PNG := \
$(SHERBET_LAND_DIR)/gTexturePenguinBeak.png \
$(SHERBET_LAND_DIR)/gTexturePenguinEye.png

SHERBET_LAND_EXPORT_SENTINEL := $(SHERBET_LAND_DIR)/.export

ASSET_DIRECTORIES += $(SHERBET_LAND_DIR)

$(BUILD_DIR)/courses/star_cup/sherbet_land/course_data.inc.o: $(SHERBET_LAND_ICE:%.png=%.inc.c) $(PENGUIN_PNG:%.png=%.inc.c)

$(SHERBET_LAND_ICE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f ia16

$(PENGUIN_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(SHERBET_LAND_PNG) $(PENGUIN_PNG) $(SHERBET_LAND_ICE): $(SHERBET_LAND_EXPORT_SENTINEL) ;

$(SHERBET_LAND_EXPORT_SENTINEL): $(ASSET_DIR)/courses/sherbet_land.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
