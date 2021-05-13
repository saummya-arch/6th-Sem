linsearch<-function(vc)
{
  flag=FALSE
  num=as.integer(readline("Enter element to be search for : "))
  j=1
  for (i in vc)
  {  
    if(i==num)
    {  
      print(paste("Element found at position ",j))
      flag=TRUE
      return()
    } 
    j=j+1
  }
  if(flag==FALSE)
  {  
    print("Element not found")
  } 
}
n=as.integer(readline("Enter number of size :"))
y=c()
for (i in 1:n)
  y[i]=as.integer(readline(paste("Enter element at position ",i,": ")))
linsearch(y)