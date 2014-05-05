## Coursera - "Getting and cleaning data" course
## Course assignment help script

## download and unzip the data

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url,dest="./wearable.zip", mode="wb")

library(utils)

unzip("./wearable.zip", exdir=".")