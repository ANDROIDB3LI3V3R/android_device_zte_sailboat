USE_CAMERA_STUB := true

# inherit from the proprietary version
-include device/zte/msm7x27-common/BoardConfigCommon.mk
-include vendor/zte/sailboat/BoardConfigVendor.mk

#Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_PROVIDES_LIBRIL := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOOTLOADER_BOARD_NAME := sailboat
TARGET_SPECIFIC_HEADER_PATH := device/zte/sailboat/include


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072

#Kernel
TARGET_RECOVERY_INITRC := device/zte/sailboat/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/zte/sailboat/recovery/recovery.fstab
TARGET_KERNEL_CONFIG := sailboat_jb_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=skate console=null
TARGET_BOOTLOADER_NAME := sailboat
TARGET_OTA_ASSERT_DEVICE := sailboat

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
WPA_SUPPLICANT_IBSS_HACK := true
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4329.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4319.bin,nvram_path=/system/etc/nv_4329.txt iface_name=wlan"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_LOADER_REUSE := true

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/zte/sailboat/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/sailboat/bluetooth
