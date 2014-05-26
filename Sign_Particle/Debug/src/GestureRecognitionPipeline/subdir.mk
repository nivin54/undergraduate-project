################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GestureRecognitionPipeline/Classifier.cpp \
../src/GestureRecognitionPipeline/FeatureExtraction.cpp \
../src/GestureRecognitionPipeline/GestureRecognitionPipeline.cpp \
../src/GestureRecognitionPipeline/PostProcessing.cpp \
../src/GestureRecognitionPipeline/PreProcessing.cpp \
../src/GestureRecognitionPipeline/Regressifier.cpp 

OBJS += \
./src/GestureRecognitionPipeline/Classifier.o \
./src/GestureRecognitionPipeline/FeatureExtraction.o \
./src/GestureRecognitionPipeline/GestureRecognitionPipeline.o \
./src/GestureRecognitionPipeline/PostProcessing.o \
./src/GestureRecognitionPipeline/PreProcessing.o \
./src/GestureRecognitionPipeline/Regressifier.o 

CPP_DEPS += \
./src/GestureRecognitionPipeline/Classifier.d \
./src/GestureRecognitionPipeline/FeatureExtraction.d \
./src/GestureRecognitionPipeline/GestureRecognitionPipeline.d \
./src/GestureRecognitionPipeline/PostProcessing.d \
./src/GestureRecognitionPipeline/PreProcessing.d \
./src/GestureRecognitionPipeline/Regressifier.d 


# Each subdirectory must supply rules for building sources it contributes
src/GestureRecognitionPipeline/%.o: ../src/GestureRecognitionPipeline/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


