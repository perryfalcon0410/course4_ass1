setwd("D:/HCMUT Perry/datasciencecoursera/course4_ass1/exdata_data_household_power_consumption")
data_full<-read.csv('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?',nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data<-subset(data_full,Date %in% c("1/2/2007","2/2/2007"))
data$Date<-as.Date(data$Date,format='%d/%m/%y')

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

head(data)

with(data, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()


