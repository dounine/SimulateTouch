# lipoplastic setup for armv6 + arm64 compilation
#export ARCHS = arm64e arm64 armv7
#export THEOS_DEVICE_IP = 192.168.0.3
TARGET := iphone:clang:latest:14.5
SUBPROJECTS = appdelegate zxtouch-binary pccontrol

include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/aggregate.mk

after-install::
	install.exec "chown -R mobile:mobile /var/mobile/Library/ZXTouch && killall -9 SpringBoard;"

