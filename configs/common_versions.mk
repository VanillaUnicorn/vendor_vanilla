# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/vanilla/tools/getdate)
VU_BRANCH=kitkat

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.vu.branch=$(VU_BRANCH) \
        ro.vu.device=$(VU_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
