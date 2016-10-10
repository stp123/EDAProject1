
read.csv("C:/Users/sara.pearson/Desktop/household_power_consumption.txt", header=FALSE, sep=";")

#pull data into R:
dataFile <- "C:/Users/sara.pearson/Desktop/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
# Select the dates of interest:
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]



globalActivePower <- as.numeric(subSetData$Global_active_power)
# make plot1:
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
