CHECKEREDFLAG_DIR := assets/lakitu/checkeredflag

CHECKEREDFLAG_PALETTE := $(CHECKEREDFLAG_DIR)/gTLUTLakituCheckeredFlag.png

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

ASSET_DIRECTORIES += $(CHECKEREDFLAG_DIR)

$(CHECKEREDFLAG_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(CHECKEREDFLAG_PALETTE)

$(BUILD_DIR)/src/common_textures.inc.o: $(CHECKEREDFLAG_PALETTE:%.png=%.inc.c)

$(CHECKEREDFLAG_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(CHECKEREDFLAG_FRAMES) $(CHECKEREDFLAG_PALETTE): $(CHECKEREDFLAG_EXPORT_SENTINEL) ;

$(CHECKEREDFLAG_EXPORT_SENTINEL): assets/lakitu/checkeredflag.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
