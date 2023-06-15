SECONDLAP_DIR := assets/lakitu/secondlap

SECONDLAP_PALETTE := $(SECONDLAP_DIR)/gTLUTLakituSecondLap.png

SECONDLAP_FRAMES := \
$(SECONDLAP_DIR)/gTextureLakituSecondLap01.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap02.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap03.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap04.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap05.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap06.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap07.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap08.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap09.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap10.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap11.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap12.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap13.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap14.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap15.png \
$(SECONDLAP_DIR)/gTextureLakituSecondLap16.png

SECONDLAP_EXPORT_SENTINEL := $(SECONDLAP_DIR)/.export

ASSET_DIRECTORIES += $(SECONDLAP_DIR)

$(SECONDLAP_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(SECONDLAP_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(SECONDLAP_PALETTE:%.png=%.inc.c)

$(SECONDLAP_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(SECONDLAP_FRAMES) $(SECONDLAP_PALETTE): $(SECONDLAP_EXPORT_SENTINEL) ;

$(SECONDLAP_EXPORT_SENTINEL): assets/lakitu/secondlap.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
