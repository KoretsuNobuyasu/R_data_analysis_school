#CSVデータの読み込み
heart <- read.csv("./id_value.csv")
heart1 <- heart[,1]
heart

#ヒストグラムで表示
#hist(heart1)

#散布図を表示
#plot(heart, lwd=0.5, xlab="x(sec)", ylab="y(beat)") 
#相関係数を求める
cor(heart)

#単回帰分析を行う
y <- heart$sec
x <- heart$value
heart.lm <- lm(y~x, data=heart)
summary(heart.lm)
#回帰式の係数
round(coefficients(heart.lm),2)

#回帰直線を表示
#散布図を表示
plot(heart, lwd=0.5, xlab="x(sec)", ylab="y(beat)") 
abline(heart.lm, lwd=2, col=2)
