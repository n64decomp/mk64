FRAPPE_SNOWLAND_DIR := assets/courses/frappe_snowland

FRAPPE_SNOWLAND_SNOWMAN_PALETTE := $(FRAPPE_SNOWLAND_DIR)/gTLUTSnowman.png
FRAPPE_SNOWLAND_SNOW_PALETTE	:= $(FRAPPE_SNOWLAND_DIR)/gTLUTSnow.png
FRAPPE_SNOWLAND_TREE_PALETTE	:= $(FRAPPE_SNOWLAND_DIR)/gTLUTFrappeSnowlandTree.png

FRAPPE_SNOWLAND_SNOWMAN_PNG := \
$(FRAPPE_SNOWLAND_DIR)/gTextureSnowmanHead.png \
$(FRAPPE_SNOWLAND_DIR)/gTextureSnowmanBody.png \

FRAPPE_SNOWLAND_SNOW_PNG := \
$(FRAPPE_SNOWLAND_DIR)/gTextureSnow.png \

FRAPPE_SNOWLAND_TREE_PNG := \
$(FRAPPE_SNOWLAND_DIR)/gTextureFrappeSnowlandTreeLeft.png \
$(FRAPPE_SNOWLAND_DIR)/gTextureFrappeSnowlandTreeRight.png \

FRAPPE_SNOWLAND_EXPORT_SENTINEL := $(FRAPPE_SNOWLAND_DIR)/.export

$(BUILD_DIR)/courses/frappe_snowland/course_data.inc.o: $(FRAPPE_SNOWLAND_SNOWMAN_PNG:%.png=%.inc.c) $(FRAPPE_SNOWLAND_SNOW_PNG:%.png=%.inc.c)
$(BUILD_DIR)/courses/frappe_snowland/course_data.inc.o: $(FRAPPE_SNOWLAND_SNOWMAN_PALETTE:%.png=%.inc.c) $(FRAPPE_SNOWLAND_SNOW_PALETTE:%.png=%.inc.c)
$(BUILD_DIR)/courses/frappe_snowland/course_data.inc.o: $(FRAPPE_SNOWLAND_TREE_PALETTE:%.png=%.inc.c)

$(FRAPPE_SNOWLAND_SNOWMAN_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(FRAPPE_SNOWLAND_SNOWMAN_PALETTE)

$(FRAPPE_SNOWLAND_SNOW_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(FRAPPE_SNOWLAND_SNOW_PALETTE)

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(FRAPPE_SNOWLAND_TREE_PNG:%.png=%.mio0)

$(FRAPPE_SNOWLAND_TREE_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(FRAPPE_SNOWLAND_TREE_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(FRAPPE_SNOWLAND_TREE_PALETTE)

$(FRAPPE_SNOWLAND_SNOWMAN_PALETTE:%.png=%.inc.c) $(FRAPPE_SNOWLAND_SNOW_PALETTE:%.png=%.inc.c) $(FRAPPE_SNOWLAND_TREE_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(FRAPPE_SNOWLAND_SNOWMAN_PNG) $(FRAPPE_SNOWLAND_SNOW_PNG) $(FRAPPE_SNOWLAND_TREE_PNG): $(FRAPPE_SNOWLAND_EXPORT_SENTINEL) ;
$(FRAPPE_SNOWLAND_SNOWMAN_PALETTE) $(FRAPPE_SNOWLAND_SNOW_PALETTE) $(FRAPPE_SNOWLAND_TREE_PALETTE): $(FRAPPE_SNOWLAND_EXPORT_SENTINEL) ;

$(FRAPPE_SNOWLAND_EXPORT_SENTINEL): $(ASSET_DIR)/courses/frappe_snowland.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_frappe_snowland
distclean_frappe_snowland:
	rm -rf $(FRAPPE_SNOWLAND_DIR)

distclean_assets: distclean_frappe_snowland
