
#
# Copyright (C) 2012 The Android Open Source Project
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

# Speed up scrolling
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=60
# Default network type.
# 0 => WCDMA preferred, 3 => GSM/AUTO (PRL) preferred
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.2_r5 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \

PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#for boot.img and recovery.img
PRODUCT_COPY_FILES += \
    device/lenovo/P700i/ram_header:ram_header \
    device/lenovo/P700i/ram_header_recovery:ram_header_recovery \

#root
PRODUCT_COPY_FILES += \
    device/lenovo/P700i/root/init.target.rc:root/init.target.rc \
    device/lenovo/P700i/root/init.usb.rc:root/init.usb.rc \
    device/lenovo/P700i/root/init.modules.rc:root/init.modules.rc \
    device/lenovo/P700i/root/ueventd.target.rc:root/ueventd.target.rc

#permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

#fs table
PRODUCT_COPY_FILES += \
    device/lenovo/P700i/prebuilt/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/lenovo/P700i/prebuilt/BPLGUInfoCustomAppSrcP_MT6577_S00_P700I_V6:system/etc/mddb/BPLGUInfoCustomAppSrcP_MT6577_S00_P700I_V6

#wifi/BT
PRODUCT_COPY_FILES += \
    device/lenovo/P700i/prebuilt/modules/wlan.ko:system/lib/modules/wlan.ko \
    device/lenovo/P700i/prebuilt/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
    device/lenovo/P700i/prebuilt/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
    device/lenovo/P700i/prebuilt/firmware/WIFI_RAM_CODE:system/etc/firmware/WIFI_RAM_CODE \
    device/lenovo/P700i/prebuilt/firmware/WIFI_RAM_CODE_E6:system/etc/firmware/WIFI_RAM_CODE_E6 \
    device/lenovo/P700i/prebuilt/firmware/mt6620_patch_e3_hdr.bin:system/etc/firmware/mt6620_patch_e3_hdr.bin \
    device/lenovo/P700i/prebuilt/firmware/WMT.cfg:system/etc/firmware/WMT.cfg


PRODUCT_COPY_FILES += \
    device/lenovo/P700i/prebuilt/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/lenovo/P700i/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

#firmware
PRODUCT_COPY_FILES += \
    device/lenovo/P700i/prebuilt/firmware/catcher_filter.bin:system/etc/firmware/catcher_filter.bin \
    device/lenovo/P700i/prebuilt/firmware/DSP_ROM:system/etc/firmware/DSP_ROM \
    device/lenovo/P700i/prebuilt/firmware/modem.img:system/etc/firmware/modem.img \
    device/lenovo/P700i/prebuilt/firmware/mt6620_patch_e6_hdr.bin:system/etc/firmware/mt6620_patch_e6_hdr.bin \
    device/lenovo/P700i/prebuilt/firmware/S_ANDRO_SFL.ini:system/etc/firmware/S_ANDRO_SFL.ini \

#modules
PRODUCT_COPY_FILES += \
     device/lenovo/P700i/prebuilt/modules/aed.ko:system/lib/modules/aed.ko \
     device/lenovo/P700i/prebuilt/modules/alps_core.ko:system/lib/modules/alps_core.ko \
     device/lenovo/P700i/prebuilt/modules/ccci.ko:system/lib/modules/ccci.ko \
     device/lenovo/P700i/prebuilt/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
     device/lenovo/P700i/prebuilt/modules/ccmni.ko:system/lib/modules/ccmni.ko \
     device/lenovo/P700i/prebuilt/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
     device/lenovo/P700i/prebuilt/modules/devapc.ko:system/lib/modules/devapc.ko \
     device/lenovo/P700i/prebuilt/modules/devinfo.ko:system/lib/modules/devinfo.ko \
     device/lenovo/P700i/prebuilt/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
     device/lenovo/P700i/prebuilt/modules/lowmemorydetect.ko:system/lib/modules/lowmemorydetect.ko \
     device/lenovo/P700i/prebuilt/modules/m4u.ko:system/lib/modules/m4u.ko \
     device/lenovo/P700i/prebuilt/modules/mt6620_fm_drv.ko:system/lib/modules/mt6620_fm_drv.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_drvb_77.ko:system/lib/modules/mtk_drvb_77.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_fm_priv.ko:system/lib/modules/mtk_fm_priv.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_hif_sdio.ko:system/lib/modules/mtk_hif_sdio.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_hwe.ko:system/lib/modules/mtk_hwe.ko \
     device/lenovo/P700i/prebuilt/modules/mtklfb.ko:system/lib/modules/mtklfb.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_stp_sdio.ko:system/lib/modules/mtk_stp_sdio.ko \
     device/lenovo/P700i/prebuilt/modules/mtk_stp_uart.ko:system/lib/modules/mtk_stp_uart.ko \
     device/lenovo/P700i/prebuilt/modules/p2p.ko:system/lib/modules/p2p.ko \
     device/lenovo/P700i/prebuilt/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
     device/lenovo/P700i/prebuilt/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
     device/lenovo/P700i/prebuilt/modules/sec.ko:system/lib/modules/sec.ko \
     device/lenovo/P700i/prebuilt/modules/vcodec_kernel_driver.ko:system/lib/modules/vcodec_kernel_driver.ko

