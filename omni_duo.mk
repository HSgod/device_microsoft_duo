#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from duo device
$(call inherit-product, device/microsoft/duo/device.mk)

PRODUCT_DEVICE := duo
PRODUCT_NAME := omni_duo
PRODUCT_BRAND := surface
PRODUCT_MODEL := Surface Duo
PRODUCT_MANUFACTURER := microsoft

PRODUCT_GMS_CLIENTID_BASE := android-microsoft

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="duo-user duo 2022.902.48 202209020048 release-keys"

BUILD_FINGERPRINT := surface/duo/duo:12/2022.902.48/202209020048:user/release-keys
