## Question 2(a)
df <- read.csv("E:/IIITG (3rd_Sem)/Data Analytics (Lab)/Assignment 2/Iris.csv")
View(df)


## Question 2(b)
# mean of all metrics 
colMeans(df[sapply(df, is.numeric)])


## Question 2(c)
# sum of all the metrices accross species
colSums(iris[sapply(iris, is.numeric)])
# OR
Summ <- sapply(df[,2:5], sum)
Summ
# sum in group by species
agg_sum = aggregate(df[,2:5], by=list(iris$Species), FUN=sum)
agg_sum


## Question 2(d)
# counting of all the metrics accross all species
count_matrics <- sapply(df[,2:5], NROW)
count_matrics
# count of all the metrics group by species
countedValues <- aggregate(x= df[,2:5], by= list(df$Species), function(x) length(x))
countedValues


## Question 2(e)
# maximum of all the species
Max <- sapply(df[,2:5], max)
Max
# maximum in group by species
list(df$Species)
maxValues <- aggregate(x= df[,2:5], by= list(df$Species), FUN = max)
maxValues
