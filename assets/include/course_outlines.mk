COURSE_OUTLINE_DIR := assets/course_outlines

COURSE_OUTLINE_PNG := \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineMarioRaceway.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineChocoMountain.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineBowsersCastle.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineBansheeBoardwalk.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineYoshiValley.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineFrappeSnowland.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineKoopaTroopaBeach.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineRoyalRaceway.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineLuigiRaceway.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineMooMooFarm.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineToadsTurnpike.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineKalimariDesert.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineSherbetLand.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineRainbowRoad.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineWarioStadium.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineBlockFort.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineSkyscraper.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineDoubleDeck.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineDksJungleParkway.png \
$(COURSE_OUTLINE_DIR)/gTextureCourseOutlineBigDonut.png

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
