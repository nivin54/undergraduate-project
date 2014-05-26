################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClassificationModules/Softmax/Softmax.cpp 

OBJS += \
./src/GRT/ClassificationModules/Softmax/Softmax.o 

CPP_DEPS += \
./src/GRT/ClassificationModules/Softmax/Softmax.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClassificationModules/Softmax/%.o: ../src/GRT/ClassificationModules/Softmax/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


