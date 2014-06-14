download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile="gdp.csv", method="curl")
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile="country.csv", method="curl")gdp <- read.csv("gdp.csv", header=FALSE, skip=5, nrows=190, na.strings=c("NA","..",""))
gdp <- read.csv("gdp.csv", header=FALSE, skip=5, nrows=190, na.strings=c("NA","..",""))
country <- read.csv("country.csv")
merged <- merge(gdp, country, by.x="V1", by.y="CountryCode", all=TRUE)
nrow(merged)
merged1 <- merged[order(merged$V2, decreasing=TRUE),]
merged1[13,]$Long.Name
tapply(merged1$V2, merged1$Income.Group, summary, simplify = TRUE)
