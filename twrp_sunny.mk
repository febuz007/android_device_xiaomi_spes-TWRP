#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
BOARD_VENDOR := Redmi
PRODUCT_BRAND := Redmi

PRODUCT_DEVICE := sunny
PRODUCT_NAME := twrp_sunny
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_RELEASE_NAME := sunny

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
