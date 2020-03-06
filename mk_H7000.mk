#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common MK stuff
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit from wayne device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := bbkedu
PRODUCT_DEVICE := H7000
PRODUCT_MANUFACTURER := bbkedu
PRODUCT_NAME := mk_H7000
PRODUCT_MODEL := EEBBK S5

PRODUCT_GMS_CLIENTID_BASE := android-bbkedu

TARGET_VENDOR_PRODUCT_NAME := H7000

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="H7000-user 9.0 PKQ1.180929.001 V1.0.2_190614 release-keys"

BUILD_FINGERPRINT := bbkedu/H7000/H7000:9.0/PKQ1.180929.001/cp06140053:user/release-keys
