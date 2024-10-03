# Only include Updater for official  build
ifeq ($(filter-out OFFICIAL,$(MOTO_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater

PRODUCT_COPY_FILES += \
    vendor/moto/prebuilt/common/etc/init/init.moto-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.moto-updater.rc
endif

