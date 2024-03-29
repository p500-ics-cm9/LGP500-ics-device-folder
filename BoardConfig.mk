include vendor/lge/thunderg/BoardConfigVendor.mk



TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os


#Device Information
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := thunderg
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_PROVIDES_LIBRIL := true
TARGET_OTA_ASSERT_DEVICE := thunderg,p500

#BOOT AND BOOTLOADER
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

#Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../device/lge/thunderg/prebuilt/brcm_patchram_plus.c

#RadioFM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4325

#Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4325
BOARD_WIRELESS_CHIP := bcm4325
WPA_SUPPLICANT_VERSION := VER_0_5_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := wireless
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc_apsta.bin"
WIFI_DRIVER_HAS_LGE_SOFTAP:=true

#Kernel
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderg
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00520000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0be00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c780000
BOARD_FLASH_BLOCK_SIZE := 131072

#AUDIO
TARGET_PROVIDES_LIBAUDIO := true

#Qualcomm Related
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true


#GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := thunderg
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#Jit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ARCH_ARM_HAVE_VFP := true

#Graphics
BOARD_EGL_CFG := vendor/lge/thunderg/proprietary/lib/egl/egl.cfg
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_DO_NOT_SETS_CAN_DRAW := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# MASS STORAGE
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/thunderg/prebuilt/UsbController.cpp
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# OFFLINE CHARGING
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'


#ICS settings
DISABLE_DEXPREOPT := true
BOARD_NO_PAGE_FLIPPING := true
USE_OPENGL_RENDERER := true
BOARD_HAS_FLIPPED_SCREEN := true
COPYBIT_MSM7K := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BUILD_OLD_LIBCAMERA:= true
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 -DREFRESH_RATE=60 -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DEGL_TRACE #-DDEBUG_CALC_FPS
COMMON_GLOBAL_CFLAGS += -D_INTERNAL_BINDER_PARCEL_ -DUSE_LGE_ALS_DUMMY
TARGET_PROVIDES_SURFACEFLINGER := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USE_SKIA_LCDTEXT := true
TARGET_GRALLOC_USES_ASHMEM := false
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_SPECIFIC_HEADER_PATH := device/lge/thunderg/include
TARGET_USES_GENLOCK := true
BUILD_WITH_FULL_STAGEFRIGHT := true



