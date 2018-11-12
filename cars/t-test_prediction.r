cars
cars.lm <- lm(dist ~ speed, data=cars)
summary(cars.lm)

slope <- cars.lm$coefficients[2]

varres <- sum(cars.lm$residual^2)/cars.lm$df.residual

sumx <- sum((cars$speed - mean(cars$speed))^2)
t0 <- slope/sqrt(varres/sumx)
pval <- 2*pt(t0, cars.lm$df.residual,lower.tail=FALSE)
t0
pval


n <- 50
a <- 0.05

tval <- qt(a/2,n-2,lower.tail=FALSE)
upp <- slope+tval*sqrt(varres/sumx)
low<-slope-tval*sqrt(varres/sumx)
y0 <- cars.lm$coefficients[1]+slope*5.0
upp2 <- y0 + tval * sqrt(((1/10)+((5.0-mean(cars$speed))^2/sumx))*varres)
low2 <- y0 - tval * sqrt(((1/10)+((5.0-mean(cars$speed))^2/sumx))*varres)
upp3 <- y0 + tval * sqrt((1+(1/10)+((5.0-mean(cars$speed))^2/sumx))*varres)
low3 <- y0 - tval * sqrt((1+(1/10)+((5.0-mean(cars$speed))^2/sumx))*varres)


y2 <- cars.lm$coefficients[1]+slope*60.0
y2


