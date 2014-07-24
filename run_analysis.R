run_analysis <- function()
{
  xtest <- read.table("Dataset/test/X_test.txt")
  ytest <- read.table("Dataset/test/y_test.txt") 
  subjecttest <- read.table("Dataset/test/subject_test.txt")
  xtrain <- read.table("Dataset/train/X_train.txt")
  ytrain <- read.table("Dataset/train/y_train.txt") 
  subjecttrain <- read.table("Dataset/train/subject_train.txt")
  features <- read.table("Dataset/features.txt")
  activity <- read.table("Datasetresult/activity_labels.txt")
  
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
  result <- ddply(data, .(Activity, SubjectID), numcolwise(mean))[, -3]
  
  rm(mtest)
  rm(mtrain)
  rm(data)
  
  names(result)[3:68] = c("BodyAccelerationMeanOnXAxis", 
                          "BodyAccelerationMeanOnYAxis",
                          "BodyAccelerationMeanOnZAxis",
                          "BodyAccelerationStdOnXAxis", 
                          "BodyAccelerationStdOnYAxis",
                          "BodyAccelerationStdOnZAxis",
                          "GravityAccelerationMeanOnXAxis", 
                          "GravityAccelerationMeanOnYAxis",
                          "GravityAccelerationMeanOnZAxis",
                          "GravityAccelerationStdOnXAxis", 
                          "GravityAccelerationStdOnYAxis",
                          "GravityAccelerationStdOnZAxis",
                          "BodyAccelerationJerkMeanOnXAxis", 
                          "BodyAccelerationJerkMeanOnYAxis",
                          "BodyAccelerationJerkMeanOnZAxis",
                          "BodyAccelerationJerkStdOnXAxis", 
                          "BodyAccelerationJerkStdOnYAxis",
                          "BodyAccelerationJerkStdOnZAxis",
                          "BodyGyroscopeMeanOnXAxis", 
                          "BodyGyroscopeMeanOnYAxis",
                          "BodyGyroscopeMeanOnZAxis",
                          "BodyGyroscopeStdOnXAxis", 
                          "BodyGyroscopeStdOnYAxis",
                          "BodyGyroscopeStdOnZAxis",
                          "BodyGyroscopeJerkMeanOnXAxis", 
                          "BodyGyroscopeJerkMeanOnYAxis",
                          "BodyGyroscopeJerkMeanOnZAxis",
                          "BodyGyroscopeJerkStdOnXAxis", 
                          "BodyGyroscopeJerkStdOnYAxis",
                          "BodyGyroscopeJerkStdOnZAxis",
                          "BodyAccelerationMagnitudeMean",
                          "BodyAccelerationMagnitudeStd",
                          "GravityAccelerationMagnitudeMean",
                          "GravityAccelerationMagnitudeStd",
                          "BodyAccelerationJerkMegnitudeMean",
                          "BodyAccelerationJerkMegnitudeStd",
                          "BodyGyroscopeMagnitudeMean",
                          "BodyGyroscopeMagnitudeStd",
                          "BodyGyroscopeJerkMagnitudeMean",
                          "BodyGyroscopeJerkMagnitudeStd",
                          "FFTBodyAccelerationMeanOnXAxis", 
                          "FFTBodyAccelerationMeanOnYAxis",
                          "FFTBodyAccelerationMeanOnZAxis",
                          "FFTBodyAccelerationStdOnXAxis", 
                          "FFTBodyAccelerationStdOnYAxis",
                          "FFTBodyAccelerationStdOnZAxis",
                          "FFTBodyAccelerationJerkMeanOnXAxis", 
                          "FFTBodyAccelerationJerkMeanOnYAxis",
                          "FFTBodyAccelerationJerkMeanOnZAxis",
                          "FFTBodyAccelerationJerkStdOnXAxis", 
                          "FFTBodyAccelerationJerkStdOnYAxis",
                          "FFTBodyAccelerationJerkStdOnZAxis",
                          "FFTBodyGyroscopeMeanOnXAxis", 
                          "FFTBodyGyroscopeMeanOnYAxis",
                          "FFTBodyGyroscopeMeanOnZAxis",
                          "FFTBodyGyroscopeStdOnXAxis", 
                          "FFTBodyGyroscopeStdOnYAxis",
                          "FFTBodyGyroscopeStdOnZAxis",
                          "FFTBodyAccelerationMagnitudeMean",
                          "FFTBodyAccelerationMagnitudeStd",
                          "FFTBodyAccelerationJerkMegnitudeMean",
                          "FFTBodyAccelerationJerkMegnitudeStd",
                          "FFTBodyGyroscopeMagnitudeMean",
                          "FFTBodyGyroscopeMagnitudeStd",
                          "FFTBodyGyroscopeJerkMagnitudeMean",
                          "FFTBodyGyroscopeJerkMagnitudeStd")
  
  result
}