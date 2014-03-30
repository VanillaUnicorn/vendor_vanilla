$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Inherit Vanilla Unicorn common bits
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/vanilla/configs/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltexx TARGET_DEVICE=jfltexx BUILD_FINGERPRINT="samsung/jfltexx/jflte:4.2.2/JDQ39/I9505XXUAMDE:user/release-keys" PRIVATE_BUILD_DESC="jfltexx-user 4.2.2 JDQ39 I9505XXUAMDE release-keys"

PRODUCT_DEVICE := jfltexx
PRODUCT_NAME := vu_jfltexx

PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
