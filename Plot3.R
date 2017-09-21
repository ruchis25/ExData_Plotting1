#select data for required dates
data<-read.csv.sql("power.txt", sep = ';', header = TRUE,sql="select * from file where Date in ('1/2/2007', '2/2/2007')")
#combine date and time
date_time <- strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")


png("plot3.png", width=480, height=480)
plot(date_time,data$Sub_metering_1,type="l",xlab="",ylab="Energy Sub Metering")
points(date_time,data$Sub_metering_2,type="l",col="red")
points(date_time,data$Sub_metering_3,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

