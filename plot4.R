source("downloadAndPrepareData.R")
source("plot2.R")
source("plot3.R")

drawVoltage <- function () {
    with(householdPowerConsumption, {
        plot(datetime, Voltage, type="l")
    })
}

drawReactive <- function () {
    with(householdPowerConsumption, {
        plot(datetime, Global_reactive_power, type="l")
    })
}

plot3 <- function() {
    plotFileName <- "plot4.png"
    png(filename=plotFileName)
    par(mfcol=c(2,2))
    # plot2 at upper left
    drawPlot2()
    # plot3 at lower left
    drawPlot3("n")
    # plot Voltage at upper right
    drawVoltage()
    # plot Reactive at lower right
    drawReactive()
    dev.off()
}
plot3()