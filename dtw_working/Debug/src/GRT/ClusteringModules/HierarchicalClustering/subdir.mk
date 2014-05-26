################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClusteringModules/HierarchicalClustering/HierarchicalClustering.cpp 

OBJS += \
./src/GRT/ClusteringModules/HierarchicalClustering/HierarchicalClustering.o 

CPP_DEPS += \
./src/GRT/ClusteringModules/HierarchicalClustering/HierarchicalClustering.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClusteringModules/HierarchicalClustering/%.o: ../src/GRT/ClusteringModules/HierarchicalClustering/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


