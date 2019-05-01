#
# Copyright (C) 2014 MediaTek Inc.
# Modification based on code covered by the mentioned copyright
# and/or permission notice(s).
#
# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	screenrecord.cpp \
	EglWindow.cpp \
	FrameOutput.cpp \
	TextRenderer.cpp \
	Overlay.cpp \
	Program.cpp

LOCAL_SHARED_LIBRARIES := \
	libstagefright libmedia libutils libbinder libstagefright_foundation \
	libjpeg libgui libcutils liblog libEGL libGLESv2

LOCAL_C_INCLUDES := \
	frameworks/av/media/libstagefright \
	frameworks/av/media/libstagefright/include \
	$(TOP)/frameworks/native/include/media/openmax \
	external/jpeg

LOCAL_CFLAGS += -Wno-multichar
#LOCAL_CFLAGS += -UNDEBUG

ifeq ($(strip $(MTK_USE_ANDROID_MM_DEFAULT_CODE)),yes)
  #LOCAL_CFLAGS += -DANDROID_DEFAULT_CODE
else  
  LOCAL_C_INCLUDES += $(TOP)/$(MTK_ROOT)/kernel/include/linux/vcodec \

  LOCAL_SHARED_LIBRARIES += \
        libvcodecdrv  
endif

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= screenrecord

include $(BUILD_EXECUTABLE)
