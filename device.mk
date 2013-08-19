#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL sailboat devices, and
# are also specific to sailboat devices
#
# Everything in this directory will become public

$(call inherit-product, device/zte/msm7x27-common/common.mk)
$(call inherit-product, vendor/zte/sailboat/sailboat-vendor.mk)
$(call inherit-product-if-exists, device/zte/sailboat/packages.mk)
$(call inherit-product, device/mdpi-common/mdpi.mk)

#Select Button
BOARD_HAS_NO_SELECT_BUTTON := false

# Proximity sensor calibration
PRODUCT_PACKAGES += \
        SailboatParts

# Misc
PRODUCT_COPY_FILES += \
        device/zte/sailboat/ramdisk/init.sailboat.rc:root/init.sailboat.rc \
        device/zte/sailboat/ramdisk/init.sailboat.usb.rc:root/init.sailboat.usb.rc \
        device/zte/sailboat/ramdisk/ueventd.sailboat.rc:root/ueventd.sailboat.rc \
        device/zte/sailboat/prebuilt/sailboat_keypad.kl:/system/usr/keylayout/sailboat_keypad.kl \
        device/zte/sailboat/prebuilt/synaptics-rmi4-ts.idc:system/usr/idc/synaptics-rmi4-ts.idc \
        device/zte/sailboat/prebuilt/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# WiFi
PRODUCT_COPY_FILES += \
	device/zte/sailboat/firmware/fw_4319.bin:system/etc/fw_4319.bin \
        device/zte/sailboat/firmware/fw_4319_apsta.bin:system/etc/fw_4319_apsta.bin \
        device/zte/sailboat/firmware/nv_4319.txt:system/etc/nv_4319.txt
        device/zte/sailboat/firmware/fw_4329.bin:system/etc/fw_4329.bin \
        device/zte/sailboat/firmware/fw_4329_apsta.bin:system/etc/fw_4329_apsta.bin \
        device/zte/sailboat/firmware/nv_4329.txt:system/etc/nv_4329.txt

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        device/zte/sailboat/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
        system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \
        device/zte/sailboat/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
         frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
         frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
