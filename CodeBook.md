Code book
=========

Data
----

The original data can be found at the site http://archive.ics.uci.edu/ml/machine-learning-databases/00240/. The zipped file contains also files "README.txt" and "features_info.txt" with description of the data set and complete list of all variables in the file "features.txt".

Variables represent statistics for several measurements from smartphones gained during an experiment. 30 subjects were wearing the smartphones while preforming six activities - walking, walking upstairs, walking downstairs, standing, sitting and laying. The signals from smartphones were recorded and processed. The final data set was partioned into two sets - training and testing.

The data were downloaded on 25th April 2014.

Scipt run_analysis.R
--------------------

Runnig the script run_analysis.R will lead to following actions, if the unzipped directory "UCI HAR Dataset" is in your working directory.

First the data from training and testing set are merged together. Then the original 561 variables are labeled with corresponding names. The filter is applied on the data, so only mean and standard deviation of measurements are selected. This adjustment preserve 66 variables - mean and standard deviation for 33 measurements.
These measurements are:

* tBodyAcc-X, tBodyAcc-Y, tBodyAcc-Z
* tGravityAcc-X, tGravityAcc-Y, tGravityAcc-Z
* tBodyAccJerk-X, tBodyAccJerk-Y, tBodyAccJerk-Z
* tBodyGyro-X, tBodyGyro-Y, tBodyGyro-Z
* tBodyGyroJerk-X, tBodyGyroJerk-Y, tBodyGyroJerk-Z
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-X, fBodyAcc-Y, fBodyAcc-Z
* fBodyAccJerk-X, fBodyAccJerk-Y, fBodyAccJerk-Z
* fBodyGyro-X, fBodyGyro-Y, fBodyGyro-Z
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Two more variables "subject" and "activity" are attached to the data. Both are result of merging corresponding data sets form training and testing sample. Activities are also labeled with descriptive names.

At last means of the 66 variables are computed for each combination of 30 subjects and 6 activities. Final data set is stored in the file "tidy_data_means.txt".