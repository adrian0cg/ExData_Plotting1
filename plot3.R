source("downloadAndPrepareData.R")

plot3 <- function() {
    plotFileName <- "plot3.png"
#     png(filename=plotFileName)
    drawPlot3 <- function (householdPowerConsumption, Timestamp, Sub_metering_1, Sub_metering_2, Sub_metering_3) {
      with(householdPowerConsumption, {
          plot(
              Timestamp,
              Sub_metering_1,
              xlab = "",
              ylab = "Energy sub metering",
              type = "n"
          )
          points(Timestamp, Sub_metering_1, type="l", col="black")
          points(Timestamp, Sub_metering_2, type="l", col="red")
          points(Timestamp, Sub_metering_3, type="l", col="blue")
          legend(
              "topright",
              legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
              col = c("black","red","blue"),
              pch = rep("-",3)
          )
      })
    }
#     dev.off()
}
plot3()