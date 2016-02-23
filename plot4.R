rm(list = ls())

setwd("C:/Users/YuBo/Dropbox/Data_Science/Exploratory_Data_Analysis/Project2")

# Load data
NEI = readRDS("summarySCC_PM25.rds")
SCC = readRDS("Source_Classification_Code.rds")

# Subset Coal  combustion related NEI data
combustionR = grepl("comb",SCC$SCC.Level.One,ignore.case = TRUE)
coalR = grepl("coal", SCC$SCC.Level.Four, ignore.case = TRUE)
coalC = (combustionR & coalR)
combutionSCC = SCC[coalC,]$SCC
combustionNEI = NEI[NEI$SCC %in% combutionSCC,]


png("plot4.png",width = 480, height = 480, units = "px", bg = "transparent")

library(ggplot2)

ggp = ggplot(combustionNEI, aes(factor(year),Emissions/10^5)) + 
    geom_bar(stat = "identity", fill = "grey", width = 0.75) +
    theme_bw() + guides(fill = FALSE) + 
    labs(x = "year", y = expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
    labs(title = expression("PM"[2.5]*" Coal Combustion Source Emissions Across US from 1999-2008"))

print(ggp)

dev.off()
