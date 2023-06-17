BLUE_SHELL_DIR := assets/blueshell

BLUE_SHELL_PALETTE := $(BLUE_SHELL_DIR)/gTLUTBlueShell.png

BLUE_SHELL_FRAMES := \
$(BLUE_SHELL_DIR)/gTextureBlueShell1.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell2.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell3.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell4.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell5.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell6.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell7.png \
$(BLUE_SHELL_DIR)/gTextureBlueShell8.png

BLUE_SHELL_EXPORT_SENTINEL := $(BLUE_SHELL_DIR)/.export

ASSET_DIRECTORIES += $(BLUE_SHELL_DIR)

$(BLUE_SHELL_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(BLUE_SHELL_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(BLUE_SHELL_PALETTE:%.png=%.inc.c)

$(BLUE_SHELL_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BLUE_SHELL_FRAMES) $(BLUE_SHELL_PALETTE): $(BLUE_SHELL_EXPORT_SENTINEL) ;

$(BLUE_SHELL_EXPORT_SENTINEL): $(ASSET_DIR)/blueshell.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
