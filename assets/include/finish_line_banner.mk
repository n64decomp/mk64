FINISH_LINE_BANNER_DIR := assets/finish_line_banner

FINISH_LINE_BANNER_PALETTE := $(FINISH_LINE_BANNER_DIR)/gTLUTFinishLineBanner.png

FINISH_LINE_BANNER_PNG := \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner1.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner2.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner3.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner4.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner5.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner6.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner7.png \
$(FINISH_LINE_BANNER_DIR)/gTextureFinishLineBanner8.png

FINISH_LINE_BANNER_EXPORT_SENTINEL := $(FINISH_LINE_BANNER_DIR)/.export

ASSET_DIRECTORIES += $(FINISH_LINE_BANNER_DIR)

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(FINISH_LINE_BANNER_PNG:%.png=%.mio0)

$(FINISH_LINE_BANNER_PNG:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(FINISH_LINE_BANNER_PNG:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(FINISH_LINE_BANNER_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(FINISH_LINE_BANNER_PALETTE:%.png=%.inc.c)

$(FINISH_LINE_BANNER_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(FINISH_LINE_BANNER_PNG) $(FINISH_LINE_BANNER_PALETTE): $(FINISH_LINE_BANNER_EXPORT_SENTINEL) ;

$(FINISH_LINE_BANNER_EXPORT_SENTINEL): $(ASSET_DIR)/finish_line_banner.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
