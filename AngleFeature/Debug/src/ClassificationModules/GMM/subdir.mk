################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/GMM/GMM.cpp 

OBJS += \
./src/ClassificationModules/GMM/GMM.o 

CPP_DEPS += \
./src/ClassificationModules/GMM/GMM.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/GMM/%.o: ../src/ClassificationModules/GMM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


