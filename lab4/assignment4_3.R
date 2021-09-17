#3
y <- rnorm(100)
plot(density(y), type = "l", col="blue", pch=12, ecx= 3)
av <- numeric(100)
for (i in 1:100) 
{
  av[i] <- mean(rnorm(4)) 
  
} 
lines(density(av), col = "red")
for (i in 1:100) 
{
  av[i] <- mean(rnorm(9)) 
} 
lines(density(av), col = "brown")
for (i in 1:100) 
{
  av[i] <- mean(rnorm(25)) 
} 
lines(density(av), col = "green")
