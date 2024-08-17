ENDING_CEREMONY := assets/ending_ceremony

TROHPY_PNG := \
$(ENDING_CEREMONY)/gTextureReflectionMapBrass.png  \
$(ENDING_CEREMONY)/gTextureReflectionMapSilver.png \
$(ENDING_CEREMONY)/gTextureReflectionMapGold.png

PODIUM_PNG := \
$(ENDING_CEREMONY)/gTexturePodium1.png \
$(ENDING_CEREMONY)/gTexturePodium2.png \
$(ENDING_CEREMONY)/gTexturePodium3.png

ENDING_CEREMONY_EXPORT_SENTINEL := $(ENDING_CEREMONY)/.export

$(BUILD_DIR)/src/ending/ceremony_data.o: $(TROHPY_PNG:%.png=%.inc.c) $(PODIUM_PNG:%.png=%.inc.c)

$(TROHPY_PNG:%.png=%.inc.c) $(PODIUM_PNG:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(TROHPY_PNG) $(PODIUM_PNG): $(ENDING_CEREMONY_EXPORT_SENTINEL) ;

$(ENDING_CEREMONY_EXPORT_SENTINEL): $(ASSET_DIR)/ending_ceremony.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_ending_ceremony
distclean_ending_ceremony:
	rm -rf $(ENDING_CEREMONY)

distclean_assets: distclean_ending_ceremony
