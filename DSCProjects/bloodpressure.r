#Following gives the frequency distribution of systolic blood pressure.
#Compute all measures of dispersion.
#95.5       5
#105.5      8
#115.5      22
#125.5      27
#135.5      17
#145.5      9
#155.5      5
#165.5      5
#175.5      2
#Mean
#Range
#Variance
#Standard deviation
#Difference of each value with mean
#boxplot
#quantile
#summary
dispersion<-function()
{
  bp=c(rep(95.5,5),rep(105.5,8),rep(115.5,22),rep(125.5,27),rep(135.5,17),rep(145.5,9),rep(155.5,5),rep(165.5,5),rep(175.5,2))
  print(mean(bp))
  print(range(bp))
  print(var(bp))
  print(sd(bp))
  print(unique(bp))
  print(unique(mean(bp)-bp))
  print(quantile(bp))
  print(summary(bp))
  out=boxplot(bp)$out
  print(out)
  a=which(bp%in%out)
  print(a)
  print(mode(bp))
}
dispersion()
mode<-function(vec)
{
  t=table(vec)
  n=names(which(t==max(t)))
  return(n)
}