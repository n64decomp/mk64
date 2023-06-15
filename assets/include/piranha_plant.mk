PIRANHA_PLANT_DIR := assets/piranha_plant

PIRANHA_PLANT_PALETTE := $(PIRANHA_PLANT_DIR)/gTLUTPiranhaPlant.png

PIRANHA_PLANT_FRAMES := \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant1.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant2.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant3.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant4.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant5.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant6.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant7.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant8.png \
$(PIRANHA_PLANT_DIR)/gTexturePiranhaPlant9.png

PIRANHA_PLANT_EXPORT_SENTINEL := $(PIRANHA_PLANT_DIR)/.export

ASSET_DIRECTORIES += $(PIRANHA_PLANT_DIR)

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(PIRANHA_PLANT_FRAMES:%.png=%.mio0)

$(PIRANHA_PLANT_FRAMES:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(PIRANHA_PLANT_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(PIRANHA_PLANT_PALETTE)

$(BUILD_DIR)/courses/flower_cup/mario_raceway/course_data.inc.o: $(PIRANHA_PLANT_PALETTE:%.png=%.inc.c)

$(PIRANHA_PLANT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(PIRANHA_PLANT_FRAMES) $(PIRANHA_PLANT_PALETTE): $(PIRANHA_PLANT_EXPORT_SENTINEL) ;

$(PIRANHA_PLANT_EXPORT_SENTINEL): $(ASSET_DIR)/piranha_plant.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
