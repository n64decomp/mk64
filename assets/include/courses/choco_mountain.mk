CHOCO_MOUNTAIN_DIR := assets/courses/choco_mountain

CHOCO_MOUNTAIN_PNG := \
$(CHOCO_MOUNTAIN_DIR)/gTextureChocoMountainWall.png \
$(CHOCO_MOUNTAIN_DIR)/gTextureChocoMountainRock.png

CHOCO_MOUNTAIN_COURSE_MODEL := $(CHOCO_MOUNTAIN_DIR)/gCourseModelChocoMountain.inc.mk64vtx

CHOCO_MOUNTAIN_MODELS := \
$(CHOCO_MOUNTAIN_DIR)/gModelChocoMountain6B38.inc.vtx

CHOCO_MOUNTAIN_EXPORT_SENTINEL := $(CHOCO_MOUNTAIN_DIR)/.export

$(BUILD_DIR)/courses/flower_cup/choco_mountain/model.inc.o: $(CHOCO_MOUNTAIN_COURSE_MODEL)

$(BUILD_DIR)/courses/flower_cup/choco_mountain/course_data.inc.o: $(CHOCO_MOUNTAIN_PNG:%.png=%.inc.c) $(CHOCO_MOUNTAIN_MODELS)

$(CHOCO_MOUNTAIN_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(CHOCO_MOUNTAIN_PNG) $(CHOCO_MOUNTAIN_COURSE_MODEL) $(CHOCO_MOUNTAIN_MODELS): $(CHOCO_MOUNTAIN_EXPORT_SENTINEL) ;

$(CHOCO_MOUNTAIN_EXPORT_SENTINEL): $(ASSET_DIR)/courses/choco_mountain.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_choco_mountain
distclean_choco_mountain:
	rm -rf $(CHOCO_MOUNTAIN_DIR)
	rm -rf $(CHOCO_MOUNTAIN_COURSE_MODEL)

distclean_assets: distclean_choco_mountain
