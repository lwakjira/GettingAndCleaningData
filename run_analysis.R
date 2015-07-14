library(plyr)
library(dplyr)

### 1.Merges the training and the test sets to create one data set.

x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

x_all<- rbind(x_test,x_train)
y_all<- rbind(y_test,y_train)
subject_all<- rbind(subject_test,subject_train)


### 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("./features.txt") 
mean_std_filter <- grep("-(mean|std)\\(\\)", features[, 2])

x_all<- x_all[, mean_std_filter]

### 3.Uses descriptive activity names to name the activities in the data set
activities <- read.table("./activity_labels.txt")
y_all[, 1] <- activities[y_all[, 1], 2]

### 4.Appropriately labels the data set with descriptive variable names. 
names(x_all) <- features[mean_std_filter, 2]
names(y_all) <- "activity"
names(subject_all) <- "subject"

data_all <- cbind(x_all,y_all,subject_all)

### 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data_all_grpd <- ddply( data_all, .(subject,activity), colwise(mean))

write.table(data_all_grpd,"all_average.txt",row.name=FALSE)
