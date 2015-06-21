# Getting and Cleaning Data Course Project
Note: Codebook for this submission will be in a separate file "Codebook_Features.md"

## Course Instructions
You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average
 of each variable for each activity and each subject.


## Assumptions:
This run_analysis.R script should be in the same directory as the "UCI HAR Dataset" directory that contains the data as provided. 
i.e. Directory Structure View (order is unimportant but structure is) :
a. Working Directory
	a.1  run_analysis.R
	a.2  UCI HAR Dataset (directory)
	a.3 train (directory)
		a.3.1 training realated files like X_train, y_train,subject_train
	a.4 test  ( directory)
		a.4.1 test realated files like X_test, y_test,subject_test
	a.5 other files like README, features_info,features,activity_labels 


## Running run_analysis.R
* source("run_analysis.R"); 
    This loads the script and runs the function run_analysis(). It would take a bit of time to complete (not instantaneous).
    You might see some messages from loading dplyr package.
    Once done, the output data is in UC1HAR.txt
    Once loaded the function run_analysis() can be re-run without having to source again. 

* You can verify the data thru the following commands: 
    data <- read.table("UC1HAR.txt", header = TRUE);
    View(data);


## Details on run_analysis.R function

This function has the following steps. 

1. Loads measurement variables and activity labels
2. Reads the subject , activity and measurement tables for test group 
3. Creates a data frame for the test group
4. Reads the subject , activity and measurement tables for training group
5. Createa a data frame for the training group
6. Implements step 1 from  course instructions
    Merges the training and test sets to create one data set (dfall)

Note :  Step 2 will be done after step 4 so as to apply the filter on mean and std variables once the variables 
have been labeld accordingly    

7. Implements step 3 from course instructions
   Uses descriptive activity names to name the activities of the data set  
8. Implements step 4  in course instructions 
    Labels the data set with descriptive variable names 
9. Implements step 2 from course instructions
    Extracts only the measurements on the mean and standard deviation for each measurement
    Assumption is any measurement(feature) having mean() and std() in names are to be included
    removing any duplicated columns first. Uses dplyr package.  
10. Implements step 5 from course instructions
     From data in step 4, creates a second, independent tidy data set with the 
    average of each variable for each activity and subject

