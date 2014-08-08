source("downloadAndPrepareData.R")

plot2 <- function() {
    plotFileName <- "plot2.png"
    png(filename=plotFileName)
    with(householdPowerConsumption, {
        plot(
            Timestamp,
            Global_active_power,
            xlab = "",
            ylab = "Global Active Power (kilowatts)",
            type = "l"
        )
    })
    dev.off()
}
plot2()