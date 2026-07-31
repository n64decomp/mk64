FISHING_DIR := assets/lakitu/fishing

FISHING_PALETTE := $(FISHING_DIR)/common_tlut_lakitu_fishing.png

FISHING_FRAMES := \
$(FISHING_DIR)/gTextureLakituFishing1.png \
$(FISHING_DIR)/gTextureLakituFishing2.png \
$(FISHING_DIR)/gTextureLakituFishing3.png \
$(FISHING_DIR)/gTextureLakituFishing4.png

FISHING_EXPORT_SENTINEL := $(FISHING_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(FISHING_FRAMES:%.png=%.bin)

# Extraction writes these raw for a version whose palette cannot round trip,
# and removes the png with them. Depend on the extraction, and convert only
# when a png is really there.
$(FISHING_FRAMES:%.png=%.bin): %.bin : $(FISHING_EXPORT_SENTINEL)
	$(V)if [ -f $*.png ]; then \
	  $(PRINT) "$(GREEN)Converting:  $(BLUE) $*.png -> $@$(NO_COL)\n"; \
	  $(N64GRAPHICS) -Z $@ -g $*.png -s raw -f ci8 -c rgba16 -p $(FISHING_PALETTE); \
	fi

$(BUILD_DIR)/src/data/common_textures.o: $(FISHING_PALETTE:%.png=%.inc.c)

$(FISHING_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(FISHING_FRAMES) $(FISHING_PALETTE): $(FISHING_EXPORT_SENTINEL)
	@:

$(FISHING_EXPORT_SENTINEL): assets/lakitu/fishing.json $(ASSET_VERSION_STAMP)
	$(V)$(ASSET_EXTRACT) $(ASSET_BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_lakitu_fishing
distclean_lakitu_fishing:
	rm -rf $(FISHING_DIR)

distclean_assets: distclean_lakitu_fishing
