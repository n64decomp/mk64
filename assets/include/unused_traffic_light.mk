UNUSED_TRAFFIC_LIGHT_DIR := assets/unused_traffic_light

UNUSED_TRAFFIC_LIGHT_PALETTE := $(UNUSED_TRAFFIC_LIGHT_DIR)/common_tlut_traffic_light.png

UNUSED_TRAFFIC_LIGHT_PNG := \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_01.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_02.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_03.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_04.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_05.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_06.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_07.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_08.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_09.png \
$(UNUSED_TRAFFIC_LIGHT_DIR)/common_texture_traffic_light_10.png

UNUSED_TRAFFIC_LIGHT_EXPORT_SENTINEL := $(UNUSED_TRAFFIC_LIGHT_DIR)/.export

$(BUILD_DIR)/src/data/common_textures.inc.o: $(UNUSED_TRAFFIC_LIGHT_PNG:%.png=%.inc.c) $(UNUSED_TRAFFIC_LIGHT_PALETTE:%.png=%.inc.c)

$(UNUSED_TRAFFIC_LIGHT_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(UNUSED_TRAFFIC_LIGHT_PALETTE)

$(UNUSED_TRAFFIC_LIGHT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(UNUSED_TRAFFIC_LIGHT_PNG) $(UNUSED_TRAFFIC_LIGHT_PALETTE): $(UNUSED_TRAFFIC_LIGHT_EXPORT_SENTINEL) ;

$(UNUSED_TRAFFIC_LIGHT_EXPORT_SENTINEL): $(ASSET_DIR)/unused_traffic_light.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_unused_traffic_light
distclean_unused_traffic_light:
	rm -rf $(UNUSED_TRAFFIC_LIGHT_DIR)

distclean_assets: distclean_unused_traffic_light
