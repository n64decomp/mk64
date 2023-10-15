HUD_TYPE_C_DIR := assets/hud_type_c

HUD_TYPE_C_FONT_PALETTE := $(HUD_TYPE_C_DIR)/gTLUTHudTypeCRankFont.png

HUD_TYPE_C_FONT_PNG := \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont1.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont2.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont3.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont4.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont5.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont6.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont7.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankFont8.png

HUD_TYPE_C_TINY_FONT_PALETTE := $(HUD_TYPE_C_DIR)/gTLUTHudTypeCRankTinyFont.png

HUD_TYPE_C_TINY_FONT_PNG := \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont0.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont1.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont2.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont3.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont4.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont5.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont6.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont7.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont8.png \
$(HUD_TYPE_C_DIR)/gTextureHudTypeCRankTinyFont9.png

HUD_TYPE_C_PORTRAIT_BORDER_PNG := $(HUD_TYPE_C_DIR)/gTextureCharacterPortraitBorder.png

HUD_TYPE_C_EXPORT_SENTINEL := $(HUD_TYPE_C_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.inc.o: $(HUD_TYPE_C_FONT_PNG:%.png=%.inc.c) $(HUD_TYPE_C_FONT_PALETTE:%.png=%.inc.c)
$(BUILD_DIR)/src/data/common_textures.inc.o: $(HUD_TYPE_C_TINY_FONT_PNG:%.png=%.inc.c) $(HUD_TYPE_C_TINY_FONT_PALETTE:%.png=%.inc.c)
$(BUILD_DIR)/src/data/common_textures.inc.o: $(HUD_TYPE_C_PORTRAIT_BORDER_PNG:%.png=%.inc.c)

$(HUD_TYPE_C_FONT_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(HUD_TYPE_C_FONT_PALETTE)

$(HUD_TYPE_C_FONT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(HUD_TYPE_C_TINY_FONT_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(HUD_TYPE_C_TINY_FONT_PALETTE)

$(HUD_TYPE_C_TINY_FONT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(HUD_TYPE_C_PORTRAIT_BORDER_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f ia4

$(HUD_TYPE_C_FONT_PNG) $(HUD_TYPE_C_FONT_PALETTE): $(HUD_TYPE_C_EXPORT_SENTINEL) ;
$(HUD_TYPE_C_TINY_FONT_PNG) $(HUD_TYPE_C_TINY_FONT_PALETTE): $(HUD_TYPE_C_EXPORT_SENTINEL) ;
$(HUD_TYPE_C_PORTRAIT_BORDER_PNG): $(HUD_TYPE_C_EXPORT_SENTINEL) ;

$(HUD_TYPE_C_EXPORT_SENTINEL): $(ASSET_DIR)/hud_type_c.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_hud_type_c
distclean_hud_type_c:
	rm -rf $(HUD_TYPE_C_DIR)

distclean_assets: distclean_hud_type_c
