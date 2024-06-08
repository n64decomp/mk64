REDLIGHTS_DIR := assets/lakitu/redlights

REDLIGHTS_PALETTE := $(REDLIGHTS_DIR)/common_tlut_lakitu_red_lights.png

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

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(REDLIGHTS_FRAMES:%.png=%.bin)

$(REDLIGHTS_FRAMES:%.png=%.bin): %.bin : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(REDLIGHTS_PALETTE)

$(BUILD_DIR)/src/data/common_textures.o: $(REDLIGHTS_PALETTE:%.png=%.inc.c)

$(REDLIGHTS_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(REDLIGHTS_FRAMES) $(REDLIGHTS_PALETTE): $(REDLIGHTS_EXPORT_SENTINEL) ;

$(REDLIGHTS_EXPORT_SENTINEL): assets/lakitu/redlights.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_lakitu_redlights
distclean_lakitu_redlights:
	rm -rf $(REDLIGHTS_DIR)

distclean_assets: distclean_lakitu_redlights
