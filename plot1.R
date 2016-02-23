rm(list=ls())
setwd("C:/Users/YuBo/Dropbox/Data_Science/Exploratory_Data_Analysis/Project2")

# Load the data
nei = readRDS("summarySCC_PM25.rds")
scc = readRDS("Source_Classification_Code.rds")

# Aggregate by sum the total emission by year
aggtotal = aggregate(Emissions ~ year, nei,sum)

png("plot1.png",width = 480, height = 480, units = 'px',bg = "transparent")

barplot(
  (aggtotal$Emissions)/10^6,
  names.arg = aggtotal$year,
  xlab = "Year",
  ylab = "PM2.5 Emissions (10^6 Tons)",
  main = "Total PM2.5 Emissions From All US Source"
  )

dev.off()
