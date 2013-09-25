# gps
#PRODUCT_COPY_FILES += \
#    vendor/carbon/prebuilt/common/etc/gps-cdma.conf:system/etc/gps.conf

# apns
PRODUCT_COPY_FILES += \
    vendor/carbon/prebuilt/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=2

#Set correct LTE Mode
ifneq ($(TARGET_VOICE_TECH), cdma)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.qc_lte_network_modes=true
endif