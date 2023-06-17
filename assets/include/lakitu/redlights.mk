REDLIGHTS_DIR := assets/lakitu/redlights

REDLIGHTS_PALETTE := $(REDLIGHTS_DIR)/gTLUTLakituRedLights.png

REDLIGHTS_FRAMES := \
$(REDLIGHTS_DIR)/gTextureLakituRedLights01.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights02.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights03.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights04.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights05.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights06.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights07.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights08.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights09.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights10.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights11.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights12.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights13.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights14.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights15.png \
$(REDLIGHTS_DIR)/gTextureLakituRedLights16.png

REDLIGHTS_EXPORT_SENTINEL := $(REDLIGHTS_DIR)/.export

ASSET_DIRECTORIES += $(REDLIGHTS_DIR)

$(REDLIGHTS_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(REDLIGHTS_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(REDLIGHTS_PALETTE:%.png=%.inc.c)

$(REDLIGHTS_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(REDLIGHTS_FRAMES) $(REDLIGHTS_PALETTE): $(REDLIGHTS_EXPORT_SENTINEL) ;

$(REDLIGHTS_EXPORT_SENTINEL): assets/lakitu/redlights.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
