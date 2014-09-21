# load libraries
library(dplyr)
library(tidyr)

# read test and training data sets
testX <- read.table("test/X_test.txt")
testSubject <- read.table("test/subject_test.txt")
testActivity <- read.table("test/y_test.txt")

trainX <- read.table("train/X_train.txt")
trainSubject <- read.table("train/subject_train.txt")
trainActivity <- read.table("train/y_train.txt")

# merge training and test datasets
mergeX <- rbind(trainX, testX)
mergeSubject <- rbind(trainSubject, testSubject)
mergeActivity <- rbind(trainActivity, testActivity)


# label data set with descriptive variable names:
# read feature names
feat <- read.table("features.txt")
# change column names in mergeX to those of feat
colnames(mergeX) <- feat$V2

# select only those columns which contain "-mean()" or "-std()"
selection <- grep("-mean|-std", feat$V2)
selX <- mergeX %>% select(selection)

# add subject and activity to selected data set
selX <- selX %>% mutate(Subject = mergeSubject$V1, Activity = mergeActivity$V1)

# label activity using descriptive activity names:
# read activity names
act <- read.table("activity_labels.txt")
# replace activity ID by its descriptive name
selX <- selX %>% mutate(Activity = act$V2[Activity])

# summarise data to create a clean dataset:
# group by subject and activity
cleanX <- selX %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

# write clean data set
write.table(cleanX, file="clean.txt", row.names=FALSE, quote=FALSE)
