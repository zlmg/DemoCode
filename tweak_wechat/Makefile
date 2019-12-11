export THEOS_DEVICE_IP=127.0.0.1
export THEOS_DEVICE_PORT=10010

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tweak_wechat

tweak_wechat_FILES = Tweak.x *.m
tweak_wechat_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
