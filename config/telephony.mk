# GMS
WITH_GMS_COMMS_SUITE := true

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/moto/prebuilt/common/etc/sensitive_pn.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sensitive_pn.xml

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    HelloUI-Dialer # motorola dialer app

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Disable mobile data by default
#PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.android.mobiledata=false

# Pixel APNs
# PRODUCT_COPY_FILES += \
    vendor/moto/telephony/apns-full-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# Call Recording pixel feature for Dialer
PRODUCT_COPY_FILES += \
    vendor/moto/config/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml

