WARIO_SELECT_DIR := assets/character_select/wario

WARIO_SELECT_PNG := \
$(WARIO_SELECT_DIR)/wario_face_00.png \
$(WARIO_SELECT_DIR)/wario_face_01.png \
$(WARIO_SELECT_DIR)/wario_face_02.png \
$(WARIO_SELECT_DIR)/wario_face_03.png \
$(WARIO_SELECT_DIR)/wario_face_04.png \
$(WARIO_SELECT_DIR)/wario_face_05.png \
$(WARIO_SELECT_DIR)/wario_face_06.png \
$(WARIO_SELECT_DIR)/wario_face_07.png \
$(WARIO_SELECT_DIR)/wario_face_08.png \
$(WARIO_SELECT_DIR)/wario_face_09.png \
$(WARIO_SELECT_DIR)/wario_face_10.png \
$(WARIO_SELECT_DIR)/wario_face_11.png \
$(WARIO_SELECT_DIR)/wario_face_12.png \
$(WARIO_SELECT_DIR)/wario_face_13.png \
$(WARIO_SELECT_DIR)/wario_face_14.png \
$(WARIO_SELECT_DIR)/wario_face_15.png \
$(WARIO_SELECT_DIR)/wario_face_16.png

WARIO_SELECT_EXPORT_SENTINEL := $(WARIO_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(WARIO_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(WARIO_SELECT_PNG:%.png=%.mio0)

$(WARIO_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(WARIO_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(WARIO_SELECT_PNG): $(WARIO_SELECT_EXPORT_SENTINEL) ;

$(WARIO_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/wario_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
