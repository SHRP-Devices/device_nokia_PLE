# Inherit Device Specifications
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device Informations
PRODUCT_DEVICE := PLE
PRODUCT_NAME := full_PLE
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 6 2017
PRODUCT_MANUFACTURER := Nokia
