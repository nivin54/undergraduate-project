################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/DecisionTree/DecisionTree.cpp 

OBJS += \
./src/ClassificationModules/DecisionTree/DecisionTree.o 

CPP_DEPS += \
./src/ClassificationModules/DecisionTree/DecisionTree.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/DecisionTree/%.o: ../src/ClassificationModules/DecisionTree/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


