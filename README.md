# getdataproject
Course Project for the Getting and Sharing Data course

Download the zip file of data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to your working directory.
Unzip it. 
The directory containing the data should be named "UCI HAR Dataset", with subdirectories for "test" and "train".
The data in the "Inertial Signals" subdirectories is ignored in this analysis.

To get the tidy data run the script run_analysis.R

The data covers:
30 subjects
6 activities.
561 features for each measurement

I have extracted only the features which contain "mean()" and "std()" in the feature name given in features.txt

The final tidy data set contains a row for each subject + activity combination (30 x 6 = 180 rows), showing the average for each of the measurements for that combination (66 average measurements for each row).

After running the script, to read the data into R you can use:
tidydata <- read.table("tidaydata.txt", header = TRUE)
