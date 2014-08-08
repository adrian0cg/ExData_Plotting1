source("downloadAndPrepareData.R")

drawPlot2 <- function () {
    with(householdPowerConsumption, {
        plot(
            datetime,
            Global_active_power,
            xlab = "",
            ylab = "Global Active Power (kilowatts)",
            type = "l"
        )
    })
}

plot2 <- function() {
    plotFileName <- "plot2.png"
    png(filename=plotFileName)
    drawPlot2()
    dev.off()
}
plot2()