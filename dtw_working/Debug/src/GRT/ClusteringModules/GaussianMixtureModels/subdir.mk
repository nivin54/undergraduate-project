################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClusteringModules/GaussianMixtureModels/GaussianMixtureModels.cpp 

OBJS += \
./src/GRT/ClusteringModules/GaussianMixtureModels/GaussianMixtureModels.o 

CPP_DEPS += \
./src/GRT/ClusteringModules/GaussianMixtureModels/GaussianMixtureModels.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClusteringModules/GaussianMixtureModels/%.o: ../src/GRT/ClusteringModules/GaussianMixtureModels/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


