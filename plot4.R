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
