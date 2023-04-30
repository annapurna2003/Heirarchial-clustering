install.packages("dplyr")
remove.packages("rlang")
install.packages("rlang")
library(rlang)
library(dplyr)
head(mtcars)
distance_mat <- dist(mtcars,method=IeuclideanI)
distance_mat
set.seed(240)
Hierar_c1 <- hclust(distance_mat,method="average")
Hierar_c1 
plot(Hierar_c1)
abline(h=110,col="green")
fit <- cutree(Hierar_c1,k=3)
fit 
table(fit)
rect.hclust(Hierar_c1,k=3,border="green")

