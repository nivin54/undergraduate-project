/*
 *
 *  Created on: 23-Mar-2014
 *      Author: mac
 */

#ifndef LABEL_H_
#define LABEL_H_
class mapskeleton
{
	public:
	Point face,left,right,facel,faceb,rightl,rightb,leftl,leftb,facetl,facebr;
	bool facefixed,faceright,faceleft,facerightleft,lefthand,righthand;
	mapskeleton()
	{faceright=faceleft=facerightleft=lefthand=righthand=facefixed=false;}
	void face_map(Point array[3],Point dime[3],int sz,Mat skin1,Point L[][2]);

};
Mat CannyThreshold(int, void*,Mat src,Mat src_gray);
	double angle(Point t1,Point t3,Point t2);




#endif /* LABEL_H_ */
