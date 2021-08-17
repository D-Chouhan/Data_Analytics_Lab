summation <- function(n) {
  if(n < 1) 
    return(print("Not a Natural Number"))
  else if(n == 1)
    return(n)
  else 
    return(n + summation(n-1))
}

{
  k <- as.integer(readline(prompt = "Enter a Natural Number: "))
  print(summation(k))
}
