PLAYER_EMBLEM_DIR := assets/player_emblems

PLAYER_EMBLEM_PALETTE := $(PLAYER_EMBLEM_DIR)/common_tlut_player_emblem.png

PLAYER_EMBLEM_PNGS := \
$(PLAYER_EMBLEM_DIR)/common_texture_player_emblem_1p.png \
$(PLAYER_EMBLEM_DIR)/common_texture_player_emblem_2p.png \
$(PLAYER_EMBLEM_DIR)/common_texture_player_emblem_3p.png \
$(PLAYER_EMBLEM_DIR)/common_texture_player_emblem_4p.png

PLAYER_EMBLEM_EXPORT_SENTINEL := $(PLAYER_EMBLEM_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.inc.o: $(PLAYER_EMBLEM_PNGS:%.png=%.inc.c) $(PLAYER_EMBLEM_PALETTE:%.png=%.inc.c)

$(PLAYER_EMBLEM_PNGS:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(PLAYER_EMBLEM_PALETTE)

$(PLAYER_EMBLEM_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(PLAYER_EMBLEM_PNGS) $(PLAYER_EMBLEM_PALETTE): $(PLAYER_EMBLEM_EXPORT_SENTINEL) ;

$(PLAYER_EMBLEM_EXPORT_SENTINEL): $(ASSET_DIR)/player_emblems.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_player_emblems
distclean_player_emblems:
	rm -rf $(PLAYER_EMBLEM_DIR)

distclean_assets: distclean_player_emblems
