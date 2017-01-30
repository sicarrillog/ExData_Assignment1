#Second plot
#All codes will start with the same command to read the lines
library(datasets)
library(ggplot2)


A <- read.table("household_power_consumption.txt",header = TRUE,
                sep = ";" ,skip = 66637, nrows = 2879);
as.Date(A[,1]);

# For the labels with the name of the days

lab3 <- as.vector(c("Thu", "Fri", "Sat"))

#Start the device

png(file = "plot2.png",  width = 480, height = 480, units = "px")

plot(A[,3], type = "l", main = "", xaxt = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")

axis(1, at = seq(0,2879,by=1439), labels = lab3)


dev.off()

