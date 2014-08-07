## Course Project 1

## André Monteiro

## plot3

source("subset.R") ## source the script to subset the data

## open PNG device; create plot3.png in my working directory
png(filename = 'plot3.png', width = 480, height = 480, units = 'px')

## concatenates Date and Time
DT <- paste(interesting_data$Date, interesting_data$Time)
## convert characters to object of classes "POSIXlt" and "POSIXct" representing 
## calendar dates and times.
x <- strptime(DT, "%d/%m/%Y %H:%M:%S")


## sets up the plot and initializes the graphics device
plot(x, as.numeric(interesting_data$Sub_metering_1), xlab = "", 
     ylab = "Energy sub metering", type = "n")
## adds the points of the 3 parameters
points(x,as.numeric(interesting_data$Sub_metering_1), col = "black", type = "l")
points(x,as.numeric(interesting_data$Sub_metering_2), col = "red", type = "l")
points(x,as.numeric(interesting_data$Sub_metering_3), col = "blue", type = "l")
## puts the legend on the topright of the plot
legend("topright", lty = c(1,1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off() ## close the PNG file
