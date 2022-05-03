setwd("D:/HCMUT Perry/datasciencecoursera/course4_ass1/exdata_data_household_power_consumption")
data_full<-read.csv('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?',nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data<-subset(data_full,Date %in% c("1/2/2007","2/2/2007"))
data$Date<-as.Date(data$Date,format='%d/%m/%y')
head(data)
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")




dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()