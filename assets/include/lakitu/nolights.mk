NOLIGHTS_DIR := assets/lakitu/nolights

NOLIGHTS_PALETTE := $(NOLIGHTS_DIR)/gTLUTLakituNoLights.png

NOLIGHTS_FRAMES := \
$(NOLIGHTS_DIR)/gTextureLakituNoLights1.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights2.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights3.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights4.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights5.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights6.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights7.png \
$(NOLIGHTS_DIR)/gTextureLakituNoLights8.png

NOLIGHTS_EXPORT_SENTINEL := $(NOLIGHTS_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(NOLIGHTS_FRAMES:%.png=%.bin)

$(NOLIGHTS_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(NOLIGHTS_PALETTE)

$(BUILD_DIR)/src/data/common_textures.inc.o: $(NOLIGHTS_PALETTE:%.png=%.inc.c)

$(NOLIGHTS_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(NOLIGHTS_FRAMES) $(NOLIGHTS_PALETTE): $(NOLIGHTS_EXPORT_SENTINEL) ;

$(NOLIGHTS_EXPORT_SENTINEL): assets/lakitu/nolights.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_lakitu_nolights
distclean_lakitu_nolights:
	rm -rf $(NOLIGHTS_DIR)

distclean_assets: distclean_lakitu_nolights
