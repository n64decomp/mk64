STARTUP_LOGO := assets/startup_logo

REFLECTION_MAP := $(STARTUP_LOGO)/gTextureReflectionMapGold.png

STARTUP_LOGO_EXPORT_SENTINEL := $(STARTUP_LOGO)/.export

$(BUILD_DIR)/src/data/startup_logo.inc.o: $(REFLECTION_MAP:%.png=%.inc.c)

$(REFLECTION_MAP:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(REFLECTION_MAP): $(STARTUP_LOGO_EXPORT_SENTINEL) ;

$(STARTUP_LOGO_EXPORT_SENTINEL): $(ASSET_DIR)/startup_logo.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_startup_logo
distclean_startup_logo:
	rm -rf $(STARTUP_LOGO)

distclean_assets: distclean_startup_logo
