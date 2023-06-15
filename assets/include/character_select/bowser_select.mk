BOWSER_SELECT_DIR := assets/character_select/bowser

BOWSER_SELECT_PNG := \
$(BOWSER_SELECT_DIR)/bowser_face_00.png \
$(BOWSER_SELECT_DIR)/bowser_face_01.png \
$(BOWSER_SELECT_DIR)/bowser_face_02.png \
$(BOWSER_SELECT_DIR)/bowser_face_03.png \
$(BOWSER_SELECT_DIR)/bowser_face_04.png \
$(BOWSER_SELECT_DIR)/bowser_face_05.png \
$(BOWSER_SELECT_DIR)/bowser_face_06.png \
$(BOWSER_SELECT_DIR)/bowser_face_07.png \
$(BOWSER_SELECT_DIR)/bowser_face_08.png \
$(BOWSER_SELECT_DIR)/bowser_face_09.png \
$(BOWSER_SELECT_DIR)/bowser_face_10.png \
$(BOWSER_SELECT_DIR)/bowser_face_11.png \
$(BOWSER_SELECT_DIR)/bowser_face_12.png \
$(BOWSER_SELECT_DIR)/bowser_face_13.png \
$(BOWSER_SELECT_DIR)/bowser_face_14.png \
$(BOWSER_SELECT_DIR)/bowser_face_15.png \
$(BOWSER_SELECT_DIR)/bowser_face_16.png

BOWSER_SELECT_EXPORT_SENTINEL := $(BOWSER_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(BOWSER_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(BOWSER_SELECT_PNG:%.png=%.mio0)

$(BOWSER_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(BOWSER_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(BOWSER_SELECT_PNG): $(BOWSER_SELECT_EXPORT_SENTINEL) ;

$(BOWSER_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/bowser_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
