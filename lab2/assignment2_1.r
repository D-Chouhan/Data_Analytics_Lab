## Question 1(a) 
# load/read dataset
dataframe <- read.csv("E:/IIITG (3rd_Sem)/Data Analytics (Lab)/Assignment 2/Dataset.csv")
View(dataframe)


##  Question 1 (b)
# missing values
is.na(dataframe)
sum(is.na(dataframe))

# replace na with mean
data1 <- dataframe
data1$Age [ is.na(data1$Age)] <- mean(data1$Age, na.rm =  TRUE) 
data1$Salary[is.na(data1$Salary)] <- mean(data1$Salary, na.rm = TRUE)
View(data1)


## Question 1(c)
# encoding the categorical data
data1$Country = factor(data1$Country,
                       levels = c('France','Spain','Germany'),
                       labels = c(1,2,3))

# encoding with Yes = 0 and No = 1 
data1$Purchased = factor(data1$Purchased, levels = c('Yes', 'No'), labels = c(0,1))
data1


## Question 1(d)
# scaling using standard deviation
data2 <- data1
data2$Country <- as.numeric(as.factor(data2$Country))
data2$Purchased <- as.numeric(as.factor(data2$Purchased))

data2 <- scale(data2, center = TRUE, scale = TRUE)
View(data2)
