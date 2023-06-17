FINALLAP_DIR := assets/lakitu/finallap

FINALLAP_PALETTE := $(FINALLAP_DIR)/gTLUTLakituFinalLap.png

FINALLAP_FRAMES := \
$(FINALLAP_DIR)/gTextureLakituFinalLap01.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap02.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap03.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap04.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap05.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap06.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap07.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap08.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap09.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap10.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap11.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap12.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap13.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap14.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap15.png \
$(FINALLAP_DIR)/gTextureLakituFinalLap16.png

FINALLAP_EXPORT_SENTINEL := $(FINALLAP_DIR)/.export

ASSET_DIRECTORIES += $(FINALLAP_DIR)

$(FINALLAP_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(FINALLAP_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(FINALLAP_PALETTE:%.png=%.inc.c)

$(FINALLAP_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(FINALLAP_FRAMES) $(FINALLAP_PALETTE): $(FINALLAP_EXPORT_SENTINEL) ;

$(FINALLAP_EXPORT_SENTINEL): assets/lakitu/finallap.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
