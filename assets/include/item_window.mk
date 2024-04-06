ITEM_WINDOW_DIR := assets/item_window

ITEM_WINDOW_PALETTES := \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_none.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_banana.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_banana_bunch.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_mushroom.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_double_mushroom.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_triple_mushroom.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_super_mushroom.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_blue_shell.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_boo.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_green_shell.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_triple_green_shell.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_red_shell.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_triple_red_shell.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_star.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_thunder_bolt.png \
$(ITEM_WINDOW_DIR)/common_tlut_item_window_fake_item_box.png

ITEM_WINDOW_PNG := \
$(ITEM_WINDOW_DIR)/common_texture_item_window_none.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_banana.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_banana_bunch.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_mushroom.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_double_mushroom.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_triple_mushroom.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_super_mushroom.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_blue_shell.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_boo.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_green_shell.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_triple_green_shell.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_red_shell.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_triple_red_shell.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_star.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_thunder_bolt.png \
$(ITEM_WINDOW_DIR)/common_texture_item_window_fake_item_box.png

ITEM_WINDOW_EXPORT_SENTINEL := $(ITEM_WINDOW_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.o: $(ITEM_WINDOW_PNG:%.png=%.inc.c) $(ITEM_WINDOW_PALETTES:%.png=%.inc.c)

$(ITEM_WINDOW_DIR)/common_texture_%.inc.c: $(ITEM_WINDOW_DIR)/common_texture_%.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(ITEM_WINDOW_DIR)/common_tlut_$*.png

$(ITEM_WINDOW_PALETTES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(ITEM_WINDOW_PNG) $(ITEM_WINDOW_PALETTES): $(ITEM_WINDOW_EXPORT_SENTINEL) ;

$(ITEM_WINDOW_EXPORT_SENTINEL): $(ASSET_DIR)/item_window.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_item_window
distclean_item_window:
	rm -rf $(ITEM_WINDOW_DIR)

distclean_assets: distclean_item_window
