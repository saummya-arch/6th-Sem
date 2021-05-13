#You are required to write the appropriate R commands/
#statements to read the file in data frame 'dsalary' and answer the 
#following:

#Find out the number of observations and variables in the given dataset.

#Calculate the average salary of all faculty members, male and female 
#faculty members separately, and rank-wise faculty members 

#Count the number of male Asst. Prof and female Associate professors.

#Display first two columns of second row.

#Display the yearsofservice of 2nd entry in the data set.

#Display YrsSincePhd and Yrsof Service of all the teachers.

#Print the highest salary drawing male Associate Professor with maximum year of
#services

#Display the Rank of the teacher whose salary is more than 150.

#Add a new column 'special-allowance' which is 5% of the salary.

#Increase the salary of male prof by 5% and female prof by 10% and then compare 
#the average salary between these two.

#Create a vector which contains the average salary of each rank.

print(getwd())
setwd("C:/Users/this pc/Documents")
dsalary=read.csv("employee.csv",stringsAsFactors = FALSE)
print("DATASET")
print(dsalary)

print("number of observations")
print(nrow(dsalary))
print("number of variables")
print(ncol(dsalary))

print("The average salary of all faculty members")
print(mean(dsalary$Salary))
#print(mean(dsalary$Salary~dsalary$Gender)) wrong
#print(typeof(dsalary$Gender))
#attach(dsalary)
print("The average salary of all faculty members male and female seperatly")
print(aggregate(Salary~Gender,dsalary,mean))

print("The average salary rank-wise faculty members")
print(aggregate(Salary~Rank,dsalary,mean))

attach(dsalary)

print("No. of male Asst. Prof")
d=which((dsalary$Gender=="M") & (dsalary$Rank=="AsctProf"))
print(length(d))

print("No. of female Asst. Prof")
d=which((dsalary$Gender=="F") & (dsalary$Rank=="AsctProf"))
print(length(d))

print("first two columns of second row")
print(dsalary[2,1:2])

print("the yearsofservice of 2nd entry in the data set")
print(dsalary[2,"YrsOfService"])

print("YrsSincePhd and YrsofService all the teachers")
print(dsalary[,c("YrsSincePhd","YrsOfService")])

print("highest salary drawing male Associate Professor with maximum year of services")
d=which( dsalary$Gender=="M" &  dsalary$Rank=="AsctProf")
print(d)
y=dsalary[d,"Salary"]
x=dsalary[d,"YrsOfService"]
print(x)
print(y)

print("Rank of the teacher whose salary is more than 150")
print(dsalary[Salary>150,"Rank"])

print("new column 'special-allowance' which is 5% of the salary")
allowance=(Salary*5)/100
dsalary=cbind(dsalary,"ALLOWANCE"=(Salary*5)/100)
print(dsalary)

print("Increase the salary of male prof by 5% and female prof by 10%")
m <- dsalary$Salary[which((dsalary$Gender=="M"))]
print(m)
m <- m+(m*5)/100
f <- dsalary$Salary[which((dsalary$Gender=="F"))]
print(f)
f <- f+(f*10)/100

print("Compare the average salary between above two")
mean(f)-mean(m)

print("Vector which contains the average salary of each rank")
avg_sal=c(aggregate(Salary~Rank,dsalary,mean))
print(avg_sal)
