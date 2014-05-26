################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/FeatureExtractionModules/TimeDomainFeatures/TimeDomainFeatures.cpp 

OBJS += \
./src/FeatureExtractionModules/TimeDomainFeatures/TimeDomainFeatures.o 

CPP_DEPS += \
./src/FeatureExtractionModules/TimeDomainFeatures/TimeDomainFeatures.d 


# Each subdirectory must supply rules for building sources it contributes
src/FeatureExtractionModules/TimeDomainFeatures/%.o: ../src/FeatureExtractionModules/TimeDomainFeatures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


