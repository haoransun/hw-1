rm(list=ls())
#reading data into R:
cons<- read.table("household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

sub<- subset(cons, (cons$Date == "1/2/2007" | cons$Date== "2/2/2007")) 

sub$Date <- as.Date(sub$Date, format = "%d/%m/%Y")

# Creating the plot:
png("plot1.png", width = 480, height = 480)
hist(sub$Global_active_power, type="l", main="Global Active Power",col='red',ylab= "Frequency", xlab="Global Active Power(kilowatts)")
dev.off()