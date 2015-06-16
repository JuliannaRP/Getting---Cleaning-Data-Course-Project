##Load test data
setwd("./UCI HAR Dataset/test")
test <- read.table("X_test.txt")
testLabels <- read.table("Y_test.txt")
testSubjects <- read.table("subject_test.txt")
##Load train data
setwd("..")
setwd("./train")
train <- read.table("X_train.txt")
trainLabels <- read.table("Y_train.txt")
trainSubjects <- read.table("subject_train.txt")
##Load column names
setwd("..")
features <- read.table("features.txt")
##Bind activity labels and subjects to test and train datasets
test <- cbind(testSubjects,testLabels,test)
train <- cbind(trainSubjects,trainLabels,train)
##Merge test and train datasets
data <- rbind(test,train)
##Change factors to characters
fact <- sapply(features, is.factor)
features[fact] <- lapply(features[fact], as.character)
##Get list of column titles
First <- c("subject_label","activity_labels")
colLabels <- features[,2]
colLabels <- c(First,colLabels)
##Add column labels to data
colnames(data) <- colLabels
##Get only means and standard deviations
newdata <- data.frame(data[,1:2])
labels <- colnames(data[1:2])
mean <- grepl("mean", names(data))
std <- grepl("std", names(data))
for(i in 1:562) {
    if(mean[i]==TRUE) {
        newdata <- cbind(newdata,data[,i])
        labels <- c(labels,colnames(data[i]))
    }
    if(std[i]==TRUE) {
        newdata <- cbind(newdata,data[,i])
        labels <- c(labels,colnames(data[i]))
    }
}
colnames(newdata) <- labels
##Make activity_labels descriptive
for(i in 1:10299) {
    if(newdata[i,2]==1) {
        newdata[i,2]="walking"
    }
    if(newdata[i,2]==2) {
        newdata[i,2]="walking_upstairs"
    }
    if(newdata[i,2]==3) {
        newdata[i,2]="walking_downstairs"
    }
    if(newdata[i,2]==4) {
        newdata[i,2]="sitting"
    }
    if(newdata[i,2]==5) {
        newdata[i,2]="standing"
    }
    if(newdata[i,2]==6) {
        newdata[i,2]="laying"
    }
}
#Make data set of averages per activity per subject
means <- aggregate(newdata[,3:81],by=list(newdata$subject_label, newdata$activity_labels), mean)
meanlabels <- character(length = 0)
for(i in 1:81) {
    m <- paste("MEAN", labels[i], sep="_")
    meanlabels <- c(meanlabels,m)
}
colnames(means) <- meanlabels
library(dplyr)
means <- arrange(means,MEAN_subject_label,MEAN_activity_labels)
setwd("..")
write.table(means, file="./run_analysis.txt", row.name=FALSE)
