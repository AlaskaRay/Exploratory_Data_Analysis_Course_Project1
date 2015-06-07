### Exploratory Data Analysis Course Project 1, plot 4
## This script assumes that the data file is in the working directory
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)

# Subset on dates in the range 2007-02-01 and 2007-02-02
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

timeOfDay <- strptime(paste(subData$Date, subData$Time), "%d/%m/%Y %H:%M:%S")

# Plot 4
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))
plot(timeOfDay, subData$Global_active_power, type="l", ylab="Global Active Power", xlab="")
plot(timeOfDay, subData$Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(timeOfDay, subData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(timeOfDay, subData$Sub_metering_2, type="l", col="red")
lines(timeOfDay, subData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1,1))
plot(timeOfDay, subData$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()


