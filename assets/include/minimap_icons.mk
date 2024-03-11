MINIMAP_ICONS_DIR := assets/minimap_icons

MINIMAP_ICONS_PNG := \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_finish_line.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_mario.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_luigi.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_yoshi.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_toad.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_donkey_kong.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_wario.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_peach.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_kart_bowser.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_progress_dot.png

MINIMAP_ICONS_EXPORT_SENTINEL := $(MINIMAP_ICONS_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.inc.o: $(MINIMAP_ICONS_PNG:%.png=%.inc.c)

$(MINIMAP_ICONS_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(MINIMAP_ICONS_PNG): $(MINIMAP_ICONS_EXPORT_SENTINEL) ;

$(MINIMAP_ICONS_EXPORT_SENTINEL): $(ASSET_DIR)/minimap_icons.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_minimap_icons
distclean_minimap_icons:
	rm -rf $(MINIMAP_ICONS_DIR)

distclean_assets: distclean_minimap_icons
