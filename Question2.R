library(jpeg)
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile="jeff.jpg", method="curl")
data <- readJPEG("jeff.jpg", native=TRUE)
quantile(data,probs=c(0.3,0.8))
