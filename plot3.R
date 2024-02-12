data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
subsetted <- subset(data,  Date >= "2007-02-01" & Date <= "2007-02-02")
time <- paste(as.Date(subsetted$Date),subsetted$Time)
subsetted$Datetime <- as.POSIXct(time)

    plot(subsetted$Datetime, subsetted$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
    lines(subsetted$Datetime, subsetted$Sub_metering_2,col='Red')
    lines(subsetted$Datetime, subsetted$Sub_metering_3,col='Blue')
legend("topright", col=c("black", "red", "blue"),lty =1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), )

