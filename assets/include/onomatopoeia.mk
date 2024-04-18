ONOMATOPOEIA_DIR := assets/onomatopoeia

ONOMATOPOEIA_PALETTE := $(ONOMATOPOEIA_DIR)/gTLUTOnomatopoeia.png

ONOMATOPOEIA_PNG := \
$(ONOMATOPOEIA_DIR)/gTextureOnomatopoeiaCrash1.png \
$(ONOMATOPOEIA_DIR)/gTextureOnomatopoeiaCrash2.png \
$(ONOMATOPOEIA_DIR)/gTextureOnomatopoeiaWhrrrr1.png \
$(ONOMATOPOEIA_DIR)/gTextureOnomatopoeiaWhrrrr2.png \
$(ONOMATOPOEIA_DIR)/gTextureOnomatopoeiaPoomp1.png \
$(ONOMATOPOEIA_DIR)/gTextureOnomatopoeiaPoomp2.png \
$(ONOMATOPOEIA_DIR)/gTextureBalloon1.png \
$(ONOMATOPOEIA_DIR)/gTextureBalloon2.png

ONOMATOPOEIA_EXPORT_SENTINEL := $(ONOMATOPOEIA_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(ONOMATOPOEIA_PNG:%.png=%.mio0)
$(BUILD_DIR)/src/data/some_data.o: $(ONOMATOPOEIA_PALETTE:%.png=%.inc.c)

$(ONOMATOPOEIA_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(V)$(MIO0TOOL) -c $< $@

$(ONOMATOPOEIA_PNG:%.png=%.bin): %.bin : %.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(ONOMATOPOEIA_PALETTE)

$(ONOMATOPOEIA_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(ONOMATOPOEIA_PNG) $(ONOMATOPOEIA_PALETTE): $(ONOMATOPOEIA_EXPORT_SENTINEL) ;

$(ONOMATOPOEIA_EXPORT_SENTINEL): $(ASSET_DIR)/onomatopoeia.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_onomatopoeia
distclean_onomatopoeia:
	rm -rf $(ONOMATOPOEIA_DIR)

distclean_assets: distclean_onomatopoeia
