#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from the common Open Source configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from perry device
$(call inherit-product, device/motorola/owens/device.mk)
$(call inherit-product, vendor/motorola/owens/owens-vendor.mk)

# Inherit from the common LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_owens
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := owens
PRODUCT_MODEL := Moto E4 Plus
PRODUCT_MANUFACTURER := motorola

TARGET_VENDOR_PRODUCT_NAME := owens_retail
TARGET_VENDOR_DEVICE_NAME := owens
TARGET_VENDOR := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="owens-user 7.1.1 NPR26.58-25 27 release-keys"

BUILD_FINGERPRINT := motorola/owens/owens:7.1.1/NPR26.58-25/27:user/release-keys
