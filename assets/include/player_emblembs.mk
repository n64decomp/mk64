PLAYER_EMBLEMBS_DIR := assets/player_emblembs

PLAYER_EMBLEMBS_PALETTE := $(PLAYER_EMBLEMBS_DIR)/gTLUTPlayerEmblemb.png

PLAYER_EMBLEMBS_PNGS := \
$(PLAYER_EMBLEMBS_DIR)/gTexturePlayerEmblemb1p.png \
$(PLAYER_EMBLEMBS_DIR)/gTexturePlayerEmblemb2p.png \
$(PLAYER_EMBLEMBS_DIR)/gTexturePlayerEmblemb3p.png \
$(PLAYER_EMBLEMBS_DIR)/gTexturePlayerEmblemb4p.png

PLAYER_EMBLEMBS_EXPORT_SENTINEL := $(PLAYER_EMBLEMBS_DIR)/.export

$(BUILD_DIR)/src/common_textures.inc.o: $(PLAYER_EMBLEMBS_PNGS:%.png=%.inc.c) $(PLAYER_EMBLEMBS_PALETTE:%.png=%.inc.c)

$(PLAYER_EMBLEMBS_PNGS:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(PLAYER_EMBLEMBS_PALETTE)

$(PLAYER_EMBLEMBS_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(PLAYER_EMBLEMBS_PNGS) $(PLAYER_EMBLEMBS_PALETTE): $(PLAYER_EMBLEMBS_EXPORT_SENTINEL) ;

$(PLAYER_EMBLEMBS_EXPORT_SENTINEL): $(ASSET_DIR)/player_emblembs.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_player_emblembs
distclean_player_emblembs:
	rm -rf $(PLAYER_EMBLEMBS_DIR)

distclean_assets: distclean_player_emblembs
