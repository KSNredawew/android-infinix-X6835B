#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Infinix-X6528B device
$(call inherit-product, device/infinix/Infinix-X6528B/device.mk)

PRODUCT_DEVICE := Infinix-X6528B
PRODUCT_NAME := lineage_Infinix-X6528B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6528B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion
