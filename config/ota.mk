ifneq ($(filter OFFICIAL CI,$(DORA_BUILD_TYPE)),)
PRODUCT_PACKAGES += \
    Updates
endif
