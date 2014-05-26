################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/HMM/HMM.cpp \
../src/ClassificationModules/HMM/HiddenMarkovModel.cpp 

OBJS += \
./src/ClassificationModules/HMM/HMM.o \
./src/ClassificationModules/HMM/HiddenMarkovModel.o 

CPP_DEPS += \
./src/ClassificationModules/HMM/HMM.d \
./src/ClassificationModules/HMM/HiddenMarkovModel.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/HMM/%.o: ../src/ClassificationModules/HMM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


