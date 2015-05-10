data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
png(file = "plot1.png")
hist(data1$Global_active_power, col = "red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()