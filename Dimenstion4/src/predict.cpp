#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/legacy/legacy.hpp>
#include <bits/stdc++.h>
#include <vector>
#include<algorithm>

#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include "predict.h"
#include "findcontour.h"
using namespace cv;
using namespace std;
float xRange = 650.0,yRange = 650.0;
float minRange[] = { 0, 0 };
float maxRange[] = { xRange, yRange };
CvMat LB, UB;

int intialize_particlefilter(CvConDensation* condens)
{
		cvInitMatHeader(&LB, 2, 1, CV_32FC1, minRange);
		cvInitMatHeader(&UB, 2, 1, CV_32FC1, maxRange);

		cvConDensInitSampleSet(condens, &LB, &UB);

		// The OpenCV documentation doesn't tell you to initialize this
		  // transition matrix, but you have to do it.  For this 2D example,
		  // we're just using a 2x2 identity matrix.  I'm sure there's a slicker
		  // way to do this, left as an exercise for the reader.
		  condens->DynamMatr[0] = 1.0;
		  condens->DynamMatr[1] = 0.0;
		  condens->DynamMatr[2] = 0.0;
		  condens->DynamMatr[3] = 1.0;
		  return 0;
}
Point measure_particlefilter(float x,float y,CvConDensation* condens,Mat &frame,Point &state)
{
	 Point measPt(x,y);
	 //cout<<"SamplesNum"<<" "<<condens->SamplesNum<<endl;
	 Point statePt(condens->State[0], condens->State[1]);
	 MyFilledCircle(frame,statePt,1);
	 state=statePt;
	 	 for (int i = 0; i < condens->SamplesNum; i++)
	 	 {

	        	float diffX = (x - condens->flSamples[i][0])/xRange;
	        	float diffY = (y - condens->flSamples[i][1])/yRange;
	        	condens->flConfidence[i] = 1.0 / (sqrt(diffX * diffX + diffY * diffY));
	        	Point partPt(condens->flSamples[i][0], condens->flSamples[i][1]);
	        	//MyFilledCircle(frame,partPt,1);
	 	 }
	 	// Point statePt(condens->State[0], condens->State[1]);
	 	cvConDensUpdateByTime(condens);

	 	return statePt;
}
