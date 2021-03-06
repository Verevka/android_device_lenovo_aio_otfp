# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/aio_otfp_m/device.mk)

LOCAL_PATH := device/lenovo/aio_otfp_m

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_DEVICE := aio_otfp_m
PRODUCT_NAME := full_aio_otfp_m
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := aio_otfp_m
PRODUCT_MANUFACTURER := lenovo

DEVICE_RESOLUTION := 1080x1920

