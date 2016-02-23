# Exploratory_Data_Analysis_Project2

Questions

You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
  
Answer: Yes, according to the plot, total emissions have decreased in the US from 1999 - 2008.


2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

Answer: Yes, According to the plot, overall total emissions from PM2.5 have decreased in Baltimore City, Maryland from 1999 to 2008

3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

Answer: The non-road, nonpoint, on-read source typs have all seen decreased emissions overall from 1999-2008 in Baltimore City.

Answer: The point source saw a slight increase overall from 199-2008. Also the point source saw a significant increase until 2005 at which point it decreases again by 2008 to just above the starting values.

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

Answer: Emissions from coal combustion related sources have decreased from 6*10^6 to below 4*10^6 from 1999-2008.

5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

Answer: Emissions from motor vehicle sources have dropped from 1999-2008 in Baltimore city

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

Answer: Los Angeles County has seen the greatest changes over time in motor vehicle emissions
