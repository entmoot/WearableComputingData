WearableComputingData
=====================

This project is the part of "Getting and cleaning data" Coursera course.

What it does?
----------------
We download the wearable computing data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) about movement patterns using accelerometers from the Samsung Galaxy S smartphone. 

We: 
- Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement. 
- Use descriptive activity names to name the activities in the data set
- Appropriately label the data set with descriptive activity names. 
- Create a second, independent tidy data set with the average of each variable for each activity and each subject.

The resulting dataset is saved into the file "tidy.txt". 

Materials
----------------
The included materials in this project are:
- README.md i.e. this file
- R Scripts - described below
- CodeBook.md - a code book file
- tidy.txt - a tidy dataset
- features_info.txt - meanings of variables in the original dataset

R Scripts
----------------
Two scripts are used and both of them should be in the working directory.

### dataFetching.R 
Fetches the data from internet and extracts it in the current directory
### run_analysis.R
Does the cleaning and tidying up the dataset. It uses the dataFetching.R to get the data ready for analysis so at least dataFetching.R has to be in the working directory. 

