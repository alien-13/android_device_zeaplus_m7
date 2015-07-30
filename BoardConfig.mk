# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/zeaplus/m7

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zeaplus/m7/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
#TARGET_BOOTLOADER_BOARD_NAME := m7
#TARGET_OTA_ASSERT_DEVICE :=

# Platform
TARGET_BOARD_PLATFORM := mt6752

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_VARIANT := generic
#TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a53
#ARCH_ARM_HAVE_NEON := true
#ARCH_ARM_HAVE_VFP := true
#TARGET_CPU_SMP := true
#ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --cmdline bootopt=64S3,32N2,64N2

#Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1644167168
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13721141248
BOARD_CACHEIMAGE_PARTITION_SIZE := 117440512
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_HAS_MTK := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkmtkbootimg.mk


#Recovery
RECOVERY_VARIANT := cwm #twrp
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.mt6752.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_HAS_LARGE_FILESYSTEM := true


RECOVERY_SDCARD_ON_DATA := true
TARGET_SCREEN_HEIGHT := 1920
DEVICE_RESOLUTION := 1080x1920
TARGET_SCREEN_WIDTH := 1080
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file

# EGL settings
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false

#TWRP
#TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/battery/power_supply/battery
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_TOOLBOX := true
TWHAVE_SELINUX := true
TW_MAX_BRIGHTNESS := 255
TW_FLASH_FROM_STORAGE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

