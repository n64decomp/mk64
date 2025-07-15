BLUESHELL_DIR := assets/blueshell

BLUESHELL_PALETTE := $(BLUESHELL_DIR)/common_tlut_blue_shell.png

BLUESHELL_FRAMES := \
$(BLUESHELL_DIR)/texture_blue_shell_0.png \
$(BLUESHELL_DIR)/texture_blue_shell_1.png \
$(BLUESHELL_DIR)/texture_blue_shell_2.png \
$(BLUESHELL_DIR)/texture_blue_shell_3.png \
$(BLUESHELL_DIR)/texture_blue_shell_4.png \
$(BLUESHELL_DIR)/texture_blue_shell_5.png \
$(BLUESHELL_DIR)/texture_blue_shell_6.png \
$(BLUESHELL_DIR)/texture_blue_shell_7.png

BLUESHELL_EXPORT_SENTINEL := $(BLUESHELL_DIR)/.export

$(BUILD_DIR)/$(DATA_DIR)/other_textures.o: $(BLUESHELL_FRAMES:%.png=%.mio0)

$(BLUESHELL_FRAMES:%.png=%.mio0): %.mio0 : %.bin
	$(V)$(MIO0TOOL) -c $< $@

$(BLUESHELL_FRAMES:%.png=%.bin): %.bin : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(BLUESHELL_PALETTE)

$(BUILD_DIR)/src/data/common_textures.o: $(BLUESHELL_PALETTE:%.png=%.inc.c)

$(BLUESHELL_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)Converting:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BLUESHELL_FRAMES) $(BLUESHELL_PALETTE): $(BLUESHELL_EXPORT_SENTINEL) ;

$(BLUESHELL_EXPORT_SENTINEL): $(ASSET_DIR)/blueshell.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_blueshell
distclean_blueshell:
	rm -rf $(BLUESHELL_DIR)

distclean_assets: distclean_blueshell
