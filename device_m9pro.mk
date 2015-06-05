TARGET_BUILD_TYPE := release #debug

# default is nosdcard, S/W button enabled in resource
DEVICE_FOLDER := device/pipo/m9pro
DEVICE_PACKAGE_OVERLAYS := $(DEVICE_FOLDER)/overlay
PRODUCT_CHARACTERISTICS := tablet


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#Pour boot.img
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/ramdisk,root) \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/ramdisk/res/images/charger/,root/res/images/charger)

#Pour system.img

# Copy app
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/app,system/app)

# Copy bin
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/bin,system/bin)

# Copy etc
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc,system/etc)

# Copy etc bluetooth
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/bluetooth,system/etc/bluetooth)

# Copy etc init.d scripts
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/init.d,system/etc/init.d)

# Copy etc ppp
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/ppp,system/etc/ppp)

# Copy etc usb_modeswitch.d 
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# Copy etc firmware
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/firmware,system/etc/firmware)

# Copy etc gps
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/gps,system/etc/gps)

# Copy etc wifi
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/wifi,system/etc/wifi)

# Copy lib hw
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/lib/hw,system/lib/hw)

# Copy lib
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/lib,system/lib)

# Copy lib egl
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/lib/egl,system/lib/egl)

# Copy modules
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/lib/modules,system/lib/modules)

# Copy media
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/media,system/media)

# Copy framework
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/framework,system/framework)

# Copy preinstall
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/preinstall,system/preinstall)

# Copy vendor firmware
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/vendor/firmware,system/vendor/firmware)

# Copy vendor lib
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/vendor/lib,system/vendor/lib)

# Copy keylayouts
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/usr/keylayout,system/usr/keylayout)

# hardware-specific feature permissions
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/prebuilt/etc/permissions,system/etc/permissions)


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        service.adb.root=1 \
        ro.secure=0 \
        ro.allow.mock.location=1 \
        ro.debuggable=1 \
        persist.sys.usb.config=mtp \
        ro.rk.systembar.voiceicon=true

# enable ADB
PRODUCT_PROPERTY_OVERRIDES := \
        service.adb.root=1 \
        ro.secure=0 \
        ro.allow.mock.location=1 \
        ro.debuggable=1

# Drm
PRODUCT_PACKAGES += \
        drmservice

# Camera
PRODUCT_PACKAGES += \
        Camera \
        camera.rk30board

# Audio
PRODUCT_PACKAGES += \
        audio.primary.default \
        audio.primary.rk30board \
        audio_policy.default \
        audio_policy.rk30board \
        alsa.default \
        audio.alsa_usb.rk30board \
        acoustics.default \
        audio.r_submix.default \
        tinyplay \
        tinycap \
        tinymix \
        audio.a2dp.default \
        audio.usb.default \
        libtinyalsa \
        libaudioutils

# Hal modules
PRODUCT_PACKAGES += \
	lights.rk30board \
   	power.rk3188 \
        sensors.rk30board \
        hwcomposer.rk30board \
        gralloc.rk30board \
        gpu.rk30board 


PRODUCT_PACKAGES += \
        librs_jni \
        com.android.future.usb.accessory

PRODUCT_PACKAGES += \
        com.broadcom.bt \
        com.broadcom.bt.xml \
        libbt-client-api


# VPU Libs
PRODUCT_PACKAGES += \
	libapedec \
	libjpeghwdec \
	libjpeghwenc \
        libjesancache \
        libffmpeg_on2 \
        libffmpeg \
        libhevcdec \
	libOMX_Core \
	libomxvpu_dec \
	libomxvpu_enc \
	librk_demux \
        libstagefrighthw \
        libRkOMX_Resourcemanager \
	librkwmapro \
	libffmpeg \
	librkffplayer \
  	librk_on2 \
        librkswscale \
        libffmpegvpu \
        libvpu

# filesystem tools
PRODUCT_PACKAGES += \
        make_ext4fs \
        setup_fs \
        static_busybox \
        utility_make_ext4fs \
        libstagefrighthw

# French
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.locale.language=fr \
        ro.product.locale.region=FR

# Fix for dalvik-cache
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dexopt-data-only=1

# GPS
PRODUCT_PACKAGES += \
        libloc_adapter \
        libloc_eng \
        libgps.utils \
        gps.rk30board

# 3G
PRODUCT_PACKAGES += \
        rild \
        chat

# android core stuff
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product, build/target/product/full_base.mk)

