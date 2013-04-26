## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P700i

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/P700i/device_P700i.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P700i
PRODUCT_NAME := cm_P700i
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := P700i
PRODUCT_MANUFACTURER := lenovo
PRODUCT_RELEASE_NAME := P700i
