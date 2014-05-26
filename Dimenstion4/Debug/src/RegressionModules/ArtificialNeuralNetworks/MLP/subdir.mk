################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/RegressionModules/ArtificialNeuralNetworks/MLP/MLP.cpp \
../src/RegressionModules/ArtificialNeuralNetworks/MLP/Neuron.cpp 

OBJS += \
./src/RegressionModules/ArtificialNeuralNetworks/MLP/MLP.o \
./src/RegressionModules/ArtificialNeuralNetworks/MLP/Neuron.o 

CPP_DEPS += \
./src/RegressionModules/ArtificialNeuralNetworks/MLP/MLP.d \
./src/RegressionModules/ArtificialNeuralNetworks/MLP/Neuron.d 


# Each subdirectory must supply rules for building sources it contributes
src/RegressionModules/ArtificialNeuralNetworks/MLP/%.o: ../src/RegressionModules/ArtificialNeuralNetworks/MLP/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


