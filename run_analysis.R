setwd("C:/Users/ekalbed/Documents/2 Learning/Courses/Analytics/Coursera-1-Datascience/4-GettingCleaningData/data/UCI HAR Dataset")

#Getting the variables together
x <- read.csv("train/X_train.txt",sep="",header=FALSE)
lab <- read.csv("train/y_train.txt",sep="",header=FALSE)
subjTrain <- read.csv("train/subject_train.txt",sep="",header=FALSE)

#Binding them to make x
x <- cbind(x,lab,subjTrain)
str(x) #7352 obs of 5 variables

#Y: Getting the variables together
y <- read.csv("test/X_test.txt",sep="",header=FALSE)
labY <- read.csv("test/y_test.txt",sep="",header=FALSE)
subjTest <- read.csv("test/subject_test.txt",sep="",header=FALSE)
#Binding them to make y
y <- cbind(y,labY,subjTest)
str(y) # 2947 obs of 563 variables


#1.Merge the training and the test sets to create one data set
data <- rbind(x,y)


#2.Extract only the measurements on the mean and standard deviation for each measurement. 
# Getting features/info and activity labels
activityLabels <- read.csv("activity_labels.txt",sep="",header=FALSE)
features <- read.csv("features.txt",sep="",header=FALSE)
features_info <- read.csv("features_info.txt",sep="",header=FALSE)


#Start extract
features.sel <- grep(".*-mean.*|.*-std.*", features$V2)
features.sel <- c(features.sel,562,563)

#subset data by the columns we need
data.s <- data[,features.sel]

#3.Uses descriptive activity names to name the activities in the data set
features <- features[features.sel,]
features$V2 <- gsub('-mean','Mean',features$V2)
features$V2 <- gsub('-std','Std',features$V2)

#4.Appropriately labels the data set with descriptive variable names
features$V2[80] <- "Activity"
features$V2[81] <- "Subject"
colnames(data.s) <- c(features$V2)

#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
data.2 <- aggregate(data.s,by=list(data.s$Activity,data.s$Subject),mean)
#Tidying up the names and renaming groups to Activity,SUbject
data.2$Activity = NULL
data.2$Subject = NULL
names(data.2)[1] <- "Activity"
names(data.2)[2] <- "Subject"

#Tidying up more by replacing Activity numbers by descriptions
activityLabels <- read.csv("activity_labels.txt",sep=" ",header=FALSE,stringsAsFactors=FALSE)

for (i in 1:nrow(data.2))
{
  data.2[i,1] <- activityLabels[activityLabels$V1==data.2[i,1],2]
}

#Export the tidy set

write.csv(data.2,"dataTidy.txt",row.names=FALSE)
