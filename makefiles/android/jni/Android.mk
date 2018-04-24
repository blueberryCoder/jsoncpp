#-----------------------------------------
# Author: blueberry
# ----------------------------------------

LOCAL_PATH := $(call my-dir)

JSONCPP_DIR = $(LOCAL_PATH)/../../..
JSONCPP_SRC = $(JSONCPP_DIR)/src

#--------- static module -----------------#

include $(CLEAR_VARS)
LOCAL_MODULE :=libjsoncpp

LOCAL_CFLAGS :=-fexceptions -std=c++11 -Wall -Wconversion
LOCAL_EXPORT_CFLAGS := -std=c++11
LOCAL_SRC_FILES := \
	$(JSONCPP_SRC)/lib_json/json_value.cpp \
	$(JSONCPP_SRC)/lib_json/json_reader.cpp \
	$(JSONCPP_SRC)/lib_json/json_writer.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/lib_json $(JSONCPP_DIR)/include
LOCAL_EXPORT_C_INCLUDES :=$(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)


