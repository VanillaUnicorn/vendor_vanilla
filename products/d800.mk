# Inherit AOKP device configuration for d800
$(call inherit-product-if-exists, device/lge/d800/aokp.mk)

# d800 overlay
# PRODUCT_PACKAGE_OVERLAYS += vendor/vanilla/overlay/d800

# Device identifier
PRODUCT_DEVICE := d800
PRODUCT_NAME := vu_d800
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D800
PRODUCT_MANUFACTURER := lge

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
