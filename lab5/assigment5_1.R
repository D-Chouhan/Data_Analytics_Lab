#1.a
mtcars
attach(mtcars)
#1.b
plot(mtcars$wt, mtcars$mpg, main=" MPG vs WEIGHT ", col="Red")
#1.c
cor(mtcars$mpg, mtcars$wt)
