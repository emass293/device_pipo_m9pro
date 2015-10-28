# BoardConfig.mk
#
# Product-specific compile-time definitions.
#
DEVICE_FOLDER := device/pipo/m9pro
#TARGET_GCC_VERSION_EXP := 4.9
#TARGET_BUILD_VARIANT := eng

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := true

PRODUCT_CHARACTERISTICS := tablet

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_BOARD_PLATFORM := rk3188
TARGET_BOARD_HARDWARE := rk30board

#TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

BOARD_KERNEL_CMDLINE := console=ttyFIQ0 androidboot.console=ttyFIQ0 init=/init initrd=0x62000000,0x00800000 mtdparts=rk29xxnand:0x00002000@0x00002000(misc),0x00006000@0x00004000(kernel),0x00006000@0x0000a000(boot),0x00010000@0x00010000(recovery),0x00020000@0x00020000(backup),0x00040000@0x00040000(cache),0x01000000@0x00080000(userdata),0x00003000@0x01080000(metadata),0x00003000@0x01083000(kpanic),0x00180000@0x01086000(system),-@0x01206000(user)
#TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/kernel
ARM_EABI_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-cortex_a9-linux-gnueabihf-linaro_4.9.4/bin
#TARGET_KERNEL_SOURCE := kernel/pipo/m9pro
TARGET_KERNEL_CONFIG := Pipo_M9Pro_defconfig

# TWRP
TW_DISABLE_DOUBLE_BUFFERING := true
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/kernel
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
DEVICE_RESOLUTION := 1920x1200
TW_THEME := landscape_hdpi
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#TW_BOARD_CUSTOM_GRAPHICS := ../../../$(DEVICE_FOLDER)/recovery/graphics.c
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TWHAVE_SELINUX := true
TW_INCLUDE_FB2PNG := true


# Parameters
BOARD_RAMDISK_BASE := 0x62000000
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592
BOARD_FLASH_BLOCK_SIZE := 131072

# Set up the flash file formats so that we can flash them directly
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_SYSTEM_FILESYSTEM    := ext4
BOARD_HAS_LARGE_FILESYSTEM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_FOLDER)/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := $(DEVICE_FOLDER)/bluetooth/vnd_rockchip.txt

# Wifi
BOARD_HAVE_WIFI := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_RK901a2.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_RK901a2_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_RK901a2_apsta.bin"
#WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcm4329.bin"
#WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcm4329_p2p.bin"
#WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/rkwifi.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# Graphics
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
TARGET_USES_ION := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Audio
#BOARD_USES_GENERIC_AUDIO := flase
#BOARD_USES_ALSA_AUDIO := true

# Camera Setup
USE_CAMERA_STUB := true

# No HWCOMPOSER - TO DO
BOARD_USES_HWCOMPOSER := true
#TARGET_FORCE_CPU_UPLOAD := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

#GPS
BOARD_HAVE_GPS := true

