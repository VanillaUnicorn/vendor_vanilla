# Inherit AOSP device configuration for ls970
$(call inherit-product, device/lge/ls970/full_ls970.mk)

# Inherit Vanilla Unicorn common bits
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/vanilla/configs/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls970
PRODUCT_NAME := vu_ls970
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Boot animation
PRODUCT_COPY_FILES += \
vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
