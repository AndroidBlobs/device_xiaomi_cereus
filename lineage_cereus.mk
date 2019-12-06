# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cereus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := cereus
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_cereus
PRODUCT_MODEL := Redmi 6

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cereus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cereus-user 9 PPR1.180610.011 V10.4.4.0.PCGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/cereus/cereus:9/PPR1.180610.011/V10.4.4.0.PCGMIXM:user/release-keys
