# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/vanilla/tools/getdate)
VU_BRANCH=kitkat

ifneq ($(VU_BUILD),)
    # AOKP_BUILD=<goo version int>/<build string>
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=vu \
        ro.goo.rom=vu \
        ro.goo.version=$(shell echo $(VU_BUILD) | cut -d/ -f1) \
        ro.vu.version=$(TARGET_PRODUCT)_$(VU_BRANCH)_$(shell echo $(VU_BUILD) | cut -d/ -f2)
else
    ifneq ($(VU_NIGHTLY),)
        # AOKP_NIGHTLY=true
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.vu.version=$(TARGET_PRODUCT)_$(VU_BRANCH)_nightly_$(DATE)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.vu.version=$(TARGET_PRODUCT)_$(VU_BRANCH)_official_$(DATE)
    endif
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.vu.branch=$(VU_BRANCH) \
        ro.vu.device=$(VU_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
