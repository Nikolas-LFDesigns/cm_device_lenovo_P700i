# Copyright (C) 2011 The Android Open Source Project
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
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Lenovo/p700i/BoardConfigVendor.mk
-include device/Lenovo/p700i/BoardCommonConfig.mk


LOCAL_FOLDER := device/Lenovo/p700i
COMMON_FOLDER := device/Lenovo/common
PREBUILT_FOLDER := $(LOCAL_FOLDER)/prebuilt
BOARD_CONFIG_DIR := $(LOCAL_FOLDER)/config

TARGET_BOARD_PLATFORM := mt6577
TARGET_BOOTLOADER_BOARD_NAME := p700i
TARGET_NO_BOOTLOADER := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_ARMV7A_BUG := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_RILD := true
BOARD_NO_REFERENCE_RIL := true
BOARD_NO_MOCK_RIL := true

BOARD_USES_GENERIC_AUDIO := false

#Graphics
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX531
BOARD_EGL_CFG := $(PREBUILT_FOLDER)/EGL/egl.cfg
USE_OPENGL_RENDERER := true

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_FOLDER)/include

#WIFI STUFF
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X

#define board stuff
#BOARD_NAND_PAGE_SIZE := 4096 -s 128+64
BOARD_DISABLE_FMRADIO_TRANSMITTER_TEST := true

#SOME OTHER STUFF TO ADD
# Sensors
#SOMC_CFG_DASH_INCLUDED := yes
SENSORS_COMPASS_AK8973 := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS9120 := true
SENSORS_PRESSURE_BMP180 := false

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

#Legacy stuff
BOARD_USES_LEGACY_OVERLAY := true
BOARD_USES_LEGACY_RIL := true
BORAD_USES_LEGACY_CAMERA := true

#Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

TARGET_USERIMAGES_USE_EXT4 := true
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 3913728 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5476416#5311680
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 415000668
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14946668
TARGET_RECOVERY_FORCE_BACKUP_SIZE := 6291456
BOARD_FLASH_BLOCK_SIZE := 131072

# TARGET_BOARD_PLATFORM := unknown
TARGET_PREBUILT_KERNEL := $(LOCAL_FOLDER)/kernel/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_FOLDER)/kernel/recovery_kernel
NEEDS_KERNEL_COPY := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_FOLDER)/kernel/custombootimg.mk

TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../$(LOCAL_FOLDER)/recovery/recovery_keys.c
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
