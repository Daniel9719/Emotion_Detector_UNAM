################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := D:/Programas/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./main.obj" \
"./Classification/Class_func.obj" \
"./Classification/Classification.obj" \
"./Communications/Biom_AS7026GG.obj" \
"./Communications/Communications.obj" \
"./Communications/I2C.obj" \
"./Communications/SCI_UART.obj" \
"./Conditioning/FIR.obj" \
"./Conditioning/FIR_filter.obj" \
"./Configuration/Configuration.obj" \
"./Freq_Extraction/Abs_Value.obj" \
"./Freq_Extraction/Cubic_Spline.obj" \
"./Freq_Extraction/FFT.obj" \
"./Freq_Extraction/Freq_Extraction.obj" \
"./Freq_Extraction/PSD_Burg.obj" \
"./Freq_Extraction/PSD_Periodogram.obj" \
"./Time_Extraction/PPI_Estimation.obj" \
"./Time_Extraction/Poincare.obj" \
"./Time_Extraction/Time_Features.obj" \
"../2837x_FLASH_lnk_cpu1.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include Classification/subdir_vars.mk
-include Communications/subdir_vars.mk
-include Conditioning/subdir_vars.mk
-include Configuration/subdir_vars.mk
-include Freq_Extraction/subdir_vars.mk
-include Time_Extraction/subdir_vars.mk
-include subdir_rules.mk
-include Classification/subdir_rules.mk
-include Communications/subdir_rules.mk
-include Conditioning/subdir_rules.mk
-include Configuration/subdir_rules.mk
-include Freq_Extraction/subdir_rules.mk
-include Time_Extraction/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
Emotion_Detector_CPU1.out \

EXE_OUTPUTS__QUOTED += \
"Emotion_Detector_CPU1.out" \

BIN_OUTPUTS += \
Emotion_Detector_CPU1.hex \

BIN_OUTPUTS__QUOTED += \
"Emotion_Detector_CPU1.hex" \


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "Emotion_Detector_CPU1.out"

# Tool invocations
Emotion_Detector_CPU1.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"D:/Programas/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi -z -m"Emotion_Detector_CPU1.map" --stack_size=0x200 --warn_sections -i"D:/Programas/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/lib" -i"D:/Programas/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --reread_libs --diag_wrap=off --display_error_number --xml_link_info="Emotion_Detector_CPU1_linkInfo.xml" --rom_model -o "Emotion_Detector_CPU1.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

Emotion_Detector_CPU1.hex: $(EXE_OUTPUTS)
	@echo 'Building files: $(strip $(EXE_OUTPUTS__QUOTED))'
	@echo 'Invoking: C2000 Hex Utility'
	"D:/Programas/ti/ccs1011/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/hex2000"  -o "Emotion_Detector_CPU1.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $(strip $(EXE_OUTPUTS__QUOTED))'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(BIN_OUTPUTS__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "main.obj" "Classification\Class_func.obj" "Classification\Classification.obj" "Communications\Biom_AS7026GG.obj" "Communications\Communications.obj" "Communications\I2C.obj" "Communications\SCI_UART.obj" "Conditioning\FIR.obj" "Conditioning\FIR_filter.obj" "Configuration\Configuration.obj" "Freq_Extraction\Abs_Value.obj" "Freq_Extraction\Cubic_Spline.obj" "Freq_Extraction\FFT.obj" "Freq_Extraction\Freq_Extraction.obj" "Freq_Extraction\PSD_Burg.obj" "Freq_Extraction\PSD_Periodogram.obj" "Time_Extraction\PPI_Estimation.obj" "Time_Extraction\Poincare.obj" "Time_Extraction\Time_Features.obj" 
	-$(RM) "main.d" "Classification\Classification.d" "Communications\Biom_AS7026GG.d" "Communications\Communications.d" "Communications\I2C.d" "Communications\SCI_UART.d" "Conditioning\FIR_filter.d" "Configuration\Configuration.d" "Freq_Extraction\Cubic_Spline.d" "Freq_Extraction\Freq_Extraction.d" "Freq_Extraction\PSD_Burg.d" "Freq_Extraction\PSD_Periodogram.d" "Time_Extraction\PPI_Estimation.d" "Time_Extraction\Poincare.d" "Time_Extraction\Time_Features.d" 
	-$(RM) "Classification\Class_func.d" "Conditioning\FIR.d" "Freq_Extraction\Abs_Value.d" "Freq_Extraction\FFT.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

