fun<- function(string,i,j)
{
  if(i==j)
    return(TRUE);
  if(substring(string,i,i)==substring(string,j,j))
  {
    return (fun(string,i+1,j-1));
  }
  else
  {
    return(FALSE);
  }
}
string = readline("Entet a string for palindrome");
print(paste("Result ",fun(string,1,nchar(string))));