################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClassificationModules/HMM/HMM.cpp \
../src/GRT/ClassificationModules/HMM/HiddenMarkovModel.cpp 

OBJS += \
./src/GRT/ClassificationModules/HMM/HMM.o \
./src/GRT/ClassificationModules/HMM/HiddenMarkovModel.o 

CPP_DEPS += \
./src/GRT/ClassificationModules/HMM/HMM.d \
./src/GRT/ClassificationModules/HMM/HiddenMarkovModel.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClassificationModules/HMM/%.o: ../src/GRT/ClassificationModules/HMM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


