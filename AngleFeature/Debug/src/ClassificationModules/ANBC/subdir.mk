################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/ANBC/ANBC.cpp \
../src/ClassificationModules/ANBC/ANBC_Model.cpp 

OBJS += \
./src/ClassificationModules/ANBC/ANBC.o \
./src/ClassificationModules/ANBC/ANBC_Model.o 

CPP_DEPS += \
./src/ClassificationModules/ANBC/ANBC.d \
./src/ClassificationModules/ANBC/ANBC_Model.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/ANBC/%.o: ../src/ClassificationModules/ANBC/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


