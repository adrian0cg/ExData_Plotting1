## Instructions
Source the corresponding files:

1. `plot1.R`
2. `plot2.R`
3. `plot3.R`
4. `plot4.R` (reuses draw-code from the previous two plots)

`downloadAndPrepareData.R` contains teh base data aquision and transformation code (idempotent, so you wast time only once, even if you source often).

## CodeBook
The datapoints of the source data from `2007-02-01`to `2007-02-02` is imported into <b>`householdPowerConsumption`</b> with the following variables:
<ol>
<li><b>`Date`</b>: Date in format dd/mm/yyyy </li>
<li><b>`Time`</b>: time in format hh:mm:ss </li>
<li><b>`Global_active_power`</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>`Global_reactive_power`</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>`Voltage`</b>: minute-averaged voltage (in volt) </li>
<li><b>`Global_intensity`</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>`Sub_metering_1`</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>`Sub_metering_2`</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>`Sub_metering_3`</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
<li><b>`DateTimeString`</b>: the concatenation of `Date`and `Time`for converting in a datetime
<li><b>`datetime`</b>: `POSIXct` representation of `DateTimeString`
</ol>

