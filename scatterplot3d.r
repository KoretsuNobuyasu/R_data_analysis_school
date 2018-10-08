install.packages("scatterplot3d")
library("scatterplot3d")

house<-read.csv("./house.csv")
par(family="HiraKakuProN-W3")
scatterplot3d(house)