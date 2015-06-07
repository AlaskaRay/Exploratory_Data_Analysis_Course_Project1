## Exploratory Data Analysis Course Project 1, plot 1
## This script assumes that the data file is in the working directory
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE)

# Subset on dates in the range 2007-02-01 and 2007-02-02
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Plot histogram of global active power (plot1)
png("plot1.png", width=480, height=480)
hist(as.numeric(subData$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", main="Global Active Power")
dev.off()

