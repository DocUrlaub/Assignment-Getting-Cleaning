CodeBook file: Coursera - Getting and Cleaning Data Course Project
Version 1.0
Author: Doc Urlaub
==================================================================

VARIABLES CONTAINED IN RESULTING "tidy_meandata.csv" FILE
--------------------------------------------------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag
- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

Contained in the "tidy_meandata.csv" file are the "Average" values over the 79 variables which report the Mean and Standard Deviation for the above measures across (180 resulting observations) each Subject (30 subjects) and by Activities (6 activties). In addition the Subject numbers and Activity Names are provided for the average results.

DATA PROCESSING STEPS TAKEN IN run_analysis.R
--------------------------------------------------------------

In order to obtain the above data set the following steps are taken by the R Script:
1. The original data is loaded to R for processing from the "Source Data" folder.
2. The initial training and test data sets are recreated to include the activity number, subject number and data for all variables.
3. The variable names "features" are loaded to a data frame and processed to match the above (Step 2.) data sets.
4. These variable names are assigned to the data sets (Step 2. and 3.) and then the activity names are merged into the data frame in addition for both training and test data sets.
5. Both resulting training and test data sets are combined into one data set.
6. The variable which contain with the MEAN or STANDARD DEVIATION measures are extracted in addition to the activity names and subject numbers
7. A new data frame is calculated which produces the average of all measures by "activity names", "subject", and variables
8. This resulting mean data set is extracted to a .csv file labled: "tidy_meandata.csv"