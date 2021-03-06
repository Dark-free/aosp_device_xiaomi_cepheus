#
# Copyright (C) 2020 The LineageOS Project
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
#

PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=freesoul00 \
  ro.kangos.cpu=SDM855

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/cepheus/device.mk)

# Inherit some common kangos stuff.
KANGOS_BUILDTYPE := OFFICIAL
$(call inherit-product, vendor/kangos/config/common.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := kangos_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9
PRODUCT_MANUFACTURER := Xiaomi
USE_GAPPS := true
TARGET_OPLAUNCHER := true

# Include firmware
$(call inherit-product, vendor/xiaomi/firmware/cepheus/firmware.mk)
