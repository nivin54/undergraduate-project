################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/FeatureExtractionModules/PCA/PrincipalComponentAnalysis.cpp 

OBJS += \
./src/GRT/FeatureExtractionModules/PCA/PrincipalComponentAnalysis.o 

CPP_DEPS += \
./src/GRT/FeatureExtractionModules/PCA/PrincipalComponentAnalysis.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/FeatureExtractionModules/PCA/%.o: ../src/GRT/FeatureExtractionModules/PCA/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


