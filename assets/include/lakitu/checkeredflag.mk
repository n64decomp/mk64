CHECKEREDFLAG_DIR := assets/lakitu/checkeredflag

CHECKEREDFLAG_PALETTE := $(CHECKEREDFLAG_DIR)/common_tlut_lakitu_checkered_flag.png

CHECKEREDFLAG_FRAMES := \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag01.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag02.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag03.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag04.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag05.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag06.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag07.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag08.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag09.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag10.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag11.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag12.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag13.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag14.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag15.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag16.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag17.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag18.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag19.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag20.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag21.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag22.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag23.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag24.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag25.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag26.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag27.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag28.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag29.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag30.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag31.png \
$(CHECKEREDFLAG_DIR)/gTextureLakituCheckeredFlag32.png

CHECKEREDFLAG_EXPORT_SENTINEL := $(CHECKEREDFLAG_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(CHECKEREDFLAG_FRAMES:%.png=%.bin)

$(CHECKEREDFLAG_FRAMES:%.png=%.bin): %.bin : %.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(CHECKEREDFLAG_PALETTE)

$(BUILD_DIR)/src/data/common_textures.o: $(CHECKEREDFLAG_PALETTE:%.png=%.inc.c)

$(CHECKEREDFLAG_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(CHECKEREDFLAG_FRAMES) $(CHECKEREDFLAG_PALETTE): $(CHECKEREDFLAG_EXPORT_SENTINEL) ;

$(CHECKEREDFLAG_EXPORT_SENTINEL): assets/lakitu/checkeredflag.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_lakitu_checkeredflag
distclean_lakitu_checkeredflag:
	rm -rf $(CHECKEREDFLAG_DIR)

distclean_assets: distclean_lakitu_checkeredflag
