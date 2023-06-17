BLUELIGHT_DIR := assets/lakitu/bluelight

BLUELIGHT_PALETTE := $(BLUELIGHT_DIR)/gTLUTLakituBlueLight.png

BLUELIGHT_FRAMES := \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight1.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight2.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight3.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight4.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight5.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight6.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight7.png \
$(BLUELIGHT_DIR)/gTextureLakituBlueLight8.png

BLUELIGHT_EXPORT_SENTINEL := $(BLUELIGHT_DIR)/.export

ASSET_DIRECTORIES += $(BLUELIGHT_DIR)

$(BLUELIGHT_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(BLUELIGHT_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(BLUELIGHT_PALETTE:%.png=%.inc.c)

$(BLUELIGHT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BLUELIGHT_FRAMES) $(BLUELIGHT_PALETTE): $(BLUELIGHT_EXPORT_SENTINEL) ;

$(BLUELIGHT_EXPORT_SENTINEL): assets/lakitu/bluelight.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
