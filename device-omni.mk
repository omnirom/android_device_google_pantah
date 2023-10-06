DEVICE_PACKAGE_OVERLAYS += device/google/pantah/overlay-omni

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/pantah/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml \
    device/google/pantah/permissions/permissions_com.google.euiccpixel.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.google.euiccpixel.xml

PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/pantah/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

# HBM
PRODUCT_COPY_FILES += \
    device/google/pantah/permissions/permissions_com.android.hbmsvmanager.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.hbmsvmanager.xml

TARGET_PREBUILT_KERNEL := device/google/pantah-kernel/Image.lz4

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk
