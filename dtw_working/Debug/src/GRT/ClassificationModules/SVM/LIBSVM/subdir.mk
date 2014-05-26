################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClassificationModules/SVM/LIBSVM/libsvm.cpp 

OBJS += \
./src/GRT/ClassificationModules/SVM/LIBSVM/libsvm.o 

CPP_DEPS += \
./src/GRT/ClassificationModules/SVM/LIBSVM/libsvm.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClassificationModules/SVM/LIBSVM/%.o: ../src/GRT/ClassificationModules/SVM/LIBSVM/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


