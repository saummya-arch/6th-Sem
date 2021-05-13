#print table of a given no  
table<- function(n)
  tab= 1
  for(i in 1:10)
  {
    tab = i * n
    print(paste(n,"*",i,"=",tab))
  }
n<- as.integer(readline("Enter no for the table : "))
table(n)

