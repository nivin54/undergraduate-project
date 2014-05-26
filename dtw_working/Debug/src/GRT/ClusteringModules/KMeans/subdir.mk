################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClusteringModules/KMeans/KMeans.cpp 

OBJS += \
./src/GRT/ClusteringModules/KMeans/KMeans.o 

CPP_DEPS += \
./src/GRT/ClusteringModules/KMeans/KMeans.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClusteringModules/KMeans/%.o: ../src/GRT/ClusteringModules/KMeans/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


