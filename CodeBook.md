##CodeBook
---

####Activity [Character]
The activity performed during the measurement.
It can take one of the 6 values (activity) listed:
- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS

####SubjectID [Numeric]
The subject who performed the activity.
It ranges from 1 to 30. They have been divided into 2 groups for testing and training.
For the tidy dataset the 2 groups have been mixed again in a single dataset.

#####Note 
+ All variables below have been normalized to the range [-1, 1]
+ Jerk signals are calculated by deriving the corresponding measures in time
+ Magnitude is calculated as Euclidean norm of the corresponding measures
+ FFT variables represent the application of a Fast Fourier Transform of the corresponding signals
	
####BodyAccelerationMeanOnXAxis [Numeric]
	Mean of the estimated body acceleration from the accelerometer on X axis.
	
####BodyAccelerationMeanOnYAxis [Numeric]
	Mean of the estimated body acceleration from the accelerometer on Y axis. 
	
####BodyAccelerationMeanOnZAxis [Numeric]
	Mean of the estimated body acceleration from the accelerometer on Z axis.
	
####BodyAccelerationStdOnXAxis [Numeric]
	Standard deviation of the estimated body acceleration from the accelerometer on X axis.
	
####BodyAccelerationStdOnYAxis [Numeric]
	Standard deviation of the estimated body acceleration from the accelerometer on Y axis.
	
####BodyAccelerationStdOnZAxis [Numeric]
	Standard deviation of the estimated body acceleration from the accelerometer on Z axis.
	
####GravityAccelerationMeanOnXAxis [Numeric]
	Mean of the total acceleration from the accelerometer on X axis.
	
####GravityAccelerationMeanOnYAxis [Numeric]
	Mean of the total acceleration from the accelerometer on Y axis.
	
####GravityAccelerationMeanOnZAxis [Numeric]
	Mean of the total acceleration from the accelerometer on Z axis.
	
####GravityAccelerationStdOnXAxis [Numeric]
	Standard deviation of the total acceleration from the accelerometer on X axis.
	
####GravityAccelerationStdOnYAxis [Numeric]
	Standard deviation of the total acceleration from the accelerometer on Y axis.
	
####GravityAccelerationStdOnZAxis [Numeric]
	Standard deviation of the total acceleration from the accelerometer on Z axis.
	
####BodyAccelerationJerkMeanOnXAxis [Numeric]
	Jerk signal of the mean of the total acceleration from the accelerometer on X axis.
	
####BodyAccelerationJerkMeanOnYAxis [Numeric]
	Jerk signal of the mean of the total acceleration from the accelerometer on Y axis.
	
####BodyAccelerationJerkMeanOnZAxis [Numeric]
	Jerk signal of the mean of the total acceleration from the accelerometer on Z axis.
	
####BodyAccelerationJerkStdOnXAxis [Numeric]
	Jerk signal of the standard deviation of the total acceleration from the accelerometer on X axis.
	
####BodyAccelerationJerkStdOnYAxis [Numeric]
	Jerk signal of the standard deviation of the total acceleration from the accelerometer on Y axis.
	
####BodyAccelerationJerkStdOnZAxis [Numeric]
	Jerk signal of the standard deviation of the total acceleration from the accelerometer on Z axis.
	
####BodyGyroscopeMeanOnXAxis [Numeric]
	Mean of the body gyroscope signal on X axis.
	
####BodyGyroscopeMeanOnYAxis [Numeric]
	Mean of the body gyroscope signal on Y axis.
	
####BodyGyroscopeMeanOnZAxis [Numeric]
	Mean of the body gyroscope signal on Z axis.
	
####BodyGyroscopeStdOnXAxis [Numeric]
	Standard deviation of the body gyroscope signal on X axis.
	
####BodyGyroscopeStdOnYAxis [Numeric]
	Standard deviation of the body gyroscope signal on Y axis.
	
####BodyGyroscopeStdOnZAxis [Numeric]
	Standard deviation of the body gyroscope signal on Z axis.
	
####BodyGyroscopeJerkMeanOnXAxis [Numeric]
	Jerk signal of the mean of the body gyroscope signal on X axis.
	
####BodyGyroscopeJerkMeanOnYAxis [Numeric]
	Jerk signal of the mean of the body gyroscope signal on Y axis.
	
####BodyGyroscopeJerkMeanOnZAxis [Numeric]
	Jerk signal of the mean of the body gyroscope signal on Z axis.
	
####BodyGyroscopeJerkStdOnXAxis [Numeric]
	Jerk signal of the standard deviation of the body gyroscope signal on X axis.
	
####BodyGyroscopeJerkStdOnYAxis [Numeric]
	Jerk signal of the standard deviation of the body gyroscope signal on Y axis.
	
####BodyGyroscopeJerkStdOnZAxis [Numeric]
	Jerk signal of the standard deviation of the body gyroscope signal on Z axis.
	
####BodyAccelerationMagnitudeMean [Numeric]
	Magnitude of the mean of the body acceleration.
	
####BodyAccelerationMagnitudeStd [Numeric]
	Magnitude of the standard deviation of the body acceleration.
	
####GravityAccelerationMagnitudeMean [Numeric]
	Magnitude of the mean of the total acceleration.
	
####GravityAccelerationMagnitudeStd [Numeric]
	Magnitude of the standard deviation of the total acceleration.
	
####BodyAccelerationJerkMegnitudeMean [Numeric]
	Magnitude of the mean of the body acceleration jerk signal.
	
####BodyAccelerationJerkMegnitudeStd [Numeric]
	Magnitude of the standard deviation of the body acceleration jerk signal.
	
####BodyGyroscopeMagnitudeMean [Numeric]
	Magnitude of the mean of the body gyroscope.
	
####BodyGyroscopeMagnitudeStd [Numeric]
	Magnitude of the standard deviation of the body gyroscope.
	
####BodyGyroscopeJerkMagnitudeMean [Numeric]
	Magnitude of the mean of the body gyroscope jerk signal.
	
####BodyGyroscopeJerkMagnitudeStd [Numeric]
	Magnitude of the standard deviation of the body gyroscope jerk signal.
	
####FFTBodyAccelerationMeanOnXAxis [Numeric]

####FFTBodyAccelerationMeanOnYAxis [Numeric]

####FFTBodyAccelerationMeanOnZAxis [Numeric]

####FFTBodyAccelerationStdOnXAxis [Numeric]

####FFTBodyAccelerationStdOnYAxis [Numeric]

####FFTBodyAccelerationStdOnZAxis [Numeric]

####FFTBodyAccelerationJerkMeanOnXAxis [Numeric]

####FFTBodyAccelerationJerkMeanOnYAxis [Numeric]

####FFTBodyAccelerationJerkMeanOnZAxis [Numeric]

####FFTBodyAccelerationJerkStdOnXAxis [Numeric]

####FFTBodyAccelerationJerkStdOnYAxis [Numeric]

####FFTBodyAccelerationJerkStdOnZAxis [Numeric]

####FFTBodyGyroscopeMeanOnXAxis [Numeric]

####FFTBodyGyroscopeMeanOnYAxis [Numeric]

####FFTBodyGyroscopeMeanOnZAxis [Numeric]

####FFTBodyGyroscopeStdOnXAxis [Numeric]

####FFTBodyGyroscopeStdOnYAxis [Numeric]

####FFTBodyGyroscopeStdOnZAxis [Numeric]

####FFTBodyAccelerationMagnitudeMean [Numeric]

####FFTBodyAccelerationMagnitudeStd [Numeric]

####FFTBodyAccelerationJerkMegnitudeMean [Numeric]

####FFTBodyAccelerationJerkMegnitudeStd [Numeric]

####FFTBodyGyroscopeMagnitudeMean [Numeric]

####FFTBodyGyroscopeMagnitudeStd [Numeric]

####FFTBodyGyroscopeJerkMagnitudeMean [Numeric]

####FFTBodyGyroscopeJerkMagnitudeStd [Numeric]

