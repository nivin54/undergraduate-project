################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/DTW/DTW.cpp 

OBJS += \
./src/ClassificationModules/DTW/DTW.o 

CPP_DEPS += \
./src/ClassificationModules/DTW/DTW.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/DTW/%.o: ../src/ClassificationModules/DTW/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


