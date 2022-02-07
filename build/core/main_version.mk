# Build fingerprint
ifeq ($(BUILD_FINGERPRINT),)
BUILD_NUMBER_DORA := $(shell date -u +%H%M)
DORA_DEVICE ?= $(TARGET_DEVICE)
ifneq ($(filter OFFICIAL,$(DORA_BUILD_TYPE)),)
BUILD_SIGNATURE_KEYS := release-keys
else
BUILD_SIGNATURE_KEYS := test-keys
endif
BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(DORA_DEVICE)/$(DORA_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER_DORA):$(TARGET_BUILD_VARIANT)/$(BUILD_SIGNATURE_KEYS)
endif
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# DoraemonOS recovery flashing
ifeq ($(TARGET_USES_DORA_RECOVERY),true)
ADDITIONAL_SYSTEM_PROPERTIES  += \
    persist.sys.recovery_update=true
endif

# Versioning props
ADDITIONAL_SYSTEM_PROPERTIES  += \
    org.pixelexperience.version=$(DORA_VERSION_PROP) \
    org.pixelexperience.version.display=$(DORA_VERSION) \
    org.pixelexperience.build_date=$(DORA_BUILD_DATE) \
    org.pixelexperience.build_date_utc=$(DORA_BUILD_DATE_UTC) \
    org.pixelexperience.build_type=$(DORA_BUILD_TYPE)
