
# install.packages("ClusterR")
# install.packages("cluster")
library(ClusterR)
library(cluster)
airQ<-read.csv("E:\\IIITG (3rd_Sem)\\Data Analytics (Lab)\\Rough\\airquality.csv")
airQ
plot(airQ$Ozone, airQ$Wind)

#1.b

# install.packages('amap')
library(amap)
set.seed(240) # Setting seed
AQ<-na.omit(airQ)#omitting NA rows
AQ

#1.a.i
KM_E_1<- Kmeans(AQ, centers = 3,iter.max = 30, nstart = 20, method="euclidean")
KM_E_1
KM_E_1$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_E_1$cluster, 
     main = "K-means with 30 iterations")


KM_E_2<- Kmeans(AQ, centers = 3,iter.max = 40, nstart = 20, method="euclidean")
KM_E_2
KM_E_2$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_E_2$cluster, 
     main = "K-means with 40 iterations")


KM_E_3<- Kmeans(AQ, centers = 3,iter.max = 50, nstart = 20, method="euclidean")
KM_E_3
KM_E_3$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_E_3$cluster, 
     main = "K-means with 50 iterations")

#1.a.ii
KM_E_1$centers
KM_E_1$centers[, c("Solar.R", "Wind")]
points(KM_E_1$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

KM_E_2$centers
KM_E_2$centers[, c("Solar.R", "Wind")]
points(KM_E_2$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

KM_E_3$centers
KM_E_3$centers[, c("Solar.R", "Wind")]
points(KM_E_3$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

#1.b.iii
KM_3<- Kmeans(AQ, centers = 3,iter.max = 30, nstart = 20, method="euclidean")
KM_3
KM_3$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_3$cluster, 
     main = "K-means with 3 clusters")


KM_4<- Kmeans(AQ, centers = 4,iter.max = 30, nstart = 20, method="euclidean")
KM_4
KM_4$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_4$cluster, 
     main = "K-means with 4 clusters")


KM_5<- Kmeans(AQ, centers = 5,iter.max = 30, nstart = 20, method="euclidean")
KM_5
KM_5$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_5$cluster, 
     main = "K-means with 5 clusters")
