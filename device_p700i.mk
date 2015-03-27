#Default settings
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/Lenovo/p700i/p700i-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/Lenovo/p700i/overlay

PRODUCT_AAPT_CONFIG := normal hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p700i
PRODUCT_DEVICE := p700i
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
#    persist.sys.usb.config=adb \
    
PRODUCT_PACKAGES += \
    libui-mtk

#Permissions device files
PRODUCT_COPY_FILES += \
	device/Lenovo/p700i/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml\
	device/Lenovo/p700i/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml\
	device/Lenovo/p700i/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml\
	device/Lenovo/p700i/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml\
	device/Lenovo/p700i/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml\
	device/Lenovo/p700i/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml\
	device/Lenovo/p700i/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml\
	device/Lenovo/p700i/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml\
	device/Lenovo/p700i/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml\
	device/Lenovo/p700i/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml\
	device/Lenovo/p700i/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml\
	device/Lenovo/p700i/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml\
	device/Lenovo/p700i/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml\
	device/Lenovo/p700i/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml\
	device/Lenovo/p700i/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml\
	device/Lenovo/p700i/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml\
	device/Lenovo/p700i/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml\
	device/Lenovo/p700i/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml\
	device/Lenovo/p700i/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml\
	device/Lenovo/p700i/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml\
	device/Lenovo/p700i/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
	device/Lenovo/p700i/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
	device/Lenovo/p700i/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
	device/Lenovo/p700i/permissions/com.mediatek.location.provider.xml:system/etc/permissions/com.mediatek.location.provider.xml\
	device/Lenovo/p700i/permissions/features.xml:system/etc/permissions/features.xml\
	device/Lenovo/p700i/permissions/gpsconfig.xml:system/etc/permissions/gpsconfig.xml\
	device/Lenovo/p700i/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml\
	device/Lenovo/p700i/permissions/platform.xml:system/etc/permissions/platform.xml\

#PRODUCT_COPY_FILES += \
#    device/Lenovo/p700i/kernel/kernel:kernel \

#for boot.img and recovery.img
PRODUCT_COPY_FILES += \
    device/Lenovo/p700i/kernel/ram_header:ram_header \
    device/Lenovo/p700i/kernel/ram_header_recovery:ram_header_recovery \

#ramdisk
PRODUCT_COPY_FILES += \
    device/Lenovo/p700i/prebuilt/root/init.rc:root/init.rc \
    device/Lenovo/p700i/prebuilt/root/init.mt6577.usb.rc:root/init.mt6577.usb.rc \
    device/Lenovo/p700i/prebuilt/root/init.mtk.rc:root/init.mtk.rc \
    device/Lenovo/p700i/prebuilt/root/ueventd.rc:root/ueventd.rc \

#EGL
PRODUCT_COPY_FILES += \
    device/Lenovo/p700i/prebuilt/EGL/libEGL_mtk.so:system/vendor/lib/egl/libEGL_mtk.so \
    device/Lenovo/p700i/prebuilt/EGL/libGLESv1_CM_mtk.so:system/vendor/lib/egl/libGLESv1_CM_mtk.so \
    device/Lenovo/p700i/prebuilt/EGL/libGLESv2_mtk.so:system/vendor/lib/egl/libGLESv2_mtk.so \

#PowerVR/egl specific
PRODUCT_COPY_FILES += \
    device/Lenovo/p700i/prebuilt/PowerVR/libBLPP.so:system/vendor/lib/libBLPP.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    device/Lenovo/p700i/prebuilt/PowerVR/libusc.so:system/vendor/lib/libusc.so \
    device/Lenovo/p700i/prebuilt/PowerVR/pvrsrvctl:system/vendor/bin/pvrsrvctl \
    device/Lenovo/p700i/prebuilt/PowerVR/pvrsrvinit:system/vendor/bin/pvrsrvinit \
#    device/Lenovo/p700i/prebuilt/PowerVR/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \

#misc configs
PRODUCT_COPY_FILES += \
    device/Lenovo/p700i/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/Lenovo/p700i/prebuilt/system/usr/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl\
    device/Lenovo/p700i/prebuilt/system/usr/keychars/mtk-kpd.kcm:system/usr/keychars/mtk-kpd.kcm\
    device/Lenovo/p700i/prebuilt/system/etc/.tp/thermal.conf:system/etc/.tp/thermal.conf\
    device/Lenovo/p700i/prebuilt/system/etc/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    device/Lenovo/p700i/prebuilt/system/etc/mpeg4_venc_parameter.cfg:system/etc/mpeg4_venc_parameter.cfg \
    device/Lenovo/p700i/prebuilt/system/etc/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    device/Lenovo/p700i/prebuilt/system/etc/player.cfg:system/etc/player.cfg \
    device/Lenovo/p700i/prebuilt/system/etc/srs_processing.cfg:system/etc/srs_processing.cfg
