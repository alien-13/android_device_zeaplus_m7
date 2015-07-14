# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := m7

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit device configuration
$(call inherit-product, device/zeaplus/m7/full_m7.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_m7
PRODUCT_DEVICE := m7
PRODUCT_BRAND := zeaplus
PRODUCT_MANUFACTURER := Zeaplus
PRODUCT_MODEL := m7

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=M7 TARGET_DEVICE=m7 BUILD_FINGERPRINT="zeaplus/m7/m7:5.0/:user/release-keys" PRIVATE_BUILD_DESC="m7-user 5.0  release-keys"
