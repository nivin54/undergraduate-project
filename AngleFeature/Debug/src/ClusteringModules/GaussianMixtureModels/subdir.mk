################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClusteringModules/GaussianMixtureModels/GaussianMixtureModels.cpp 

OBJS += \
./src/ClusteringModules/GaussianMixtureModels/GaussianMixtureModels.o 

CPP_DEPS += \
./src/ClusteringModules/GaussianMixtureModels/GaussianMixtureModels.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClusteringModules/GaussianMixtureModels/%.o: ../src/ClusteringModules/GaussianMixtureModels/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


