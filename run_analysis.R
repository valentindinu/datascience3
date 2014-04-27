## Peer assignment - Course 3 - Getting and Cleaning Data

## 0 - Preparation
setwd("C:\\dev\\workfiles\\coursera\\datascience-3\\peer")
## Reading the x an y files for training and test sets and the 
## metadata (column names) from features.txt
train.x <- read.table("data\\UCI HAR Dataset\\train\\X_train.txt",header=F)
test.x  <- read.table("data\\UCI HAR Dataset\\test\\X_test.txt",header=F)


train.y <- read.table("data\\UCI HAR Dataset\\train\\y_train.txt",header=F)
test.y  <- read.table("data\\UCI HAR Dataset\\test\\y_test.txt",header=F)

train.subject <- read.table("data\\UCI HAR Dataset\\train\\subject_train.txt",header=F)
test.subject  <- read.table("data\\UCI HAR Dataset\\test\\subject_test.txt",header=F)

features <- read.table("data\\UCI HAR Dataset\\features.txt",header=F, stringsAsFactors=F)

## Request 1
## Merges the training and the test sets to create one data set.
merged.x <- rbind(train.x, test.x)
merged.y <- rbind(train.y, test.y)
merged.subject <- rbind(train.subject, test.subject)

merged.data <- cbind(merged.y, merged.subject, merged.x)
colnames(merged.data) <- c("Activity.ID", "Subject" ,features[,2])


## Request 2
## Extracts only the measurements on the mean and standard deviation for each
##  measurement. 
selected.columns <- grepl("-mean\\(\\)",colnames(merged.data)) | 
                      grepl("-std\\(\\)",colnames(merged.data))
selected.columns[c(1,2)] = c(T,T) #Keep also "Activity.ID" and "subject"
filtered.data <- merged.data[,selected.columns]


## Request 3
## Uses descriptive activity names to name the activities in the data set
activity.names <- read.table("data\\UCI HAR Dataset\\activity_labels.txt", 
                              header=F, stringsAsFactors=F)

## Request 4
## Appropriately labels the data set with descriptive activity names.
activity.column <- activity.names[filtered.data[,1],2]
final.data <- cbind(activity.column, filtered.data[-1])
names(final.data)[1] = "Activity"

## Request 5
## Creates a second, independent tidy data set with the average of each 
## variable for each activity and each subject. 
library(reshape2)
melted.data <- melt(final.data, id.vars = colnames(final.data[c(1,2)]), 
     measure.vars = colnames(final.data[-c(1,2)]))

tidy.data <- dcast(melted.data, Activity + Subject ~ variable, mean)

write.csv(tidy.data, "tidy_data.csv", row.names = F)
write.table(tidy.data, "tidy_data.txt", row.names = F)
