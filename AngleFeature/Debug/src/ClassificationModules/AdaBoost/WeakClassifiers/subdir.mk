################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ClassificationModules/AdaBoost/WeakClassifiers/DecisionStump.cpp \
../src/ClassificationModules/AdaBoost/WeakClassifiers/RadialBasisFunction.cpp \
../src/ClassificationModules/AdaBoost/WeakClassifiers/WeakClassifier.cpp 

OBJS += \
./src/ClassificationModules/AdaBoost/WeakClassifiers/DecisionStump.o \
./src/ClassificationModules/AdaBoost/WeakClassifiers/RadialBasisFunction.o \
./src/ClassificationModules/AdaBoost/WeakClassifiers/WeakClassifier.o 

CPP_DEPS += \
./src/ClassificationModules/AdaBoost/WeakClassifiers/DecisionStump.d \
./src/ClassificationModules/AdaBoost/WeakClassifiers/RadialBasisFunction.d \
./src/ClassificationModules/AdaBoost/WeakClassifiers/WeakClassifier.d 


# Each subdirectory must supply rules for building sources it contributes
src/ClassificationModules/AdaBoost/WeakClassifiers/%.o: ../src/ClassificationModules/AdaBoost/WeakClassifiers/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


