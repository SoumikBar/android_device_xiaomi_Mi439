#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Afterlife stuff.
$(call inherit-product, vendor/Afterlife/config/common_full_phone.mk)

# Kernel
TARGET_KERNEL_VERSION := 4.9

# Inherit from Mi439 device
$(call inherit-product, device/xiaomi/Mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

flags:

If you are interested and want to make an afterlife project for your device, please adjust the flags with this


# CoreGapps

AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true

See #coregapps for more information

# Maintainer
AFTERLIFE_MAINTAINER := FARHAN•beforeLife 


# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_SUPPORTS_BLUR := true

# Pixel charging
USE_PIXEL_CHARGING := true

# TouchGestures
TARGET_SUPPORTS_TOUCHGESTURES := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi439
PRODUCT_NAME := lineage_Mi439
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
# Signing
# -include vendor/extra/product.mk

# Project Blaze specific
BLAZE_MAINTAINER := FARHAN
ROM_FOLDER := blaze
WITH_GAPPS := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"
