################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CoreModules/Classifier.cpp \
../src/CoreModules/Clusterer.cpp \
../src/CoreModules/Context.cpp \
../src/CoreModules/FeatureExtraction.cpp \
../src/CoreModules/GRTBase.cpp \
../src/CoreModules/GestureRecognitionPipeline.cpp \
../src/CoreModules/PostProcessing.cpp \
../src/CoreModules/PreProcessing.cpp \
../src/CoreModules/Regressifier.cpp 

OBJS += \
./src/CoreModules/Classifier.o \
./src/CoreModules/Clusterer.o \
./src/CoreModules/Context.o \
./src/CoreModules/FeatureExtraction.o \
./src/CoreModules/GRTBase.o \
./src/CoreModules/GestureRecognitionPipeline.o \
./src/CoreModules/PostProcessing.o \
./src/CoreModules/PreProcessing.o \
./src/CoreModules/Regressifier.o 

CPP_DEPS += \
./src/CoreModules/Classifier.d \
./src/CoreModules/Clusterer.d \
./src/CoreModules/Context.d \
./src/CoreModules/FeatureExtraction.d \
./src/CoreModules/GRTBase.d \
./src/CoreModules/GestureRecognitionPipeline.d \
./src/CoreModules/PostProcessing.d \
./src/CoreModules/PreProcessing.d \
./src/CoreModules/Regressifier.d 


# Each subdirectory must supply rules for building sources it contributes
src/CoreModules/%.o: ../src/CoreModules/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


