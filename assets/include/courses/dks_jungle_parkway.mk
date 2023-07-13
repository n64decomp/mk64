DKS_JUNGLE_PARKWAY_DIR := assets/courses/dks_jungle_parkway

DKS_JUNGLE_PARKWAY_PNG := \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayBoatMarioSign.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTreeBark.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayBoatWindowUpper.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayBoatWindowLower.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayBoatRailing.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayBoatPaddle1.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayBoatPaddle2.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTree2Top.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTree2Trunk.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTree3TopRight.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTree3TopLeft.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTreeTrunk.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayTree1Top.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayPalmTreeTop.png

DKS_JUNGLE_PARKWAY_KIWANO_PALETTE := $(DKS_JUNGLE_PARKWAY_DIR)/gTLUTDksJungleParkwayKiwanoFruit.png
DKS_JUNGLE_PARKWAY_KIWANO_FRAMES := \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayKiwanoFruit1.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayKiwanoFruit2.png \
$(DKS_JUNGLE_PARKWAY_DIR)/gTextureDksJungleParkwayKiwanoFruit3.png

DKS_JUNGLE_PARKWAY_EXPORT_SENTINEL := $(DKS_JUNGLE_PARKWAY_DIR)/.export

$(BUILD_DIR)/data/other_textures.o: $(DKS_JUNGLE_PARKWAY_KIWANO_FRAMES:%.png=%.mio0)

$(DKS_JUNGLE_PARKWAY_KIWANO_FRAMES:%.png=%.mio0): %.mio0 : %.bin
	$(MIO0TOOL) -c $< $@

$(DKS_JUNGLE_PARKWAY_KIWANO_FRAMES:%.png=%.bin): %.bin : %.png
	$(N64GRAPHICS) -Z $@ -g $< -s raw -f ci8 -c rgba16 -p $(DKS_JUNGLE_PARKWAY_KIWANO_PALETTE)

$(BUILD_DIR)/courses/special_cup/dks_jungle_parkway/course_data.inc.o: $(DKS_JUNGLE_PARKWAY_KIWANO_PALETTE:%.png=%.inc.c)
$(BUILD_DIR)/courses/special_cup/dks_jungle_parkway/course_data.inc.o: $(DKS_JUNGLE_PARKWAY_PNG:%.png=%.inc.c)

$(DKS_JUNGLE_PARKWAY_PNG:%.png=%.inc.c) $(DKS_JUNGLE_PARKWAY_KIWANO_PALETTE:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $@ -g $< -s u8 -f rgba16

$(DKS_JUNGLE_PARKWAY_KIWANO_PALETTE) $(DKS_JUNGLE_PARKWAY_KIWANO_FRAMES): $(DKS_JUNGLE_PARKWAY_EXPORT_SENTINEL) ;
$(DKS_JUNGLE_PARKWAY_PNG): $(DKS_JUNGLE_PARKWAY_EXPORT_SENTINEL) ;

$(DKS_JUNGLE_PARKWAY_EXPORT_SENTINEL): $(ASSET_DIR)/courses/dks_jungle_parkway.json
	$(ASSET_EXTRACT) $(BASEROM) $<
	touch $@

.PHONY: distclean_dks_junk_parkway
distclean_dks_junk_parkway:
	rm -rf $(DKS_JUNGLE_PARKWAY_DIR)

distclean_assets: distclean_dks_junk_parkway
