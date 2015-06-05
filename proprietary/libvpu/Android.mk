LOCAL_PATH := $(call my-dir)

ifeq ($(strip $(TARGET_BOARD_PLATFORM)),rk3188)

# Use BUILD_PREBUILT instead of PRODUCT_COPY_FILES to bring in the NOTICE file.
include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libapedec.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libjpeghwdec.so                   
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)
  
include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libjpeghwenc.so                   
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)
  
include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libOMX_Core.so                    
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)
  
include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libomxvpu_dec.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libomxvpu_enc.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := librk_demux.so                
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)
  
include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := librkffplayer.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := librk_on2.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := librkwmapro.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := libvpu.so                      
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

endif
