#
# Copyright (C) 2018 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

#
DEVICE_FOLDER := device/nokia/NB1
#

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8998
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := kyro
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kyro

# OTA assert
TARGET_OTA_ASSERT_DEVICE := Nokia8,nokia8,Nokia_8,nokia_8,NB1,nb1,Nokia_NB1,nokia_nb1,nokia_NB1,Nokia_nb1,Nokia_Eight,Nokia_eight,nokia_eight,nokia_Eight

# Prebuilt
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/Image.gz-dtb
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/prebuilt/Image.gz-dtb
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery.fstab

# Kernel
BOARD_NAME := Qualcomm
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc1b0000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 loglevel=0 buildvariant=user
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_MKBOOTIMG_ARGS := --board $(BOARD_NAME) --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET)

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
# Reserve space for data encryption (55503577088-32768)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55503544320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist odm
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Qcom
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := system/vendor

# Crypto
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION = true
TW_INCLUDE_FBE := true

# GPT Utils
BOARD_PROVIDES_GPTUTILS := true

# Graphics
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BRIGHTNESS_SYS_FILE := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Temperature
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"

# Selinux
RECOVERY_NEED_SELINUX_FIX := true

# Recovery
TWRP_NEW_THEME := true
TW_THEME := portrait_hdpi
TW_INCLUDE_FB2PNG := true
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_REMOVABLE_STORAGE := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := "80"

# Mount
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
