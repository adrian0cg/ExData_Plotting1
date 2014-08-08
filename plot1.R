source("downloadAndPrepareData.R")

plot1 <- function() {
    plotFileName <- "plot1.png"
    png(filename=plotFileName)
    with(householdPowerConsumption,
         hist(
             Global_active_power,
             main = "Global Active Power",
             xlab = "Global Active Power (kilowatts)",
             col = "red"
             )
         )
    dev.off()
}
plot1()