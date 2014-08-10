## Plot 1
plot1<-function(){
  hist(list.GlobalActivePower, main = paste("Global Active Power"), col="red",xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}