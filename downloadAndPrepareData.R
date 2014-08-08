downloadAndPrepareData <- function() {
    # download
    remoteFileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    localZipFileName <- "household_power_consumption.zip"
    if (!file.exists(localZipFileName)) {
        download.file(remoteFileUrl, localZipFileName, method="curl")
    }
    # unzip
    localFileName <- "household_power_consumption.txt"
    if (!file.exists(localFileName)){
        unzip(localZipFileName, overwrite=FALSE)
    }
    # load
    if (
        !exists("houseHoldPowerConsumption")
        || is.null(householdPowerConsumption)
        || dim(householdPowerConsumption)[1]==2880
        ) {
        householdPowerConsumption <<- read.table(
            localFileName,
            col.names = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),
            skip = 66637,
            nrows = 2880,
            sep = ";",
            na.strings = "?",
            colClasses = c(rep("character",2),rep("numeric",7))
        )
    }
    # convert to timstamp
    if (dim(householdPowerConsumption)[2] < 10) {
        householdPowerConsumption <<- cbind(
            householdPowerConsumption, DateTimeString = paste(
                householdPowerConsumption$Date,
                householdPowerConsumption$Time,
                sep=" "
            )
        )
    }
    if (dim(householdPowerConsumption)[2] < 11) {
        householdPowerConsumption <<- cbind(
            householdPowerConsumption, Timestamp = as.POSIXct(strptime(
                householdPowerConsumption$DateTimeString,
                format="%d/%m/%Y %H:%M:%S"
            ))
        )
    }
}
downloadAndPrepareData()