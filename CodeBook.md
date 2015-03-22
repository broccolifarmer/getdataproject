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
* There are six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* There are 66 feature variables: 
  1. Time.Body.Accelerometer.Mean.X
  1. Time.Body.Accelerometer.Mean.Y
  1. Time.Body.Accelerometer.Mean.Z
  * Time.Body.Accelerometer.Std.X
  * Time.Body.Accelerometer.Std.Y
  * Time.Body.Accelerometer.Std.Z
  * Time.Gravity.Accelerometer.Mean.X
  * Time.Gravity.Accelerometer.Mean.Y
  * Time.Gravity.Accelerometer.Mean.Z
  * Time.Gravity.Accelerometer.Std.X
  * Time.Gravity.Accelerometer.Std.Y
  * Time.Gravity.Accelerometer.Std.Z
  * Time.Body.Accelerometer.Jerk.Mean.X
  * Time.Body.Accelerometer.Jerk.Mean.Y
  * Time.Body.Accelerometer.Jerk.Mean.Z
  * Time.Body.Accelerometer.Jerk.Std.X
  * Time.Body.Accelerometer.Jerk.Std.Y
  * Time.Body.Accelerometer.Jerk.Std.Z
  * Time.Body.Gyroscope.Mean.X
  * Time.Body.Gyroscope.Mean.Y
  * Time.Body.Gyroscope.Mean.Z
  * Time.Body.Gyroscope.Std.X
  * Time.Body.Gyroscope.Std.Y
  * Time.Body.Gyroscope.Std.Z
  * Time.Body.Gyroscope.Jerk.Mean.X
  * Time.Body.Gyroscope.Jerk.Mean.Y
  * Time.Body.Gyroscope.Jerk.Mean.Z
  * Time.Body.Gyroscope.Jerk.Std.X
  * Time.Body.Gyroscope.Jerk.Std.Y
  * Time.Body.Gyroscope.Jerk.Std.Z
  * Time.Body.Accelerometer.Magnitude.Mean
  * Time.Body.Accelerometer.Magnitude.Std
  * Time.Gravity.Accelerometer.Magnitude.Mean
  * Time.Gravity.Accelerometer.Magnitude.Std
  * Time.Body.Accelerometer.Jerk.Magnitude.Mean
  * Time.Body.Accelerometer.Jerk.Magnitude.Std
  * Time.Body.Gyroscope.Magnitude.Mean
  * Time.Body.Gyroscope.Magnitude.Std
  * Time.Body.Gyroscope.Jerk.Magnitude.Mean
  * Time.Body.Gyroscope.Jerk.Magnitude.Std
  * Freq.Body.Accelerometer.Mean.X
  * Freq.Body.Accelerometer.Mean.Y
  * Freq.Body.Accelerometer.Mean.Z
  * Freq.Body.Accelerometer.Std.X
  * Freq.Body.Accelerometer.Std.Y
  * Freq.Body.Accelerometer.Std.Z
  * Freq.Body.Accelerometer.Jerk.Mean.X
  * Freq.Body.Accelerometer.Jerk.Mean.Y
  * Freq.Body.Accelerometer.Jerk.Mean.Z
  * Freq.Body.Accelerometer.Jerk.Std.X
  * Freq.Body.Accelerometer.Jerk.Std.Y
  * Freq.Body.Accelerometer.Jerk.Std.Z
  * Freq.Body.Gyroscope.Mean.X
  * Freq.Body.Gyroscope.Mean.Y
  * Freq.Body.Gyroscope.Mean.Z
  * Freq.Body.Gyroscope.Std.X
  * Freq.Body.Gyroscope.Std.Y
  * Freq.Body.Gyroscope.Std.Z
  * Freq.Body.Accelerometer.Magnitude.Mean
  * Freq.Body.Accelerometer.Magnitude.Std
  * Freq.Body.Accelerometer.Jerk.Magnitude.Mean
  * Freq.Body.Accelerometer.Jerk.Magnitude.Std
  * Freq.Body.Gyroscope.Magnitude.Mean
  * Freq.Body.Gyroscope.Magnitude.Std
  * Freq.Body.Gyroscope.Jerk.Magnitude.Mean
  * Freq.Body.Gyroscope.Jerk.Magnitude.Std


##Descriptive feature naming conventions:

From features.txt I have made the following transformations. Short description of meaning of each part of the variable name is in brackets. 

```t => Time (time domain measurements)```

```f => Freq (frequency domain measurements)```

```Body/BodyBody => Body (body acceleration)```

```Gravity => Gravity (gravity acceleration)```

```Acc => Accelerometer (measurements using accelerometer)```

```Gyro => Gyroscope (measurements using gyroscope)```

```Jerk => Jerk (body linear acceleration and angular velocity derived in time)```

```Mag => Magnitude (magnitude of the three-dimensional signals calculated using the Euclidean norm)```

```XYZ => XYZ (3-axial signals in the X, Y and Z directions)```

```mean() => Mean (mean average)```

```std() => Std (Standard deviation)```

Each part of the descriptive name is separated with dot "."
