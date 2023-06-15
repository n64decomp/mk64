ITEM_WINDOW_DIR := assets/item_window

ITEM_WINDOW_PALETTES := \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowNone.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowBanana.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowBananaBunch.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowMushroom.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowDoubleMushroom.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowTripleMushroom.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowSuperMushroom.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowBlueShell.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowBoo.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowGreenShell.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowTripleGreenShell.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowRedShell.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowTripleRedShell.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowStar.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowThunderBolt.png \
$(ITEM_WINDOW_DIR)/gTLUTItemWindowFakeItemBox.png

ITEM_WINDOW_PNG := \
$(ITEM_WINDOW_DIR)/gTextureItemWindowNone.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowBanana.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowBananaBunch.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowMushroom.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowDoubleMushroom.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowTripleMushroom.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowSuperMushroom.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowBlueShell.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowBoo.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowGreenShell.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowTripleGreenShell.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowRedShell.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowTripleRedShell.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowStar.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowThunderBolt.png \
$(ITEM_WINDOW_DIR)/gTextureItemWindowFakeItemBox.png

ITEM_WINDOW_EXPORT_SENTINEL := $(ITEM_WINDOW_DIR)/.export

ASSET_DIRECTORIES += $(ITEM_WINDOW_DIR)

$(BUILD_DIR)/src/common_textures.inc.o: $(ITEM_WINDOW_PNG:%.png=%.inc.c) $(ITEM_WINDOW_PALETTES:%.png=%.inc.c)

$(ITEM_WINDOW_DIR)/gTexture%.inc.c: $(ITEM_WINDOW_DIR)/gTexture%.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(ITEM_WINDOW_DIR)/gTLUT$*.png

$(ITEM_WINDOW_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(ITEM_WINDOW_PNG) $(ITEM_WINDOW_PALETTES): $(ITEM_WINDOW_EXPORT_SENTINEL) ;

$(ITEM_WINDOW_EXPORT_SENTINEL): $(ASSET_DIR)/item_window.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
