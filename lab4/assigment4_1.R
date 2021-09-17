# Question 1
# Perform the following task

# Question 1(a) : In R a simple bar graph can be used to model 
#                 the probability distribution function.
#                 Take a random vector and probability
#                 associated with it and plot it with a bar graph.


 
random_vector <- c(runif(20, 0 , 100)) # Generating a random vector values
summary(random_vector)  # getting the summary about the vector
unique_vector <- unique(random_vector)
probabilities <- pnorm(random_vector, mean = 50.453, sd = 5)
barplot(probabilities,
        main = " Random vector Vs Probabilites",
        xlab = "random vector",
        ylab="probabilities",
        names.arg = unique_vector, col = "brown")


# Question 1(b) : For the above problem create a cumulative 
#                 frequency table and plot the cumulative
#                 frequency against each sample point mentioned in the vector.

# generating frequency table
data <- table(random_vector)
# generating frequency table
data
# finding the cumulative frequency of the data
cumulative_frequency <- cumsum(data)
cumulative_frequency
# creating a dataframe
cf_dataframe <- data.frame(data, cumulative_frequency)
cf_dataframe
plot(random_vector, cumulative_frequency, pch = 19, cex = 2, col ="red")


# Question 1(c) : Using some simple commands in R generate the 
#                 probability values for the binomial
#                 distribution for the number of children in 10 with
#                 blue eyes using p =0.16. 
#                 Plot the  obtained result.

x <- c(0:10)
probabilities <- dbinom(x, size = 10, prob = 0.16)
probabilities
plot(x, probabilities, main="Probabilites values for binomial distribution", 
     xlab = "childrens", ylab="probabilities", type = "l", col="red", cex= 5)

# Question 1(d) : Run the above example with probabilities
#                 that a child has blue eyes is 0.05, 0.2, 0.5,
#                 and 0.8 and see how this changes the distribution.

probab_1 <- dbinom(x, size = 10, prob = 0.05)
probab_2 <- dbinom(x, size = 10, prob = 0.2)
probab_3 <- dbinom(x, size = 10, prob = 0.5)
probab_4 <- dbinom(x, size = 10, prob = 0.8)

plot(x, probab_1, main="Probabilites values for binomial distribution", 
     xlab = "childrens", ylab="probabilities", type = "o", col="red", pch = 3)

# plotting second curve
points(x, probab_2, col="blue", pch=8)
lines(x, probab_2, col="blue")

# plotting 3rd curve
points(x, probab_3, col="green", pch=15)
lines(x, probab_3, col="green")

# plotting the 4rth curve
points(x, probab_4, col="brown", pch=23)
lines(x, probab_4, col="brown")

#legands
legend(7,0.6,legend =  c("p0.05","p0.2","p0.5","p0.8"),col= c("red","blue","green","brown"),pch=c(3,8,15,23))



# Question 1(e) : Consider you have a vector 0:10. 
#                 Compute poisson distribution with p=0.2. Plot it
#                 to visualize the distribution.

z <- c(0:10)
possion_distribution <- dpois(z,10,0.2)
plot(z, possion_distribution, main="Possion distribution", 
      type = "o", col="red", cex= 2, pch=15)
