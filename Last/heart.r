heart <- read.csv("./heart.csv", header=T, row.names=1)
heart1 <- heart[,2]
hist(heart1)