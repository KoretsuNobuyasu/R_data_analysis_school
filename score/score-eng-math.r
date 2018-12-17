score <- read.csv("./score.csv", header=T, row.names=1)
score

em <- score[,-c(1,4)]
em

result <- prcomp(em, scale=T)
result

result$sdev
result$rotation
result$center
result$scale
result$x

sweep(result$rotation, MARGIN=2, result$sdev, FUN="*")

biplot(result, scale=0)