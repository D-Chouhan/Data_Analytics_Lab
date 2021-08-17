maximum<-function(a,b,c)
{
  max=a
  if(b>max)
    max=b
  if(c>max)
    max=c
  return(print(paste("Maximun Number is:", max)))
}

{
x = as.integer(readline(prompt = "Enter 1st number: "))
y = as.integer(readline(prompt = "Enter 2nd number: "))
z = as.integer(readline(prompt = "Enter 3rd number: "))
maximum(x,y,z)
}
