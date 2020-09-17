#
# Copyright (C) 2019-2020 The Android Open Source Project
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

LOCAL_PATH := device/xiaomi/land

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_NO_BOOTLOADER := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_CRYPTO_FBE := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_CRYPTO_SYSTEM_VOLD_MOUNT := system vendor cust

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Kernel
TARGET_IS_64_BIT := true
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58846064640 # (58846081024-16384)
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505
TARGET_BOARD_SUFFIX := _64

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP Configuration
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_USES_64_BIT_BINDER := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/xiaomi/land/recovery.fstab
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FORCE_USE_BUSYBOX := true
TW_EXCLUDE_TWRPAPP := true
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := false

# Twrp NTFS filesystem support
TW_INCLUDE_NTFS_3G := true

# Twrp Fuse-ExFAT Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true

