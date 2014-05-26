################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClassificationModules/GMM/GMM.cpp 

OBJS += \
./src/GRT/ClassificationModules/GMM/GMM.o 

CPP_DEPS += \
./src/GRT/ClassificationModules/GMM/GMM.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClassificationModules/GMM/%.o: ../src/GRT/ClassificationModules/GMM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


