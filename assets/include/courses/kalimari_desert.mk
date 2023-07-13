KALIMARI_DESERT_DIR := assets/courses/kalimari_desert

# The Cactus palette is really really strange. There's only 4x29 (116) entires as opposed to the usual 16x16 (256) that TLUTs have.
# So we do something a little strange. We extract 2 versions of the TLUT.
# gTLUTCactus is 16x16, meaning that is has some vertex data filling out the backend. This is the one used to extract/import the rest of
# the cow pictures
# gTLUTCactusImport is 4x29. Only used as an inc.c file.
CACTUS_PALETTE := $(KALIMARI_DESERT_DIR)/gTLUTCactus.png
CACTUS_PALETTE_IMPORT := $(KALIMARI_DESERT_DIR)/gTLUTCactusImport.png

CACTUS_PNG := \
$(KALIMARI_DESERT_DIR)/gTextureCactus1Left.png  \
$(KALIMARI_DESERT_DIR)/gTextureCactus1Right.png \
$(KALIMARI_DESERT_DIR)/gTextureCactus2Left.png  \
$(KALIMARI_DESERT_DIR)/gTextureCactus2Right.png \
$(KALIMARI_DESERT_DIR)/gTextureCactus3.png

KALIMARI_DESERT_PNG := \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalInactiveTopLeft.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalInactiveTopRight.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalInactiveBottomLeft.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalInactiveBottomRight.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalActiveTopLeft.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalActiveTopRight.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalActiveBottomLeft.png \
$(KALIMARI_DESERT_DIR)/gTextureCrossingSignalActiveBottomRight.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotive64.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveCabWindow.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveCabWindowFront.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveChasis.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveLamp.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveBoiler.png \
$(KALIMARI_DESERT_DIR)/gTextureCarriageRailing.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveTender.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveBallast.png \
$(KALIMARI_DESERT_DIR)/gTextureCarriageLower.png \
$(KALIMARI_DESERT_DIR)/gTextureCarriageDoor.png \
$(KALIMARI_DESERT_DIR)/gTextureCarriageWindow.png \
$(KALIMARI_DESERT_DIR)/gTextureLocomotiveBogie.png

KALIMARI_DESERT_EXPORT_SENTINEL := $(KALIMARI_DESERT_DIR)/.export

$(BUILD_DIR)/courses/mushroom_cup/kalimari_desert/course_data.inc.o: $(KALIMARI_DESERT_PNG:%.png=%.inc.c) $(CACTUS_PALETTE_IMPORT:%.png=%.inc.c)

$(KALIMARI_DESERT_PNG:%.png=%.inc.c) $(CACTUS_PALETTE_IMPORT:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BUILD_DIR)/data/other_textures.o: $(CACTUS_PNG:%.png=%.mio0)

$(CACTUS_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(CACTUS_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(CACTUS_PALETTE)

$(CACTUS_PALETTE) $(CACTUS_PALETTE_IMPORT) $(CACTUS_PNG): $(KALIMARI_DESERT_EXPORT_SENTINEL) ;
$(KALIMARI_DESERT_PNG): $(KALIMARI_DESERT_EXPORT_SENTINEL) ;

$(KALIMARI_DESERT_EXPORT_SENTINEL): $(ASSET_DIR)/courses/kalimari_desert.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_kalimari_desert
distclean_kalimari_desert:
	rm -rf $(KALIMARI_DESERT_DIR)

distclean_assets: distclean_kalimari_desert
