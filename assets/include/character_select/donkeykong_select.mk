DONKEYKONG_SELECT_DIR := assets/character_select/donkeykong

DONKEYKONG_SELECT_PNG := \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_00.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_01.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_02.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_03.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_04.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_05.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_06.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_07.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_08.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_09.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_10.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_11.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_12.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_13.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_14.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_15.png \
$(DONKEYKONG_SELECT_DIR)/donkeykong_face_16.png

DONKEYKONG_SELECT_EXPORT_SENTINEL := $(DONKEYKONG_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(DONKEYKONG_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(DONKEYKONG_SELECT_PNG:%.png=%.mio0)

$(DONKEYKONG_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(DONKEYKONG_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(DONKEYKONG_SELECT_PNG): $(DONKEYKONG_SELECT_EXPORT_SENTINEL) ;

$(DONKEYKONG_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/donkeykong_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
