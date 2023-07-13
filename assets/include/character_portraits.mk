PORTRAITS_DIR := assets/character_portraits

PORTRAIT_PALETTES := \
$(PORTRAITS_DIR)/gTLUTPortraitMario.png \
$(PORTRAITS_DIR)/gTLUTPortraitLuigi.png \
$(PORTRAITS_DIR)/gTLUTPortraitPeach.png \
$(PORTRAITS_DIR)/gTLUTPortraitToad.png \
$(PORTRAITS_DIR)/gTLUTPortraitYoshi.png \
$(PORTRAITS_DIR)/gTLUTPortraitDonkeyKong.png \
$(PORTRAITS_DIR)/gTLUTPortraitWario.png \
$(PORTRAITS_DIR)/gTLUTPortraitBowser.png

PORTRAIT_PNG := \
$(PORTRAITS_DIR)/gTexturePortraitMario.png \
$(PORTRAITS_DIR)/gTexturePortraitLuigi.png \
$(PORTRAITS_DIR)/gTexturePortraitPeach.png \
$(PORTRAITS_DIR)/gTexturePortraitToad.png \
$(PORTRAITS_DIR)/gTexturePortraitYoshi.png \
$(PORTRAITS_DIR)/gTexturePortraitDonkeyKong.png \
$(PORTRAITS_DIR)/gTexturePortraitWario.png \
$(PORTRAITS_DIR)/gTexturePortraitBowser.png

# This is kind of ugly. I think the only fix for it would be to put these two portraits
# and their palette in a separate .mk file. But I think that's even uglier

SPECIAL_PORTRAIT_PALETTE := $(PORTRAITS_DIR)/gTLUTPortraitBombKartAndQuestionMark.png

SPECIAL_PORTRAIT_PNG := \
$(PORTRAITS_DIR)/gTexturePortraitBombKart.png \
$(PORTRAITS_DIR)/gTexturePortraitQuestionMark.png

PORTRAIT_EXPORT_SENTINEL := $(PORTRAITS_DIR)/.export

$(BUILD_DIR)/src/common_textures.inc.o: $(PORTRAIT_PNG:%.png=%.inc.c) $(PORTRAIT_PALETTES:%.png=%.inc.c)
$(BUILD_DIR)/src/common_textures.inc.o: $(SPECIAL_PORTRAIT_PNG:%.png=%.inc.c) $(SPECIAL_PORTRAIT_PALETTE:%.png=%.inc.c)

$(PORTRAIT_PNG:%.png=%.inc.c): $(PORTRAITS_DIR)/gTexturePortrait%.inc.c : $(PORTRAITS_DIR)/gTexturePortrait%.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(PORTRAITS_DIR)/gTLUTPortrait$*.png

$(SPECIAL_PORTRAIT_PNG:%.png=%.inc.c): $(PORTRAITS_DIR)/gTexturePortrait%.inc.c : $(PORTRAITS_DIR)/gTexturePortrait%.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(SPECIAL_PORTRAIT_PALETTE)

$(PORTRAIT_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(SPECIAL_PORTRAIT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(PORTRAIT_PNG) $(SPECIAL_PORTRAIT_PNG) $(PORTRAIT_PALETTES) $(SPECIAL_PORTRAIT_PALETTE): $(PORTRAIT_EXPORT_SENTINEL) ;

$(PORTRAIT_EXPORT_SENTINEL): $(ASSET_DIR)/character_portraits.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_character_portraits
distclean_character_portraits:
	rm -rf $(PORTRAITS_DIR)

distclean_assets: distclean_character_portraits
