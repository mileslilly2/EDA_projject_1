#question 3
with(power, plot(Sub_metering_1, type = 'l', col = 'red', main = "Comparision Bewtween 3 meter vars"))
with(power, lines(Sub_metering_2, col = 'green'))
with(power, lines(Sub_metering_3, col = 'orange'))

legend("topright", legend=c("Meter 1", "Meter 2", "Meter 3"),
       col=c("red", "green", 'orange'), lty=1:2, cex=1)