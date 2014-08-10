## Plot 3
plot3<- funtion(){
  plot(data.dates.2$timestamp,data.SubMetering1, type="l", xlab="", ylab="Energy sub metering")
  lines(data.dates.2$timestamp,data.SubMetering2,col="red")
  lines(data.dates.2$timestamp,data.SubMetering3,col="blue")
  dev.copy(png, file="Plot3.png", width=480, height=480)
  dev.off()
}