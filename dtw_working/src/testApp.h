#pragma once

#include "ofMain.h"

//Include the main GRT header (note you might need to add the GRT path to your IDE project settings or properties)
#include "GRT.h"

//State that we want to use the GRT namespace
using namespace GRT;

class testApp : public ofBaseApp{

public:
    void setup();
    void update();
    void draw();
    void keyPressed  (int key);

    //Create some variables for the demo
    LabelledTimeSeriesClassificationData trainingData;      //This will store our training data
    MatrixDouble timeseries;                                //This will store a single training sample
    GestureRecognitionPipeline pipeline;                    //This is a wrapper for our classifier and any pre/post processing modules
    bool record;                                            //This is a flag that keeps track of when we should record training data
    UINT trainingClassLabel;                                //This will hold the current label for when we are training the classifier
    string infoText;                                        //This string will be used to draw some info messages to the main app window

};
