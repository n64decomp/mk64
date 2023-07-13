UNUSED_TRAFFIC_LIGHT_DIR := assets/unused_traffic_light

UNUSED_TRAFFIC_LIGHT_PALETTE := $(UNUSED_TRAFFIC_LIGHT_DIR)/gTLUTUnusedTrafficLight.png

UNUSED_TRAFFIC_LIGHT_PNG := \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight01.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight02.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight03.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight04.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight05.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight06.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight07.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight08.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight09.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/gTextureUnusedTrafficLight10.png

UNUSED_TRAFFIC_LIGHT_EXPORT_SENTINEL := $(UNUSED_TRAFFIC_LIGHT_DIR)/.export

$(BUILD_DIR)/src/common_textures.inc.o: $(UNUSED_TRAFFIC_LIGHT_PNG:%.png=%.inc.c) $(UNUSED_TRAFFIC_LIGHT_PALETTE:%.png=%.inc.c)

$(UNUSED_TRAFFIC_LIGHT_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(UNUSED_TRAFFIC_LIGHT_PALETTE)

$(UNUSED_TRAFFIC_LIGHT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(UNUSED_TRAFFIC_LIGHT_PNG) $(UNUSED_TRAFFIC_LIGHT_PALETTE): $(UNUSED_TRAFFIC_LIGHT_EXPORT_SENTINEL) ;

$(UNUSED_TRAFFIC_LIGHT_EXPORT_SENTINEL): $(ASSET_DIR)/unused_traffic_light.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_unused_traffic_light
distclean_unused_traffic_light:
	rm -rf $(UNUSED_TRAFFIC_LIGHT_DIR)

distclean_assets: distclean_unused_traffic_light
