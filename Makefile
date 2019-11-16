THEOS_DEVICE_IP = 192.168.1.75

ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SlimVolumeHUD

SlimVolumeHUD_FILES = Tweak.x
SlimVolumeHUD_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
