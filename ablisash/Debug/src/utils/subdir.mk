################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/utils/ConnComp.cpp \
../src/utils/ConnCompGroup.cpp \
../src/utils/GaborFilter.cpp \
../src/utils/GaussianMixtureModel.cpp 

OBJS += \
./src/utils/ConnComp.o \
./src/utils/ConnCompGroup.o \
./src/utils/GaborFilter.o \
./src/utils/GaussianMixtureModel.o 

CPP_DEPS += \
./src/utils/ConnComp.d \
./src/utils/ConnCompGroup.d \
./src/utils/GaborFilter.d \
./src/utils/GaussianMixtureModel.d 


# Each subdirectory must supply rules for building sources it contributes
src/utils/%.o: ../src/utils/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


