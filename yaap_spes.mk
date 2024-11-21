#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common YAAP stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Product Specifics
PRODUCT_NAME := yaap_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=spes_global \
    PRIVATE_BUILD_DESC="spes_global-user 13 TKQ1.221114.001 V816.0.8.0.TGCMIXM:user release-keys"

BUILD_FINGERPRINT := "Redmi/spes_global/spes:13/TKQ1.221114.001/V816.0.8.0.TGCMIXM:user/release-keys"
