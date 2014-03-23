# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/vanilla/configs/gsm.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/vanilla/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := vu_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.3/JWR66Y/776638:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66Y 776638 release-keys"

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
