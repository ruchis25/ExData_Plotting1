Plot2
#select data for required dates
data<-read.csv.sql("power.txt", sep = ';', header = TRUE,sql="select * from file where Date in ('1/2/2007', '2/2/2007')")
#combine date and time
date_time <- strptime(paste(data$Date,data$Time,sep=" "),"%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(date_time,data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

