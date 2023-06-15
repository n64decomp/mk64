ONOMATOPOEIA_DIR := assets/onomatopoeia

ONOMATOPOEIA_PALETTE := $(ONOMATOPOEIA_DIR)/gTLUTOnomatopoeia.png

ONOMATOPOEIA_PNG := \
$(ONOMATOPOEIA_DIR)/gTexutreOnomatopoeiaCrash1.png \
$(ONOMATOPOEIA_DIR)/gTexutreOnomatopoeiaCrash2.png \
$(ONOMATOPOEIA_DIR)/gTexutreOnomatopoeiaWhrrrr1.png \
$(ONOMATOPOEIA_DIR)/gTexutreOnomatopoeiaWhrrrr2.png \
$(ONOMATOPOEIA_DIR)/gTexutreOnomatopoeiaPoomp1.png \
$(ONOMATOPOEIA_DIR)/gTexutreOnomatopoeiaPoomp2.png \
$(ONOMATOPOEIA_DIR)/gTexutreBalloon1.png \
$(ONOMATOPOEIA_DIR)/gTexutreBalloon2.png

ONOMATOPOEIA_EXPORT_SENTINEL := $(ONOMATOPOEIA_DIR)/.export

ASSET_DIRECTORIES += $(ONOMATOPOEIA_DIR)

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(ONOMATOPOEIA_PNG:%.png=%.mio0)

$(ONOMATOPOEIA_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(ONOMATOPOEIA_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(ONOMATOPOEIA_PALETTE)

$(ONOMATOPOEIA_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(ONOMATOPOEIA_PNG) $(ONOMATOPOEIA_PALETTE): $(ONOMATOPOEIA_EXPORT_SENTINEL) ;

$(ONOMATOPOEIA_EXPORT_SENTINEL): $(ASSET_DIR)/onomatopoeia.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
