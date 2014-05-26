################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Featurechange.cpp \
../src/findcontour.cpp \
../src/flandmark_detector.cpp \
../src/label.cpp \
../src/learn.cpp \
../src/liblbp.cpp \
../src/predict.cpp \
../src/skincolor.cpp 

OBJS += \
./src/Featurechange.o \
./src/findcontour.o \
./src/flandmark_detector.o \
./src/label.o \
./src/learn.o \
./src/liblbp.o \
./src/predict.o \
./src/skincolor.o 

CPP_DEPS += \
./src/Featurechange.d \
./src/findcontour.d \
./src/flandmark_detector.d \
./src/label.d \
./src/learn.d \
./src/liblbp.d \
./src/predict.d \
./src/skincolor.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


