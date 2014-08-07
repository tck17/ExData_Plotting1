## Course Project 1

## André Monteiro

## plot2

source("subset.R") ## source the script to subset the data

## open PNG device; create plot2.png in my working directory
png(filename = 'plot2.png', width = 480, height = 480, units = 'px')

## concatenates Date and Time
DT <- paste(interesting_data$Date, interesting_data$Time)
## convert characters to object of classes "POSIXlt" and "POSIXct" representing 
## calendar dates and times.
x <- strptime(DT, "%d/%m/%Y %H:%M:%S")


## create plot and send it to the file "plot2.png"
plot(x, as.numeric(interesting_data$Global_active_power), xlab = "", 
     ylab = "Global Active Power (kilowatts)", type = "l")

dev.off() ## close the PNG file
