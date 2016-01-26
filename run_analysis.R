#Read and Clean Feature Names (cleaning only Mean and Std names)
features <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
features[,2] <- gsub('-mean', 'Mean', features[,2])
features[,2] <- gsub('-std', 'Std', features[,2])
features[,2] <- gsub('[-()]', '', features[,2])
features[,2] <- gsub('\\(|\\)',"",features[,2])
features[,2] <- make.names(features[,2])
features[,2] <- gsub('Acc',"Acceleration",features[,2])
features[,2] <- gsub('GyroJerk',"AngularAcceleration",features[,2])
features[,2] <- gsub('Gyro',"AngularSpeed",features[,2])
features[,2] <- gsub('Mag',"Magnitude",features[,2])
features[,2] <- gsub('^t',"TimeDomain.",features[,2])
features[,2] <- gsub('^f',"FrequencyDomain.",features[,2])
features[,2] <- gsub('\\.mean',".Mean",features[,2])
features[,2] <- gsub('\\.std',".StandardDeviation",features[,2])
features[,2] <- gsub('Freq\\.',"Frequency.",features[,2])
features[,2] <- gsub('Freq$',"Frequency",features[,2])


#Create a filter of the columns we want (only want Mean and Std Columns)
col_filter <- grep(".*Mean.*|.*Std.*", features[,2])

#Filter the feature data
features <- features[col_filter,]


#Read in Training Data and filter unwanted columns
train_data <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
train_data <- train_data[,col_filter]
#Label training data variables
colnames(train_data) <- features$V2

train_activity <- read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
colnames(train_activity) <- c("Activity")
train_subject <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
colnames(train_subject) <- c("Subject")

#Combine Training Data
train_data <- cbind(train_activity, train_subject, train_data)

#Read in Testing Data and filter unwanted columns
test_data <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
test_data <- test_data[,col_filter]
#Label test data variables
colnames(test_data) <- features$V2

test_activity <- read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
colnames(test_activity) <- c("Activity")
test_subject <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
colnames(test_subject) <- c("Subject")

#Combine Testing Data
test_data <- cbind(test_activity, test_subject, test_data)

#Combine All Data
combine_data <- rbind(train_data, test_data)

#Read the Activity Labels
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

#Apply the activity Label
current_activity = 1
for (label in activity_labels$V2) {
        combine_data$Activity <- gsub(current_activity, label, combine_data$Activity)
        current_activity <- current_activity + 1
}

#Create Tidy Data Set
combine_data$Activity <- as.factor(combine_data$Activity)
combine_data$Subject <- as.factor(combine_data$Subject)

tidy_data <- aggregate(combine_data, by=list(Activity = combine_data$Activity, Subject=combine_data$Subject), mean)
tidy_data[,4] = NULL
tidy_data[,3] = NULL

write.table(tidy_data, "tidy_data.txt", sep="\t")


