sample<-read.csv("./sample4.csv", header=T, row.names=1)
sample

sample.lm<-lm(y~x, data=sample)
print(sample.lm)

b <- cov(sample$x, sample$y) / var(sample$x)
a <- mean(sample$y) - b*mean(sample$x)
a
b