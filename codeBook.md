---
title: "codeBook.md"
author: "Kalyana Bedhu"
date: "Wednesday, August 20, 2014"
output: word_document
---

Introduction

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


Data Detail
-----------
Preprocessed dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws



Processed data:
==============

Processed data is tidied up to select only the average of each variable for each activity and each subject
Also, the columns that are selected are only the mean and standard deviation columns of original data set.

Following data elements are present in the tidied data
======================================================
> names(data.2)
 [1] "Activity"                       "Subject"                        "tBodyAccMean()-X"              
 [4] "tBodyAccMean()-Y"               "tBodyAccMean()-Z"               "tBodyAccStd()-X"               
 [7] "tBodyAccStd()-Y"                "tBodyAccStd()-Z"                "tGravityAccMean()-X"           
[10] "tGravityAccMean()-Y"            "tGravityAccMean()-Z"            "tGravityAccStd()-X"            
[13] "tGravityAccStd()-Y"             "tGravityAccStd()-Z"             "tBodyAccJerkMean()-X"          
[16] "tBodyAccJerkMean()-Y"           "tBodyAccJerkMean()-Z"           "tBodyAccJerkStd()-X"           
[19] "tBodyAccJerkStd()-Y"            "tBodyAccJerkStd()-Z"            "tBodyGyroMean()-X"             
[22] "tBodyGyroMean()-Y"              "tBodyGyroMean()-Z"              "tBodyGyroStd()-X"              
[25] "tBodyGyroStd()-Y"               "tBodyGyroStd()-Z"               "tBodyGyroJerkMean()-X"         
[28] "tBodyGyroJerkMean()-Y"          "tBodyGyroJerkMean()-Z"          "tBodyGyroJerkStd()-X"          
[31] "tBodyGyroJerkStd()-Y"           "tBodyGyroJerkStd()-Z"           "tBodyAccMagMean()"             
[34] "tBodyAccMagStd()"               "tGravityAccMagMean()"           "tGravityAccMagStd()"           
[37] "tBodyAccJerkMagMean()"          "tBodyAccJerkMagStd()"           "tBodyGyroMagMean()"            
[40] "tBodyGyroMagStd()"              "tBodyGyroJerkMagMean()"         "tBodyGyroJerkMagStd()"         
[43] "fBodyAccMean()-X"               "fBodyAccMean()-Y"               "fBodyAccMean()-Z"              
[46] "fBodyAccStd()-X"                "fBodyAccStd()-Y"                "fBodyAccStd()-Z"               
[49] "fBodyAccMeanFreq()-X"           "fBodyAccMeanFreq()-Y"           "fBodyAccMeanFreq()-Z"          
[52] "fBodyAccJerkMean()-X"           "fBodyAccJerkMean()-Y"           "fBodyAccJerkMean()-Z"          
[55] "fBodyAccJerkStd()-X"            "fBodyAccJerkStd()-Y"            "fBodyAccJerkStd()-Z"           
[58] "fBodyAccJerkMeanFreq()-X"       "fBodyAccJerkMeanFreq()-Y"       "fBodyAccJerkMeanFreq()-Z"      
[61] "fBodyGyroMean()-X"              "fBodyGyroMean()-Y"              "fBodyGyroMean()-Z"             
[64] "fBodyGyroStd()-X"               "fBodyGyroStd()-Y"               "fBodyGyroStd()-Z"              
[67] "fBodyGyroMeanFreq()-X"          "fBodyGyroMeanFreq()-Y"          "fBodyGyroMeanFreq()-Z"         
[70] "fBodyAccMagMean()"              "fBodyAccMagStd()"               "fBodyAccMagMeanFreq()"         
[73] "fBodyBodyAccJerkMagMean()"      "fBodyBodyAccJerkMagStd()"       "fBodyBodyAccJerkMagMeanFreq()" 
[76] "fBodyBodyGyroMagMean()"         "fBodyBodyGyroMagStd()"          "fBodyBodyGyroMagMeanFreq()"    
[79] "fBodyBodyGyroJerkMagMean()"     "fBodyBodyGyroJerkMagStd()"      "fBodyBodyGyroJerkMagMeanFreq()"

A variable  "tBodyGyroMean()-Y" can be read as Mean of time domain signal for Body Gyro signal in Y direction. f in front of the variable name denotes Fast Fourier Transform(FFT)

Activity has been looked up from the following table lookup

 V1|                 V2|
 ----------------------|
 1 |            WALKING|
 2 |   WALKING_UPSTAIRS|
 3 |WALKING_DOWNSTAIRS |
 4 |            SITTING|
 5 |           STANDING|
------------------------

Subject indicates the person who is in the scope of the activity (1 to 30)


