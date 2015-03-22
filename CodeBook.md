#Code Book for Getting and Sharing Data course project

##Data:
This data set summarizes the mean and standard deviation data for a set of measurements taken using the accelerometer and gyroscope functions of a smartphone of subjects performing six different activities.

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
* There are six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* There are 66 feature variables: 
  1. TimeBodyAccelerometerMeanX
  1. TimeBodyAccelerometerMeanY
  1. TimeBodyAccelerometerMeanZ
  * TimeBodyAccelerometerStdX
  * TimeBodyAccelerometerStdY
  * TimeBodyAccelerometerStdZ
  * TimeGravityAccelerometerMeanX
  * TimeGravityAccelerometerMeanY
  * TimeGravityAccelerometerMeanZ
  * TimeGravityAccelerometerStdX
  * TimeGravityAccelerometerStdY
  * TimeGravityAccelerometerStdZ
  * TimeBodyAccelerometerJerkMeanX
  * TimeBodyAccelerometerJerkMeanY
  * TimeBodyAccelerometerJerkMeanZ
  * TimeBodyAccelerometerJerkStdX
  * TimeBodyAccelerometerJerkStdY
  * TimeBodyAccelerometerJerkStdZ
  * TimeBodyGyroscopeMeanX
  * TimeBodyGyroscopeMeanY
  * TimeBodyGyroscopeMeanZ
  * TimeBodyGyroscopeStdX
  * TimeBodyGyroscopeStdY
  * TimeBodyGyroscopeStdZ
  * TimeBodyGyroscopeJerkMeanX
  * TimeBodyGyroscopeJerkMeanY
  * TimeBodyGyroscopeJerkMeanZ
  * TimeBodyGyroscopeJerkStdX
  * TimeBodyGyroscopeJerkStdY
  * TimeBodyGyroscopeJerkStdZ
  * TimeBodyAccelerometerMagnitudeMean
  * TimeBodyAccelerometerMagnitudeStd
  * TimeGravityAccelerometerMagnitudeMean
  * TimeGravityAccelerometerMagnitudeStd
  * TimeBodyAccelerometerJerkMagnitudeMean
  * TimeBodyAccelerometerJerkMagnitudeStd
  * TimeBodyGyroscopeMagnitudeMean
  * TimeBodyGyroscopeMagnitudeStd
  * TimeBodyGyroscopeJerkMagnitudeMean
  * TimeBodyGyroscopeJerkMagnitudeStd
  * FrequencyBodyAccelerometerMeanX
  * FrequencyBodyAccelerometerMeanY
  * FrequencyBodyAccelerometerMeanZ
  * FrequencyBodyAccelerometerStdX
  * FrequencyBodyAccelerometerStdY
  * FrequencyBodyAccelerometerStdZ
  * FrequencyBodyAccelerometerJerkMeanX
  * FrequencyBodyAccelerometerJerkMeanY
  * FrequencyBodyAccelerometerJerkMeanZ
  * FrequencyBodyAccelerometerJerkStdX
  * FrequencyBodyAccelerometerJerkStdY
  * FrequencyBodyAccelerometerJerkStdZ
  * FrequencyBodyGyroscopeMeanX
  * FrequencyBodyGyroscopeMeanY
  * FrequencyBodyGyroscopeMeanZ
  * FrequencyBodyGyroscopeStdX
  * FrequencyBodyGyroscopeStdY
  * FrequencyBodyGyroscopeStdZ
  * FrequencyBodyAccelerometerMagnitudeMean
  * FrequencyBodyAccelerometerMagnitudeStd
  * FrequencyBodyAccelerometerJerkMagnitudeMean
  * FrequencyBodyAccelerometerJerkMagnitudeStd
  * FrequencyBodyGyroscopeMagnitudeMean
  * FrequencyBodyGyroscopeMagnitudeStd
  * FrequencyBodyGyroscopeJerkMagnitudeMean
  * FrequencyBodyGyroscopeJerkMagnitudeStd




##Descriptive feature naming conventions:

From features.txt I have made the following transformations. Short description of meaning of each part of the variable name is in brackets. 

```t => Time (time domain measurements)```

```f => Frequency (frequency domain measurements)```

```Body/BodyBody => Body (body acceleration)```

```Gravity => Gravity (gravity acceleration)```

```Acc => Accelerometer (measurements using accelerometer)```

```Gyro => Gyroscope (measurements using gyroscope)```

```Jerk => Jerk (body linear acceleration and angular velocity derived in time)```

```Mag => Magnitude (magnitude of the three-dimensional signals calculated using the Euclidean norm)```

```XYZ => XYZ (3-axial signals in the X, Y and Z directions)```

```mean() => Mean (mean average)```

```std() => Std (Standard deviation)```

