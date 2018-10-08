house <- read.csv("./house.csv", header=T, row.names=1)
house1 <- house[,3]
hist(house1)
