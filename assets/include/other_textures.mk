OTHER_TEXTURES_DIR := textures/standalone

OTHER_TEXTURES_RGBA16 := \
$(OTHER_TEXTURES_DIR)/texture_6447C4.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_676FB0.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_643B3C.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_64BB60.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_64BCCC.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_64FBF4.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_651B20.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_66262C.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_668728.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_66A3DC.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_66CA98.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_66CD64.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_66D698.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_66E608.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_67B388.rgba16.png \
$(OTHER_TEXTURES_DIR)/sign_welcome_0.rgba16.png \
$(OTHER_TEXTURES_DIR)/sign_welcome_1.rgba16.png \
$(OTHER_TEXTURES_DIR)/sign_wooden_back_0.rgba16.png \
$(OTHER_TEXTURES_DIR)/sign_wooden_back_1.rgba16.png \
$(OTHER_TEXTURES_DIR)/sign_wood_red_arrow.rgba16.png \
$(OTHER_TEXTURES_DIR)/texture_68D940.rgba16.png

$(OTHER_TEXTURES_RGBA16:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@ -g $< -s u8 -f rgba16

OTHER_TEXTURES_IA16 := \
$(OTHER_TEXTURES_DIR)/texture_685AC0.ia16.png

$(OTHER_TEXTURES_IA16:%.png=%.inc.c): %.inc.c : %.png
	$(N64GRAPHICS) -i $(BUILD_DIR)/$@ -g $< -s u8 -f ia16
