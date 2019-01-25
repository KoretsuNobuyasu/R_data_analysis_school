#CSVデータの読み込み
heart <- read.csv("./heart.csv", header=T, row.names=1)
heart1 <- heart[,2]

#ヒストグラムで表示
hist(heart1)

#散布図を表示
plot(heart, lwd=3, xlab="x(sec)", ylab="y(beat)", bg="blue") 