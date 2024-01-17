TREES_DIR := assets/trees

# The Tree palette is really really strange. There's only 8x29 (232) entires as opposed to the usual 16x16 (256) that TLUTs have.
# So we do something a little strange. We extract 2 versions of the TLUT.
# gTLUTTrees is 16x16, meaning that is has some other TLUT data filling out the backend. This is the one used to extract/import the rest of
# the tree pictures
# common_tlut_trees_import is 8x29. Only used as an inc.c file.
TREES_PALETTE_IMPORT := $(TREES_DIR)/common_tlut_trees_import.png
TREES_PALETTE := $(TREES_DIR)/gTLUTTrees.png

TREES_PNG := \
$(TREES_DIR)/gTextureTrees1.png      \
$(TREES_DIR)/gTextureTrees2.png      \
$(TREES_DIR)/gTextureTrees3.png      \
$(TREES_DIR)/gTextureTrees4Left.png  \
$(TREES_DIR)/gTextureTrees4Right.png \
$(TREES_DIR)/gTextureTrees5Left.png  \
$(TREES_DIR)/gTextureTrees5Right.png \
$(TREES_DIR)/gTextureTrees6.png      \
$(TREES_DIR)/gTextureTrees7.png

TREES_EXPORT_SENTINEL := $(TREES_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(TREES_PNG:%.png=%.mio0)

$(TREES_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(TREES_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(TREES_PALETTE)

$(BUILD_DIR)/src/data/common_textures.inc.o: $(TREES_PALETTE_IMPORT:%.png=%.inc.c)

$(TREES_PALETTE:%.png=%.inc.c) $(TREES_PALETTE_IMPORT:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(TREES_PNG) $(TREES_PALETTE) $(TREES_PALETTE_IMPORT): $(TREES_EXPORT_SENTINEL) ;

$(TREES_EXPORT_SENTINEL): $(ASSET_DIR)/trees.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_trees
distclean_trees:
	rm -rf $(TREES_DIR)

distclean_assets: distclean_trees
