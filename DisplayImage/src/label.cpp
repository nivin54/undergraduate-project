/*
 * label.cpp
 *
 *  Created on: 23-Mar-2014
 *      Author: mac
 */
#include <bits/stdc++.h>
#include "skincolor.h"
#include "label.h"


	void mapskeleton:: face_map(Point array[3],Point dime[3],int sz,Mat skin1,Point L[][2])
	{
		int s=100000,index;righthand=lefthand=false;
		for(int i=0;i<sz;i++)
		{
			if(abs(array[i].x-face.x)+abs(array[i].y-face.y)<s)
			{ index=i;s=abs(array[i].x-face.x)+abs(array[i].y-face.y);}
		}
		swap(array[1],array[index]);
		swap(L[1],L[index]);
		faceb=array[1];

		if(sz>2 and array[0].x>array[2].x)
				{swap(array[0],array[2]);swap(L[0],L[2]);}
		if(sz>2)
		{right=array[0];left=array[2];righthand=true;lefthand=true;}
		else if(sz>1)
		{
			if(array[1].x<array[0].x)
					{right=array[0];righthand=true;}
			else
			{
				left=array[0];lefthand=true;
			}
		}
		//putText(skin1, "Head", faceb,FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(200,200,250), 1, CV_AA);
		if(righthand);
		//putText(skin1, "Righthand",right ,FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(200,200,250), 1, CV_AA);
		if(lefthand);
		//putText(skin1, "Lefthand",left ,FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(200,200,250), 1, CV_AA);
	}
	double angle(Point t1,Point t3,Point t2)
{

	double a=sqrt(pow(t1.x-t2.x,2)+pow(t1.y-t2.y,2));
	double b=sqrt(pow(t1.x-t3.x,2)+pow(t1.y-t3.y,2));
	double c=sqrt(pow(t3.x-t2.x,2)+pow(t3.y-t2.y,2));

	double B=acos((a*a+c*c-b*b)/(2*a*c));
	return B*180/3.141;
}
	Mat CannyThreshold(int, void*,Mat src,Mat src_gray)
		{
			int edgeThresh = 1;
			int lowThreshold=25;
			int const max_lowThreshold = 100;
			int ratio = 3;
			int kernel_size = 3;
			char* window_name = "Edge Map";
			Mat dst, detected_edges;
			GaussianBlur( src_gray,src_gray, Size(9, 9), 2, 2 );
			blur( src_gray, detected_edges, Size(3,3) );
			Canny( detected_edges, detected_edges, lowThreshold, lowThreshold*ratio, kernel_size );
		    dst = Scalar::all(0);
		    src.copyTo( dst, detected_edges);
		    Mat gray=src,img;
		    imshow( window_name, dst );
		    return dst;
		 }
