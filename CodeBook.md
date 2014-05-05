Code book
========================================================

The original wearable computing data about movement patterns using accelerometers from the Samsung Galaxy S smartphone was downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

The variables in the original dataset are described in the "features_info.txt" given in the repository.

The Tidy Data
------------
The tidy data holds the data after the transformations on the original data. It holds, for each person and activity, the average of all mean and standard deviation variables from the original dataset. 

Variables
-------------

### Activity - Categorical

Values:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

Gotten by joining tables from the original dataset and then copied to the tidy dataset.

### SubjectID - Categorical

Values: 1..30

Copied from the original data

### All other variables

__All the variables from the original dataset with the word "mean" in the name (except the variables whose name starts with angle) were put through the transformation and into the tidy dataset.__

All these 79 variables in the tidy dataset are continuous. 

They were calculated by the transformation over the original data in such a way that each variable in tidy dataset is calculated by averaging the value of the variable (with the identical name) in the original dataset over the SubjectID and Activity. 

All variables from the original dataset that have no variable of the identical name in the tidy dataset were dropped.

The meaning of each variable is coded in the variable name through **six** name components and is as follows:
- each variable is a average of values for combination of activity and subject
- the **first letter** *"t"* means signal from time domain, *"f"* from frequency domain
- each total value can be broken into two components, hence the **second part** of the name marks that aspect. Possible values are:
 * *"Body"* 
 * *"Gravity"*  
 * For magnitude **interaction** variables this value is the 2-permutation with repetition of the values above.
- The **third part** is the actual phenomenon that we are measuring with possibilities:
  * *"Acc"* - for acceleration
  * *"Gyro"* - for gyroscope
  * *"AccJerk"* - for acceleration jerk
  * *"GyroJerk"* - for gyroscope jerk  
  * For magnitude **interaction** variables this value is the 2-permutation with repetition of the values above.
- The **fourth part** has the next possible values:
  * *"Mag"* - the magnitude of the feature vector using the Euclidean norm
  * all variables that are not the magnitude have empty string for this part of the variable name
- The **fifth part** is the statistic of the variable with possible values in the tidy dataset:
 * *"-mean()"* - for the mean
 * *"-sd()"* - for standard deviation
 * *"-meanFreq()"* - the mean of frequencies and valid only for the variables from frequency domain
- The **last, sixth, part** of variable name has possible values:
  * *"-X"* - X component of the feature vector
  * *"-Y"* - Y component of the feature vector
  * *"-Z"* - Z component of the feature vector
  * the magnitude of the feature vector using the Euclidean norm has empty string for this component



The names of all variables in the tidy dataset (except SubjectID and Activity) are:
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()
