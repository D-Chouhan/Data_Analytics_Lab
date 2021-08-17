Mul_table <- function(n)
{
  for(i in 1:10)
    print(paste(n,"*",i,"=", i*n))
}

for(j in 1:10){
  Mul_table(j)
  cat("\n")
}
