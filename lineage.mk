# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 600
TARGET_SCREEN_WIDTH := 1024


$(call inherit-product, device/lenovo/huaqin17/full_huaqin17.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_huaqin17
PRODUCT_DEVICE := huaqin17
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo IdeaTab A1000F
PRODUCT_CHARACTERISTICS := tablet