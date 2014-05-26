################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/RandomForests/RandomForests.cpp 

OBJS += \
./src/ClassificationModules/RandomForests/RandomForests.o 

CPP_DEPS += \
./src/ClassificationModules/RandomForests/RandomForests.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/RandomForests/%.o: ../src/ClassificationModules/RandomForests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


