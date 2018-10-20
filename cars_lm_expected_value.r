cars.lm <- lm(dist ~ speed, data=cars)
cars.lm

cars.lm <- lm(y~x, data=sample)
print(cars.lm)

b <- cov(sample$x, sample$y) / var(sample$x)
a <- mean(sample$y) - b*mean(sample$x)
a
b