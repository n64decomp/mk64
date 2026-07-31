NOLIGHTS_DIR := assets/lakitu/nolights

NOLIGHTS_PALETTE := $(NOLIGHTS_DIR)/common_tlut_lakitu_no_lights.png

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

# Extraction writes these raw for a version whose palette cannot round trip,
# and removes the png with them. Depend on the extraction, and convert only
# when a png is really there.
$(NOLIGHTS_FRAMES:%.png=%.bin): %.bin : $(NOLIGHTS_EXPORT_SENTINEL)
	$(V)if [ -f $*.png ]; then \
	  $(PRINT) "$(GREEN)Converting:  $(BLUE) $*.png -> $@$(NO_COL)\n"; \
	  $(N64GRAPHICS) -Z $@ -g $*.png -s raw -f ci8 -c rgba16 -p $(NOLIGHTS_PALETTE); \
	fi

$(BUILD_DIR)/src/data/common_textures.o: $(NOLIGHTS_PALETTE:%.png=%.inc.c)

$(NOLIGHTS_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(NOLIGHTS_FRAMES) $(NOLIGHTS_PALETTE): $(NOLIGHTS_EXPORT_SENTINEL)
	@:

$(NOLIGHTS_EXPORT_SENTINEL): assets/lakitu/nolights.json $(ASSET_VERSION_STAMP)
	$(V)$(ASSET_EXTRACT) $(ASSET_BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_lakitu_nolights
distclean_lakitu_nolights:
	rm -rf $(NOLIGHTS_DIR)

distclean_assets: distclean_lakitu_nolights
