#3.
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
#2(a)
v1 <- c(3,8,4,5,0,11)
v1
P<-normalize(v1)
P
#2.(b)
v2 <- c(11,30,88,4,5,1)
v2
Q<-normalize(v2)
Q
#2.(c)
RB<-rbind(P, Q)
RB
#2.(D)
install.packages("philentropy")
library(philentropy)
getDistMethods()
#3.a
distance(RB, method = "manhattan")
#3.b
distance(RB, method = "cosine")
