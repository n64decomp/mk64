MOO_MOO_FARM_DIR := assets/courses/moo_moo_farm

MOLE_PALETTE := $(MOO_MOO_FARM_DIR)/gTLUTMole.png

MOLE_FRAMES := \
$(MOO_MOO_FARM_DIR)/gTextureMole1.png \
$(MOO_MOO_FARM_DIR)/gTextureMole2.png \
$(MOO_MOO_FARM_DIR)/gTextureMole3.png \
$(MOO_MOO_FARM_DIR)/gTextureMole4.png \
$(MOO_MOO_FARM_DIR)/gTextureMole5.png \
$(MOO_MOO_FARM_DIR)/gTextureMole6.png \
$(MOO_MOO_FARM_DIR)/gTextureMole7.png

# The Cow palette is really really strange. There's only 12x17 (204) entires as opposed to the usual 16x16 (256) that TLUTs have.
# So we do something a little strange. We extract 2 versions of the TLUT.
# gTLUTCow is 16x16, meaning that is has some vertex data filling out the backend. This is the one used to extract/import the rest of
# the cow pictures
# gTLUTCowImport is 12x17. Only used as an inc.c file.
COW_PALETTE := $(MOO_MOO_FARM_DIR)/gTLUTCow.png
COW_PALETTE_IMPORT := $(MOO_MOO_FARM_DIR)/gTLUTCowImport.png

COW_PNG := \
$(MOO_MOO_FARM_DIR)/gTextureCow01Left.png  \
$(MOO_MOO_FARM_DIR)/gTextureCow01Right.png \
$(MOO_MOO_FARM_DIR)/gTextureCow02Left.png  \
$(MOO_MOO_FARM_DIR)/gTextureCow02Right.png \
$(MOO_MOO_FARM_DIR)/gTextureCow03Left.png  \
$(MOO_MOO_FARM_DIR)/gTextureCow03Right.png \
$(MOO_MOO_FARM_DIR)/gTextureCow04Left.png  \
$(MOO_MOO_FARM_DIR)/gTextureCow04Right.png \
$(MOO_MOO_FARM_DIR)/gTextureCow05Left.png  \
$(MOO_MOO_FARM_DIR)/gTextureCow05Right.png

MOO_MOO_FARM_SIGN_PNG := \
$(MOO_MOO_FARM_DIR)/gTextureMooMooFarmSignLeft.png  \
$(MOO_MOO_FARM_DIR)/gTextureMooMooFarmSignRight.png

MOO_MOO_FARM_DIRT_PNG := $(MOO_MOO_FARM_DIR)/gTextureMooMooFarmDirt.png

MOO_MOO_FARM_EXPORT_SENTINEL := $(MOO_MOO_FARM_DIR)/.export

$(BUILD_DIR)/courses/mushroom_cup/moo_moo_farm/course_data.inc.o: $(MOLE_PALETTE:%.png=%.inc.c) $(MOLE_FRAMES:%.png=%.inc.c)
$(BUILD_DIR)/courses/mushroom_cup/moo_moo_farm/course_data.inc.o: $(COW_PALETTE_IMPORT:%.png=%.inc.c)
$(BUILD_DIR)/courses/mushroom_cup/moo_moo_farm/course_data.inc.o: $(MOO_MOO_FARM_DIRT_PNG:%.png=%.inc.c)

$(MOLE_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(MOLE_PALETTE)

$(MOLE_PALETTE:%.png=%.inc.c) $(COW_PALETTE_IMPORT:%.png=%.inc.c) $(MOO_MOO_FARM_DIRT_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BUILD_DIR)/data/other_textures.o: $(COW_PNG:%.png=%.mio0)
$(BUILD_DIR)/data/other_textures.o: $(MOO_MOO_FARM_SIGN_PNG:%.png=%.mio0)

$(COW_PNG:%.png=%.mio0) $(MOO_MOO_FARM_SIGN_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(MOO_MOO_FARM_SIGN_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(COW_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(COW_PALETTE)

$(MOLE_PALETTE) $(COW_PALETTE) $(COW_PALETTE_IMPORT): $(MOO_MOO_FARM_EXPORT_SENTINEL) ;

$(MOLE_FRAMES) $(COW_PNG): $(MOO_MOO_FARM_EXPORT_SENTINEL) ;

$(MOO_MOO_FARM_SIGN_PNG) $(MOO_MOO_FARM_DIRT_PNG): $(MOO_MOO_FARM_EXPORT_SENTINEL) ;

$(MOO_MOO_FARM_EXPORT_SENTINEL): $(ASSET_DIR)/courses/moo_moo_farm.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_moo_moo_farm
distclean_moo_moo_farm:
	rm -rf $(MOO_MOO_FARM_DIR)

distclean_assets: distclean_moo_moo_farm
