#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 33

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \
    create_splloader_dual_slot_byname_path.sh \
    init.insmod.sh \

PRODUCT_PACKAGES += \
    fstab.A666L \
    init.A666L.rc \
    init.A666L.usb.rc \
    init.A666LN.rc \
    init.A666LN.usb.rc \
    init.BG6.rc \
    init.BG6.usb.rc \
    init.BG6h.rc \
    init.BG6h.usb.rc \
    init.BG6n.rc \
    init.BG6n.usb.rc \
    init.BG6s.rc \
    init.BG6s.usb.rc \
    init.P663L.rc \
    init.P663L.usb.rc \
    init.P663LN.rc \
    init.P663LN.usb.rc \
    init.P683L.rc \
    init.P683L.usb.rc \
    init.S662LT.rc \
    init.S662LT.usb.rc \
    init.S662LTGO.rc \
    init.S662LTGO.usb.rc \
    init.S681LN.rc \
    init.S681LN.usb.rc \
    init.X6525.rc \
    init.X6525.usb.rc \
    init.X6528.rc \
    init.X6528.usb.rc \
    init.X6528B.rc \
    init.X6528B.usb.rc \
    init.cali.rc \
    init.ram.gms.rc \
    init.ram.native.rc \
    init.ram.rc \
    init.storage.rc \
    init.ums9230_1h10.rc \
    init.ums9230_1h10.usb.rc \
    init.ums9230_1h10_go.rc \
    init.ums9230_1h10_go.usb.rc \
    init.ums9230_4h10.rc \
    init.ums9230_4h10.usb.rc \
    init.ums9230_4h10_go.rc \
    init.ums9230_4h10_go.usb.rc \
    init.ums9230_6h10.rc \
    init.ums9230_6h10.usb.rc \
    init.ums9230_7h10.rc \
    init.ums9230_7h10.usb.rc \
    init.ums9230_haps.rc \
    init.ums9230_haps.usb.rc \
    init.ums9230_zebu.rc \
    init.ums9230_zebu.usb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.A666L:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.A666L

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/Infinix-X6528B/Infinix-X6528B-vendor.mk)
