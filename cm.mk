## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := m9pro

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pipo/m9pro/device_m9pro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m9pro
PRODUCT_NAME := cm_m9pro
PRODUCT_BRAND := pipo
PRODUCT_MODEL := m9pro
PRODUCT_MANUFACTURER := pipo
