## Course Project 1

## André Monteiro

## Subset Data

## if the .txt file doesn't exist it downloads the .zip file
if(!file.exists("household_power_consumption.txt")){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
    ## unzip the .zip file
    unzip("household_power_consumption.zip")
}

##read data
data <- read.table("household_power_consumption.txt", sep = ";", header = T, 
                   colClasses = "character")
## Convert Dates
dates <- as.Date(as.character(data$Date), "%d/%m/%Y")

## Extract only the information for the 2-day period 
interesting_data <- subset(data, 
                           dates == as.Date("2007/02/01") | dates == as.Date("2007/02/02"))