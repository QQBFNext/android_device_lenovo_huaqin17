# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# device blobs
$(call inherit-product, device/lenovo/huaqin17/device.mk)

PRODUCT_NAME := full_huaqin17
PRODUCT_DEVICE := huaqin17
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo IdeaTab A1000F
PRODUCT_CHARACTERISTICS := tablet