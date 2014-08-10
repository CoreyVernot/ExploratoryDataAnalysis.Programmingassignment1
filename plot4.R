plot4<- function(){
  plot(data.dates.2$timestamp,data.dates.2$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  plot(data.dates.2$timestamp,data.dates.2$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  plot(data.dates.2$timestamp,data.SubMetering1, type="l", xlab="", ylab="Energy sub metering")
  lines(data.dates.2$timestamp,data.SubMetering2,col="red")
  lines(data.dates.2$timestamp,data.SubMetering3,col="blue")
  
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
}