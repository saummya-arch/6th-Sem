size<-as.numeric(readline("Enter the size of the vector:"))
x=c()
for(i in 1:size)
{
  value<-as.numeric(readline(paste("Enter the ",i," value:")))
  x[i]=value
}
print(paste("The sum of the vector elements is:",sum(x)))
