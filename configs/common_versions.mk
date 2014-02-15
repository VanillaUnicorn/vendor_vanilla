# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aokp/tools/getdate)
AOKP_BRANCH=kitkat

    ifneq ($(AOKP_NIGHTLY),)
        # VU_NIGHTLY=true
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.vu.version=$(TARGET_PRODUCT)_$(VU_BRANCH)_nightly_$(DATE)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.vu.version=$(TARGET_PRODUCT)_$(VU_BRANCH)_unofficial_$(DATE)
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.aokp.branch=$(VU_BRANCH) \
        ro.aokp.device=$(VU_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
