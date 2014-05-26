################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/FeatureExtractionModules/MovementIndex.cpp \
../src/FeatureExtractionModules/MovementTrajectoryFeatures.cpp \
../src/FeatureExtractionModules/PeakDetection.cpp \
../src/FeatureExtractionModules/ZeroCrossingCounter.cpp 

OBJS += \
./src/FeatureExtractionModules/MovementIndex.o \
./src/FeatureExtractionModules/MovementTrajectoryFeatures.o \
./src/FeatureExtractionModules/PeakDetection.o \
./src/FeatureExtractionModules/ZeroCrossingCounter.o 

CPP_DEPS += \
./src/FeatureExtractionModules/MovementIndex.d \
./src/FeatureExtractionModules/MovementTrajectoryFeatures.d \
./src/FeatureExtractionModules/PeakDetection.d \
./src/FeatureExtractionModules/ZeroCrossingCounter.d 


# Each subdirectory must supply rules for building sources it contributes
src/FeatureExtractionModules/%.o: ../src/FeatureExtractionModules/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


