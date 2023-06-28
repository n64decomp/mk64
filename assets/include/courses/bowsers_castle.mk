BOWSERS_CASTLE_DIR := assets/courses/bowsers_castle

THWOMP_PALETTE := $(BOWSERS_CASTLE_DIR)/gTLUTThwomp.png

THWOMP_FACE_FRAMES := \
$(BOWSERS_CASTLE_DIR)/gTextureThwompFace1.png  \
$(BOWSERS_CASTLE_DIR)/gTextureThwompFace2.png \
$(BOWSERS_CASTLE_DIR)/gTextureThwompFace3.png  \
$(BOWSERS_CASTLE_DIR)/gTextureThwompFace4.png \
$(BOWSERS_CASTLE_DIR)/gTextureThwompFace5.png \
$(BOWSERS_CASTLE_DIR)/gTextureThwompFace6.png

THOWMP_SIDE_PNG := $(BOWSERS_CASTLE_DIR)/gTextureThwompSide.png

BOWSERS_CASTLE_EXPORT_SENTINEL := $(BOWSERS_CASTLE_DIR)/.export

ASSET_DIRECTORIES += $(BOWSERS_CASTLE_DIR)

$(BUILD_DIR)/courses/star_cup/bowsers_castle/course_data.inc.o: $(THWOMP_FACE_FRAMES:%.png=%.inc.c) $(THWOMP_PALETTE:%.png=%.inc.c)
$(BUILD_DIR)/courses/star_cup/bowsers_castle/course_data.inc.o: $(THOWMP_SIDE_PNG:%.png=%.inc.c)

$(THOWMP_SIDE_PNG:%.png=%.inc.c) $(THWOMP_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(THWOMP_FACE_FRAMES:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s u8 -f ci8 -c rgba16 -p $(THWOMP_PALETTE)

$(THWOMP_PALETTE) $(THWOMP_FACE_FRAMES) $(THOWMP_SIDE_PNG): $(BOWSERS_CASTLE_EXPORT_SENTINEL) ;

$(BOWSERS_CASTLE_EXPORT_SENTINEL): $(ASSET_DIR)/courses/bowsers_castle.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
