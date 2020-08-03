#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Retro
PRODUCT_PACKAGES += \
    RetroMusic


# Recorder
PRODUCT_PACKAGES += \
    KimciRecorder

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Sensor config
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/sensors_hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/asus/X00TD/X00TD-vendor.mk)
