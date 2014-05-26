/**
 * @file objectDetection2.cpp
 * @author A. Huaman ( based in the classic facedetect.cpp in samples/c )
 * @brief A simplified version of facedetect.cpp, show how to load a cascade classifier and how to find objects (Face + eyes) in a video stream - Using LBP here
 */
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <iostream>
#include <stdio.h>

using namespace std;
using namespace cv;


/** Function Headers */
void detectAndDisplay( Mat frame );

/** Global variables */
String face_cascade_name = "/home/mac/Documents/PROJECT/haarcascades/haarcascade_frontalface_default.xml";
CascadeClassifier face_cascade;
String window_name = "Capture - Face detection";
/**
 * @function main
 */
bool R2(float Y, float Cr, float Cb)
{
	return (Cb>=77 and Cb<=127 and Cr>=133 and Cr<=164);
}
Mat GetSkin(Mat const &src) {
    // allocate the result matrix
    Mat dst = src.clone();// OpenCV scales the YCrCb components, so that they
    Vec3b cwhite = Vec3b::all(255);// cover the whole value range of [0,255], so there's
    Vec3b cblack = Vec3b::all(0);// no need to scale the values:
    Mat src_ycrcb, src_hsv;// OpenCV scales the Hue Channel to [0,180] for
    cvtColor(src, src_ycrcb, CV_BGR2YCrCb);// 8bit images, so make sure we are operating on
    normalize(src_hsv, src_hsv, 0.0, 255.0, NORM_MINMAX, CV_32FC3);// Now scale the values between [0,255]:
    for(int i = 0; i < src.rows; i++) {// cout<<src.rows<<endl;
        for(int j = 0; j < src.cols; j++)
        {
        	Vec3b pix_ycrcb = src_ycrcb.ptr<Vec3b>(i)[j];
        	int Y = pix_ycrcb.val[0];int Cr = pix_ycrcb.val[1];int Cb = pix_ycrcb.val[2];
        	            // apply ycrcb rule
        	bool b = R2(Y,Cr,Cb);
            if(!(b))
                dst.ptr<Vec3b>(i)[j] = cblack;
        }
    }
    return dst;
}
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <stdio.h>

using namespace std;
using namespace cv;

int main( )
{
    Mat image;
    //image = imread("lena.jpg", CV_LOAD_IMAGE_COLOR);
    VideoCapture cap(0);

    while(cap.read(image))
	{
    namedWindow( "window1", 1 );   imshow( "window1", image );

    // Load Face cascade (.xml file)
    CascadeClassifier face_cascade;
    face_cascade.load(face_cascade_name );

    // Detect faces
    std::vector<Rect> faces;
    face_cascade.detectMultiScale( image, faces, 1.1, 2, 0|CV_HAAR_SCALE_IMAGE, Size(30, 30) );

    // Draw circles on the detected faces
    for( int i = 0; i < faces.size(); i++ )
    {
        Point center( faces[i].x + faces[i].width*0.5, faces[i].y + faces[i].height*0.5 );
        ellipse( image, center, Size( faces[i].width*0.5, faces[i].height*0.5), 0, 0, 360, Scalar( 255, 0, 255 ), 4, 8, 0 );
    }

    imshow( "Detected Face", image );

    waitKey(10);
	}
    return 0;
}
