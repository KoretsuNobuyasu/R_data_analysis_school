cars
cars.lm <- lm(dist ~ speed, data=cars)
cars.lm

b<-cov(cars$speed, cars$dist) / var(cars$speed)
a<-mean(cars$dist) - b*mean(cars$speed)
a
b