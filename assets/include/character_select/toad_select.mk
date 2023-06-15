TOAD_SELECT_DIR := assets/character_select/toad

TOAD_SELECT_PNG := \
$(TOAD_SELECT_DIR)/toad_face_00.png \
$(TOAD_SELECT_DIR)/toad_face_01.png \
$(TOAD_SELECT_DIR)/toad_face_02.png \
$(TOAD_SELECT_DIR)/toad_face_03.png \
$(TOAD_SELECT_DIR)/toad_face_04.png \
$(TOAD_SELECT_DIR)/toad_face_05.png \
$(TOAD_SELECT_DIR)/toad_face_06.png \
$(TOAD_SELECT_DIR)/toad_face_07.png \
$(TOAD_SELECT_DIR)/toad_face_08.png \
$(TOAD_SELECT_DIR)/toad_face_09.png \
$(TOAD_SELECT_DIR)/toad_face_10.png \
$(TOAD_SELECT_DIR)/toad_face_11.png \
$(TOAD_SELECT_DIR)/toad_face_12.png \
$(TOAD_SELECT_DIR)/toad_face_13.png \
$(TOAD_SELECT_DIR)/toad_face_14.png \
$(TOAD_SELECT_DIR)/toad_face_15.png \
$(TOAD_SELECT_DIR)/toad_face_16.png

TOAD_SELECT_EXPORT_SENTINEL := $(TOAD_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(TOAD_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(TOAD_SELECT_PNG:%.png=%.mio0)

$(TOAD_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(TOAD_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(TOAD_SELECT_PNG): $(TOAD_SELECT_EXPORT_SENTINEL) ;

$(TOAD_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/toad_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
