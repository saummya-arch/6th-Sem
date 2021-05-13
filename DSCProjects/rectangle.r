#Write an R script to define a function 'rectangle'. The function rectangle
#should return a list containing functions for calculating area, perimeter,
#setting length and breadth of the rectangle. Create one rectangle object 
#using the function defined above. Display the perimeter and area of the 
#rectangle object before and after modifying the length and the breadth.

rectangle=function(l,b)
{
  b=list(perimeter(l,b),area(l,b))
}

perimeter=function(len,bre)
{
  print(2*(len+bre))
}

area=function(len,bre)
{
  print(len*bre)
}

rectangle(4,8)