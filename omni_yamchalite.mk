$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/yamchalite/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/bq/yamchalite/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := yamchalite
PRODUCT_NAME := omni_yamchalite
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris U2 Lite
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yamchalite
