################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs910/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/Users/danie/Documents/Tesis/Emotion_Detector_UNAM/CCS/Sensor_Testing_Files" --include_path="C:/ti/c2000/C2000Ware_3_01_00_00/driverlib/f2837xd" --include_path="C:/ti/c2000/C2000Ware_3_01_00_00/driverlib/f2837xd/driverlib/inc" --include_path="C:/ti/ccs910/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi -k --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs910/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 --include_path="C:/Users/danie/Documents/Tesis/Emotion_Detector_UNAM/CCS/Sensor_Testing_Files" --include_path="C:/ti/c2000/C2000Ware_3_01_00_00/driverlib/f2837xd" --include_path="C:/ti/c2000/C2000Ware_3_01_00_00/driverlib/f2837xd/driverlib/inc" --include_path="C:/ti/ccs910/ccs/tools/compiler/ti-cgt-c2000_18.12.4.LTS/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi -k --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

