# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/pipo/m9pro/device_m9pro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_m9pro
PRODUCT_DEVICE := m9pro
PRODUCT_BRAND := pipo
PRODUCT_MANUFACTURER := pipo
PRODUCT_MODEL := m9pro