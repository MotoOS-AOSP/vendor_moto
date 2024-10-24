# Copyright (C) 2022-2024 MotoOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ANDROID_VERSION := 15
MOTOVERSION := 0.1

MOTO_BUILD_TYPE ?= UNOFFICIAL
MOTO_MAINTAINER ?= UNKNOWN
MOTO_DATE_YEAR := $(shell date -u +%Y)
MOTO_DATE_MONTH := $(shell date -u +%m)
MOTO_DATE_DAY := $(shell date -u +%d)
MOTO_DATE_HOUR := $(shell date -u +%H)
MOTO_DATE_MINUTE := $(shell date -u +%M)
MOTO_BUILD_DATE := $(MOTO_DATE_YEAR)$(MOTO_DATE_MONTH)$(MOTO_DATE_DAY)-$(MOTO_DATE_HOUR)$(MOTO_DATE_MINUTE)
TARGET_PRODUCT_SHORT := $(subst MOTO_,,$(MOTO_BUILD))

# OFFICIAL_DEVICES
ifeq ($(MOTO_BUILD_TYPE), OFFICIAL)
  LIST := $(shell cat vendor/moto/config/moto.devices)
  ifneq ($(strip $(filter $(MOTO_BUILD), $(LIST))),)
    IS_OFFICIAL=true
    MOTO_BUILD_TYPE := OFFICIAL
  else
    IS_OFFICIAL=false
  endif
  ifneq ($(IS_OFFICIAL), true)
    MOTO_BUILD_TYPE := UNOFFICIAL
    $(error Device is not official "$(MOTO_BUILD)")
  endif
endif


MOTO_VERSION := $(MOTOVERSION)-$(MOTO_BUILD)-$(MOTO_BUILD_DATE)-$(MOTO_BUILD_TYPE)
MOTO_MOD_VERSION :=$(ANDROID_VERSION)-$(MOTOVERSION)
MOTO_DISPLAY_VERSION := MotOS-AOSP-$(MOTOVERSION)-$(MOTO_BUILD_TYPE)
MOTO_DISPLAY_BUILDTYPE := $(MOTO_BUILD_TYPE)
MOTO_FINGERPRINT := MotOS-AOSP/$(MOTO_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(MOTO_BUILD_DATE)

# moto System Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.moto.version=$(MOTO_DISPLAY_VERSION) \
  ro.moto.build.status=$(MOTO_BUILD_TYPE) \
  ro.modversion=$(MOTO_MOD_VERSION) \
  ro.moto.build.date=$(MOTO_BUILD_DATE) \
  ro.moto.buildtype=$(MOTO_BUILD_TYPE) \
  ro.moto.fingerprint=$(MOTO_FINGERPRINT) \
  ro.moto.device=$(MOTO_BUILD) \
  org.moto.version=$(MOTOVERSION) \
  ro.moto.maintainer=$(MOTO_MAINTAINER)

# Sign Build
ifneq (eng,$(TARGET_BUILD_VARIANT))
ifneq (,$(wildcard vendor/moto/signing/keys/releasekey.pk8))
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/moto/signing/keys/releasekey
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.oem_unlock_supported=1
endif
ifneq (,$(wildcard vendor/moto/signing/keys/otakey.x509.pem))
PRODUCT_OTA_PUBLIC_KEYS := vendor/moto/signing/keys/otakey.x509.pem
endif
endif
