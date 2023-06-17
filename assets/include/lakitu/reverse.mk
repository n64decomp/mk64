REVERSE_DIR := assets/lakitu/reverse

REVERSE_PALETTE := $(REVERSE_DIR)/gTLUTLakituReverse.png

REVERSE_FRAMES := \
$(REVERSE_DIR)/gTextureLakituReverse01.png \
$(REVERSE_DIR)/gTextureLakituReverse02.png \
$(REVERSE_DIR)/gTextureLakituReverse03.png \
$(REVERSE_DIR)/gTextureLakituReverse04.png \
$(REVERSE_DIR)/gTextureLakituReverse05.png \
$(REVERSE_DIR)/gTextureLakituReverse06.png \
$(REVERSE_DIR)/gTextureLakituReverse07.png \
$(REVERSE_DIR)/gTextureLakituReverse08.png \
$(REVERSE_DIR)/gTextureLakituReverse09.png \
$(REVERSE_DIR)/gTextureLakituReverse10.png \
$(REVERSE_DIR)/gTextureLakituReverse11.png \
$(REVERSE_DIR)/gTextureLakituReverse12.png \
$(REVERSE_DIR)/gTextureLakituReverse13.png \
$(REVERSE_DIR)/gTextureLakituReverse14.png \
$(REVERSE_DIR)/gTextureLakituReverse15.png \
$(REVERSE_DIR)/gTextureLakituReverse16.png

REVERSE_EXPORT_SENTINEL := $(REVERSE_DIR)/.export

ASSET_DIRECTORIES += $(REVERSE_DIR)

$(REVERSE_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(REVERSE_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(REVERSE_PALETTE:%.png=%.inc.c)

$(REVERSE_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(REVERSE_FRAMES) $(REVERSE_PALETTE): $(REVERSE_EXPORT_SENTINEL) ;

$(REVERSE_EXPORT_SENTINEL): assets/lakitu/reverse.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
