GREENSHELL_DIR := assets/greenshell

GREENSHELL_PALETTE := $(GREENSHELL_DIR)/common_tlut_green_shell.png

GREENSHELL_FRAMES := \
$(GREENSHELL_DIR)/gTextureGreenShell0.png \
$(GREENSHELL_DIR)/gTextureGreenShell1.png \
$(GREENSHELL_DIR)/gTextureGreenShell2.png \
$(GREENSHELL_DIR)/gTextureGreenShell3.png \
$(GREENSHELL_DIR)/gTextureGreenShell4.png \
$(GREENSHELL_DIR)/gTextureGreenShell5.png \
$(GREENSHELL_DIR)/gTextureGreenShell6.png \
$(GREENSHELL_DIR)/gTextureGreenShell7.png

GREENSHELL_EXPORT_SENTINEL := $(GREENSHELL_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(GREENSHELL_FRAMES:%.png=%.mio0)

$(GREENSHELL_FRAMES:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(GREENSHELL_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(GREENSHELL_PALETTE)

$(BUILD_DIR)/src/data/common_textures.inc.o: $(GREENSHELL_PALETTE:%.png=%.inc.c)

$(GREENSHELL_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(GREENSHELL_FRAMES) $(GREENSHELL_PALETTE): $(GREENSHELL_EXPORT_SENTINEL) ;

$(GREENSHELL_EXPORT_SENTINEL): $(ASSET_DIR)/greenshell.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_greenshell
distclean_greenshell:
	rm -rf $(GREENSHELL_DIR)

distclean_assets: distclean_greenshell
