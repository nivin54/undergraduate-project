################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/RegressionModules/LinearRegression/LinearRegression.cpp 

OBJS += \
./src/RegressionModules/LinearRegression/LinearRegression.o 

CPP_DEPS += \
./src/RegressionModules/LinearRegression/LinearRegression.d 


# Each subdirectory must supply rules for building sources it contributes
src/RegressionModules/LinearRegression/%.o: ../src/RegressionModules/LinearRegression/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


