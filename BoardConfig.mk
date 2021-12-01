#
# Copyright (C) 2017 The Android Open Source Project
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

DEVICE_PATH := device/nokia/PLE


# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64

# Important Dependencies
ALLOW_MISSING_DEPENDENCIES := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=400M androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_CUSTOM_BOOTIMG_MK := device/nokia/PLE/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS :=  --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --kernel_offset 0x00008000 --second_offset 0x00f00000

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10791377920 # 10791394304 - 16384

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := PLE

# FS Configs
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
ALLOW_MISSING_DEPENDENCIES :=true

# Hack:prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configs
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_SUPERSU := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Qcom Hardware
BOARD_USES_QCOM_HARDWARE := true

#shrp flags
SHRP_PATH := device/nokia/PLE
SHRP_MAINTAINER := Atharv2951
SHRP_DEVICE_CODE := PLE
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb-otg
SHRP_FLASH := 1
SHRP_FLASH_MAX_BRIGHTNESS := 200
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_OFFICIAL := true
SHRP_DARK := true
SHRP_EXPRESS := true
SHRP_NO_SAR_AUTOMOUNT := true
SHRP_REC_TYPE := Universal
SHRP_DEVICE_TYPE := A_Only
