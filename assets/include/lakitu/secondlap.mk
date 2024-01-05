SECONDLAP_DIR := assets/lakitu/secondlap

SECONDLAP_PALETTE := $(SECONDLAP_DIR)/common_TLUT_lakitu_second_lap.png

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

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(SECONDLAP_FRAMES:%.png=%.bin)

$(SECONDLAP_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(SECONDLAP_PALETTE)

$(BUILD_DIR)/src/data/common_textures.inc.o: $(SECONDLAP_PALETTE:%.png=%.inc.c)

$(SECONDLAP_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(SECONDLAP_FRAMES) $(SECONDLAP_PALETTE): $(SECONDLAP_EXPORT_SENTINEL) ;

$(SECONDLAP_EXPORT_SENTINEL): assets/lakitu/secondlap.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_lakitu_secondlap
distclean_lakitu_secondlap:
	rm -rf $(SECONDLAP_DIR)

distclean_assets: distclean_lakitu_secondlap
