HUD_TYPE_C_DIR := assets/hud_type_c

HUD_TYPE_C_FONT_PALETTE := $(HUD_TYPE_C_DIR)/common_tlut_hud_type_C_rank_font.png

HUD_TYPE_C_FONT_PNG := \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_1.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_2.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_3.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_4.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_5.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_6.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_7.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_font_8.png

HUD_TYPE_C_TINY_FONT_PALETTE := $(HUD_TYPE_C_DIR)/common_tlut_hud_type_C_rank_tiny_font.png

HUD_TYPE_C_TINY_FONT_PNG := \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_0.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_1.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_2.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_3.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_4.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_5.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_6.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_7.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_8.png \
$(HUD_TYPE_C_DIR)/common_texture_hud_type_C_rank_tiny_font_9.png

HUD_TYPE_C_PORTRAIT_BORDER_PNG := $(HUD_TYPE_C_DIR)/common_texture_character_portrait_border.png

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
