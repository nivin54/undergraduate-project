################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/ClassificationModules/ANBC/ANBC.cpp \
../src/GRT/ClassificationModules/ANBC/ANBC_Model.cpp 

OBJS += \
./src/GRT/ClassificationModules/ANBC/ANBC.o \
./src/GRT/ClassificationModules/ANBC/ANBC_Model.o 

CPP_DEPS += \
./src/GRT/ClassificationModules/ANBC/ANBC.d \
./src/GRT/ClassificationModules/ANBC/ANBC_Model.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/ClassificationModules/ANBC/%.o: ../src/GRT/ClassificationModules/ANBC/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


