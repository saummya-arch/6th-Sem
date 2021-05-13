#print sum of 1 to 10 no
sum = 0
i = 0
for(i in 1:10)
  sum= sum +i
  print(sum)
  
  
  
  
  
  
  
  #print founding a no in vector
  y= c(2,6,9,4,78,12,45,76,23)
  num =23
  for(i in y)
  {
    if(i == num)
    {print("Element Found")}
    else
    {print("Element not found")}
    
  }
  
  
  
  
  
  
  
  #sum of numbers taking from user
  n<- as.integer(readline("Enter no till whenever you wan to add : "))
  num = 0
  for(i in 1:n)
  {
    num = num + i
  }
  print(num)
  
  
  
  
  
  