/*
 * Detector.cpp
 *
 *  Created on: 10-Jan-2014
 *      Author: mac
 */
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <bits/stdc++.h>
#include <vector>
#include<algorithm>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
using namespace cv;
using namespace std;
#include <opencv2/core/core.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <vector>

using namespace std;
using namespace cv;

int main(int argc, char *argv[])
{
	VideoCapture cap("/home/mac/Documents/PROJECT/Last.AVI");
Mat3b skin;
Mat image;
while(cap.read(skin))
{


	cvtColor(skin,image,CV_RGB2GRAY);
	namedWindow("Actual");
	imshow("Actual",skin);
	waitKey(5000);
	cout<<"Here"<<endl;
  // Create smart pointer for SIFT feature detector.
  Ptr<FeatureDetector> featureDetector = FeatureDetector::create("SIFT");
  vector<KeyPoint> keypoints;

  // Detect the keypoints
  cout<<"third Line "<<endl;
  featureDetector->detect(image, keypoints); // NOTE: featureDetector is a pointer hence the '->'.
  cout<<"fourht lin "<<endl;
  //Similarly, we create a smart pointer to the SIFT extractor.
  Ptr<DescriptorExtractor> featureExtractor = DescriptorExtractor::create("SIFT");

  // Compute the 128 dimension SIFT descriptor at each keypoint.
  // Each row in "descriptors" correspond to the SIFT descriptor for each keypoint
  Mat descriptors;
  featureExtractor->compute(image, keypoints, descriptors);

  // If you would like to draw the detected keypoint just to check
  Mat outputImage;
  Scalar keypointColor = Scalar(255, 0, 0);     // Blue keypoints.
  drawKeypoints(image, keypoints, outputImage, keypointColor, DrawMatchesFlags::DEFAULT);

  cout<<"In this step "<<endl;
  namedWindow("Output");
  imshow("Output", outputImage);
  waitKey(5000);

}
  return 0;

}

