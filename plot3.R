source("downloadAndPrepareData.R")

drawPlot3 <- function (legendBox = "o") {
    with(householdPowerConsumption, {
        plot(
            datetime,
            Sub_metering_1,
            xlab = "",
            ylab = "Energy sub metering",
            type = "n"
        )
        points(datetime, Sub_metering_1, type="l", col="black")
        points(datetime, Sub_metering_2, type="l", col="red")
        points(datetime, Sub_metering_3, type="l", col="blue")
        legend(
            "topright",
            legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
            col = c("black","red","blue"),
            pch = rep("-",3),
            bty = legendBox
        )
    })
}

plot3 <- function() {
    plotFileName <- "plot3.png"
    png(filename=plotFileName)
    drawPlot3()
    dev.off()
}
plot3()