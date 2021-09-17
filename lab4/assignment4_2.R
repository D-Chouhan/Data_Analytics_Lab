# Question 2

library(MASS)
colors <- c("red", "blue")
plot(density(Animals$body))
logbody <- log(Animals$body)
plot(density(logbody))
average <- mean(logbody)
standard_deviation <- sd(logbody)
xval <- pretty(c(av - 3 * sdev, av + 3 * sdev), 50)
lines(xval, dnorm(xval, mean = av, sd = sdev), col=colors)
