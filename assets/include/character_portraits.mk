PORTRAITS_DIR := assets/character_portraits

PORTRAIT_PALETTES := \
$(PORTRAITS_DIR)/common_tlut_portrait_mario.png \
$(PORTRAITS_DIR)/common_tlut_portrait_luigi.png \
$(PORTRAITS_DIR)/common_tlut_portrait_peach.png \
$(PORTRAITS_DIR)/common_tlut_portrait_toad.png \
$(PORTRAITS_DIR)/common_tlut_portrait_yoshi.png \
$(PORTRAITS_DIR)/common_tlut_portrait_donkey_kong.png \
$(PORTRAITS_DIR)/common_tlut_portrait_wario.png \
$(PORTRAITS_DIR)/common_tlut_portrait_bowser.png

PORTRAIT_PNG := \
$(PORTRAITS_DIR)/common_texture_portrait_mario.png \
$(PORTRAITS_DIR)/common_texture_portrait_luigi.png \
$(PORTRAITS_DIR)/common_texture_portrait_peach.png \
$(PORTRAITS_DIR)/common_texture_portrait_toad.png \
$(PORTRAITS_DIR)/common_texture_portrait_yoshi.png \
$(PORTRAITS_DIR)/common_texture_portrait_donkey_kong.png \
$(PORTRAITS_DIR)/common_texture_portrait_wario.png \
$(PORTRAITS_DIR)/common_texture_portrait_bowser.png

# This is kind of ugly. I think the only fix for it would be to put these two portraits
# and their palette in a separate .mk file. But I think that's even uglier

SPECIAL_PORTRAIT_PALETTE := $(PORTRAITS_DIR)/common_tlut_portrait_bomb_kart_and_question_mark.png

SPECIAL_PORTRAIT_PNG := \
$(PORTRAITS_DIR)/common_texture_portrait_bomb_kart.png \
$(PORTRAITS_DIR)/common_texture_portrait_question_mark.png

PORTRAIT_EXPORT_SENTINEL := $(PORTRAITS_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.inc.o: $(PORTRAIT_PNG:%.png=%.inc.c) $(PORTRAIT_PALETTES:%.png=%.inc.c)
$(BUILD_DIR)/src/data/common_textures.inc.o: $(SPECIAL_PORTRAIT_PNG:%.png=%.inc.c) $(SPECIAL_PORTRAIT_PALETTE:%.png=%.inc.c)

$(PORTRAIT_PNG:%.png=%.inc.c): $(PORTRAITS_DIR)/common_texture_portrait_%.inc.c : $(PORTRAITS_DIR)/common_texture_portrait_%.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(PORTRAITS_DIR)/common_tlut_portrait_$*.png

$(SPECIAL_PORTRAIT_PNG:%.png=%.inc.c): $(PORTRAITS_DIR)/common_texture_portrait_%.inc.c : $(PORTRAITS_DIR)/common_texture_portrait_%.png
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
