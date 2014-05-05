## Coursera - "Getting and cleaning data" course
## April 2014
## Course assignment main script

## create tidy from downloaded data


## fetch the data from internet and extract it into the current directory
source("dataFetching.R")

setwd("UCI HAR Dataset")

featureNames=read.table("features.txt", stringsAsFactors=F)

library(data.table)
library(reshape2)

##problem in using the fread - 
## first column empty and that makes error on my R installation
## so I have to use read.table
## train1=fread("train/X_train.txt")

## reading in the train data 
train1=read.table("train/X_train.txt",header=F)
train2=read.table("train/Y_train.txt", header=F)
train3=read.table("train/subject_train.txt", header=F)

## merging the train data together
train1$Action=train2$V1
train1$Subject=train3$V1


## reading in the test data 
test1=read.table("test/X_test.txt",header=F)
test2=read.table("test/Y_test.txt", header=F)
test3=read.table("test/subject_test.txt", header=F)

## merging the test data together
test1$Action=test2$V1
test1$Subject=test3$V1

## conversion for speed
test1=as.data.table(test1)
train1=as.data.table(train1)

## merge the training and test data
mergedData=rbind(train1,test1)

## set meaningful names for columns
setnames(mergedData,c(featureNames$V2,"ActivityID","SubjectID"))

## keep means and standard deviations
retainers=grepl("mean|std", names(mergedData), ignore.case=F)
## and the action and subject, too
retainers[(length(retainers)-1):length(retainers)]=T
retained=names(mergedData)[retainers]
setkeyv(mergedData,cols=retained)
dataset2=mergedData[,retained, with=F]


activityLabels=fread("activity_labels.txt")
## set column names for label file in order to enable merging
setnames(activityLabels, c("ActivityID","Activity"))
## convert activity labels to factor
activityLabels$Activity=as.factor(activityLabels$Activity)

## add the activity labels to the merged dataset and remove IDs
dataset2=merge(dataset2,activityLabels, by="ActivityID")
dataset2[,ActivityID:=NULL]


## get the tidy dataset and write it to the txt file
tidy=dcast.data.table(melt(dataset2,id=c("SubjectID","Activity")),Activity+SubjectID~ variable,mean)

write.table(tidy,file="tidy.txt", row.names=F)
