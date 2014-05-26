################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Sign_Particle.cpp \
../src/findcontour.cpp \
../src/predict.cpp \
../src/skincolor.cpp 

OBJS += \
./src/Sign_Particle.o \
./src/findcontour.o \
./src/predict.o \
./src/skincolor.o 

CPP_DEPS += \
./src/Sign_Particle.d \
./src/findcontour.d \
./src/predict.d \
./src/skincolor.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


