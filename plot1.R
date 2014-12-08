##read in the data from the text file 
##in the working directory. Read files where date = february 2007
## Do this by first finding the lines with dates 1/2/2007 through 2/2/2007, save as "proj1.txt"


proj1 <- read.table("household_power_consumption.txt", nrows = 100, sep=";", header=TRUE, na.strings="?")
februaryData <- read.table(proj1, ("(^Date)|(^[1|2]/2/2007)",readLines(tmp1), value=TRUE), sep="\n", file="proj1.txt")

##create the plot and save as png file

hist(proj1$Global_active_power, col = "red", xlab = "Global Active Power (Kilowatts)", main = "Plot 1")
par(mfrow = c(1,1), mar = c(5,4,3,3))
dev.copy(png, file="plot1.png")
dev.off()
