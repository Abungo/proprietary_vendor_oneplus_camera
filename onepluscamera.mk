#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2021-2024 crDroid Android Project
# Copyright (C) 2026 Evolution X
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := vendor/oneplus/camera

PRODUCT_PACKAGES += \
    OnePlusCamera \
    OnePlusCameraService

# Permissions and sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/OnePlusCamera/privapp-permissions-com.oneplus.camera.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-com.oneplus.camera.xml \
    $(LOCAL_PATH)/configs/OnePlusCamera/privapp-permissions-com.oneplus.camera.service.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.oneplus.camera.service.xml \
    $(LOCAL_PATH)/configs/OnePlusCamera/hiddenapi-allowlist-oneplus.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-allowlist-oneplus.xml \
    $(LOCAL_PATH)/configs/OnePlusCamera/oneplus_google_lens_config.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/oneplus_google_lens_config.xml \
    $(LOCAL_PATH)/configs/OnePlusCamera/default-permissions-oneplus.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/default-permissions/default-permissions-oneplus.xml

# Camera system properties for OnePlus 6/6T OOS camera support
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=true \
    persist.vendor.camera.sceneclassify.enable=0 \
    ro.opcamera.support=true \
    vendor.camera.skip_unconfigure.packagelist=com.oneplus.camera
