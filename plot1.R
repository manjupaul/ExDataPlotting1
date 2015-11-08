#Global active power
#set working directory
datafile <- "./household_power_consumption.txt"
#read data
data <- read.table(datafile,header = TRUE, sep =";",stringsAsFactors = FALSE,dec = ".")
#get data from the dates between 2007-02-01 and 2007-02-02 and create plot1.png
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
  
  
  
  
  
 
