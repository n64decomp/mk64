BANSHEE_BOARDWALK_DIR := assets/courses/banshee_boardwalk

BANSHEE_BOARDWALK_BOO_PALETTE := $(BANSHEE_BOARDWALK_DIR)/gTLUTBoo.png
BANSHEE_BOARDWALK_BOO_FRAMES := \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo01.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo02.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo03.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo04.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo05.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo06.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo07.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo08.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo09.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo10.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo11.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo12.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo13.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo14.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo15.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo16.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo17.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo18.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo19.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo20.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo21.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo22.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo23.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo24.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo25.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo26.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo27.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo28.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBoo29.png

BANSHEE_BOARDWALK_BAT_PALETTE := $(BANSHEE_BOARDWALK_DIR)/gTLUTBat.png
BANSHEE_BOARDWALK_BAT_FRAMES := \
$(BANSHEE_BOARDWALK_DIR)/gTextureBat1.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBat2.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBat3.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBat4.png

BANSHEE_BOARDWALK_PNG := \
$(BANSHEE_BOARDWALK_DIR)/gTextureBansheeBoardwalkFishEyes.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBansheBoardwalkA050.png \
$(BANSHEE_BOARDWALK_DIR)/gTextureBansheBoardwalkAA78.png

BANSHEE_BOARDWALK_EXPORT_SENTINEL := $(BANSHEE_BOARDWALK_DIR)/.export

$(BUILD_DIR)/data/other_textures.o: $(BANSHEE_BOARDWALK_DIR)/boo_frames.mio0

$(BANSHEE_BOARDWALK_DIR)/boo_frames.mio0: $(BANSHEE_BOARDWALK_DIR)/boo_frames.bin
	$(MIO0TOOL) -c $< $@

# Making a .c or .s file that includes the Boo frame data as .inc.c or .bin files, respectively,
# would also work.
# We would then have a rule like
# $(DATA_DIR)/boo_frames.bin: $(DATA_DIR)/boo_frames.o
# 	$(OBJCOPY) --only-section=.data -O binary $@ $<
# cat'ing the files together is easier though
$(BANSHEE_BOARDWALK_DIR)/boo_frames.bin: $(BANSHEE_BOARDWALK_BOO_FRAMES:%.png=%.bin)
	cat $^ > $@

$(BANSHEE_BOARDWALK_BOO_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(BANSHEE_BOARDWALK_BOO_PALETTE)

$(BUILD_DIR)/courses/banshee_boardwalk/course_data.inc.o: $(BANSHEE_BOARDWALK_BOO_PALETTE:%.png=%.inc.c)
$(BUILD_DIR)/courses/banshee_boardwalk/course_data.inc.o: $(BANSHEE_BOARDWALK_BAT_PALETTE:%.png=%.inc.c) $(BANSHEE_BOARDWALK_BAT_FRAMES:%.png=%.inc.c)
$(BUILD_DIR)/courses/banshee_boardwalk/course_data.inc.o: $(BANSHEE_BOARDWALK_PNG:%.png=%.inc.c)

$(BANSHEE_BOARDWALK_BAT_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(BANSHEE_BOARDWALK_BAT_PALETTE)

$(BANSHEE_BOARDWALK_PNG:%.png=%.inc.c) $(BANSHEE_BOARDWALK_BOO_PALETTE:%.png=%.inc.c) $(BANSHEE_BOARDWALK_BAT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(BANSHEE_BOARDWALK_BOO_PALETTE) $(BANSHEE_BOARDWALK_BOO_FRAMES): $(BANSHEE_BOARDWALK_EXPORT_SENTINEL) ;
$(BANSHEE_BOARDWALK_BAT_PALETTE) $(BANSHEE_BOARDWALK_BAT_FRAMES): $(BANSHEE_BOARDWALK_EXPORT_SENTINEL) ;
$(BANSHEE_BOARDWALK_PNG): $(BANSHEE_BOARDWALK_EXPORT_SENTINEL) ;

$(BANSHEE_BOARDWALK_EXPORT_SENTINEL): $(ASSET_DIR)/courses/banshee_boardwalk.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_banshee_boardwalk
distclean_banshee_boardwalk:
	rm -rf $(BANSHEE_BOARDWALK_DIR)

distclean_assets: distclean_banshee_boardwalk
