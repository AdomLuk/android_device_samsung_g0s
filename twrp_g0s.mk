#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from g0s device
$(call inherit-product, device/samsung/g0s/device.mk)

PRODUCT_DEVICE := g0s
PRODUCT_NAME := twrp_g0s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S906B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="g0sxxx-user 12 SP1A.210812.016 S906BXXU9EXE1 release-keys"

BUILD_FINGERPRINT := samsung/g0sxxx/g0s:12/SP1A.210812.016/S906BXXU9EXE1:user/release-keys
