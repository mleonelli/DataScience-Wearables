#Cleaning Data Wearables Dataset
##Introduction
This repository is intended as a support for project assignment of "Getting and Cleaning Data" Coursera course.
The purpose of this project is to demonstrate the collection and cleaning of datasets. Tidy data have been prepared so that can be used for later analysis.

##Files
This repository contains:
+README.md : this readme file.
+CodeBook.md: the codebook for the tidy dataset.
+run_analysis.R : The script to obtain the cleaned dataset from the original source data.
+tidy.csv: the dity dataset
+Dataset.zip: the original dataset

##Dataset
Data SetThe data set "Human Activity Recognition Using Smartphones" has been taken from [UCI][1].
[1]: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Execution
1. Extract Dataset.zip into the working directory Dataset folder.
2. Load run_analysis.R into RStudio
3. Execute the command
```
result <- run_analysis()
```
---
##Dataset Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###For each record it is provided:
+Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
+Triaxial Angular velocity from the gyroscope.
+A 561-feature vector with time and frequency domain variables.
+Its activity label.
+An identifier of the subject who carried out the experiment.

###The dataset includes the following files:

+'features_info.txt': Shows information about the variables used on the feature vector.
+'features.txt': List of all features.
+'activity_labels.txt': Links the class labels with their activity name.
+'train/X_train.txt': Training set.
+'train/y_train.txt': Training labels.
+'test/X_test.txt': Test set.
+'test/y_test.txt': Test labels.
+'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
+'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
+'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
+'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

###Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Cleaning/Transformations

####Load data set into RStudio [Lines 3-10]
All required are read into RStudio with `read.table'
```
xtest <- read.table("Dataset/test/X_test.txt")
ytest <- read.table("Dataset/test/y_test.txt") 
subjecttest <- read.table("Dataset/test/subject_test.txt")
xtrain <- read.table("Dataset/train/X_train.txt")
ytrain <- read.table("Dataset/train/y_train.txt") 
subjecttrain <- read.table("Dataset/train/subject_train.txt")
features <- read.table("Dataset/features.txt")
activity <- read.table("Datasetresult/activity_labels.txt")
```
####Assigning variable names to original datasets [Lines 12-18]
```
names(xtest) <- features[,2]
names(xtrain) <- features[,2]
names(activity) <- c("ActivityID", "Activity")
names(subjecttest) <- c("SubjectID")
names(subjecttrain) <- c("SubjectID")
names(ytest) <- c("ActivityID")
names(ytrain) <- c("ActivityID")
```

###Limiting the variables to means and standard deviations [Lines 20-22]
To perform the task, I decided to take a string comparison approach with `grep` command.
```
feat <- grep("[-]+mean+[(]+[)]|[-]+std+[(]+[)]", features[,2])
xtest <- xtest[,feat]
xtrain <- xtrain[,feat]
```

###Merging the files for test and training. [Lines 24-25 / 34-35]
```
test <- cbind(subjecttest, ytest, xtest)
train <- cbind(subjecttrain, ytrain, xtrain)
mtest <- merge(x = test, y = activity, by = "ActivityID")
mtrain <- merge(x = train, y = activity, by = "ActivityID")
```

###Merging the Test and Training data sets [Line 36]
```
data <- rbind(mtest, mtrain)
```

###Applying the mean to all measures filtered [Lines 38-39]
Library plyr is required to perform this step.
```
library(plyr)
result <- ddply(data, .(Activity, SubjectID), numcolwise(mean))[, -3]
```

###Renaming variables
Variables have been renamed to be easily recognizable.
Use codebook.md for detailed descriptions.
