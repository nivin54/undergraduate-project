################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GRT/CoreModules/Classifier.cpp \
../src/GRT/CoreModules/Clusterer.cpp \
../src/GRT/CoreModules/Context.cpp \
../src/GRT/CoreModules/FeatureExtraction.cpp \
../src/GRT/CoreModules/GRTBase.cpp \
../src/GRT/CoreModules/GestureRecognitionPipeline.cpp \
../src/GRT/CoreModules/PostProcessing.cpp \
../src/GRT/CoreModules/PreProcessing.cpp \
../src/GRT/CoreModules/Regressifier.cpp 

OBJS += \
./src/GRT/CoreModules/Classifier.o \
./src/GRT/CoreModules/Clusterer.o \
./src/GRT/CoreModules/Context.o \
./src/GRT/CoreModules/FeatureExtraction.o \
./src/GRT/CoreModules/GRTBase.o \
./src/GRT/CoreModules/GestureRecognitionPipeline.o \
./src/GRT/CoreModules/PostProcessing.o \
./src/GRT/CoreModules/PreProcessing.o \
./src/GRT/CoreModules/Regressifier.o 

CPP_DEPS += \
./src/GRT/CoreModules/Classifier.d \
./src/GRT/CoreModules/Clusterer.d \
./src/GRT/CoreModules/Context.d \
./src/GRT/CoreModules/FeatureExtraction.d \
./src/GRT/CoreModules/GRTBase.d \
./src/GRT/CoreModules/GestureRecognitionPipeline.d \
./src/GRT/CoreModules/PostProcessing.d \
./src/GRT/CoreModules/PreProcessing.d \
./src/GRT/CoreModules/Regressifier.d 


# Each subdirectory must supply rules for building sources it contributes
src/GRT/CoreModules/%.o: ../src/GRT/CoreModules/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


