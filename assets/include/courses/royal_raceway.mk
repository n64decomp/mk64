ROYAL_RACEWAY_DIR := assets/courses/royal_raceway

ROYAL_RACEWAY_PIRANHA_PLANT_PALETTE := $(ROYAL_RACEWAY_DIR)/gTLUTRoyalRacewayPiranhaPlant.png

ROYAL_RACEWAY_EXPORT_SENTINEL := $(ROYAL_RACEWAY_DIR)/.export

ASSET_DIRECTORIES += $(ROYAL_RACEWAY_DIR)

$(BUILD_DIR)/courses/star_cup/royal_raceway/course_data.inc.o: $(ROYAL_RACEWAY_PIRANHA_PLANT_PALETTE:%.png=%.inc.c)

$(ROYAL_RACEWAY_PIRANHA_PLANT_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(ROYAL_RACEWAY_PIRANHA_PLANT_PALETTE): $(ROYAL_RACEWAY_EXPORT_SENTINEL) ;

$(ROYAL_RACEWAY_EXPORT_SENTINEL): $(ASSET_DIR)/courses/royal_raceway.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@
