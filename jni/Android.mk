LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := -DHAS_SOCKLEN_T

LOCAL_MODULE    := libenet
LOCAL_SRC_FILES :=\
	callbacks.c \
	compress.c \
	host.c \
	list.c \
	packet.c \
	peer.c \
	protocol.c \
	unix.c
	
LOCAL_LDLIBS := 

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
