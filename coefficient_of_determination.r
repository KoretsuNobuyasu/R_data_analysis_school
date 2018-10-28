print('決定係数を求める')
cars.lm <- lm(dist ~ speed, data=cars)
summary(cars.lm)

x <- cars$speed
y <- cars$dist

print('計算式との比較(決定変数)')
tss <- sum((y-mean(y))^2)
ssr <- sum(res^2)
1 - (ssr/tss)


print('計算式との比較(調整済み決定変数)')
1 - ((ssr/(length(x)-2))/(tss/(length(x)-1)))


print('決定係数と相関係数')
corxy <- cor(x,y)
corxy^2