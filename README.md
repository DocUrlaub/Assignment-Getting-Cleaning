README file: Coursera - Getting and Cleaning Data Course Project
Version 1.0
Author: Doc Urlaub
==================================================================

FILES INCLUDED
-------------------------------
Files contained in the submission include:
- CodeBook.md : Describes the variables, the data, and any transformations or work that you performed to clean up the data.
- README.md : (this file) Described the files provided and scripts used to process the data.
- run_analysis.R : The R Script used to process the data sets and create the new tidy data set.
- tidy_meandata.csv : The resulting tidy dataset produced by the run_analysis.R script.

Within the folder "Source Data":
- activity_labels.txt : The labels and mapping of those lables to the activtiy variable.
- features.txt : The variable names for the original data sets
- subject_test.txt : The numbering assignments of the subjects (persons) which provided the Test data
- subject_train.txt : The numbering assignments of the subjects (persons) which provided the Test data
- X_test.txt : The original results from the measurements of the Test users
- X_train.txt : The original results from the measurements of the Training users
- y_test.txt : The activity numbering for the Test data which corresponds to the activity label mapping above.
- y_train.txt : The activity numbering for the Training data which corresponds to the activity label mapping above.


INSTRUCTIONS TO DATA PROCESSING
-------------------------------
The Git contains all files required to produce the resulting dataset and are provided in the expected folder structure which the R script expects.  The R script "run_analysis.R" none the less contains a setwd() command in order to correctly point R to the folders for the "Source Data" folder from which raw data is loaded.  It is IMPORTANT that you amend the R Script to reflect your local folder enviroment and point it to the folder prior to execution.  Once this correction is made, the full script can be executed and will produce the tidy data set "tidy_meandata.csv" as a .csv export located in the same folder as the R script.

The CodeBook.md contains a description of the variables and the data processing steps taken in order to produced the content of this file.  Please refer to this markdown file for further information.