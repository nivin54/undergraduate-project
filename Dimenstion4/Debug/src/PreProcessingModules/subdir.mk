################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/PreProcessingModules/DeadZone.cpp \
../src/PreProcessingModules/Derivative.cpp \
../src/PreProcessingModules/DoubleMovingAverageFilter.cpp \
../src/PreProcessingModules/FIRFilter.cpp \
../src/PreProcessingModules/HighPassFilter.cpp \
../src/PreProcessingModules/LowPassFilter.cpp \
../src/PreProcessingModules/MovingAverageFilter.cpp \
../src/PreProcessingModules/SavitzkyGolayFilter.cpp 

OBJS += \
./src/PreProcessingModules/DeadZone.o \
./src/PreProcessingModules/Derivative.o \
./src/PreProcessingModules/DoubleMovingAverageFilter.o \
./src/PreProcessingModules/FIRFilter.o \
./src/PreProcessingModules/HighPassFilter.o \
./src/PreProcessingModules/LowPassFilter.o \
./src/PreProcessingModules/MovingAverageFilter.o \
./src/PreProcessingModules/SavitzkyGolayFilter.o 

CPP_DEPS += \
./src/PreProcessingModules/DeadZone.d \
./src/PreProcessingModules/Derivative.d \
./src/PreProcessingModules/DoubleMovingAverageFilter.d \
./src/PreProcessingModules/FIRFilter.d \
./src/PreProcessingModules/HighPassFilter.d \
./src/PreProcessingModules/LowPassFilter.d \
./src/PreProcessingModules/MovingAverageFilter.d \
./src/PreProcessingModules/SavitzkyGolayFilter.d 


# Each subdirectory must supply rules for building sources it contributes
src/PreProcessingModules/%.o: ../src/PreProcessingModules/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


