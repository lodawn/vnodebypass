GO_EASY_ON_ME = 1
DEBUG=0
FINALPACKAGE=1

TARGET := iphone:clang:12.4:12.4
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TOOL_NAME = vnodebypass

vnodebypass_FILES = main.m vnode.m
vnodebypass_CFLAGS = -fobjc-arc
vnodebypass_CODESIGN_FLAGS = -Sent.plist
vnodebypass_INSTALL_PATH = /usr/bin

include $(THEOS_MAKE_PATH)/tool.mk

before-package::
