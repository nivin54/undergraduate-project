################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/Util/subdir.mk
-include src/RegressionModules/MultidimensionalRegression/subdir.mk
-include src/RegressionModules/LogisticRegression/subdir.mk
-include src/RegressionModules/LinearRegression/subdir.mk
-include src/RegressionModules/ArtificialNeuralNetworks/MLP/subdir.mk
-include src/PreProcessingModules/subdir.mk
-include src/PostProcessingModules/subdir.mk
-include src/FeatureExtractionModules/ZeroCrossingCounter/subdir.mk
-include src/FeatureExtractionModules/TimeseriesBuffer/subdir.mk
-include src/FeatureExtractionModules/TimeDomainFeatures/subdir.mk
-include src/FeatureExtractionModules/SOMQuantizer/subdir.mk
-include src/FeatureExtractionModules/PCA/subdir.mk
-include src/FeatureExtractionModules/MovementTrajectoryFeatures/subdir.mk
-include src/FeatureExtractionModules/MovementIndex/subdir.mk
-include src/FeatureExtractionModules/KMeansQuantizer/subdir.mk
-include src/FeatureExtractionModules/FFT/subdir.mk
-include src/DataStructures/subdir.mk
-include src/CoreModules/subdir.mk
-include src/ContextModules/subdir.mk
-include src/ClusteringModules/SelfOrganizingMap/subdir.mk
-include src/ClusteringModules/KMeans/subdir.mk
-include src/ClusteringModules/HierarchicalClustering/subdir.mk
-include src/ClusteringModules/GaussianMixtureModels/subdir.mk
-include src/ClassificationModules/Softmax/subdir.mk
-include src/ClassificationModules/SVM/LIBSVM/subdir.mk
-include src/ClassificationModules/SVM/subdir.mk
-include src/ClassificationModules/RandomForests/subdir.mk
-include src/ClassificationModules/MinDist/subdir.mk
-include src/ClassificationModules/LDA/subdir.mk
-include src/ClassificationModules/KNN/subdir.mk
-include src/ClassificationModules/HMM/subdir.mk
-include src/ClassificationModules/GMM/subdir.mk
-include src/ClassificationModules/DecisionTree/subdir.mk
-include src/ClassificationModules/DTW/subdir.mk
-include src/ClassificationModules/BAG/subdir.mk
-include src/ClassificationModules/AdaBoost/WeakClassifiers/subdir.mk
-include src/ClassificationModules/AdaBoost/subdir.mk
-include src/ClassificationModules/ANBC/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Sign_Particle

# Tool invocations
Sign_Particle: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	g++ -L/usr/lib/x86_64-linux-gnu/ -L/usr/local/lib -o "Sign_Particle" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C++_DEPS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) Sign_Particle
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
