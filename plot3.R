data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
sub1 <- data1$Sub_metering_1
sub2 <- data1$Sub_metering_2
sub3 <- data1$Sub_metering_3
png(file="plot3.png")
plot(datetimes, sub1, type="n", xlab = "", ylab = "Energy sub metering")
points(datetimes, sub1, type = "l", col = "black")
points(datetimes, sub2, type = "l", col = "red")
points(datetimes, sub3, type = "l", col = "blue")
leg.name <-c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", leg.name, lty=1, col=c("black", "red", "blue"))
dev.off()