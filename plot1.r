#First plot
#All codes will start with the same command to read the lines
library(datasets)
library(ggplot2)


A <- read.table("household_power_consumption.txt",header = TRUE,
                sep = ";" ,skip = 66637, nrows = 2879);
as.Date(A[,1]);

#Start the device

png(file = "plot1.png",  width = 480, height = 480, units = "px")

hist(A[,3], col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()




