num1 = as.integer(readline(prompt = "Enter 1st number: "))
num2 = as.integer(readline(prompt = "Enter 2nd number: "))
num3 = as.integer(readline(prompt = "Enter 3rd number: "))

{
  if (num1 > num2) 
  {
    if (num1 > num3)
      print(paste("Highest number is :", num1))
    else
      print(paste("Highest number is :", num3))
  } 
  else  
  {
    if (num2 > num3)
      print(paste("Highest number is :", num2))
    else
    {
      print(paste("Highest number is :", num3))
    }
  }
}
