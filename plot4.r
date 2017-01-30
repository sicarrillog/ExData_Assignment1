#Fourth plot
#All codes will start with the same command to read the lines
library(datasets)
library(ggplot2)


A <- read.table("household_power_consumption.txt",header = TRUE,
                sep = ";" ,skip = 66637, nrows = 2879);
as.Date(A[,1]);

# For the labels with the name of the days

lab3 <- as.vector(c("Thu", "Fri", "Sat"))

#Start the device

png(file = "plot4.png",  width = 480, height = 480, units = "px")

# Create the 2x2 mesh

par(mfrow = c(2,2))

# Top-left
plot(A[,3], type = "l", main = "", xaxt = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")
axis(1, at = seq(0,2879,by=1439), labels = lab3)

# Top right
plot(A[,5], type = "l", main = "", xaxt = "n",
     xlab = "datetime", ylab = "Voltage")
axis(1, at = seq(0,2879,by=1439), labels = lab3)

# Bottom left

plot(A[,7], type = "l", main = "",
     xaxt = "n", xlab = "", ylab = "Energy sub metering")
lines(A[,8], type = "l", col = "red")
lines(A[,9], type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2",
                  "Sub_metering_3"), lty = 1, cex = 0.7)
axis(1, at = seq(0,2879,by=1439), labels = lab3)

# Bottom right

plot(A[,4], type = "l", main = "", xaxt = "n",
     xlab = "datetime", ylab = "Global_reactive_power")
axis(1, at = seq(0,2879,by=1439), labels = lab3)


dev.off()

