################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Util/Cholesky.cpp \
../src/Util/DebugLog.cpp \
../src/Util/EigenvalueDecomposition.cpp \
../src/Util/ErrorLog.cpp \
../src/Util/InfoLog.cpp \
../src/Util/LUDecomposition.cpp \
../src/Util/LabelledTimeSeriesClassificationSampleTrimmer.cpp \
../src/Util/MatrixDouble.cpp \
../src/Util/Node.cpp \
../src/Util/PeakDetection.cpp \
../src/Util/RangeTracker.cpp \
../src/Util/SVD.cpp \
../src/Util/TestingLog.cpp \
../src/Util/ThresholdCrossingDetector.cpp \
../src/Util/TrainingDataRecordingTimer.cpp \
../src/Util/TrainingLog.cpp \
../src/Util/Util.cpp \
../src/Util/WarningLog.cpp 

OBJS += \
./src/Util/Cholesky.o \
./src/Util/DebugLog.o \
./src/Util/EigenvalueDecomposition.o \
./src/Util/ErrorLog.o \
./src/Util/InfoLog.o \
./src/Util/LUDecomposition.o \
./src/Util/LabelledTimeSeriesClassificationSampleTrimmer.o \
./src/Util/MatrixDouble.o \
./src/Util/Node.o \
./src/Util/PeakDetection.o \
./src/Util/RangeTracker.o \
./src/Util/SVD.o \
./src/Util/TestingLog.o \
./src/Util/ThresholdCrossingDetector.o \
./src/Util/TrainingDataRecordingTimer.o \
./src/Util/TrainingLog.o \
./src/Util/Util.o \
./src/Util/WarningLog.o 

CPP_DEPS += \
./src/Util/Cholesky.d \
./src/Util/DebugLog.d \
./src/Util/EigenvalueDecomposition.d \
./src/Util/ErrorLog.d \
./src/Util/InfoLog.d \
./src/Util/LUDecomposition.d \
./src/Util/LabelledTimeSeriesClassificationSampleTrimmer.d \
./src/Util/MatrixDouble.d \
./src/Util/Node.d \
./src/Util/PeakDetection.d \
./src/Util/RangeTracker.d \
./src/Util/SVD.d \
./src/Util/TestingLog.d \
./src/Util/ThresholdCrossingDetector.d \
./src/Util/TrainingDataRecordingTimer.d \
./src/Util/TrainingLog.d \
./src/Util/Util.d \
./src/Util/WarningLog.d 


# Each subdirectory must supply rules for building sources it contributes
src/Util/%.o: ../src/Util/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/usr/local/include/opencv -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


