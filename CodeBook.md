#Code Book for Getting and Sharing Data course project

##Raw data: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Transformations:
1. Added data in subject_train.txt to data in X_train.txt as a column named "Subject"
2. Added data in y_train.txt to data in X_train.txt as a column named "Activity"
3. Repeated steps 1 and 2 for the "test" data
4. Concatenated the test data onto the end of the training data
5. Filtered the data to only keep the "Subject", "Activity" and columns for the Mean and Standard Deviation for each measurement type.
6. Converted the data in the "Activity" column into a factor with 6 levels, each being the descriptive names for the activity taken from activity_names.txt
7. Replaced the column names with descriptive names using the conventions detailed below.
8. Calculated the mean for each variable  by Subject + Activity combination.

The resulting data set has a row for each Subject + Activity combination, with the means of each of the 66 variables.
* There are 30 subjects in the data (1 - 30).
* There are six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* There are 66 measurements.


##Descriptive feature naming conventions:

From features.txt I have made the following transformations: 

t => Time (time domain measurements)
f => Freq (frequency domain measurements)

Body => Body (body acceleration)
Gravity => Gravity (gravity acceleration)

Acc => Accelerometer (measurements using accelerometer)
Gyro => Gyroscope (measurements using gyroscope)

Jerk => Jerk (body linear acceleration and angular velocity derived in time)
Mag => Magnitude (magnitude of the three-dimensional signals calculated using the Euclidean norm)

XYZ => XYZ (3-axial signals in the X, Y and Z directions)

mean() => Mean (mean average)
std() => Std (Standard deviation)

Each part of the descriptive name is separated with dot "."
