# Inherit common stuff
$(call inherit-product, vendor/vanilla/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/vanilla/overlay/common_tablet

