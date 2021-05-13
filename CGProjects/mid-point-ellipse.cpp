#include<iostream>
#include<graphics.h>
#include<conio.h>
using namespace std;
int main()
{
	initwindow(800,800);
	int xc,yc,x,y;
	float p;
	long r1,r2;
	
	cout<<"Enter coordinates of centre"<<endl;
	cin>>xc>>yc;
	putpixel (xc,yc,WHITE);
	cout<<"Enter horizontal and vertical radius of ellipse"<<endl;
	cin>>r1>>r2;
	
	cout<<"Region 1:"<<endl;
	p=r2*r2-r1*r1*r2+r1*r1/4;
	x=0;
	y=r2;
	while(2*r2*r2*x <= 2*r1*r1*y)
	{
		if(p<0)
		{
			x++;
			p = p+2*r2*r2*x+r2*r2;
		}
		else
		{
			x++;
			y--;
			p = p+2*r2*r2*x-2*r1*r1*y-r2*r2;
		}
		putpixel(xc+x,yc+y,RED);
		cout<<"( "<<xc+x<<" , "<<yc+y<<" )  ";
		putpixel(xc+x,yc-y,GREEN);
		cout<<"( "<<xc+x<<" , "<<yc-y<<" )  ";
		putpixel(xc-x,yc+y,BLUE);
		cout<<"( "<<xc-x<<" , "<<yc+y<<" )  ";
		putpixel(xc-x,yc-y,YELLOW);
		cout<<"( "<<xc-x<<" , "<<yc-y<<" )  ";
	}
	cout<<endl;
	cout<<"Region 2:"<<endl;
	p=r2*r2*(x+0.5)*(x+0.5)+r1*r1*(y-1)*(y-1)-r1*r1*r2*r2;
	while(y>0)
	{
		if(p<=0)
		{
			x++;
			y--;
			p = p+2*r2*r2*x-2*r1*r1*y+r1*r1;
		}
		else
		{
			y--;
			p = p-2*r1*r1*y+r1*r1;
		}
		putpixel(xc+x,yc+y,RED);
		cout<<"( "<<xc+x<<" , "<<yc+y<<" )  ";
		putpixel(xc+x,yc-y,GREEN);
		cout<<"( "<<xc+x<<" , "<<yc-y<<" )  ";
		putpixel(xc-x,yc+y,BLUE);
		cout<<"( "<<xc-x<<" , "<<yc+y<<" )  ";
		putpixel(xc-x,yc-y,YELLOW);
		cout<<"( "<<xc-x<<" , "<<yc-y<<" )  ";
	}
	getch();
	closegraph();
	return 0;
}

