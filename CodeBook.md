
#Tidy Data Set#

Tidy data contains 180 rows and 82 columns. Each row has averaged variables for each subject and each activity.

##Database Features##

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerator-XYZ and TimeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer, FrequencyBodyAccelerometerJerk, FrequencyBodyGyroscope, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitudeMean. 


##These signals were used to estimate variables of the feature vector for each pattern:##  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*TimeGravityAccelerometer-XYZ
*TimeBodyAccelerometerJerk-XYZ
*TimeBodyGyroscope-XYZ
*TimeBodyGyroscopeJerk-XYZ
*TimeBodyAccelerometerMagnitude-XYZ
*TimeGravityAccelerometerMagnitude-XYZ
*TimeBodyAccelerometerJerkMagnitude-XYZ
*TimeBodyGyroscopeMagnitude-XYZ
*TimeBodyGyroscopeJerkMagnitude-XYZ
*FrequencyBodyAccelerometer-XYZ
*FrequencyBodyAccelerometerJerk-XYZ
*FrequencyBodyGyroscope-XYZ
*FrequencyBodyAccelerometerMagnitudevv
*FrequencyBodyAccelerometerJerkMagnitude-XYZ
*FrequencyBodyGyroscopeMagnitude-XYZ
*FrequencyBodyGyroscopeJerkMagnitudeMean-XYZ

##The set of variables that were estimated from these signals are: ##

Mean: Mean value
SD: Standard deviation


##The data was averaged based on subject and activity group.##

Subject: Numbered sequentially from 1 to 30.

Activity: Six activities numbered 1 to 6
  	*1. Walking
	*2. Walking_Upstairs
	*3. Walking Downstairs
	*4. Sitting
	*5. Standing
	*6. Laying

##The complete file is located in ind_tidy_data.txt.##
