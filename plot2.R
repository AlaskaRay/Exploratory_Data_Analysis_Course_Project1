### Exploratory Data Analysis Course Project 1, plot 2
## This script assumes that the data file is in the working directory
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)

# Subset on dates in the range 2007-02-01 and 2007-02-02
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


# Plot global active power for the days in the subsetted data
timeOfDay <- strptime(paste(subData$Date, subData$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(timeOfDay, subData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
