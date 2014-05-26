################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClusteringModules/HierarchicalClustering/HierarchicalClustering.cpp 

OBJS += \
./src/ClusteringModules/HierarchicalClustering/HierarchicalClustering.o 

CPP_DEPS += \
./src/ClusteringModules/HierarchicalClustering/HierarchicalClustering.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClusteringModules/HierarchicalClustering/%.o: ../src/ClusteringModules/HierarchicalClustering/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


