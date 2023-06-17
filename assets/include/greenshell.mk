GREENSHELL_DIR := assets/greenshell

GREENSHELL_PALETTE := $(GREENSHELL_DIR)/gTLUTGreenShell.png

GREENSHELL_FRAMES := \
$(GREENSHELL_DIR)/gTextureGreenShell01.png \
$(GREENSHELL_DIR)/gTextureGreenShell02.png \
$(GREENSHELL_DIR)/gTextureGreenShell03.png \
$(GREENSHELL_DIR)/gTextureGreenShell04.png \
$(GREENSHELL_DIR)/gTextureGreenShell05.png \
$(GREENSHELL_DIR)/gTextureGreenShell06.png \
$(GREENSHELL_DIR)/gTextureGreenShell07.png \
$(GREENSHELL_DIR)/gTextureGreenShell08.png

GREENSHELL_EXPORT_SENTINEL := $(GREENSHELL_DIR)/.export

ASSET_DIRECTORIES += $(GREENSHELL_DIR)

$(GREENSHELL_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(GREENSHELL_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(GREENSHELL_PALETTE:%.png=%.inc.c)

$(GREENSHELL_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(GREENSHELL_FRAMES) $(GREENSHELL_PALETTE): $(GREENSHELL_EXPORT_SENTINEL) ;

$(GREENSHELL_EXPORT_SENTINEL): $(ASSET_DIR)/greenshell.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
