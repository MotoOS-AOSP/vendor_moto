# Inherit mobile full common moto stuff
$(call inherit-product, vendor/moto/config/common_mobile_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

# Inherit tablet common moto stuff
$(call inherit-product, vendor/moto/config/tablet.mk)

$(call inherit-product, vendor/moto/config/telephony.mk)
