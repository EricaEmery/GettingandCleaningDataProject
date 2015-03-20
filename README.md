## Getting and Cleaning Data Course Project README Document

This repo contains 4 files:
- A tidy data set called tidy_dataset.txt 
- A code book describing the data set, variables, and work performed to obtain the tidy data set
- An R script called run_analysis.R that contains all of the R code to transform the original project data into tidy_dataset.txt
- This README file 




# How the R Script Works

Note that the 5 steps asked for in the project outline are not followed exactly in order in the R script, but still have been completed. 

If the original project data is in the working directory, the scripts in run_analysis.R can be run to obtain the tidy data set. 

The script combines the training and test data into one data frame and adds in columns for the subject ID and activity. 
It uses the variable names listed in features.txt to name the columns of the new combined data frame.

Only the measurements on the mean and standard deviation are extracted by only selecting columns that contain either "mean()" or "std()".

The numeric activity identifiers are replaced with the descriptive names contained in the file activity_labels.txt.

Finally, the tidy data set is created by using the melt() and dcast() functions to average the measurements over each individual and activity. 

Note that this script creates a tidy set because the following criteria are met:
- Each variable forms a column (the columns of tidy_dataset.txt each contain a separate variable)
- Each observation forms a row (each row represents an individual performing 1 of 6 activities)
- Each table/file stores data about one kind of observation (the data frame contains data about various measurements related to experiments using accelerometers on smartphones)
