YOSHI_VALLEY_DIR := assets/courses/yoshi_valley

YOSHI_VALLEY_PNG := \
$(YOSHI_VALLEY_DIR)/gTextureYoshiValleyYoshiFlag.png \
$(YOSHI_VALLEY_DIR)/gTextureYoshiValleyEggSpot.png \
$(YOSHI_VALLEY_DIR)/gTextureYoshiValleyEgg.png

YOSHI_VALLEY_HEDGEHOG_PALETTE := $(YOSHI_VALLEY_DIR)/gTLUTYoshiValleyHedgehog.png
YOSHI_VALLEY_HEDGEHOG_PNG	 := $(YOSHI_VALLEY_DIR)/gTextureYoshiValleyHedgehog.png

YOSHI_VALLEY_EXPORT_SENTINEL := $(YOSHI_VALLEY_DIR)/.export

$(BUILD_DIR)/courses/yoshi_valley/course_data.inc.o: $(YOSHI_VALLEY_HEDGEHOG_PALETTE:%.png=%.inc.c) $(YOSHI_VALLEY_HEDGEHOG_PNG:%.png=%.inc.c)
$(BUILD_DIR)/courses/yoshi_valley/course_data.inc.o: $(YOSHI_VALLEY_PNG:%.png=%.inc.c)

$(YOSHI_VALLEY_HEDGEHOG_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(YOSHI_VALLEY_HEDGEHOG_PALETTE)

$(YOSHI_VALLEY_PNG:%.png=%.inc.c) $(YOSHI_VALLEY_HEDGEHOG_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(YOSHI_VALLEY_HEDGEHOG_PALETTE) $(YOSHI_VALLEY_HEDGEHOG_PNG): $(YOSHI_VALLEY_EXPORT_SENTINEL) ;
$(YOSHI_VALLEY_PNG): $(YOSHI_VALLEY_EXPORT_SENTINEL) ;

$(YOSHI_VALLEY_EXPORT_SENTINEL): $(ASSET_DIR)/courses/yoshi_valley.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_yoshi_valley
distclean_yoshi_valley:
	rm -rf $(YOSHI_VALLEY_DIR)

distclean_assets: distclean_yoshi_valley
