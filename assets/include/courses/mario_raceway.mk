MARIO_RACEWAY_DIR := assets/courses/mario_raceway

MARIO_RACEWAY_PIRANHA_PLANT_PALETTE := $(MARIO_RACEWAY_DIR)/gTLUTMarioRacewayPiranhaPlant.png

PIRANHA_PLANT_FRAMES := \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant1.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant2.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant3.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant4.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant5.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant6.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant7.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant8.png \
$(MARIO_RACEWAY_DIR)/gTexturePiranhaPlant9.png

MARIO_RACEWAY_SIGN := \
$(MARIO_RACEWAY_DIR)/gTextureMarioRacewaySignLeft.png \
$(MARIO_RACEWAY_DIR)/gTextureMarioRacewaySignRight.png

PIRANHA_PLANT_EXPORT_SENTINEL := $(MARIO_RACEWAY_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(PIRANHA_PLANT_FRAMES:%.png=%.mio0)

$(PIRANHA_PLANT_FRAMES:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(PIRANHA_PLANT_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(MARIO_RACEWAY_PIRANHA_PLANT_PALETTE)

$(BUILD_DIR)/courses/mario_raceway/course_data.inc.o: $(MARIO_RACEWAY_PIRANHA_PLANT_PALETTE:%.png=%.inc.c) $(MARIO_RACEWAY_SIGN:%.png=%.inc.c)

$(MARIO_RACEWAY_PIRANHA_PLANT_PALETTE:%.png=%.inc.c) $(MARIO_RACEWAY_SIGN:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(PIRANHA_PLANT_FRAMES) $(MARIO_RACEWAY_PIRANHA_PLANT_PALETTE) $(MARIO_RACEWAY_SIGN): $(PIRANHA_PLANT_EXPORT_SENTINEL) ;

$(PIRANHA_PLANT_EXPORT_SENTINEL): $(ASSET_DIR)/courses/mario_raceway.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_mario_raceway
distclean_mario_raceway:
	rm -rf $(MARIO_RACEWAY_DIR)

distclean_assets: distclean_mario_raceway
