LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/micromax/a106/AndroidBoardVendor.mk

# copy keylayout overrides
$(shell mkdir -p $(TARGET_OUT_KEYLAYOUT); \
    cp -pf device/micromax/a106/keylayout/Generic.kl $(TARGET_OUT_KEYLAYOUT))

# copy permissions overrides
$(shell mkdir -p $(TARGET_OUT_ETC)/permissions; \
    cp -pf device/micromax/a106/configs/android.hardware.camera.xml $(TARGET_OUT_ETC)/permissions)
