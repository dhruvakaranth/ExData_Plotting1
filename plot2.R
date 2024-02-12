data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
subsetted <- subset(data,  Date >= "2007-02-01" & Date <= "2007-02-02")
time <- paste(as.Date(subsetted$Date),subsetted$Time)
subsetted$Datetime <- weekdays(as.POSIXct(time))


plot(subsetted$Datetime,subsetted$Global_active_power, type="l", ylab="Global Active Power(kilowatts)", xlab="")


