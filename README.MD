
Coursera getting ans cleaning data peroject

This repository contains the project assignment for the cousera getting and cleanig data course.
In this repository thera are 4 files:
* run_analysis.R , which contains the script thatr runs the analysis itsefel,i.e., the operations actualy made to the data  , as well as the codebook dyanamic creation.
* Codebook.MD , which contains a description of the operations made to the data
* README.MD 
* TidyDataSet.txt , which is the final data set we getafter runing the script run_analysis.R file.

Analysis Objective:

You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



Previous notes:
* In the script run_analysis.R there are a function named f_codebook, that is called multiple times in order to create dynamically the codebook.md file.
Each function call cal be interpreted like comments.

The actions performed on data include :
* merge the traing files (X and Y)
* merge the test files (X and Y)
* merge the training and test fies into a single one named dt
* add column names to the resulting datasets, according to the fatures.txt file
* select the varible names containig 'mean()' or 'std()'
* update the column names in order to be undestandable
* add activity names in order to ber undestandable, acording to the file activity_labels.txt
* add subject id , according to the file subject.txt
* Create a new datasert with the columns of interest
* Calculate a new data set with the mean of the columns of interest
* Save the new data set as tidydata.txt
* Check if the file is readable and with the expected structure

PLEASE SEE CODEBOOK.MD FILE FOR MORE DETAIL

