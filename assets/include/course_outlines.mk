COURSE_OUTLINE_DIR := assets/course_outlines

COURSE_OUTLINE_PNG := \
$(COURSE_OUTLINE_DIR)/minimap_mario_raceway.png \
$(COURSE_OUTLINE_DIR)/minimap_choco_mountain.png \
$(COURSE_OUTLINE_DIR)/minimap_bowsers_castle.png \
$(COURSE_OUTLINE_DIR)/minimap_banshee_boardwalk.png \
$(COURSE_OUTLINE_DIR)/minimap_yoshi_valley.png \
$(COURSE_OUTLINE_DIR)/minimap_frappe_snowland.png \
$(COURSE_OUTLINE_DIR)/minimap_koopa_troopa_beach.png \
$(COURSE_OUTLINE_DIR)/minimap_royal_raceway.png \
$(COURSE_OUTLINE_DIR)/minimap_luigi_raceway.png \
$(COURSE_OUTLINE_DIR)/minimap_moo_moo_farm.png \
$(COURSE_OUTLINE_DIR)/minimap_toads_turnpike.png \
$(COURSE_OUTLINE_DIR)/minimap_kalimari_desert.png \
$(COURSE_OUTLINE_DIR)/minimap_sherbet_land.png \
$(COURSE_OUTLINE_DIR)/minimap_rainbow_road.png \
$(COURSE_OUTLINE_DIR)/minimap_wario_stadium.png \
$(COURSE_OUTLINE_DIR)/minimap_block_fort.png \
$(COURSE_OUTLINE_DIR)/minimap_skyscraper.png \
$(COURSE_OUTLINE_DIR)/minimap_double_deck.png \
$(COURSE_OUTLINE_DIR)/minimap_dks_jungle_parkway.png \
$(COURSE_OUTLINE_DIR)/minimap_big_donut.png

COURSE_OUTLINE_EXPORT_SENTINEL := $(COURSE_OUTLINE_DIR)/.export

$(BUILD_DIR)/data/other_textures.o: $(COURSE_OUTLINE_PNG:%.png=%.mio0)

$(COURSE_OUTLINE_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(V)$(MIO0TOOL) -c $< $@

$(COURSE_OUTLINE_PNG:%.png=%.bin): %.bin : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s raw -f i4

$(COURSE_OUTLINE_PNG): $(COURSE_OUTLINE_EXPORT_SENTINEL) ;

$(COURSE_OUTLINE_EXPORT_SENTINEL): $(ASSET_DIR)/course_outlines.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_course_outlines
distclean_course_outlines:
	rm -rf $(COURSE_OUTLINE_DIR)

distclean_assets: distclean_course_outlines
