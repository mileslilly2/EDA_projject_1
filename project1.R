library(data.table)
library(dplyr)
library(lubridate)
setwd("You file here")

power = fread("household_power_consumption.txt", stringsAsFactors=FALSE)



power = power %>%
        select(Date, Global_active_power, Time, 
               Sub_metering_1, Sub_metering_2,Sub_metering_3,
               Global_reactive_power, Voltage) %>%
        filter(Date == '2/2/2007' | Date == '1/2/2007')
#question 1
hist(as.numeric(power$Global_active_power), col = 'orchid',main = 'Global Active Power',
     xlab = "Global Active Power(kilowatts)", breaks = 16)

plot(power2$Global_active_power, type = 'l', col ="magenta")


#question 2
with(power, plot(Global_active_power,  type = 'l', xaxt = 'n', col = "blue3"))

power$Date.Time = paste(power$Date,power$Time)
#question 3
with(power, plot(Sub_metering_1, type = 'l', col = 'red', main = "Comparision Bewtween 3 meter vars"))
with(power, lines(Sub_metering_2, col = 'green'))
with(power, lines(Sub_metering_3, col = 'orange'))

legend("topright", legend=c("Meter 1", "Meter 2", "Meter 3"),
       col=c("red", "green", 'orange'), lty=1:2, cex=1)
#question 4 
par(mfrow=c(2,2))
#plot 1
with(power, plot(Voltage, type = 'l',col = "darksalmon"))
#plot 2
with(power, plot(Global_active_power, type = 'h', col = "turquoise"))
#plot 3
with(power, plot(Sub_metering_1, type = 'l', col = 'red'))
with(power, lines(Sub_metering_2, col = 'green'))
with(power, lines(Sub_metering_3, col = 'orange'))
#plot 4
with(power, plot(Global_reactive_power, type = 'h', col = "peachpuff3"))
