################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/AWG101_Drivers/Src/MXT2144.c 

OBJS += \
./Drivers/AWG101_Drivers/Src/MXT2144.o 

C_DEPS += \
./Drivers/AWG101_Drivers/Src/MXT2144.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/AWG101_Drivers/Src/%.o Drivers/AWG101_Drivers/Src/%.su Drivers/AWG101_Drivers/Src/%.cyclo: ../Drivers/AWG101_Drivers/Src/%.c Drivers/AWG101_Drivers/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_LDO_SUPPLY -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"E:/01_WORK/02_Projects/02-WIP/AWG101/02_Software/CubeIDE/Drivers/AWG101_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-AWG101_Drivers-2f-Src

clean-Drivers-2f-AWG101_Drivers-2f-Src:
	-$(RM) ./Drivers/AWG101_Drivers/Src/MXT2144.cyclo ./Drivers/AWG101_Drivers/Src/MXT2144.d ./Drivers/AWG101_Drivers/Src/MXT2144.o ./Drivers/AWG101_Drivers/Src/MXT2144.su

.PHONY: clean-Drivers-2f-AWG101_Drivers-2f-Src

