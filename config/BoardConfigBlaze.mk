include vendor/moto/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/moto/config/BoardConfigQcom.mk
endif

include vendor/moto/config/BoardConfigSoong.mk
