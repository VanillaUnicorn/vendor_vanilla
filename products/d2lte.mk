# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/vanilla/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit common d2 overlays
DEVICE_PACKAGE_OVERLAYS += vendor/vanilla/overlay/samsung/d2lte \
                           vendor/vanilla/overlay/samsung/msm8960-common \
                           vendor/vanilla/overlay/samsung/qcom-common

# Setup device specific product configuration.
PRODUCT_NAME := vu_d2lte
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2lte
PRODUCT_MODEL := SCH-R530U
PRODUCT_MANUFACTURER := Samsung


# boot animation
PRODUCT_COPY_FILES += \
vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
