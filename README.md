tidyData
========

Tidy Data assignment for Datascience course of Coursera - Johns Hopkin University

Raw data
--------
Available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The zip file consists of data collected from the accelerometers from the Samsung Galaxy S smartphone.
Download the data and unzip in a folder called 'UCI HAR Dataset'
Set the working directory to this folder before starting to run the code.

Data cleaning and Processing
----------------------------
Entire process is automated in run_analysis.R (can be found in the same directory as Readme). Code performs following actions, as represented by comments in the code

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
