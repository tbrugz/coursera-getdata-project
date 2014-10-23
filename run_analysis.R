
#
# Script to make a tidy dataset + summary from the "Human Activity Recognition Using Smartphones Data Set"
#
# motivation article:
# http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/
#
# project original dataset info:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# dataset in zip format:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#

# how to run this script:
# - set the working directory to "UCI HAR Dataset" dir   ## setwd(<dir>)
# - source this script                                   ## source(<script>)

# datadir <- "D:/edu/coursera-getdata/UCI HAR Dataset"
# scriptfile <- "D:/edu/coursera-getdata/run_analysis.R"
# setwd(datadir)
# source(scriptfile)

# features <- readfeatures(datadir)
readfeatures <- function(dir) {
    features <- read.table(paste(dir, "features.txt", sep="/"), col.names=c("id", "name"))
    return(features)
}

# activities <- readactivities(datadir)
readactivities <- function(dir) {
    activities <- read.table(paste(dir, "activity_labels.txt", sep="/"), col.names=c("activity", "activity_label"))
    return(activities)
}

# data <- readdata(datadir, features, activities)
readdata <- function(dir, features, activities) {
    library(dplyr)
    data1 <- read.table(paste(dir, "train/X_train.txt", sep="/"), col.names=features$name)
    data1ac <- read.table(paste(dir, "train/y_train.txt", sep="/"), col.names="activity")
    data1sbj <- read.table(paste(dir, "train/subject_train.txt", sep="/"), col.names="subject")
    data1<-cbind(data1,data1sbj)
    data1<-cbind(data1,data1ac)
    
    data2 <- read.table(paste(dir, "test/X_test.txt", sep="/"), col.names=features$name)
    data2ac <- read.table(paste(dir, "test/y_test.txt", sep="/"), col.names="activity")
    data2sbj <- read.table(paste(dir, "test/subject_test.txt", sep="/"), col.names="subject")
    data2<-cbind(data2,data2sbj)
    data2<-cbind(data2,data2ac)
    
    data <- rbind_list(data1, data2)
    data <- select(data, activity, subject, contains("mean"), contains("std"))
    data <- merge(activities, data, by="activity")
    
    return(data)
}

# tidydata <- maketidy(data)
maketidy <- function (data) {
    library(dplyr)
    data<-group_by(data, subject, activity, activity_label)
    # tidydata<-summarise(data, tBodyAcc.mean...X.mean=mean(tBodyAcc.mean...X))
    # aggregate(data, by=list("subject", "activity", "activity_label"), FUN=sum)
    # tidydata<-summarise(data, paste(names(data),"avg",sep="$")=mean(names(data)))
    tidydata<-summarise_each(data, funs(mean))
    
    return(tidydata)
}

# writedata(datadir, tidydata)
writedata <- function(dir, data) {
    fileout <- paste(dir, "tidydata.txt", sep="/")
    write.table(data, fileout, row.name=FALSE)
    message("tidy data written to: ", fileout)
}

# doitall(datadir)
doitall <- function(datadir) {
    features <- readfeatures(datadir)
    activities <- readactivities(datadir)
    data <- readdata(datadir, features, activities)
    tidydata <- maketidy(data)
    writedata(datadir, tidydata)
}

doitall(".")
