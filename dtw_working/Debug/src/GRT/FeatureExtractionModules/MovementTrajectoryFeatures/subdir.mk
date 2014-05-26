################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/FeatureExtractionModules/MovementTrajectoryFeatures/MovementTrajectoryFeatures.cpp 

OBJS += \
./src/GRT/FeatureExtractionModules/MovementTrajectoryFeatures/MovementTrajectoryFeatures.o 

CPP_DEPS += \
./src/GRT/FeatureExtractionModules/MovementTrajectoryFeatures/MovementTrajectoryFeatures.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/FeatureExtractionModules/MovementTrajectoryFeatures/%.o: ../src/GRT/FeatureExtractionModules/MovementTrajectoryFeatures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


