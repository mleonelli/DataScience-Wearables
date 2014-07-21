##Cleaning Data
###Wearables Dataset

This repository is intended as a support for project assignment of "Getting and Cleaning Data" Coursera course.
This repository contains:
*README.md : this readme file.
*CodeBook.txt: the codebook for the cleaned dataset.
*run_analysis.R : The script to obtain the cleaned dataset from the original source data.
---
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The cleaning involved:
*Merging the 3 files composing both the training and test sets. [Lines 26-27]
	*subject_[test|train].txt containg the list of Subjects participating in the study.
	*x_[test|train].txt containing the list of all observations in the same order as the previous set.
	*y_[test|train].txt containing the type of activity performed in the same order as the previous set.
*Limiting the variables to means and standard deviations [Lines 22-24]
	*By searching those variables a string analysis ha been performed by filtering with the grep command with pattern "[-]+mean+[(]+[)]|[-]+std+[(]+[)]"
*Merging the Test and Training data sets [Lines 36-38]
*Applying the mean to all measures filtered [Lines 40-41]
	*library plyr is required to perform this step
*Renaming variables

---
The source data has been provided by:
>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012