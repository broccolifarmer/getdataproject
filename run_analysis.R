# set working directory to where the data zip file has been unzipped
# setwd("C:/Users/sarah_turney/Dropbox/DataScience/")

# read the features.txt for the feature column names

features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
colNames <- as.vector(features$V2)
colNames <- c("subject","activity",colNames)

# load the training data

train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

# bind the subject and labels to the training data

labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
train <- cbind(labels,train)

subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train <- cbind(subject,train)

names(train) <- colNames

# load the test data
test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

# bind the subject and labels to the test data

labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
test <- cbind(labels,test)

subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test <- cbind(subject,test)

names(test) <- colNames

# concatenate the training and test data sets

merged <- rbind(train,test)

merged$subject <- as.factor(merged$subject)

# read the activity_labels.txt for the descriptive names of the activities

activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

merged$activity <- factor(merged$activity,labels = activities$V2)

# select only the measurements with "mean()" and "std()" in the feature name

columns <- grep("mean\\(\\)|std\\(\\)", names(merged))
columns <- c(1,2,columns)
subdata <- merged[,columns]

# transform the column names into descriptive names

names(subdata) <- sub("^t","Time",names(subdata))
names(subdata) <- sub("^f","Freq",names(subdata))
names(subdata) <- sub("Body","\\.Body",names(subdata))
names(subdata) <- sub("BodyBody","Body",names(subdata))
names(subdata) <- sub("Gravity","\\.Gravity",names(subdata))
names(subdata) <- sub("Acc","\\.Accelerometer",names(subdata))
names(subdata) <- sub("Gyro","\\.Gyroscope",names(subdata))
names(subdata) <- sub("Jerk","\\.Jerk",names(subdata))
names(subdata) <- sub("Mag","\\.Magnitude",names(subdata))
names(subdata) <- sub("mean\\(\\)","\\Mean",names(subdata))
names(subdata) <- sub("std\\(\\)","\\Std",names(subdata))
names(subdata) <- gsub("-","\\.",names(subdata))

# create data set with average of each variable for each activity and each subject

tidydata <- aggregate(subdata[,3:68], list(Subject = subdata$subject,Activity = subdata$activity), mean)

write.table(tidydata,"tidydata.txt", row.name = FALSE)

# readin <- read.table("tidydata.txt", header = TRUE)
