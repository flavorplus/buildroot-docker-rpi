include $(sort $(wildcard $(BR2_EXTERNAL_BR_RPI_EXAMPLE_PATH)/package/*/*.mk))

flash-my-board:
	$(BR2_EXTERNAL_BR_RPI_EXAMPLE_PATH)/board/my-board/flash-image \
		--image $(BINARIES_DIR)/image.bin \
		--address $(BAR_42_FLASH_ADDR)
