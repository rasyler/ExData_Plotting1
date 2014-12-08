##read in the data from the text file
##Assumption: The text file is saved in the working directory. 

proj1 <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

##formating and subseting data -- finding the lines with dates 1/2/2007 through 2/2/2007

proj1$Date<-as.Date(proj1$Date, format="%d/%m/%Y")
febData<-subset(proj1, Date==as.Date("01/02/2007", format="%d/%m/%Y")| Date==as.Date("02/02/2007", format="%d/%m/%Y"))
febData$DateTime<-as.POSIXct(paste(febData$Date, febData$Time))

##create the plot and save as png file

hist(febData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global active power")
dev.copy(png, file="plot1.png")
dev.off()

