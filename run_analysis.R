wearclean <- function()
{
  xtest <- read.table("Wear/test/X_test.txt")
  ytest <- read.table("Wear/test/y_test.txt") 
  subjecttest <- read.table("Wear/test/subject_test.txt")
  
  xtrain <- read.table("Wear/train/X_train.txt")
  ytrain <- read.table("Wear/train/y_train.txt") 
  subjecttrain <- read.table("Wear/train/subject_train.txt")
  
  features <- read.table("Wear/features.txt")
  activity <- read.table("Wear/activity_labels.txt")
  
  names(xtest) <- features[,2]
  names(xtrain) <- features[,2]
  names(activity) <- c("ActivityID", "Activity")
  names(subjecttest) <- c("SubjectID")
  names(subjecttrain) <- c("SubjectID")
  names(ytest) <- c("ActivityID")
  names(ytrain) <- c("ActivityID")
  
  feat <- grep("[-]+mean+[(]+[)]|[-]+std+[(]+[)]", features[,2])
  xtest <- xtest[,feat]
  xtrain <- xtrain[,feat]
  
  test <- cbind(subjecttest, ytest, xtest)
  train <- cbind(subjecttrain, ytrain, xtrain)
  
  rm(subjecttest)
  rm(subjecttrain)
  rm(ytest)
  rm(ytrain)
  rm(xtest)
  rm(xtrain)
  
  mtest <- merge(x = test, y = activity, by = "ActivityID")
  mtrain <- merge(x = train, y = activity, by = "ActivityID")
  data <- rbind(mtest, mtrain)
  
  library(plyr)
  result <- ddply(data, .(Activity, SubjectID), numcolwise(mean))
  
  rm(mtest)
  rm(mtrain)
  rm(data)
  
  names(result) <- gsub("tBodyAcc", "BodyAcceleration", names(result))
  names(result) <- gsub("tGravityAcc", "GravityAcceleration", names(result))
  names(result) <- gsub("tBodyGyro", "BodyGyroscope", names(result))
}