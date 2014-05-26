#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv2/nonfree/features2d.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <bits/stdc++.h>
#include <vector>
#include <algorithm>
#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include "skincolor.h"
using namespace cv;
using namespace std;
bool R1(int R, int G, int B) {
    bool e1 = (R>95) && (G>40) && (B>20) && ((max(R,max(G,B)) - min(R, min(G,B)))>15) && (abs(R-G)>15) && (R>G) && (R>B);
    bool e2 = (R>220) && (G>210) && (B>170) && (abs(R-G)<=15) && (R>B) && (G>B);
    return (e1||e2);
}

bool R2(float Y, float Cr, float Cb) {

	return (Cb>=77 and Cb<=127 and Cr>=133 and Cr<=173);
}

bool R3(float H, float S, float V) {
	return  ((H<=25 or H>=335) and (S>0.2 and S<0.6) and (V>=40));

}

Mat GetSkin(Mat const &src) {
    // allocate the result matrix
    Mat dst = src.clone();// OpenCV scales the YCrCb components, so that they
    Vec3b cwhite = Vec3b::all(255);// cover the whole value range of [0,255], so there's
    Vec3b cblack = Vec3b::all(0);// no need to scale the values:
    Mat src_ycrcb, src_hsv;// OpenCV scales the Hue Channel to [0,180] for
    cvtColor(src, src_ycrcb, CV_BGR2YCrCb);// 8bit images, so make sure we are operating on
    src.convertTo(src_hsv, CV_32FC3);// the full spectrum from [0,360] by using floating
    cvtColor(src_hsv, src_hsv, CV_BGR2HSV);// point precision:
    normalize(src_hsv, src_hsv, 0.0, 255.0, NORM_MINMAX, CV_32FC3);// Now scale the values between [0,255]:
    for(int i = 0; i < src.rows; i++) {// cout<<src.rows<<endl;
        for(int j = 0; j < src.cols; j++) {
            Vec3b pix_bgr = src.ptr<Vec3b>(i)[j];
            int B = pix_bgr.val[0];int G = pix_bgr.val[1];int R = pix_bgr.val[2];
            // apply rgb rule
            bool a = R1(R,G,B);

            Vec3b pix_ycrcb = src_ycrcb.ptr<Vec3b>(i)[j];
            int Y = pix_ycrcb.val[0];int Cr = pix_ycrcb.val[1];int Cb = pix_ycrcb.val[2];
            // apply ycrcb rule
            bool b = R2(Y,Cr,Cb);

            Vec3f pix_hsv = src_hsv.ptr<Vec3f>(i)[j];
            float H = pix_hsv.val[0];float S = pix_hsv.val[1];float V = pix_hsv.val[2];
            // apply hsv rule
            bool c = R3(H,S,V);

            if(!(a) )
                dst.ptr<Vec3b>(i)[j] = cblack;
        }
    }
    return dst;
}
