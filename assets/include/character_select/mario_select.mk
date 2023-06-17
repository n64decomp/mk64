MARIO_SELECT_DIR := assets/character_select/mario

MARIO_SELECT_PNG := \
$(MARIO_SELECT_DIR)/mario_face_00.png \
$(MARIO_SELECT_DIR)/mario_face_01.png \
$(MARIO_SELECT_DIR)/mario_face_02.png \
$(MARIO_SELECT_DIR)/mario_face_03.png \
$(MARIO_SELECT_DIR)/mario_face_04.png \
$(MARIO_SELECT_DIR)/mario_face_05.png \
$(MARIO_SELECT_DIR)/mario_face_06.png \
$(MARIO_SELECT_DIR)/mario_face_07.png \
$(MARIO_SELECT_DIR)/mario_face_08.png \
$(MARIO_SELECT_DIR)/mario_face_09.png \
$(MARIO_SELECT_DIR)/mario_face_10.png \
$(MARIO_SELECT_DIR)/mario_face_11.png \
$(MARIO_SELECT_DIR)/mario_face_12.png \
$(MARIO_SELECT_DIR)/mario_face_13.png \
$(MARIO_SELECT_DIR)/mario_face_14.png \
$(MARIO_SELECT_DIR)/mario_face_15.png \
$(MARIO_SELECT_DIR)/mario_face_16.png

MARIO_SELECT_EXPORT_SENTINEL := $(MARIO_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(MARIO_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(MARIO_SELECT_PNG:%.png=%.mio0)

$(MARIO_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(MARIO_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(MARIO_SELECT_PNG): $(MARIO_SELECT_EXPORT_SENTINEL) ;

$(MARIO_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/mario_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
