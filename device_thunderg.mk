$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, vendor/cm/config/common.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product-if-exists, vendor/lge/thunderg/thunderg-vendor.mk)


DEVICE_PACKAGE_OVERLAYS += device/lge/thunderg/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderg/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    vendor/lge/thunderg/proprietary/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    vendor/lge/thunderg/proprietary/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \

PRODUCT_COPY_FILES += \
    device/lge/thunderg/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/thunderg/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderg/proprietary/etc/init.local.rc:system/etc/init.local.rc \
    vendor/lge/thunderg/proprietary/etc/init.thunderg.usb.rc:system/etc/init.thunderg.usb.rc \
    device/lge/thunderg/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/thunderg/prebuilt/etc/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/thunderg/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/lge/thunderg/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/thunderg/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

#WIFI
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/dhcpcd:system/bin/dhcpcd \
    

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

 # Board-specific init

# Board-specific init
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/init.thunderg.rc:root/init.thunderg.rc \
    vendor/lge/thunderg/proprietary/initlogo.rle:root/initlogo.rle \
    vendor/lge/thunderg/proprietary/ueventd.thunderg.rc:root/ueventd.thunderg.rc \
    

# OFFLINE CHARGING
PRODUCT_COPY_FILES += \
    device/lge/thunderg/bootlogo/bootlogo:root/sbin/bootlogo \
    device/lge/thunderg/bootlogo/bootimages/opening_01.rle:root/bootimages/opening_01.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_02.rle:root/bootimages/opening_02.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_03.rle:root/bootimages/opening_03.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_04.rle:root/bootimages/opening_04.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_05.rle:root/bootimages/opening_05.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_06.rle:root/bootimages/opening_06.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_07.rle:root/bootimages/opening_07.rle \
    device/lge/thunderg/bootlogo/bootimages/opening_08.rle:root/bootimages/opening_08.rle \
    device/lge/thunderg/chargemode/chargerlogo:root/sbin/chargerlogo \
    device/lge/thunderg/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/thunderg/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \

# Backlight
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/tsdown:system/bin/tsdown \
    vendor/lge/thunderg/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/ami304d:system/bin/ami304d \
    vendor/lge/thunderg/proprietary/lib/hw/sensors.thunderg.so:system/lib/hw/sensors.thunderg.so \
    

# 2D (using proprietary because of poor perfomance of open source libs)
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderg/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
#    vendor/lge/thunderg/proprietary/lib/hw/gralloc.thunderg.so:system/lib/hw/gralloc.thunderg.so \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/lge/thunderg/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderg/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderg/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/lge/thunderg/proprietary/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so  \
     vendor/lge/thunderg/proprietary/lib/hw/gralloc.thunderg.so:system/lib/hw/gralloc.thunderg.so  \
     vendor/lge/thunderg/proprietary/lib/hw/hwcomposer.thunderg.so:system/lib/hw/hwcomposer.thunderg.so  \
    vendor/lge/thunderg/proprietary/lib/libmemalloc.so:obj/lib/libmemalloc.so  \
      vendor/lge/thunderg/proprietary/lib/libmemalloc.so:system/lib/libmemalloc.so  

     

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderg/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderg/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    
# Wifi
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/modules/wireless.ko:system/lib/modules/wireless.ko \
    vendor/lge/thunderg/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/thunderg/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/thunderg/proprietary/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
    vendor/lge/thunderg/proprietary/etc/firmware/wlan/cfg.dat:system/etc/firmware/wlan/cfg.dat \
    vendor/lge/thunderg/proprietary/etc/firmware/wlan/qcom_cfg.ini:system/etc/firmware/wlan/qcom_cfg.ini \
    vendor/lge/thunderg/proprietary/etc/firmware/wlan/qcom_fw.bin:system/etc/firmware/wlan/qcom_fw.bin \
    vendor/lge/thunderg/proprietary/bin/wl:system/bin/wl
    

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/etc/vold.fstab:system/etc/vold.fstab

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so \
    vendor/lge/thunderg/proprietary/lib/hw/audio.primary.thunderg.so:system/lib/hw/audio.primary.thunderg.so \
    vendor/lge/thunderg/proprietary/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
    vendor/lge/thunderg/proprietary/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
    vendor/lge/thunderg/proprietary/lib/hw/audio_policy.thunderg.so:system/lib/hw/audio_policy.thunderg.so \
    vendor/lge/thunderg/proprietary/lib/hw/audio.primary.goldfish.so:system/lib/hw/audio.primary.goldfish.so \
    vendor/lge/thunderg/proprietary/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
    vendor/lge/thunderg/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderg/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/lge/thunderg/proprietary/lib/liba2dp.so:obj/lib/liba2dp.so \
    vendor/lge/thunderg/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/lge/thunderg/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/port-bridge:system/bin/port-bridge \
    vendor/lge/thunderg/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/lge/thunderg/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    vendor/lge/thunderg/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/lge/thunderg/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/thunderg/proprietary/bin/wiperiface:system/bin/wiperiface \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.lge.vibrator_amp=125 \
    ro.sf.lcd_density=160 \
 
   

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libidl.so:system/lib/libidl.so \
    vendor/lge/thunderg/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/thunderg/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/thunderg/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/thunderg/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/thunderg/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/thunderg/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/thunderg/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/thunderg/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/thunderg/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/thunderg/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/thunderg/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/thunderg/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/thunderg/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/thunderg/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/thunderg/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/thunderg/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/thunderg/proprietary/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/thunderg/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/thunderg/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/thunderg/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/thunderg/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \
    vendor/lge/thunderg/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/thunderg/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \
    vendor/lge/thunderg/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/thunderg/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/thunderg/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/thunderg/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/thunderg/proprietary/bin/rild:system/bin/rild \
    vendor/lge/thunderg/proprietary/bin/qmuxd:system/bin/qmuxd \

# OMX
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderg/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_nextreaming_divxdec_sharedlibrary.so:system/lib/libomx_nextreaming_divxdec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_nextreaming_wmadec_sharedlibrary.so:system/lib/libomx_nextreaming_wmadec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_nextreaming_wmvdec_sharedlibrary.so:system/lib/libomx_nextreaming_wmvdec_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
#    vendor/lge/thunderg/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
#    vendor/lge/thunderg/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
#    vendor/lge/thunderg/proprietary/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so \
#    vendor/lge/thunderg/proprietary/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so \
#    vendor/lge/thunderg/proprietary/lib/libopencore_common.so:system/lib/libopencore_common.so \

PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    vendor/lge/thunderg/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \



# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/BCM4325D1_004.002.004.0218.0248.hcd:system/etc/firmware/BCM4325D1_004.002.004.0218.0248.hcd
    
# FONTS
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/fonts/Noxchia.ttf:system/fonts/Noxchia.ttf

# IDC file
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc\
 vendor/lge/thunderg/proprietary/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc



#PREBUILDED APPS
PRODUCT_COPY_FILES += \
        vendor/lge/thunderg/packages/app/usbstorage.apk:system/app/usbstorage.apk \
        vendor/lge/thunderg/packages/app/Camera.apk:system/app/Camera.apk \
        vendor/lge/thunderg/packages/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
#TWEAKS
PRODUCT_COPY_FILES += \
	vendor/lge/thunderg/proprietary/etc/init.d/00banner:system/etc/init.d/00banner \
	vendor/lge/thunderg/proprietary/etc/init.d/05mountext:system/etc/init.d/05mountext \
	vendor/lge/thunderg/proprietary/etc/init.d/08dalvik:system/etc/init.d/08dalvik \
	vendor/lge/thunderg/proprietary/etc/init.d/87calibration:system/etc/init.d/87calibration \
	vendor/lge/thunderg/proprietary/etc/init.d/95zipalign:system/etc/init.d/95zipalign \
	vendor/lge/thunderg/proprietary/etc/init.d/96tweak:system/etc/init.d/96tweak \
	
 PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=mdp
PRODUCT_PROPERTY_OVERRIDES += debug.gr.numframebuffers=2

       # HardwareRenderer properties
# dirty_regions: "false" to disable partial invalidates, override if enabletr=true
PRODUCT_PROPERTY_OVERRIDES += \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    debug.enabletr=false

PRODUCT_PACKAGES += \
    libopencorehw \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libgenlock \
    libqcomui \
    liboverlay \
    libtilerenderer 

        
PRODUCT_LOCALES += mdpi
	

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := thunderg
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderg
PRODUCT_MODEL := LG-P500
PRODUCT_MANUFACTURER := LGE
