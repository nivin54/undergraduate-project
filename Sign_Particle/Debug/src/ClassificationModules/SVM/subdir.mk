################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/SVM/SVM.cpp 

OBJS += \
./src/ClassificationModules/SVM/SVM.o 

CPP_DEPS += \
./src/ClassificationModules/SVM/SVM.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/SVM/%.o: ../src/ClassificationModules/SVM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


