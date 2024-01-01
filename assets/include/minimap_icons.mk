MINIMAP_ICONS_DIR := assets/minimap_icons

MINIMAP_ICONS_PNG := \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapFinishLine.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartMario.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartLuigi.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartYoshi.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartToad.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartDonkeyKong.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartWario.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartPeach.png \
$(MINIMAP_ICONS_DIR)/gTextureMiniMapKartBowser.png \
$(MINIMAP_ICONS_DIR)/common_texture_minimap_progress_dot.png

MINIMAP_ICONS_EXPORT_SENTINEL := $(MINIMAP_ICONS_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.inc.o: $(MINIMAP_ICONS_PNG:%.png=%.inc.c)

$(MINIMAP_ICONS_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(MINIMAP_ICONS_PNG): $(MINIMAP_ICONS_EXPORT_SENTINEL) ;

$(MINIMAP_ICONS_EXPORT_SENTINEL): $(ASSET_DIR)/minimap_icons.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_minimap_icons
distclean_minimap_icons:
	rm -rf $(MINIMAP_ICONS_DIR)

distclean_assets: distclean_minimap_icons
