## Getting and Cleaning Data Course Project CodeBook


# Data Set

The data set submitted for this project is based on data collected from experiments involving the accelerometers on Samsung Galaxy S smartphones.
Data was collected on 30 individuals performing six activities while wearing the smartphone. 


# Transformations/Work Performed
 
To get from the original data provided for the project to the final tidy data set, several steps had to be performed, as outlined below:

1. The training and test data were combined into one data set, and the ID and activity information was added in.
This step also involved properly naming the columns with the measurement names provided in features.txt. 
The activity variable was also made more descriptive by changing it from a numeric variable to a character variable which provided the actual activity name.

2. Columns that did not contain measurements on the mean and standard deviation were excluded from the data set.
To get these mean and standard deviation variables, variables that contained either the string "mean()" or "std()" were selected.

3. Each variable was averaged over each activity and subject. These averages were the data that was ultimately included in the tidy dataset (see below).



# Tidy Data Set

The data set tidy_dataset.txt contains 180 rows and 81 columns. 
Each row corresponds to an individual (identified by the "ID" variable) performing one of the 6 activities (identified by the "activity" variable).

The first two columns of the data set contain the following variables:

ID

     Integer-valued
     Identifies the individual
     Ranges from 1 to 30    

activity

     Character-valued
     Activity being performed
     Possible values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING

     
The remaining 79 columns corresponded to numeric variables containing measurements taken on the individuals, averaged over each individual and each activity.  
The names of these measurements are listed below.

avg_tBodyAcc-mean()-X

avg_tBodyAcc-mean()-Y

avg_tBodyAcc-mean()-Z

avg_tGravityAcc-mean()-X

avg_tGravityAcc-mean()-Y            

avg_tGravityAcc-mean()-Z

avg_tBodyAccJerk-mean()-X

avg_tBodyAccJerk-mean()-Y

avg_tBodyAccJerk-mean()-Z

avg_tBodyGyro-mean()-X

avg_tBodyGyro-mean()-Y

avg_tBodyGyro-mean()-Z

avg_tBodyGyroJerk-mean()-X

avg_tBodyGyroJerk-mean()-Y

avg_tBodyGyroJerk-mean()-Z

avg_tBodyAccMag-mean()

avg_tGravityAccMag-mean()

avg_tBodyAccJerkMag-mean()

avg_tBodyGyroMag-mean()

avg_tBodyGyroJerkMag-mean()

avg_fBodyAcc-mean()-X

avg_fBodyAcc-mean()-Y

avg_fBodyAcc-mean()-Z

avg_fBodyAcc-meanFreq()-X

avg_fBodyAcc-meanFreq()-Y

avg_fBodyAcc-meanFreq()-Z

avg_fBodyAccJerk-mean()-X

avg_fBodyAccJerk-mean()-Y

avg_fBodyAccJerk-mean()-Z

avg_fBodyAccJerk-meanFreq()-X

avg_fBodyAccJerk-meanFreq()-Y

avg_fBodyAccJerk-meanFreq()-Z

avg_fBodyGyro-mean()-X

avg_fBodyGyro-mean()-Y

avg_fBodyGyro-mean()-Z

avg_fBodyGyro-meanFreq()-X

avg_fBodyGyro-meanFreq()-Y

avg_fBodyGyro-meanFreq()-Z

avg_fBodyAccMag-mean()

avg_fBodyAccMag-meanFreq()

avg_fBodyBodyAccJerkMag-mean()

avg_fBodyBodyAccJerkMag-meanFreq()

avg_fBodyBodyGyroMag-mean()

avg_fBodyBodyGyroMag-meanFreq()

avg_fBodyBodyGyroJerkMag-mean()

avg_fBodyBodyGyroJerkMag-meanFreq()

avg_tBodyAcc-std()-X

avg_tBodyAcc-std()-Y

avg_tBodyAcc-std()-Z

avg_tGravityAcc-std()-X

avg_tGravityAcc-std()-Y

avg_tGravityAcc-std()-Z

avg_tBodyAccJerk-std()-X

avg_tBodyAccJerk-std()-Y

avg_tBodyAccJerk-std()-Z

avg_tBodyGyro-std()-X

avg_tBodyGyro-std()-Y

avg_tBodyGyro-std()-Z

avg_tBodyGyroJerk-std()-X

avg_tBodyGyroJerk-std()-Y

avg_tBodyGyroJerk-std()-Z

avg_tBodyAccMag-std()

avg_tGravityAccMag-std()

avg_tBodyAccJerkMag-std()

avg_tBodyGyroMag-std()

avg_tBodyGyroJerkMag-std()

avg_fBodyAcc-std()-X

avg_fBodyAcc-std()-Y

avg_fBodyAcc-std()-Z

avg_fBodyAccJerk-std()-X

avg_fBodyAccJerk-std()-Y

avg_fBodyAccJerk-std()-Z

avg_fBodyGyro-std()-X

avg_fBodyGyro-std()-Y

avg_fBodyGyro-std()-Z

avg_fBodyAccMag-std()

avg_fBodyBodyAccJerkMag-std()

avg_fBodyBodyGyroMag-std()

avg_fBodyBodyGyroJerkMag-std()