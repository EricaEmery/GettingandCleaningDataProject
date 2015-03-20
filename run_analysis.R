setwd("C:/Users/Erica/Desktop/Coursera/GettingandCleaningData")

# Reading in the test set
test <- read.table("UCI_HAR_Dataset/test/X_test.txt")


# Reading in the training set
train <- read.table("UCI_HAR_Dataset/train/X_train.txt")


# Reading in the subject IDs and the activities for the test set
test_subjects <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
test_activities <- read.table("UCI_HAR_Dataset/test/y_test.txt")


# Reading in the subject IDs and the activities for the training set
train_subjects <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
train_activities <- read.table("UCI_HAR_Dataset/train/y_train.txt")


# Reading in the "features.txt" file, which contains the column names for the data
features <- read.table("UCI_HAR_Dataset/features.txt")




### 1. Merging the training and test sets to create one data set
all <- rbind(test, train)


### 4. Appropriately labels the data set with descriptive variable names 
# Adding the column names to the merged dataset 
# The column names come from the "features.txt" file
names(all) <- features[, 2]



# Making a vector of all subject IDs (combining those from test and training sets)
ID <- rbind(test_subjects, train_subjects)

# Making a vector of all activity numbers (combining those from test and training sets)
activity <- rbind(test_activities, train_activities)

# Adding the ID and activity column in to the dataset
all <- cbind(ID, activity, all)
names(all)[1:2] <- c("ID", "activity")




### 2. Extracts only the measurements on the mean and standard deviation for each measurement
# Getting which columns contain "mean()"
mean_vars <- grep("mean()", names(all), ignore.case = FALSE, value = FALSE)
# Getting which columns contain "std()"
std_vars <- grep("std()", names(all), ignore.case = FALSE, value = FALSE)

# Subset of data including only these columns (and the ID and activity columns)
dat <- all[ , c(1, 2, mean_vars, std_vars)]



### 3. Uses descriptive activity names to name the activities in the data set
# Reading in the "activity_labels.txt" file, which contains the descriptive names of the activities
activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors = FALSE)

# loop to create vector of activity descriptive names to match the activity numbers in data set
desc_activity <- vector("character", length = nrow(dat))
for (row in 1:nrow(dat)){
        for (label in 1:6){
                if (dat$activity[row] == label) {desc_activity[row] <- activity_labels[label, 2]}
        }
}

# replacing numbered activity in data set with descriptive name
dat$activity <- desc_activity



### 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
datMelt <- melt(dat, id = c("ID", "activity"), measure.vars = names(dat)[3:81])
avg_dat <- dcast(datMelt, ID + activity ~ variable, mean)

# give columns new names to include string "avg" at beginning of name
names(avg_dat)[3:81] <- paste("avg", names(avg_dat[3:81]), sep = "_")

# write data set to text file
write.table(avg_dat, file = "tidy_dataset.txt", row.name = FALSE)
