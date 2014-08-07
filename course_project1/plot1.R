## Course Project 1

## André Monteiro

## plot1

source("subset.R") ## source the script to subset the data

## open PNG device; create plot1.png in my working directory
png(filename = 'plot1.png', width = 480, height = 480, units = 'px')

## create histogram and send it to the file "plot1.png"
hist(as.numeric(interesting_data$Global_active_power), col = "red",
    main = "Global Active Power", xlab = "Global Active Power (kilowatts)", 
    xlim = c(0,6), ylim = c(0,1200))

dev.off() ## close the PNG file
