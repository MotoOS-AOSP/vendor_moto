# Inherit common mobile moto stuff
$(call inherit-product, vendor/moto/config/common.mk)

# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub

# Customizations
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay \
    NavigationBarNoHintOverlay
