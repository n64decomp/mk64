PEACH_SELECT_DIR := assets/character_select/peach

PEACH_SELECT_PNG := \
$(PEACH_SELECT_DIR)/peach_face_00.png \
$(PEACH_SELECT_DIR)/peach_face_01.png \
$(PEACH_SELECT_DIR)/peach_face_02.png \
$(PEACH_SELECT_DIR)/peach_face_03.png \
$(PEACH_SELECT_DIR)/peach_face_04.png \
$(PEACH_SELECT_DIR)/peach_face_05.png \
$(PEACH_SELECT_DIR)/peach_face_06.png \
$(PEACH_SELECT_DIR)/peach_face_07.png \
$(PEACH_SELECT_DIR)/peach_face_08.png \
$(PEACH_SELECT_DIR)/peach_face_09.png \
$(PEACH_SELECT_DIR)/peach_face_10.png \
$(PEACH_SELECT_DIR)/peach_face_11.png \
$(PEACH_SELECT_DIR)/peach_face_12.png \
$(PEACH_SELECT_DIR)/peach_face_13.png \
$(PEACH_SELECT_DIR)/peach_face_14.png \
$(PEACH_SELECT_DIR)/peach_face_15.png \
$(PEACH_SELECT_DIR)/peach_face_16.png

PEACH_SELECT_EXPORT_SENTINEL := $(PEACH_SELECT_DIR)/.export

ASSET_DIRECTORIES += $(PEACH_SELECT_DIR)

$(BUILD_DIR)/data/course_player_selection.o: $(PEACH_SELECT_PNG:%.png=%.mio0)

$(PEACH_SELECT_PNG:%.png=%.mio0) : %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(PEACH_SELECT_PNG:%.png=%.bin) : %.bin : %.png
	$(N64GRAPHICS) -i $@ -g $< -s raw -f rgba16

$(PEACH_SELECT_PNG): $(PEACH_SELECT_EXPORT_SENTINEL) ;

$(PEACH_SELECT_EXPORT_SENTINEL): $(ASSET_DIR)/character_select/peach_select.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
