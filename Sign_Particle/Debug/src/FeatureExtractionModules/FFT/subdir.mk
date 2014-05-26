################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/FeatureExtractionModules/FFT/FFT.cpp \
../src/FeatureExtractionModules/FFT/FFTFeatures.cpp \
../src/FeatureExtractionModules/FFT/FastFourierTransform.cpp 

OBJS += \
./src/FeatureExtractionModules/FFT/FFT.o \
./src/FeatureExtractionModules/FFT/FFTFeatures.o \
./src/FeatureExtractionModules/FFT/FastFourierTransform.o 

CPP_DEPS += \
./src/FeatureExtractionModules/FFT/FFT.d \
./src/FeatureExtractionModules/FFT/FFTFeatures.d \
./src/FeatureExtractionModules/FFT/FastFourierTransform.d 


# Each subdirectory must supply rules for building sources it contributes
src/FeatureExtractionModules/FFT/%.o: ../src/FeatureExtractionModules/FFT/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


