LOCAL_PATH := $(call my-dir)

MKRAMDISK := device/lenovo/P700i/tools/mkramdisk.py
INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(hide) python $(MKRAMDISK) $(PRODUCT_OUT)/ramdisk.img $(PRODUCT_OUT)/ram_header 
	$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_INS}"Made boot image: $@"${CL_RST}

INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(PRODUCT_OUT)/ram_header_recovery \
		$(recovery_kernel)
	@echo "----- Making recovery image ------"
	$(hide) python $(MKRAMDISK) $(PRODUCT_OUT)/ramdisk-recovery.img $(PRODUCT_OUT)/ram_header_recovery
	$(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) --output $@
	@echo -e ${CL_INS}"Made recovery image: $@"${CL_RST}
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
