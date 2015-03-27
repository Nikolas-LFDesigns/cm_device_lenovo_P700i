# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, device/Lenovo/p700i/device_p700i.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p700i
PRODUCT_NAME := cm_p700i
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo p700i
PRODUCT_MANUFACTURER := LENOVO
