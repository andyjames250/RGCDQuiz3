download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv ", destfile="data.csv", method="curl")
data <- read.csv("data.csv")
agriculturalLogical <- data$ACR==3 & data$AGS==6
