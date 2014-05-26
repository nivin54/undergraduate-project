/*
 * Segement(1_0).cpp
 *
 *  Created on: 03-Jan-2014
 *      Author: mac
 */
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <bits/stdc++.h>
#include "skincolor.h"
#include "findcontour.h"
#include <vector>
#include<algorithm>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
using namespace cv;
using namespace std;
//This function returns the square of the euclidean distance between 2 points.
Mat src, src_gray,skin1,drawing,skin,skin2;
int thresh = 100;
int max_thresh = 255;
RNG rng(12345);
long long int noframes;
bool notstarted[3];
/// Function header
//This is mouse pointer and kalmanv pointer
Mat_<float> measurement(2,1);
KalmanFilter H(4,2,0);	//VideoCapture cap(0);
KalmanFilter R(4,2,0);
KalmanFilter L(4,2,0);
void thresh_callback(int, void* );
struct mouse_info_struct { int x,y; };
struct mouse_info_struct mouse_info = {-1,-1}, last_mouse;
vector<KeyPoint> keypoints;
vector<Rect> inside;
void detectAndDisplay( Mat frame );
/** Global variables */

bool checkinside(Rect A)
{
	for(int i=0;i<(int)inside.size();i++)
	{
		Point P,P1,P2,P3;
		P=inside[i].tl();P1=inside[i].br();P2=A.tl();P3=A.br();
		if(P.x<=P2.x and P.y<=P2.y and P1.x>=P3.x and P1.y>=P3.y)
					return false;
	}
	inside.push_back(A);
	return true;

}
void MyFilledCircle( Mat img, Point center,int color )
{
 int thickness = -1;
 int lineType = 8;
 circle(img,center,5.50,Scalar(0,0,255),-1,8,0);
 //circle( img,center,5/32.0,Scalar( 0, 0, 255 ),thickness,lineType );
}
int Kalman_adjust(Point A,int biggest,KalmanFilter &F)
{
	Mat_<float> measurement(2,1);
	if(!notstarted[biggest])
	{
		notstarted[biggest]=true;
		 measurement.setTo(Scalar(0));
		F.statePre.at<float>(0) = A.x;
		F.statePre.at<float>(1) = A.y;
		F.statePre.at<float>(2) = 0;
		F.statePre.at<float>(3) = 0;
		F.transitionMatrix = *(Mat_<float>(4, 4) << 1,0,0,0,   0,1,0,0,  0,0,1,0,  0,0,0,1);
		setIdentity(F.measurementMatrix);
		setIdentity(F.processNoiseCov, Scalar::all(1e-4));
		setIdentity(F.measurementNoiseCov, Scalar::all(1e-1));
		setIdentity(F.errorCovPost, Scalar::all(.1));
	}
	else
	{
		measurement(0) = A.x;
		measurement(1) = A.y;
		Mat estimated = F.correct(measurement);
		Point statePt(estimated.at<float>(0),estimated.at<float>(1));
	}
}
int Kalman_Perdict(KalmanFilter &F)
{
	if(notstarted[0] and notstarted[1] and notstarted[2])
	{
		Mat prediction = F.predict();
		Point predictPt(prediction.at<float>(0),prediction.at<float>(1));
		MyFilledCircle(skin2,predictPt,1);
	}
	return 0;
}

int main(int argc, const char *argv[]) {


	VideoCapture cap("/home/mac/Documents/PROJECT/NewDataSets/krithika/book_k3.wmv");
	noframes=1;
	double dWidth = cap.get(CV_CAP_PROP_FRAME_WIDTH); //get the width of frames of the video
	double dHeight = cap.get(CV_CAP_PROP_FRAME_HEIGHT); //get the height of frames of the video
	Size frameSize(static_cast<int>(dWidth), static_cast<int>(dHeight));
	VideoWriter oVideoWriter ("/home/mac/Documents/PROJECT/Output/3spaces/kalmanfilter.avi", CV_FOURCC('P','I','M','1'), 20, frameSize, true); //initialize the VideoWriter object



	//notstarted=false;
	Mat3b frame;

	while(cap.read(frame))
	{

		skin = GetSkin(frame);
		//imshow("Skin",skin);
		cvtColor(skin,skin,CV_RGB2GRAY);
		skin1 = skin> 50;
		blur( skin1, skin1, Size(3,3) );
		char* source_window = "Source";
		namedWindow( source_window, CV_WINDOW_AUTOSIZE );
		src_gray=skin1;
		createTrackbar( " Threshold:", "Source", &thresh, max_thresh, thresh_callback );
		cv::SiftFeatureDetector detector;
		detector.detect(skin1, keypoints);
		Mat output;
		thresh_callback( 0, 0 );
		if(noframes>8)
		{
			Kalman_Perdict(H);Kalman_Perdict(R);Kalman_Perdict(L);
			imshow("Tracking",skin2);
			oVideoWriter.write(skin2);
		}
		drawKeypoints(skin1, keypoints, output);
		skin2=frame;
		medianBlur( skin1, skin1, 5 );
		noframes+=1;
		waitKey(5);
		keypoints.clear();

	}
    return 0;
}
bool cmp(pair<double,Rect > A, pair<double,Rect > B)
{
	 return (int)A.first<(int)B.first;

}
bool cmp2(pair<double,Rect> A,pair<double,Rect> B)
{
	return (int)abs(A.second.tl().y-A.second.br().y) > (int)abs(B.second.tl().y-B.second.br().y);

}

void thresh_callback(int, void* )
{
  Mat threshold_output;
  vector<vector<Point> > contours;
  vector<Vec4i> hierarchy;/// Detect edges using Threshold
  threshold( src_gray, threshold_output, thresh, 255, THRESH_BINARY );/// Find contourss
  findContours( threshold_output, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );/// Approximate contours to polygons + get bounding rects and circles
  vector<vector<Point> > contours_poly( contours.size() );
  vector<Rect> boundRect( contours.size() );
  vector<pair<double,Rect > > boundrectangle;
  vector<vector<Point> > contours_polygone;
  vector<Point2f>center( contours.size() );
  vector<float>radius( contours.size() );
  vector<pair<double,Rect > > Bound(contours.size());
  for( int i = 0; i < (int) contours.size(); i++ )
     {
	  	  approxPolyDP( Mat(contours[i]), contours_poly[i], 3, true );
	  	  boundRect[i] = boundingRect( Mat(contours_poly[i]) );
	  	  Bound[i].second=boundRect[i];
	  	  Bound[i].first=contourArea(contours_poly[i]);
	  	  minEnclosingCircle( (Mat)contours_poly[i], center[i], radius[i] );

     }
  sort(Bound.begin(),Bound.end(),cmp);
  int size=(int) Bound.size();/// Draw polygonal contour + bonding rects + circles
  drawing = Mat::zeros( threshold_output.size(), CV_8UC3 );
  Point headpoint;int maxi=3;
  sort(Bound.begin(),Bound.end(),cmp);
  for(int j=size-1;j>=0 and maxi;j--)
  	  for( int i = 0; i< (int)contours.size(); i++ )
  		  	  if(Bound[j].second==boundRect[i] and checkinside(boundRect[i]))
  		  	  {
  		  		  	  	  	  boundrectangle.push_back(Bound[j]);
  		  		  	  	  	  maxi--;
  		  		  	  	  	  contours_polygone.push_back(contours_poly[i]);
  		  		  	  	  	  break;
  		  	  }
  	 sort(boundrectangle.begin(),boundrectangle.end(),cmp2);
	for( int i = 0; i< (int)boundrectangle.size(); i++ )
	{

		  		  Point P,P1,P2;
		  		  P=boundrectangle[i].second.tl();
		  		  P1=boundrectangle[i].second.br();
		  		  //cout<<P.x<<" "<<P.y<<endl;
		  		  P2.x=(P1.x+P.x)/2.0;
		  		  P2.y=(P1.y+P.y)/2.0;
		  		  Scalar colorR = Scalar(255,0,0);Scalar colorG = Scalar(0,255,0);Scalar colorB = Scalar(0,0,255);
		  		  Scalar color;
		  		  if(i==0)
		  				  	  color=colorG;
		  		  else
		  				  	  color=colorB;
		  		  drawContours( drawing, contours_polygone, i, colorR, -1, 8, vector<Vec4i>(), 0, Point() );
		  		  rectangle( drawing, boundrectangle[i].second.tl(), boundrectangle[i].second.br(), color, 2, 8, 0 );
		  		    //MyFilledCircle(drawing,P2,1);
		  		  if(noframes>=5)
		  		  {
		  			  if(i==0)
		  			  {
		  				  Kalman_adjust(P2,0,H);
		  				  headpoint=P2;
		  			  }
		  			  else
		  			  {
		  				 if(headpoint.x>=P2.x)
		  					 	 Kalman_adjust(P2,1,L);
		  				 else
		  					 	 Kalman_adjust(P2,2,R);
		  			 }
		  		  }
		 }
  Mat output;
  drawKeypoints(drawing, keypoints, output);
  namedWindow( "Contours", CV_WINDOW_AUTOSIZE );/// Show in a window
  imshow( "Contours", output );
  inside.clear();
}

