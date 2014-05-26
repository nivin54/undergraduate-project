################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/DataStructures/LabelledClassificationData.cpp \
../src/GRT/DataStructures/LabelledClassificationSample.cpp \
../src/GRT/DataStructures/LabelledContinuousTimeSeriesClassificationData.cpp \
../src/GRT/DataStructures/LabelledRegressionData.cpp \
../src/GRT/DataStructures/LabelledRegressionSample.cpp \
../src/GRT/DataStructures/LabelledTimeSeriesClassificationData.cpp \
../src/GRT/DataStructures/LabelledTimeSeriesClassificationSample.cpp \
../src/GRT/DataStructures/UnlabelledClassificationData.cpp 

OBJS += \
./src/GRT/DataStructures/LabelledClassificationData.o \
./src/GRT/DataStructures/LabelledClassificationSample.o \
./src/GRT/DataStructures/LabelledContinuousTimeSeriesClassificationData.o \
./src/GRT/DataStructures/LabelledRegressionData.o \
./src/GRT/DataStructures/LabelledRegressionSample.o \
./src/GRT/DataStructures/LabelledTimeSeriesClassificationData.o \
./src/GRT/DataStructures/LabelledTimeSeriesClassificationSample.o \
./src/GRT/DataStructures/UnlabelledClassificationData.o 

CPP_DEPS += \
./src/GRT/DataStructures/LabelledClassificationData.d \
./src/GRT/DataStructures/LabelledClassificationSample.d \
./src/GRT/DataStructures/LabelledContinuousTimeSeriesClassificationData.d \
./src/GRT/DataStructures/LabelledRegressionData.d \
./src/GRT/DataStructures/LabelledRegressionSample.d \
./src/GRT/DataStructures/LabelledTimeSeriesClassificationData.d \
./src/GRT/DataStructures/LabelledTimeSeriesClassificationSample.d \
./src/GRT/DataStructures/UnlabelledClassificationData.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/DataStructures/%.o: ../src/GRT/DataStructures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


