################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/MinDist/MinDist.cpp \
../src/ClassificationModules/MinDist/MinDistModel.cpp 

OBJS += \
./src/ClassificationModules/MinDist/MinDist.o \
./src/ClassificationModules/MinDist/MinDistModel.o 

CPP_DEPS += \
./src/ClassificationModules/MinDist/MinDist.d \
./src/ClassificationModules/MinDist/MinDistModel.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/MinDist/%.o: ../src/ClassificationModules/MinDist/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


