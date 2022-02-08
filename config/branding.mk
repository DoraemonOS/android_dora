DORA_BUILD_TYPE ?= UNOFFICIAL

DORA_DATE_YEAR := $(shell date -u +%Y)
DORA_DATE_MONTH := $(shell date -u +%m)
DORA_DATE_DAY := $(shell date -u +%d)
DORA_DATE_HOUR := $(shell date -u +%H)
DORA_DATE_MINUTE := $(shell date -u +%M)
DORA_BUILD_DATE_UTC := $(shell date -d '$(DORA_DATE_YEAR)-$(DORA_DATE_MONTH)-$(DORA_DATE_DAY) $(DORA_DATE_HOUR):$(DORA_DATE_MINUTE) UTC' +%s)
DORA_BUILD_DATE := $(DORA_DATE_YEAR)$(DORA_DATE_MONTH)$(DORA_DATE_DAY)-$(DORA_DATE_HOUR)$(DORA_DATE_MINUTE)

DORA_PLATFORM_VERSION := 12.0

DORA_VERSION := DoraemonOS-$(DORA_BUILD)-$(DORA_PLATFORM_VERSION)-$(DORA_BUILD_DATE)-$(DORA_BUILD_TYPE)
DORA_VERSION_PROP := twelve
