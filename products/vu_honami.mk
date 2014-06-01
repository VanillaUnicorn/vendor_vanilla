# Inherit AOSP device configuration for honami
$(call inherit-product-if-exists, device/sony/honami/vu.mk)

# honami overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/vanilla/overlay/honami

# Setup device specific product configuration.
PRODUCT_NAME := vu_honami
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := honami
PRODUCT_MODEL := Xperia Z1
PRODUCT_MANUFACTURER := Sony

# boot animation
PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
