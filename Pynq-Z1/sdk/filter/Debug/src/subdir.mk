################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
LD_SRCS += \
../src/lscript.ld

C_SRCS += \
../src/main.c \
../src/filter.c

OBJS += \
./src/main.o \
./src/filter.o


C_DEPS += \
./src/main.d\
./src/filter.d



# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O2 -g3 -c -fmessage-length=0 -MT"$@" -I../../bsp_pmod/iop1_mb/include -mlittle-endian -mcpu=v9.5 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '
