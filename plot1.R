data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
subsetted <- subset(data,Date >= "2007-02-01" & Date <= "2007-02-02")
hist(subsetted$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)", ylab="Frequency")

