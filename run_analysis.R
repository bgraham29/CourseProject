################################################################################
#
# This program merges and analyzes training and test sets from the files 
    available at
#  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#  downloaded 10/25/2014
#
#  Download and unzipping code is not included. Code can be run as long as 
#    the Samsung data is in your working directory in a sub-folder titled
#    "UCI HAR Dataset" and with the same subfolders names as the unzipped 
#    files
#
## 
# First the data are read into local objects
#

dataTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
dataTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")

# read the label information into an object
# labels indicate the activity code, text for the activities is loaded 
#  into object "activities"
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

#  features are the column names for the original data
features <- read.table("./UCI HAR Dataset/features.txt")

#  subject identifiers indicate the subject who performed the activity
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Step 1: merge the training and test sets to create one data set

# Add subject id  and activites to each dataset, label groups as test or train
Test <- data.frame(Group = rep("Test", nrow(dataTest)), subjectTest, 
    testLabel, dataTest)
Train <- data.frame(Group = rep("Train", nrow(dataTrain)), subjectTrain, 
    trainLabel, dataTrain)

# row bind the two data sets and name the variables
FullData <- rbind(Test, Train)
names(FullData)[2:564] <- c("id", "Activity", as.character(features[ ,2])

## Step 2: extract only the measurements on the mean and standard deviatAion
    for each measurement

# identify the column names containing "mean" or "std"
whichMean <- grep("mean", colnames(FullData))
whichStd <- grep("std", colnames(FullData))
which <- sort(c(whichMean, whichStd))

# combine the first 3 columns which are identifiers with the selected group of
# variables containing "mean" or "std"

smallData <- FullData[, c(1:3, which)]

## Step 3: use descriptive activity names to name the activities in the data set
# change the names in the Activity column according to the activities file

for(i in 1:6) {
    smallData$Activity[smallData$Activity == i] <- as.character(activities[i, 2])
}


## Create a second, independent tide data set with the average of each
    variable for each activity and each subject

# First, convert to "long" form for the purpose of summarizing
require(reshape2)

longData <- melt(smallData[, -1], id.vars = c("id", "Activity")) 

# summarise by calculating mean for variable by subject id and activity

tidyData1 <- ddply(longData, .(id, Activity, variable), summarise, 
    mean = mean(value))

# rewrite file as a table

TidyData <- dcast(tidyData1, id + Activity ~ variable, value.var = "mean")

# write tidy data file to text

write.table(TidyData, "Tidy Data.txt", row.name = FALSE)

## Submit: tidy data set; link to Github repository; code book describing
  the variables, data, any transformations or work performed to clean
  in CodeBook.md. Also include a README.md in the repo explains how all the
    scripts work and how they are connected.
