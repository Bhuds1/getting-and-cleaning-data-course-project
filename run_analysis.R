library(data.table)
library(plyr)
library(dplyr)
#load File

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
tmp <- tempfile()
download.file(zipUrl, tmp)
#Unzip file

#Read Train Data
x_train <- read.table(unzip(tmp, "UCI HAR Dataset/train/X_train.txt"))
y_train <- read.table(unzip(tmp, "UCI HAR Dataset/train/y_train.txt"))
sub_train <- read.table(unzip(tmp, "UCI HAR Dataset/train/subject_train.txt"))
#read Test Data
x_test <-read.table(unzip(tmp, "UCI HAR Dataset/test/X_test.txt"))
y_test <-read.table(unzip(tmp, "UCI HAR Dataset/test/y_test.txt"))
sub_test <-read.table(unzip(tmp, "UCI HAR Dataset/test/subject_test.txt"))
#Read Features
features <-read.table(unzip(tmp, "UCI HAR Dataset/features.txt"))
#Read Activity Labels and fix column names
act_labels <- read.table(unzip(tmp, "UCI HAR Dataset/activity_labels.txt"))
colnames(act_labels) <- c("activity", "activityLabel")

#Column Names
colnames(x_train) <- features[,2]
colnames(y_train) <- "activity"
colnames(sub_train) <- "subject"
colnames(x_test) <- features[,2]
colnames(y_test) <- "activity"
colnames(sub_test) <- "subject"

#Merge Datasets
merge_train <- cbind(x_train,y_train, sub_train)
#head(merge_train)
merge_test <- cbind(x_test, y_test, sub_test)
#head(merge_test)
full_set <- rbind(merge_train, merge_test)
#head(full_set)

#Extract mean and Sd
#colNames
columnsToKeep <- grepl("subject|activity|mean|std", colnames(full_set))
mean_sd <- full_set[,columnsToKeep]
#head(full_set)
#Name activities

combined_data <- merge(mean_sd, act_labels, by = "activity", all.x = TRUE)
head(combined_data)
#Clean up names
names(combined_data)<- gsub("Acc", "Accelerometer", names(combined_data))
names(combined_data)<- gsub("^t", "Time", names(combined_data))
names(combined_data)<- gsub("Gyro", "Gyroscope", names(combined_data))
names(combined_data)<- gsub("^f", "Frequency", names(combined_data))
names(combined_data)<- gsub("-mean", "Mean", names(combined_data), ignore.case=TRUE)
names(combined_data)<- gsub("-std", "SD", names(combined_data), ignore.case = TRUE)
names(combined_data)<- gsub("gravity", "Gravity", names(combined_data))
names(combined_data)<- gsub("Mag", "Magnitude", names(combined_data))
names(combined_data)<- gsub("BodyBody", "Body", names(combined_data))
names(combined_data)<- gsub("\\(|\\)", "",names(combined_data))

#Create Avg of Each Var for Each activity and Subject
tidydata <- aggregate(. ~subject + activity, combined_data, mean)
tidydata <- tidydata[order(tidydata$subject,tidydata$activity),]
write.table(tidydata, file = "ind_Tidy_data.txt", row.names = FALSE)
