YOSHI_SELECT_DIR := assets/character_select/yoshi

YOSHI_SELECT_PNG := \
$(YOSHI_SELECT_DIR)/yoshi_face_00.png \
$(YOSHI_SELECT_DIR)/yoshi_face_01.png \
$(YOSHI_SELECT_DIR)/yoshi_face_02.png \
$(YOSHI_SELECT_DIR)/yoshi_face_03.png \
$(YOSHI_SELECT_DIR)/yoshi_face_04.png \
$(YOSHI_SELECT_DIR)/yoshi_face_05.png \
$(YOSHI_SELECT_DIR)/yoshi_face_06.png \
$(YOSHI_SELECT_DIR)/yoshi_face_07.png \
$(YOSHI_SELECT_DIR)/yoshi_face_08.png \
$(YOSHI_SELECT_DIR)/yoshi_face_09.png \
$(YOSHI_SELECT_DIR)/yoshi_face_10.png \
$(YOSHI_SELECT_DIR)/yoshi_face_11.png \
$(YOSHI_SELECT_DIR)/yoshi_face_12.png \
$(YOSHI_SELECT_DIR)/yoshi_face_13.png \
$(YOSHI_SELECT_DIR)/yoshi_face_14.png \
$(YOSHI_SELECT_DIR)/yoshi_face_15.png \
$(YOSHI_SELECT_DIR)/yoshi_face_16.png

YOSHI_SELECT_EXPORT_SENTINEL := $(YOSHI_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(YOSHI_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(YOSHI_SELECT_PNG:%.png=%.mio0)

$(YOSHI_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(YOSHI_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(YOSHI_SELECT_PNG): $(YOSHI_SELECT_EXPORT_SENTINEL) ;

$(YOSHI_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/yoshi_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
