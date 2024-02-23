COURSE_PREVIEW_DIR := assets/course_previews

COURSE_PREVIEW_PNG := \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewMarioRaceway.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewChocoMountain.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewBowsersCastle.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewBansheeBoardwalk.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewYoshiValley.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewFrappeSnowland.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewKoopaTroopaBeach.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewRoyalRaceway.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewLuigiRaceway.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewMooMooFarm.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewToadsTurnpike.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewKalimariDesert.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewSherbetLand.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewRainbowRoad.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewWarioStadium.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewBlockFort.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewSkyscraper.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewDoubleDeck.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewDksJungleParkway.png \
$(COURSE_PREVIEW_DIR)/gTextureCoursePreviewBigDonut.png

COURSE_PREVIEW_EXPORT_SENTINEL := $(COURSE_PREVIEW_DIR)/.export

$(BUILD_DIR)/src/data/textures.inc.o: $(COURSE_PREVIEW_PNG:%.png=%.mio0)

$(COURSE_PREVIEW_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(COURSE_PREVIEW_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(COURSE_PREVIEW_PNG): $(COURSE_PREVIEW_EXPORT_SENTINEL) ;

$(COURSE_PREVIEW_EXPORT_SENTINEL): $(ASSET_DIR)/course_previews.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_course_previews
distclean_course_previews:
	rm -rf $(COURSE_PREVIEW_DIR)

distclean_assets: distclean_course_previews
