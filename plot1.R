# 1 - Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

library(dplyr)

NEI <- readRDS("data/summarySCC_PM25.rds")

total <- aggregate(NEI$Emissions, by = list(NEI$year), FUN = sum)

png("plo1.png")

plot(x = total$Group.1, y = total$x, type = "o", col = "blue", ann = FALSE)
title(xlab = "years", ylab = "Total emissions (tons)", main = "Total Emissions in the USA")

dev.off()
