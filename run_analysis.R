# This is to fulfill the Peer-graded Assignment: Getting and Cleaning Data Course Project from Coursera
# The codes in this file achieve the following tasks:
#   1.Merges the training and the test sets to create one data set.
#   2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#   3.Uses descriptive activity names to name the activities in the data set
#   4.Appropriately labels the data set with descriptive variable names. 
#   5.From the data set in step 4, creates a second, independent tidy data set with the average of 
#     each variable for each activity and each subject.


# Set the directory to the files
setwd("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

# retrieve feature names
features <- read.table('features.txt')

# retrieve activity labels
activity_labels <- read.table('activity_labels.txt')


# retrieve the train data set
setwd("./train")
X_train <- read.table("X_train.txt")
Y_train <- read.table("Y_train.txt")
subject_train <- read.table("subject_train.txt")

setwd("..")

# retrieve the test data set
setwd("./test")
X_test <- read.table("X_test.txt")
Y_test <- read.table("Y_test.txt")
subject_test <- read.table("subject_test.txt")

# Merge the train set
train_set <-cbind(X_train,Y_train,subject_train)