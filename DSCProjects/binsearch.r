fun<- function(list,i,j,key)
{
  mid=(i+j)%/%2;
  if(list[mid]==key)
  {
    print(paste("position",mid));
    return(TRUE);
  }
  else if(list[mid]>key)
  {
    return(fun(list,i,mid-1,key));
  }
  else
  {
    return(fun(list,mid+1,j,key));
  }
}

num=as.integer(readline("Enter Size"));
value=c();
print("Enter values ");
for(i in 1:num)
  value[i]=as.integer(readline());
value=sort(value);
print(value);
key=as.integer(readline("Enter Key"));
print(paste("Result ", fun(value,1,length(value),key)));