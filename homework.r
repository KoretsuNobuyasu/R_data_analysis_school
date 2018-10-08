test<-read.csv("./testdata.csv",header=T, row.names=1)
test1 <- test[,1]
hist(test1)

mean(test1)
var(test1)
