iris <- read.csv("E:/IIITG (3rd_Sem)/Data Analytics (Lab)/Assignment 2/Iris.csv")
View(iris)

#Q1(a): Craete bar plots to show the comparison between cumulative totals across "petal length
barplot(iris$PetalLengthCm)


#Q1(b)
install.packages("RColorBrewer")
library(RColorBrewer)
barplot(table(iris$Species,iris$PetalLengthCm), col= brewer.pal(3,"Set1"), xlab = "Petal_Length")


#Q1(c)
boxplot(iris$SepalLengthCm ~iris$Species,col=topo.colors(3), las=2, xlab = "", ylab = "Sepal_len")


#Q1(d)
qplot(x=iris$PetalLengthCm, y=iris$Species, xlab = "Petal_len", ylab = "Species")

