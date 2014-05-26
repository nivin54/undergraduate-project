#ifndef PREDICT
#define PREDICT
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
using namespace cv;
using namespace std;
int intialize_particlefilter(CvConDensation* condens);
Point measure_particlefilter(float x,float y,CvConDensation* condens,Mat &frame);
#endif
