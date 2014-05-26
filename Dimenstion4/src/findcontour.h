#ifndef FINDCOUNTOUR
#define FINDCOUNTOUR
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <bits/stdc++.h>
using namespace cv;
using namespace std;

bool cmp(pair<double,Rect > A, pair<double,Rect > B);
bool cmp2(pair<double,Rect> A,pair<double,Rect> B);
bool checkinside(Rect A);
Mat draw_contour(Mat src,Point a[],int &sz,Point b[],Mat image,Point location[][2],Mat &segment);
Mat contour(Mat src,Point a[],int &sz,Point b[],Mat image);

void MyFilledCircle( Mat img, Point center,int color );

#endif
