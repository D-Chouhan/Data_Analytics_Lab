paicol <- read.csv("E:/IIITG (3rd_Sem)/Data Analytics (Lab)/lab3-D-Chouhan-main/lab3-D-Chouhan-main/PAICOL.csv")
paicol$DATE=as.Date(paicol$DATE,origin=paicol$DATE[1])
summary(paicol)
View(paicol)
library(ggplot2)

#Q2(a): Create a line plot of the attribute LEVEL

ggplot(data = paicol, aes(DATE,LEVEL))+geom_line()

#Q2(b): Create the scatter plot of "RAIN" against "LEVEL"

ggplot(data = paicol, aes(RAIN,LEVEL)) +geom_point()
#ggplot(data = paicol, aes(RAIN,LEVEL)) +geom_point() + geom_point(aes( max(LEVEL)), colour="red")
#rlang::last_error()

#Q2(c):  Create a plot of the RAIN and LEVEL.

ggplot(paicol,aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+geom_line(data=paicol,aes(DATE,RAIN,color="RAIN"))

#Q2(d): Find and plot circles on the LEVEL plot at the maximum and minimum value


#Q2(e):  Plot the LEVEL for the year “2001.”

paicol$YEAR = as.numeric(format(paicol$DATE, "%Y"))
index_2001=paicol$YEAR==2001
ggplot(paicol[index_2001,],aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))

#min((paicol$LEVEL))
