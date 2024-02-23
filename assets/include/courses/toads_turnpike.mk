TOADS_TURNPIKE_DIR := assets/courses/toads_turnpike

TOADS_TURNPIKE_PNG := \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckWindshieldLeft.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckWindshieldRight.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckBox1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckHeadlights.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckTyre.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckCab.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckCabSide.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusBackLod0.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusSide.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusDoorLod0.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusWindow.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusFrontLod0.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusUnknown1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusDriverWindow.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusDoorLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusSideLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusFrontLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeBusBackLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerStripe.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerWindshield.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerFront.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerHeadlights.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerBumper.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerSideBackLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerBackLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerSideFrontLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTankerFrontLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckBox2.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeTruckBox3.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeCarHeadlights.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeCarTaillights.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeCarFrontLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeCarBackLod1.png \
$(TOADS_TURNPIKE_DIR)/gTextureToadsTurnpikeCarSideLod1.png

TOADS_TURNPIKE_EXPORT_SENTINEL := $(TOADS_TURNPIKE_DIR)/.export

$(BUILD_DIR)/courses/toads_turnpike/course_data.inc.o: $(TOADS_TURNPIKE_PNG:%.png=%.inc.c)

$(TOADS_TURNPIKE_PNG:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(TOADS_TURNPIKE_PNG): $(TOADS_TURNPIKE_EXPORT_SENTINEL) ;

$(TOADS_TURNPIKE_EXPORT_SENTINEL): $(ASSET_DIR)/courses/toads_turnpike.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	$(TOUCH) $@

.PHONY: distclean_toads_turnpike
distclean_toads_turnpike:
	rm -rf $(TOADS_TURNPIKE_DIR)

distclean_assets: distclean_toads_turnpike
