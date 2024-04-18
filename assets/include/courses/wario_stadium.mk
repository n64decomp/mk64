WARIO_STADIUM_DIR := assets/courses/wario_stadium

WARIO_STADIUM_SIGN := \
$(WARIO_STADIUM_DIR)/gTextureWarioStadiumSignTopLeft.png	\
$(WARIO_STADIUM_DIR)/gTextureWarioStadiumSignBottomLeft.png \
$(WARIO_STADIUM_DIR)/gTextureWarioStadiumSignTopRight.png   \
$(WARIO_STADIUM_DIR)/gTextureWarioStadiumSignBottomRight.png

WARIO_STADIUM_EXPORT_SENTINEL := $(WARIO_STADIUM_DIR)/.export

$(BUILD_DIR)/courses/wario_stadium/course_data.o: $(WARIO_STADIUM_SIGN:%.png=%.inc.c)

$(WARIO_STADIUM_SIGN:%.png=%.inc.c): %.inc.c : %.png
	@$(PRINT) "$(GREEN)N64GRAPHICS extract:  $(BLUE) $< -> $@$(NO_COL)\n"
	$(V)$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(WARIO_STADIUM_SIGN): $(WARIO_STADIUM_EXPORT_SENTINEL) ;

$(WARIO_STADIUM_EXPORT_SENTINEL): $(ASSET_DIR)/courses/wario_stadium.json
	$(V)$(ASSET_EXTRACT) $(BASEROM) $<
	$(V)$(TOUCH) $@

.PHONY: distclean_wario_stadium
distclean_wario_stadium:
	rm -rf $(WARIO_STADIUM_DIR)

distclean_assets: distclean_wario_stadium
