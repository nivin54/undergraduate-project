################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ChromacityShadRem.cpp \
../src/ChromacityShadRemParams.cpp \
../src/GeometryShadRem.cpp \
../src/GeometryShadRemParams.cpp \
../src/LrTextureShadRem.cpp \
../src/LrTextureShadRemParams.cpp \
../src/PhysicalShadRem.cpp \
../src/PhysicalShadRemParams.cpp \
../src/SrTextureShadRem.cpp \
../src/SrTextureShadRemParams.cpp \
../src/main.cpp 

OBJS += \
./src/ChromacityShadRem.o \
./src/ChromacityShadRemParams.o \
./src/GeometryShadRem.o \
./src/GeometryShadRemParams.o \
./src/LrTextureShadRem.o \
./src/LrTextureShadRemParams.o \
./src/PhysicalShadRem.o \
./src/PhysicalShadRemParams.o \
./src/SrTextureShadRem.o \
./src/SrTextureShadRemParams.o \
./src/main.o 

CPP_DEPS += \
./src/ChromacityShadRem.d \
./src/ChromacityShadRemParams.d \
./src/GeometryShadRem.d \
./src/GeometryShadRemParams.d \
./src/LrTextureShadRem.d \
./src/LrTextureShadRemParams.d \
./src/PhysicalShadRem.d \
./src/PhysicalShadRemParams.d \
./src/SrTextureShadRem.d \
./src/SrTextureShadRemParams.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


