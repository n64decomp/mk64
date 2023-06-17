LUIGI_SELECT_DIR := assets/character_select/luigi

LUIGI_SELECT_PNG := \
$(LUIGI_SELECT_DIR)/luigi_face_00.png \
$(LUIGI_SELECT_DIR)/luigi_face_01.png \
$(LUIGI_SELECT_DIR)/luigi_face_02.png \
$(LUIGI_SELECT_DIR)/luigi_face_03.png \
$(LUIGI_SELECT_DIR)/luigi_face_04.png \
$(LUIGI_SELECT_DIR)/luigi_face_05.png \
$(LUIGI_SELECT_DIR)/luigi_face_06.png \
$(LUIGI_SELECT_DIR)/luigi_face_07.png \
$(LUIGI_SELECT_DIR)/luigi_face_08.png \
$(LUIGI_SELECT_DIR)/luigi_face_09.png \
$(LUIGI_SELECT_DIR)/luigi_face_10.png \
$(LUIGI_SELECT_DIR)/luigi_face_11.png \
$(LUIGI_SELECT_DIR)/luigi_face_12.png \
$(LUIGI_SELECT_DIR)/luigi_face_13.png \
$(LUIGI_SELECT_DIR)/luigi_face_14.png \
$(LUIGI_SELECT_DIR)/luigi_face_15.png \
$(LUIGI_SELECT_DIR)/luigi_face_16.png

LUIGI_SELECT_EXPORT_SENTINEL := $(LUIGI_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(LUIGI_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(LUIGI_SELECT_PNG:%.png=%.mio0)

$(LUIGI_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(LUIGI_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(LUIGI_SELECT_PNG): $(LUIGI_SELECT_EXPORT_SENTINEL) ;

$(LUIGI_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/luigi_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
