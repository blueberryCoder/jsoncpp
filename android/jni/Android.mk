#-------------------------------
# Author:blueberry
# -----------------------------

LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)
LOCAL_CPPFLAGS+=-DJSONCPP_NO_LOCALE_SUPPORT
LOCAL_MODULE:=jsoncpp
LOCAL_SRC_FILES:=jsoncpp.cpp
LOCAL_C_INCLUDES:=$(LOCAL_PATH)/json
include $(BUILD_SHARED_LIBRARY)
