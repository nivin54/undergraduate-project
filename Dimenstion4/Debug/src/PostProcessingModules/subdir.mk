################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/PostProcessingModules/ClassLabelChangeFilter.cpp \
../src/PostProcessingModules/ClassLabelFilter.cpp \
../src/PostProcessingModules/ClassLabelTimeoutFilter.cpp 

OBJS += \
./src/PostProcessingModules/ClassLabelChangeFilter.o \
./src/PostProcessingModules/ClassLabelFilter.o \
./src/PostProcessingModules/ClassLabelTimeoutFilter.o 

CPP_DEPS += \
./src/PostProcessingModules/ClassLabelChangeFilter.d \
./src/PostProcessingModules/ClassLabelFilter.d \
./src/PostProcessingModules/ClassLabelTimeoutFilter.d 


# Each subdirectory must supply rules for building sources it contributes
src/PostProcessingModules/%.o: ../src/PostProcessingModules/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


