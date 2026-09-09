#
# Copyright (C) 2010 The Android Open Source Project
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

$(call inherit-product-if-exists, vendor/lenovo/huaqin17/huaqin17-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	gps.solution.combo.chip=1 \
	mediatek.wlan.chip=MT6628 \
	mediatek.wlan.ctia=0 \
	mediatek.wlan.module.postfix=_mt6628 \
	persist.mtk.wcn.combo.chipid=0x6628 \
	persist.radio.mediatek.chipid=0x6628 \
	ro.mediatek.wlan.wsc=1 \
	ro.mediatek.wlan.p2p=1 \
	mediatek.wlan.ctia=0 \
	persist.sys.usb.config=adb \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=240 \
	wifi.direct.interface=p2p0 \
	wifi.interface=wlan0 \
	wifi.tethering.interface=ap0 \
	ro.sf.hwrotation=90 \
	qemu.hw.mainkeys=0 \
	ro.telephony.default_network=-1

PRODUCT_TAGS += dalvik.gc.type-precise

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/

# Vold
PRODUCT_COPY_FILES += \
	device/lenovo/huaqin17/vold.fstab:system/etc/vold.fstab

# Ramdisk
PRODUCT_COPY_FILES += \
	device/lenovo/huaqin17/ramdisk/fstab.mt6517:root/fstab.mt6517 \
	device/lenovo/huaqin17/ramdisk/init.mt6517.rc:root/init.mt6517.rc \
	device/lenovo/huaqin17/ramdisk/ueventd.mt6517.rc:root/ueventd.mt6517.rc

PRODUCT_PACKAGES += \
	audio.primary.default \
    libdashplayer

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, hardware/mediatek/config/combo_mt66xx/product_package.mk)