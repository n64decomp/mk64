FISHING_DIR := assets/lakitu/fishing

FISHING_PALETTE := $(FISHING_DIR)/gTLUTLakituFishing.png

FISHING_FRAMES := \
$(FISHING_DIR)/gTextureLakituFishing1.png \
$(FISHING_DIR)/gTextureLakituFishing2.png \
$(FISHING_DIR)/gTextureLakituFishing3.png \
$(FISHING_DIR)/gTextureLakituFishing4.png

FISHING_EXPORT_SENTINEL := $(FISHING_DIR)/.export

ASSET_DIRECTORIES += $(FISHING_DIR)

$(FISHING_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(FISHING_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(FISHING_PALETTE:%.png=%.inc.c)

$(FISHING_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(FISHING_FRAMES) $(FISHING_PALETTE): $(FISHING_EXPORT_SENTINEL) ;

$(FISHING_EXPORT_SENTINEL): assets/lakitu/fishing.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
