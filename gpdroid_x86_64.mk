#
# Copyright (C) 2014 The Android-x86 Open Source Project
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

# includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86_64.mk)

# Overrides
PRODUCT_NAME := gpdroid_x86_64
PRODUCT_BRAND := Android-x86
PRODUCT_DEVICE := x86_64
PRODUCT_MODEL := Generic Android-x86_64

PRODUCT_PACKAGES += \
    libgpportservice \
    gpportservice \
    libdetectposhw \
    detectposhw \
    generate-touch-association \
    input-port-associations-XENIALXC23.xml \
    input-port-associations-GC26.xml \
    vendor_sepolicy_custom_conf \
    vendor_file_contexts\
    vendor_property_contexts\
    toggle-screenmode\

PRODUCT_SYSTEM_PROPERTIES += \
    persist.sysui.disable_mirroring_confirmation_dialog=true \

PRODUCT_COPY_FILES += \
  device/generic/x86_64/display_settings.xml:system/etc/display_settings.xml \
  device/generic/x86_64/copy_display_settings.sh:system/bin/copy_display_settings.sh \

SELINUX_IGNORE_NEVERALLOWS := true
TARGET_EXCLUDES_AUDIOFX := true

LOCAL_PATH := $(call my-dir)
BOARD_SEPOLICY_DIRS += vendor/gpdroid/sepolicy

