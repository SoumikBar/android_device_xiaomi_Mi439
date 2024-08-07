#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common risingOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/rising/config/rising.mk)

# Kernel
TARGET_KERNEL_VERSION := 4.9

# Inherit from Mi439 device
$(call inherit-product, device/xiaomi/Mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Rising Variables
RISING_CHIPSET="SDM439"
RISING_MAINTAINER="GamerBoy1234"
RISING_DEVICE := Mi439

# Build package
WITH_GMS := true

# Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_SUPPORTS_BLUR := true

# Pixel charging
USE_PIXEL_CHARGING := true

# TouchGestures
TARGET_SUPPORTS_TOUCHGESTURES := true

# Debugging
TARGET_INCLUDE_MATLOG := false

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi439
PRODUCT_NAME := lineage_Mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"
