rm(list = ls())

setwd("C:/Users/YuBo/Dropbox/Data_Science/Exploratory_Data_Analysis/Project2")

# Load data
NEI = readRDS("summarySCC_PM25.rds")
SCC = readRDS("Source_Classification_Code.rds")

# Subset nei data by Baltimore's fip.
baltimoreNEI  = NEI[NEI$fips == "24510",]

# Aggregate using sum the Baltimore emission data by year
aggtotalB = aggregate(Emissions ~ year, baltimoreNEI, sum)

png("plot2.png",width = 480, height = 480, units = "px", bg = "transparent")

barplot(
  aggtotalB$Emissions,
  names.arg = aggtotalB$year,
  xlab = "Year",
  ylab = "PM2.5 Emissions (Tons)",
  main = "Total PM2.5 Emissions From all Baltimore City Sources"
  )

dev.off()
