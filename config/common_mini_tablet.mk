# Inherit mobile mini common moto stuff
$(call inherit-product, vendor/moto/config/common_mobile_mini.mk)

# Inherit tablet common moto stuff
$(call inherit-product, vendor/moto/config/tablet.mk)

$(call inherit-product, vendor/moto/config/telephony.mk)
