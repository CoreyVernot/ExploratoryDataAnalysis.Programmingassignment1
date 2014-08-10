## Read Data
setwd("/Users/Corey/Downloads")
data<- read.table("household_power_consumption.txt", header= T, sep = ";")
list.dates <- as.Date(data$Date, format="%d/%m/%Y")
data.dates <- data[(list.dates=="2007-02-01") | (list.dates=="2007-02-02"),]
list.GlobalActivePower <- as.numeric(as.character(data.dates$Global_active_power))
data.dates.2 <- transform(data.dates, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
data.SubMetering1 <- as.numeric(as.character(data.dates.2$Sub_metering_1))
data.SubMetering2<- as.numeric(as.character(data.dates.2$Sub_metering_2))
data.SubMetering3<- as.numeric(as.character(data.dates.2$Sub_metering_3))