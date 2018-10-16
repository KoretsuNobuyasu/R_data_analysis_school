cars.lm <- lm(dist ~ speed, data=cars)
plot(cars, lwd=2, xlab="x(g)",ylab="y(%)")
abline(cars.lm, lwd=2, col=2)
round(cars.lm$coefficients,2)