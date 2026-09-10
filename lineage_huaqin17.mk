# Boot animation
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# device blobs
$(call inherit-product, device/lenovo/huaqin17/device.mk)

PRODUCT_NAME := lineage_huaqin17
PRODUCT_DEVICE := huaqin17
PRODUCT_BOARD := huaqin17
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo IdeaTab A1000F
PRODUCT_CHARACTERISTICS := tablet
