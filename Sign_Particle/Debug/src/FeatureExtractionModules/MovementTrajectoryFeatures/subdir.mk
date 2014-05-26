################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/FeatureExtractionModules/MovementTrajectoryFeatures/MovementTrajectoryFeatures.cpp 

OBJS += \
./src/FeatureExtractionModules/MovementTrajectoryFeatures/MovementTrajectoryFeatures.o 

CPP_DEPS += \
./src/FeatureExtractionModules/MovementTrajectoryFeatures/MovementTrajectoryFeatures.d 


# Each subdirectory must supply rules for building sources it contributes
src/FeatureExtractionModules/MovementTrajectoryFeatures/%.o: ../src/FeatureExtractionModules/MovementTrajectoryFeatures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


