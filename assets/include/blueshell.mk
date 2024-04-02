BLUESHELL_DIR := assets/blueshell

BLUESHELL_PALETTE := $(BLUESHELL_DIR)/common_tlut_blue_shell.png

BLUESHELL_FRAMES := \
$(BLUESHELL_DIR)/gTextureBlueShell0.png \
$(BLUESHELL_DIR)/gTextureBlueShell1.png \
$(BLUESHELL_DIR)/gTextureBlueShell2.png \
$(BLUESHELL_DIR)/gTextureBlueShell3.png \
$(BLUESHELL_DIR)/gTextureBlueShell4.png \
$(BLUESHELL_DIR)/gTextureBlueShell5.png \
$(BLUESHELL_DIR)/gTextureBlueShell6.png \
$(BLUESHELL_DIR)/gTextureBlueShell7.png

BLUESHELL_EXPORT_SENTINEL := $(BLUESHELL_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(BLUESHELL_FRAMES:%.png=%.mio0)

$(BLUESHELL_FRAMES:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(BLUESHELL_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(BLUESHELL_PALETTE)

$(BUILD_DIR)/src/data/common_textures.o: $(BLUESHELL_PALETTE:%.png=%.inc.c)

$(BLUESHELL_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BLUESHELL_FRAMES) $(BLUESHELL_PALETTE): $(BLUESHELL_EXPORT_SENTINEL) ;

$(BLUESHELL_EXPORT_SENTINEL): $(ASSET_DIR)/blueshell.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_blueshell
distclean_blueshell:
	rm -rf $(BLUESHELL_DIR)

distclean_assets: distclean_blueshell
