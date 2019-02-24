LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(call get-mod-path, x-live)/paths.mk
include $(call get-mod-path, boost)/common.mk
include $(call get-mod-path, libjingle)/android_common.mk

include $(CLEAR_VARS)
ifneq ($(TARGET_SIMULATOR),true)
LOCAL_MODULE := uuc

LOCAL_SRC_FILES := \
	uu.c

LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libc
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)

include $(BUILD_EXECUTABLE)
endif
