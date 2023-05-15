#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6225-common
include device/motorola/sm6225-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/caprip

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := caprip

# Display
TARGET_SCREEN_DENSITY := 280

# HIDL
ODM_MANIFEST_SKUS += b bc d dc dn dnc f fc n nc
ODM_MANIFEST_B_FILES := $(DEVICE_PATH)/sku/manifest_b.xml
ODM_MANIFEST_BC_FILES := $(DEVICE_PATH)/sku/manifest_bc.xml
ODM_MANIFEST_D_FILES := $(DEVICE_PATH)/sku/manifest_d.xml
ODM_MANIFEST_DC_FILES := $(DEVICE_PATH)/sku/manifest_dc.xml
ODM_MANIFEST_DN_FILES := $(DEVICE_PATH)/sku/manifest_dn.xml
ODM_MANIFEST_DNC_FILES := $(DEVICE_PATH)/sku/manifest_dnc.xml
ODM_MANIFEST_F_FILES := $(DEVICE_PATH)/sku/manifest_f.xml
ODM_MANIFEST_FC_FILES := $(DEVICE_PATH)/sku/manifest_fc.xml
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/sku/manifest_n.xml
ODM_MANIFEST_NC_FILES := $(DEVICE_PATH)/sku/manifest_nc.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/ext_config/caprip-default.config

# Partitions
BOARD_SUPER_PARTITION_SIZE := 10804527104
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 10800332800 # BOARD_SUPER_PARTITION_SIZE - 4MB

# Recovery
TARGET_RECOVERY_DENSITY := hdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 43

# Security patch level
VENDOR_SECURITY_PATCH := 2023-03-01

# Inherit from the proprietary version
include vendor/motorola/caprip/BoardConfigVendor.mk
