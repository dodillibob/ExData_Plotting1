data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$as.Date<-strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data<- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]
plot(data$as.Date, data$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png",width = 480, height = 480)
dev.off()