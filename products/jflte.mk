# Inherit AOSP device configuration for jflte
$(call inherit-product, device/samsung/jflte/full_jflte.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/vanilla/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/vanilla/overlay/samsung/jflte \
                           vendor/vanilla/overlay/samsung/msm8960-common \
                           vendor/vanilla/overlay/samsung/qcom-common

# Setup device specific product configuration.
PRODUCT_NAME := vu_jflte
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflte
PRODUCT_MODEL := SCH-R970
PRODUCT_MANUFACTURER := Samsung


# boot animation
PRODUCT_COPY_FILES += \
       vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
