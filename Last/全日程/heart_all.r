#CSVデータの読み込み
heart20181201 <- read.csv("./データ/heart-20181201.csv", header=T, row.names=1)
heart20181208 <- read.csv("./データ/heart-20181208.csv", header=T, row.names=1)
heart20181215 <- read.csv("./データ/heart-20181215.csv", header=T, row.names=1)
heart20181222 <- read.csv("./データ/heart-20181222.csv", header=T, row.names=1)
heart20181229 <- read.csv("./データ/heart-20181229.csv", header=T, row.names=1)
heart20190105 <- read.csv("./データ/heart-20190105.csv", header=T, row.names=1)
heart20190112 <- read.csv("./データ/heart-20190112.csv", header=T, row.names=1)
heart20190119 <- read.csv("./データ/heart-20190119.csv", header=T, row.names=1)
all_data <- read.csv("./データ/All_data.csv", header=T,row.names=1)

heart1 <- heart20181201[,2]
heart2 <- heart20181208[,2]
heart3 <- heart20181215[,2]
heart4 <- heart20181222[,2]
heart5 <- heart20181229[,2]
heart6 <- heart20190105[,2]
heart7 <- heart20190112[,2]
heart8 <- heart20190119[,2]


#ディレクトリとbiplotの画像の削除
if(file.exists("./得られるデータ/hist")){
	file.remove("./得られるデータ/hist/hist1.png")
	file.remove("./得られるデータ/hist/hist2.png")
	file.remove("./得られるデータ/hist/hist3.png")
	file.remove("./得られるデータ/hist/hist4.png")
	file.remove("./得られるデータ/hist/hist5.png")
	file.remove("./得られるデータ/hist/hist6.png")
	file.remove("./得られるデータ/hist/hist7.png")
	file.remove("./得られるデータ/hist/hist8.png")
	file.remove("./得られるデータ/hist")
}
if(file.exists("./得られるデータ/plot")){
    file.remove("./得られるデータ/plot/plot1.png")
    file.remove("./得られるデータ/plot/plot2.png")
    file.remove("./得られるデータ/plot/plot3.png")
    file.remove("./得られるデータ/plot/plot4.png")
    file.remove("./得られるデータ/plot/plot5.png")
    file.remove("./得られるデータ/plot/plot6.png")
    file.remove("./得られるデータ/plot/plot7.png")
    file.remove("./得られるデータ/plot/plot8.png")
    file.remove("./得られるデータ/plot")
}
if(file.exists("./得られるデータ/biplot.png")){
	file.remove("./得られるデータ/biplot.png")
}

#ディレクトリの作成
dir.create("./得られるデータ/hist")
dir.create("./得られるデータ/plot")


#ヒストグラムで表示
png("./得られるデータ/hist/hist1.png",width=500, height=500)
hist(heart1)
dev.off()
png("./得られるデータ/hist/hist2.png",width=500, height=500)
hist(heart2)
dev.off()
png("./得られるデータ/hist/hist3.png",width=500, height=500)
hist(heart3)
dev.off()
png("./得られるデータ/hist/hist4.png",width=500, height=500)
hist(heart4)
dev.off()
png("./得られるデータ/hist/hist5.png",width=500, height=500)
hist(heart5)
dev.off()
png("./得られるデータ/hist/hist6.png",width=500, height=500)
hist(heart6)
dev.off()
png("./得られるデータ/hist/hist7.png",width=500, height=500)
hist(heart7)
dev.off()
png("./得られるデータ/hist/hist8.png",width=500, height=500)
hist(heart8)
dev.off()




#散布図を表示
png("./得られるデータ/plot/plot1.png",width=500, height=500)
plot(heart1, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot2.png",width=500, height=500)
plot(heart2, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot3.png",width=500, height=500)
plot(heart3, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot4.png",width=500, height=500)
plot(heart4, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot5.png",width=500, height=500)
plot(heart5, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot6.png",width=500, height=500)
plot(heart6, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot7.png",width=500, height=500)
plot(heart7, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()

png("./得られるデータ/plot/plot8.png",width=500, height=500)
plot(heart8, lwd=1, xlab="x(sec)", ylab="y(beat)", bg="blue", cex=0.05, col=2) 
dev.off()




all_data1 <- all_data[,1]
all_data2 <- all_data[,2]
all_data3 <- all_data[,3]
all_data4 <- all_data[,4]
all_data5 <- all_data[,5]
all_data6 <- all_data[,6]
all_data7 <- all_data[,7]
all_data8 <- all_data[,8]

cor.test(all_data1, all_data2)
cor.test(all_data1, all_data3)
cor.test(all_data1, all_data4)
cor.test(all_data1, all_data5)
cor.test(all_data1, all_data6)
cor.test(all_data1, all_data7)
cor.test(all_data1, all_data8)

cor.test(all_data2, all_data3)
cor.test(all_data2, all_data4)
cor.test(all_data2, all_data5)
cor.test(all_data2, all_data6)
cor.test(all_data2, all_data7)
cor.test(all_data2, all_data8)

cor.test(all_data3, all_data4)
cor.test(all_data3, all_data5)
cor.test(all_data3, all_data6)
cor.test(all_data3, all_data7)
cor.test(all_data3, all_data8)

cor.test(all_data4, all_data5)
cor.test(all_data4, all_data6)
cor.test(all_data4, all_data7)
cor.test(all_data4, all_data8)

cor.test(all_data5, all_data6)
cor.test(all_data5, all_data7)
cor.test(all_data5, all_data8)

cor.test(all_data6, all_data7)
cor.test(all_data6, all_data8)

cor.test(all_data7, all_data8)

all_data <- na.omit(all_data)
pca = prcomp(all_data, scale=T)
pca


png("./得られるデータ/biplot.png",width=500, height=500)
biplot(pca)
dev.off()
