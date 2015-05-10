data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
dates <- as.character(data1$Date)
times <- as.character(data1$Time)
dt <- paste(dates, times)
datetimes <- strptime(dt, "%d/%m/%Y %H:%M:%S")
png(file="plot2.png")
plot(datetimes, data1$Global_active_power, type ="l", xlab= "", ylab="Global Active Power (kilowatts)")
dev.off()