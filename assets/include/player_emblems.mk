PLAYER_EMBLEM_DIR := assets/player_emblems

PLAYER_EMBLEM_PALETTE := $(PLAYER_EMBLEM_DIR)/gTLUTPlayerEmblem.png

PLAYER_EMBLEM_PNGS := \
$(PLAYER_EMBLEM_DIR)/gTexturePlayerEmblem1p.png \
$(PLAYER_EMBLEM_DIR)/gTexturePlayerEmblem2p.png \
$(PLAYER_EMBLEM_DIR)/gTexturePlayerEmblem3p.png \
$(PLAYER_EMBLEM_DIR)/gTexturePlayerEmblem4p.png

PLAYER_EMBLEM_EXPORT_SENTINEL := $(PLAYER_EMBLEM_DIR)/.export

$(BUILD_DIR)/src/common_textures.inc.o: $(PLAYER_EMBLEM_PNGS:%.png=%.inc.c) $(PLAYER_EMBLEM_PALETTE:%.png=%.inc.c)

$(PLAYER_EMBLEM_PNGS:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(PLAYER_EMBLEM_PALETTE)

$(PLAYER_EMBLEM_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(PLAYER_EMBLEM_PNGS) $(PLAYER_EMBLEM_PALETTE): $(PLAYER_EMBLEM_EXPORT_SENTINEL) ;

$(PLAYER_EMBLEM_EXPORT_SENTINEL): $(ASSET_DIR)/player_emblems.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_player_emblems
distclean_player_emblems:
	rm -rf $(PLAYER_EMBLEM_DIR)

distclean_assets: distclean_player_emblems
