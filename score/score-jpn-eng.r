score <- read.csv("./score.csv", header=T, row.names=1)
score

bunkei <- score[,1:2]
bunkei

bunkei.pc <- prcomp(bunkei, scala=T)
summary(bunkei.pc)

bunkei.pc2 <- princomp(bunkei, cor=T)
summary(bunkei.pc2)

bunkei.pc2$loadings

biplot(bunkei.pc2)