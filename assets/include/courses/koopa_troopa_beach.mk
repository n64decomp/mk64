KOOPA_TROOPA_BEACH_DIR := assets/courses/koopa_troopa_beach

KOOPA_TROOPA_BEACH_CRAB_PALETTE := $(KOOPA_TROOPA_BEACH_DIR)/gTLUTCrab.png

KOOPA_TROOPA_BEACH_CRAB_FRAMES := \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab1.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab2.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab3.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab4.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab5.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab6.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureCrab7.png

KOOPA_TROOPA_BEACH_PNG := \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureKoopaTroopaBirdWing.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureKoopaTroopaBirdEye.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureKoopaTroopaBirdBeak.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureKoopaTroopaPalmFrond.png \
$(KOOPA_TROOPA_BEACH_DIR)/gTextureKoopaTroopaPalmTrunk.png

KOOPA_TROOPA_BEACH_EXPORT_SENTINEL := $(KOOPA_TROOPA_BEACH_DIR)/.export

$(BUILD_DIR)/courses/mushroom_cup/koopa_troopa_beach/course_data.inc.o: $(KOOPA_TROOPA_BEACH_CRAB_PALETTE:%.png=%.inc.c) $(KOOPA_TROOPA_BEACH_CRAB_FRAMES:%.png=%.inc.c)
$(BUILD_DIR)/courses/mushroom_cup/koopa_troopa_beach/course_data.inc.o: $(KOOPA_TROOPA_BEACH_PNG:%.png=%.inc.c)

$(KOOPA_TROOPA_BEACH_CRAB_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(KOOPA_TROOPA_BEACH_CRAB_PALETTE)

$(KOOPA_TROOPA_BEACH_CRAB_PALETTE:%.png=%.inc.c) $(KOOPA_TROOPA_BEACH_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(KOOPA_TROOPA_BEACH_CRAB_PALETTE) $(KOOPA_TROOPA_BEACH_CRAB_FRAMES) $(KOOPA_TROOPA_BEACH_PNG): $(KOOPA_TROOPA_BEACH_EXPORT_SENTINEL) ;

$(KOOPA_TROOPA_BEACH_EXPORT_SENTINEL): $(ASSET_DIR)/courses/koopa_troopa_beach.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_koopa_troopa_beach
distclean_koopa_troopa_beach:
	rm -rf $(KOOPA_TROOPA_BEACH_DIR)

distclean_assets: distclean_koopa_troopa_beach
