
#source script_support/components/BVF_RISCV_SUBSYSTEM/USER_LED_GPIO_PADS.tcl

# Creating SmartDesign BVF_GATEWARE
set sd_name ${top_level_name}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_NXT} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_STP} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA7} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_OCn} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_RXD} -port_direction {IN}


sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_RESETB} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT} -port_is_pad {1}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0A_REFCLK_P} -port_direction {IN} -port_is_pad {1}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0A_REFCLK_N} -port_direction {IN} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_19} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_20} -port_direction {INOUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {USER_BUTTON} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CARD_CS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DET} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_W_DISABLE1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_W_DISABLE2} -port_direction {OUT}

#-------------------------------------------------------------------------------
# Analog to Digital Converter pins (for cape analog inputs)
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_CSn} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_SCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MOSI} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MISO} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_IRQn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MCLK} -port_direction {OUT}


#-------------------------------------------------------------------------------
# Ethernet PHY top level ports
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_RSTn} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_INTn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDIO} -port_direction {INOUT}

#-------------------------------------------------------------------------------
# Instantiate submodules
#-------------------------------------------------------------------------------

# Add RISC-V subsystem
sd_instantiate_component -sd_name ${sd_name} -component_name {BVF_RISCV_SUBSYSTEM} -instance_name {BVF_RISCV_SUBSYSTEM}


# Add CLOCKS_AND_RESETS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS}


# Clocks and resets
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_0_ACLK" "BVF_RISCV_SUBSYSTEM:FIC_0_ACLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_1_ACLK" "BVF_RISCV_SUBSYSTEM:FIC_1_ACLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_2_ACLK" "BVF_RISCV_SUBSYSTEM:FIC_2_ACLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "BVF_RISCV_SUBSYSTEM:FIC_3_PCLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_0_FABRIC_RESET_N" "USB0_RESETB" "PHY_RSTn"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "BVF_RISCV_SUBSYSTEM:presetn"}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS:FIC_1_FABRIC_RESET_N}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS:FIC_2_FABRIC_RESET_N}


# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "BVF_RISCV_SUBSYSTEM:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "BVF_RISCV_SUBSYSTEM:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "BVF_RISCV_SUBSYSTEM:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "BVF_RISCV_SUBSYSTEM:CS" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:I2C0_SDA" "P9_20"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:I2C0_SCL" "P9_19"}



sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:I2C_1_SCL" "I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:I2C_1_SDA" "I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:UART0_RXD" "UART0_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:UART0_TXD" "UART0_TXD" }


sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MSS_RESET_N_M2F" "CLOCKS_AND_RESETS:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MSS_DLL_LOCKS" "CLOCKS_AND_RESETS:MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "BVF_RISCV_SUBSYSTEM:ODT" }

#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USER_BUTTON" "USER_BUTTON"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:SD_CARD_CS" "SD_CARD_CS"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:SD_DET" "SD_DET"}

#-------------------------------------------------------------------------------
# eMMC
#-------------------------------------------------------------------------------
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:EMMC} -port_name {}
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:EMMC_IN} -port_name {}

#-------------------------------------------------------------------------------
# Connect ADC.
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:ADC_SCK" "ADC_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:ADC_CSn" "ADC_CSn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:ADC_MOSI" "ADC_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:ADC_MISO" "ADC_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_IRQn" "BVF_RISCV_SUBSYSTEM:ADC_IRQn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:ADC_MCLK_4_915MHz" "ADC_MCLK"}

#-------------------------------------------------------------------------------
#sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_0A_REFCLK_N" "CLOCKS_AND_RESETS:XCVR_0A_REFCLK_N" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"XCVR_0A_REFCLK_P" "CLOCKS_AND_RESETS:XCVR_0A_REFCLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "BVF_RISCV_SUBSYSTEM:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "BVF_RISCV_SUBSYSTEM:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "BVF_RISCV_SUBSYSTEM:RESET_N" }

#-------------------------------------------------------------------------------
# Ethernet PHY connections
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_MDIO" "BVF_RISCV_SUBSYSTEM:PHY_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_MDC" "BVF_RISCV_SUBSYSTEM:PHY_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_INTn" "BVF_RISCV_SUBSYSTEM:PHY_INTn" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_N" "BVF_RISCV_SUBSYSTEM:SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_P" "BVF_RISCV_SUBSYSTEM:SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_N" "BVF_RISCV_SUBSYSTEM:SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_P" "BVF_RISCV_SUBSYSTEM:SGMII_TX0_P" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_N" "BVF_RISCV_SUBSYSTEM:SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_P" "BVF_RISCV_SUBSYSTEM:SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_N" "BVF_RISCV_SUBSYSTEM:SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_P" "BVF_RISCV_SUBSYSTEM:SGMII_TX1_P" }

#-------------------------------------------------------------------------------
# OTG USB
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB0_OCn" "BVF_RISCV_SUBSYSTEM:USB_OCn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_CLK" "USB0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA0" "USB0_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA1" "USB0_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA2" "USB0_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA3" "USB0_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA4" "USB0_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA5" "USB0_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA6" "USB0_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DATA7" "USB0_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_DIR" "USB0_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_NXT" "USB0_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USB_STP" "USB0_STP" }

#-------------------------------------------------------------------------------
# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:CA" "CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "BVF_RISCV_SUBSYSTEM:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "BVF_RISCV_SUBSYSTEM:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "BVF_RISCV_SUBSYSTEM:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "BVF_RISCV_SUBSYSTEM:DQS_N" }


#-------------------------------------------------------------------------------
# User LEDs
#-------------------------------------------------------------------------------
#auto_promote_pad_pins -promote_all 1
#sd_instantiate_component -sd_name ${sd_name} -component_name {USER_LED_PADS} -instance_name {USER_LED_PADS_0}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USER_LED_GPIO_OUT" "USER_LED_PADS_0:USER_LED_GPIO_OUT"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USER_LED_GPIO_OE" "USER_LED_PADS_0:USER_LED_GPIO_OE"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:USER_LED_GPIO_IN" "USER_LED_PADS_0:USER_LED_GPIO_IN"}
#auto_promote_pad_pins -promote_all 0

#-------------------------------------------------------------------------------
# MIPI CSI-2 RX interface
#-------------------------------------------------------------------------------
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_N} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_C_P} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D0_N} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D0_P} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D1_N} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D1_P} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D2_N} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D2_P} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D3_N} -port_direction {IN}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {CAM_D3_P} -port_direction {IN}

#sd_instantiate_component -sd_name ${sd_name} -component_name {MIPI_CSI_INTERFACE} -instance_name {MIPI_CSI_INTERFACE_0}
#sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:CSI1_PWND} -port_name {}

#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[3:3]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[2:2]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[1:1]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD_N} -pin_slices {"[0:0]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[3:3]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[2:2]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[1:1]"}
#sd_create_pin_slices -sd_name ${sd_name} -pin_name {MIPI_CSI_INTERFACE_0:RXD} -pin_slices {"[0:0]"}

#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_N" "MIPI_CSI_INTERFACE_0:RX_CLK_N"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_C_P" "MIPI_CSI_INTERFACE_0:RX_CLK_P"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D0_P" "MIPI_CSI_INTERFACE_0:RXD[0:0]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D0_N" "MIPI_CSI_INTERFACE_0:RXD_N[0:0]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D1_P" "MIPI_CSI_INTERFACE_0:RXD[1:1]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D1_N" "MIPI_CSI_INTERFACE_0:RXD_N[1:1]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D2_N" "MIPI_CSI_INTERFACE_0:RXD_N[2:2]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D2_P" "MIPI_CSI_INTERFACE_0:RXD[2:2]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D3_P" "MIPI_CSI_INTERFACE_0:RXD[3:3]"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CAM_D3_N" "MIPI_CSI_INTERFACE_0:RXD_N[3:3]"}


#-------------------------------------------------------------------------------
# High speed connector VIO_ENABLE.
#-------------------------------------------------------------------------------
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {BVF_RISCV_SUBSYSTEM:VIO_ENABLE} -port_name {}

#-------------------------------------------------------------------------------
# Unused ports.
#-------------------------------------------------------------------------------
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:FIC_1_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:FIC_2_AXI4_TARGET}

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:HSI_APB_MTARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CSI_APB_MTARGET}

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDO_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDO_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDC_M2F}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MAC_1_MDI_F2M} -value {GND}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {M2_W_DISABLE1} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {M2_W_DISABLE2} -value {GND}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MMUART_3_RXD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MMUART_2_RXD} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MMUART_3_TXD}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MMUART_2_TXD}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_0_DI} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_1_DI} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_1_DO}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_0_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_0_DO}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_0_SS1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_1_SS1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:SPI_1_CLK}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_56_58} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_3_7} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_A} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_B} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_C} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_D} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_E} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:MSS_INT_F2M_F} -value {GND}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_RXD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_CTS} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_TXD}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:M2_UART_RTS}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_1_RXBUS} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_0_RXBUS} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_1_TX_EBL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_0_TXBUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_0_TX_EBL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:CAN_1_TXBUS}


#-------------------------------------------------------------------------------

source script_support/components/SYZYGY/$syzygy_option/ADD_HIGH_SPEED_CONNECTOR.tcl
source $cape_dir/ADD_CAPE.tcl
source script_support/components/M2/$m2_option/ADD_M2_INTERFACE.tcl
source script_support/components/MIPI_CSI/$mipi_csi_option/ADD_MIPI_CSI_INTERFACE.tcl

#-------------------------------------------------------------------------------




# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign BVF_GATEWARE
generate_component -component_name ${sd_name}

