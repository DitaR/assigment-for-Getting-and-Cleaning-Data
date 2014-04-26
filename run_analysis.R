#create and filter data with proper levels from data sets
datatest <- read.table("UCI HAR Dataset/test/X_test.txt")
datatrain <- read.table("UCI HAR Dataset/train/X_train.txt")
data <- rbind(datatest, datatrain)
names <- as.character(read.table("UCI HAR Dataset/features.txt")[, 2])
names(data) <- names
selected <- grepl("mean()", names,fixed=TRUE) | grepl("std()", names,fixed=TRUE)
data <- data[, selected]
subjecttest <- as.matrix(read.table("UCI HAR Dataset/test/subject_test.txt"))
subjecttrain <- as.matrix(read.table("UCI HAR Dataset/train/subject_train.txt"))
subject <- c(subjecttest, subjecttrain)
activitytest <- as.matrix(read.table("UCI HAR Dataset/test/y_test.txt"))
activitytrain <- as.matrix(read.table("UCI HAR Dataset/train/y_train.txt"))
activity <- c(activitytest, activitytrain)
actlev <- read.table("UCI HAR Dataset/activity_labels.txt")
activity <- as.factor(activity)
levels(activity) = as.character(actlev[, 2])
data <- cbind(subject, activity, data)
# compute means for selected varibles according to subject and activity
library(reshape2)
data <- melt(data, id = c("activity", "subject"))
data <-dcast(data, subject + activity ~ variable, mean)
write.table(data, "tidy_data_means.txt")