LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := fuzzme
LOCAL_SRC_FILES := fuzzme.c
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)    # <-- Use this to build an executable.