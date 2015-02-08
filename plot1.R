data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data<- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()