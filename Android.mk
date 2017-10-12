LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    libcap-ng-0.7/src/cap-ng.c \
    libcap-ng-0.7/src/lookup_table.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/libcap-ng-0.7/src
LOCAL_MODULE := libcap-ng
LOCAL_CFLAGS := \
    -Wall -Werror \
    -Wno-enum-conversion \
    -Wno-unused-parameter
include $(BUILD_SHARED_LIBRARY)

######################

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libcap-ng-0.7/utils/pscap.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/libcap-ng-0.7/src
LOCAL_SHARED_LIBRARIES += libcap-ng
LOCAL_MODULE := pscap
LOCAL_CFLAGS := -Wall -Werror
include $(BUILD_EXECUTABLE)
