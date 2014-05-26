################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/DataStructures/LabelledClassificationData.cpp \
../src/DataStructures/LabelledClassificationSample.cpp \
../src/DataStructures/LabelledContinuousTimeSeriesClassificationData.cpp \
../src/DataStructures/LabelledRegressionData.cpp \
../src/DataStructures/LabelledRegressionSample.cpp \
../src/DataStructures/LabelledTimeSeriesClassificationData.cpp \
../src/DataStructures/LabelledTimeSeriesClassificationSample.cpp \
../src/DataStructures/UnlabelledClassificationData.cpp 

OBJS += \
./src/DataStructures/LabelledClassificationData.o \
./src/DataStructures/LabelledClassificationSample.o \
./src/DataStructures/LabelledContinuousTimeSeriesClassificationData.o \
./src/DataStructures/LabelledRegressionData.o \
./src/DataStructures/LabelledRegressionSample.o \
./src/DataStructures/LabelledTimeSeriesClassificationData.o \
./src/DataStructures/LabelledTimeSeriesClassificationSample.o \
./src/DataStructures/UnlabelledClassificationData.o 

CPP_DEPS += \
./src/DataStructures/LabelledClassificationData.d \
./src/DataStructures/LabelledClassificationSample.d \
./src/DataStructures/LabelledContinuousTimeSeriesClassificationData.d \
./src/DataStructures/LabelledRegressionData.d \
./src/DataStructures/LabelledRegressionSample.d \
./src/DataStructures/LabelledTimeSeriesClassificationData.d \
./src/DataStructures/LabelledTimeSeriesClassificationSample.d \
./src/DataStructures/UnlabelledClassificationData.d 


# Each subdirectory must supply rules for building sources it contributes
src/DataStructures/%.o: ../src/DataStructures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


