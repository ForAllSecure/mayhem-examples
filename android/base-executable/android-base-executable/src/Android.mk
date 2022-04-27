LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := mayhemit
LOCAL_SRC_FILES := mayhemit.c
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)    # <-- Use this to build an executable.