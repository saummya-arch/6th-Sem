print(getwd())
setwd("C:/Users/this pc/Downloads")
gplay <- read.csv("googleplay.csv")
print("DATASET")
print(gplay)


obs <- nrow(gplay)
var <- ncol(gplay)
print("no of observations")
print(obs)


print("no of variables")
print(var)


attach(gplay)


print("Type of DATASET")
print(class(gplay))
print(mode(gplay))
print(typeof(gplay))


print("Summary of DATASET")
print(summary(gplay))


print("Displaying all category given in the data set")
unique(gplay["Category"])


print("Displaying all type of content rating given in the data set")
unique(gplay["Content.Rating"])


print("No. of apps of Category GAME which are free & paid")
print(nrow(gplay[(Category=="GAME") & (Type=="Free"),]))
print(nrow(gplay[(Category=="GAME") & (Type=="Paid"),]))


print("No. of apps of Category BOOKS_AND_REFERENCE which are free & paid")
print(nrow(gplay[(Category=="BOOKS_AND_REFERENCE") & (Type=="Free"),]))
print(nrow(gplay[(Category=="BOOKS_AND_REFERENCE") & (Type=="Paid"),]))


print("No. of apps of Category EDUCATION which are free & paid")
print(nrow(gplay[(Category=="EDUCATION") & (Type=="Free"),]))
print(nrow(gplay[(Category=="EDUCATION") & (Type=="Paid"),]))


print("Apps for teen")
print(gplay[(Content.Rating=="Teen"),])


print("Apps for Mature 17+")
print(gplay[(Content.Rating=="Mature 17+"),])


print("Finding max value of reviews grouping by Category")
tapply(gplay$Reviews, gplay$Category, max)


print("Finding max value of Installs grouping by Category")
tapply(gplay$Installs, gplay$Category, max)


print("Finding money of paid apps")
print(gplay[(Price!="0"),])


print("Finding Android version that varies with device")
print(gplay[(Android.Ver=="Varies with device"),])


print("Range of Reviews to get the range of reviews")
print(range(Reviews))


print("Variance of Reviews to get variance of reviews")
print(var(Reviews))


print("Standard Deviation of Reviews to get variance of reviews")
print(sd(Reviews))


print("Quantile of Reviews to get variance of reviews")
print(quantile(Reviews))


print("boxplot of Reviews")
out = boxplot(Reviews)$out
print(out)



print("VISUALIZATION")
library(lattice)
library(ggplot2)
attach(gplay)
print("Average Install of Google play apps by Category")
x <- aggregate(Installs~(Category),gplay,mean)
print(x)
barplot(x$Installs, width = 1,names.arg = x$Category,
        horiz = FALSE, xlab = "Category", ylab = "Installs", axes = TRUE,
        col = c("green","blue"), ylim = c(0,85))
ggplot(gplay,aes(Category,Reviews))



print("histogram of Reviews,Categories,Rating and Installs")
hist(Reviews)
barchart(Category)
hist(Rating)
hist(Installs)



print("barplot of Rating and Review ")
A1<-aggregate(Rating~Reviews,gplay,mean)
barplot(A1$Rating,names.arg =A1$Reviews)



print("barplot of Rating and Installs ")
A1<-aggregate(Rating~Installs,gplay,mean)
barplot(A1$Rating,names.arg =A1$Installs)



print("Category vs Installs")
barchart(Category~Installs, main = "Category vs Installs",ylab = "Category", xlab = "Installs",box.ratio = 3)


print("Content Rating vs Installs")
ggplot(gplay,aes(x=Content.Rating,y=Installs))+geom_bar(stat='identity')+ggtitle("Age Group vs Installs")+coord_flip()




#CONCLUSION

print("Category vs Reviews")
ggplot(gplay,aes(x=Category,y=Reviews))+geom_bar(stat='identity')+ggtitle("Category vs Review")+coord_flip()
