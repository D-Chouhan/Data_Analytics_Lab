num = as.integer(readline(prompt = "Enter a number: "))
{
if(num>0){
  sum = 0
  for(i in 1:num)
  {
    sum = sum + i
  }
  print(paste("Summation is:", sum))
}
else{
    print("Enter a Natural Number")
  }
}
