# getting-and-cleaning-data-course-project

##You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Step to complete project:

1. Download and unzip "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
2. Read the data.
3. Read in Features.txt and then adjust column names for merging.
4. Merge train files, then test files, and then creat a a merge of those two files.
5. Extract the columns with mean snd std calculations only.
6. Clean up the description by using gsub().
7. Finally, create a tidy dataset of avg of each variable for subject and activity.

I used library packages, data.table, plyr, and dplyr.