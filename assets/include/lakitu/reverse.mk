REVERSE_DIR := assets/lakitu/reverse

REVERSE_PALETTE := $(REVERSE_DIR)/common_tlut_lakitu_reverse.png

REVERSE_FRAMES := \
$(REVERSE_DIR)/gTextureLakituReverse01.png \
$(REVERSE_DIR)/gTextureLakituReverse02.png \
$(REVERSE_DIR)/gTextureLakituReverse03.png \
$(REVERSE_DIR)/gTextureLakituReverse04.png \
$(REVERSE_DIR)/gTextureLakituReverse05.png \
$(REVERSE_DIR)/gTextureLakituReverse06.png \
$(REVERSE_DIR)/gTextureLakituReverse07.png \
$(REVERSE_DIR)/gTextureLakituReverse08.png \
$(REVERSE_DIR)/gTextureLakituReverse09.png \
$(REVERSE_DIR)/gTextureLakituReverse10.png \
$(REVERSE_DIR)/gTextureLakituReverse11.png \
$(REVERSE_DIR)/gTextureLakituReverse12.png \
$(REVERSE_DIR)/gTextureLakituReverse13.png \
$(REVERSE_DIR)/gTextureLakituReverse14.png \
$(REVERSE_DIR)/gTextureLakituReverse15.png \
$(REVERSE_DIR)/gTextureLakituReverse16.png

REVERSE_EXPORT_SENTINEL := $(REVERSE_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(REVERSE_FRAMES:%.png=%.bin)

# Extraction writes these raw for a version whose palette cannot round trip,
# and removes the png with them. Depend on the extraction, and convert only
# when a png is really there.
$(REVERSE_FRAMES:%.png=%.bin): %.bin : $(REVERSE_EXPORT_SENTINEL)
	$(V)if [ -f $*.png ]; then \
	  $(PRINT) "$(GREEN)Converting:  $(BLUE) $*.png -> $@$(NO_COL)\n"; \
	  $(N64GRAPHICS) -Z $@ -g $*.png -s raw -f ci8 -c rgba16 -p $(REVERSE_PALETTE); \
	fi

$(BUILD_DIR)/src/data/common_textures.o: $(REVERSE_PALETTE:%.png=%.inc.c)

$(REVERSE_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(REVERSE_FRAMES) $(REVERSE_PALETTE): $(REVERSE_EXPORT_SENTINEL)
	@:

$(REVERSE_EXPORT_SENTINEL): assets/lakitu/reverse.json $(ASSET_VERSION_STAMP)
	$(V)$(ASSET_EXTRACT) $(ASSET_BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_lakitu_reverse
distclean_lakitu_reverse:
	rm -rf $(REVERSE_DIR)

distclean_assets: distclean_lakitu_reverse
