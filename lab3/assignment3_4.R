x <- seq(0,100,by = 1.5)
x<-trunc(x) 
y <- dbinom(x,100,0.3)
dotchart(y, labels = x, cex = 0.5, xlab = "Binomial Distribution")
