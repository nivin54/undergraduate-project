################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/MLP.cpp \
../src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/Neuron.cpp 

OBJS += \
./src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/MLP.o \
./src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/Neuron.o 

CPP_DEPS += \
./src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/MLP.d \
./src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/Neuron.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/%.o: ../src/GRT/RegressionModules/ArtificialNeuralNetworks/MLP/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


